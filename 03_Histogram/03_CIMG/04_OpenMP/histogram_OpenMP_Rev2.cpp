/* 
 * Load modules:
 * module load compilers/gnu/7.1
 *  
 * Compile with:
 * mpic++ -o histogram_MPI histogram_MPI_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
 * g++ -o histogram_OpenMP histogram_OpenMP_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
 * 
 * Use:
 * ./histogram_OpenMP "black_white.jpeg"
 * ./histogram_OpenMP 0 16 16 1 0
 * 
 * 
 * Version control:
 * 
 * Rev2:
 * 	- change the parallelization to the inner loop (columns)
 */


// These includes are necessary to get the plug-in compile !
#include <cstdio>
#include <jpeglib.h>
#include <jerror.h>

#include "../CImg_latest/CImg-2.2.2/CImg.h"
using namespace cimg_library;

#include <string.h>
#include <iostream>
using namespace std;

#include <omp.h> 

#include <sys/time.h>

#include <fstream>
#include <sstream>

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()
        
#define DATE_FORMAT "%Y%m%d_%H%M%S"
#define DATE_SIZE 20


/// Establish the number of bins
const int HIST_SIZE = 256;
unsigned long int hist[HIST_SIZE];

unsigned int ROWS_SIZE;
unsigned int COLUMNS_SIZE;


// Main procedure
//----------------
int main(int argc, char** argv) {
	
	double time_ROI_begin, time_ROI_end;
	double time_begin, time_end;
	
	struct timeval t;
	
	gettimeofday(&t,NULL);
	time_begin = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	
	unsigned int width, height;
	
	int nodes = 1;	
	bool simul = false;
	bool output = false;
	int power_rows, power_columns;
	
	if( (argc < 2) or (argc > 6) ){
		cout << "Usage: " << endl << "<histogram_serial image_to_load> or " << endl
			 << "<histogram_serial image_to_load width_of_image height_of_image> or " << endl
			 << "<histogram_serial image_to_load width_of_image height_of_image number_of_nodes> or " << endl
			 << "<histogram_serial image_to_load width_of_image height_of_image number_of_nodes output>" << endl;
		return -1;
    }
    
    if( argc >= 3 ){
		power_rows = atoi(argv[2]);
		power_columns = atoi(argv[3]);
		
		if( (power_rows + power_columns) > 64 ){
			cout << "The size of the simulated image must not exceed 2^64." << endl;
			return -1;
		}
		
		
		ROWS_SIZE = pow( 2, power_rows );
		COLUMNS_SIZE = pow( 2, power_columns );
		cout << "ROWS_SIZE: " << ROWS_SIZE << endl;
		cout << "COLUMNS_SIZE: " << COLUMNS_SIZE << endl;
	}
	
	if( argc >= 5 ){
		nodes = atoi(argv[4]);
	}
	
	if( argc >= 6 ){
		output = atoi(argv[5]);
	}
	
	
	if( strcmp( argv[1], "0" ) == 0 ){
		simul = true;
	}
	
	
	CImg<unsigned char> image_cimg;
	unsigned char **image_simul;
	
	if( !simul ){
		image_cimg.assign(argv[1]);
	}
	else{
		cout << "simul == true" << endl;
		
		image_simul = new unsigned char*[ROWS_SIZE];
		for(unsigned int i = 0; i < ROWS_SIZE; i++){
			image_simul[i] = new unsigned char[COLUMNS_SIZE];
		}
		
		cout << "after allocation of image_simul" << endl;
		
		time_t t;		
		srand((unsigned)time(&t));
		
		for(unsigned int i = 0; i < ROWS_SIZE; i++){
			for(unsigned int j = 0; j < COLUMNS_SIZE; j++){
				image_simul[i][j] = rand() % 256;
			}
		}
		
		cout << "after initialization of image_simul" << endl;
	}
	
	
	if( !simul ){
		width = image_cimg.width();
		height = image_cimg.height();
	}
	else{
		width = COLUMNS_SIZE;
		height = ROWS_SIZE;
	}
	
	cout << "Width: " << width << endl;
	cout << "Height: " << height << endl;
	
	
	gettimeofday(&t,NULL);
	time_ROI_begin = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	int nthreads;
	#pragma omp parallel
	{
		if( omp_get_thread_num() == 0 ){ 
			nthreads = omp_get_num_threads();
			cout << endl << "Number of threads is: " << nthreads << endl;
		}
		
		for(unsigned int x = 0; x < height; x++){
			
			#pragma omp for reduction(+:hist[:256])					
			for (unsigned int y = 0; y < width; y++)
			{
				
				unsigned char R;
				if( !simul ){
					R = (unsigned char)image_cimg(x,y,0,0);
				}
				else{
					R = image_simul[x][y];
				}
				
				hist[R]++;
			}
		
		}
	}
	
	gettimeofday(&t,NULL);
	time_ROI_end = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	cout << "ROI time: " << time_ROI_end - time_ROI_begin << endl;
	
	
	//print the histogram of the image
	cout << endl << "Global histogram: " << endl;
	unsigned long int sum = 0;
	for(unsigned int i=0; i < HIST_SIZE; i++){
		cout << hist[i] << " ";
		sum+=hist[i];
	}
	
	cout << endl << endl << "Sum of all global histogram elements: " << sum << endl;	
	cout << "Total pixels: " << (unsigned long) width * height << endl;
	
	
	
	for (unsigned int i = 0; i < ROWS_SIZE; ++i)
		delete [] image_simul[i];
	delete [] image_simul;
	
	
	gettimeofday(&t,NULL);
	time_end = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	cout << endl << "Total time: " << time_end - time_begin << endl;
	
	//Writing the output results to a file
	if( output ){
		char date[DATE_SIZE];
		time_t now = time(0);
		strftime(date, sizeof(date), DATE_FORMAT, localtime(&now));
		
		string csv_name = string("outputs/") + string("output");
		csv_name += "_nodes_" + SSTR(nodes);
		csv_name += "_processes_" + SSTR(1);
		csv_name += "_threads_" + SSTR(nthreads);
		csv_name += "_size_" + SSTR(power_rows + power_columns);
		csv_name += "_" + string(date);		
		csv_name += ".csv";
		
		cout << csv_name << endl;
		
		ofstream csv;
		csv.open(csv_name.c_str());
		
		char separator = ';';
		
		csv << "ROI time" << separator << time_ROI_end - time_ROI_begin << endl;
		csv << "Total time" << separator << time_end - time_begin << endl;
		csv << "nodes" << separator << nodes << endl;
		csv << "processes" << separator << 1 << endl;
		csv << "threads" << separator << nthreads << endl;
		csv << "width" << separator << width << endl;
		csv << "height" << separator << height << endl;
		csv << "size" << separator << power_rows + power_columns << endl;
		csv << "bin" << separator << "count" << endl;
		
		for( int h = 0; h < HIST_SIZE; h++ ){
			csv << h << separator << hist[h] << endl;
		}
		
		csv.close();
	}
	
	
	
	return 0;
}
