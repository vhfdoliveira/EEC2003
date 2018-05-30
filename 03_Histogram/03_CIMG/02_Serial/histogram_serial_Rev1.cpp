/* 
 * Load modules:
 * module load compilers/gnu/7.1
 * module load libraries/openmpi/1.4-gnu-7.1
 * 
 * Compile with:
 * g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
 * mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
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

#include <mpi.h>

#include <fstream>
#include <sstream>

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()
        
#define DATE_FORMAT "%Y%m%d_%H%M%S"
#define DATE_SIZE 20


/// Establish the number of bins
const int HIST_SIZE = 256;
unsigned long int hist[HIST_SIZE];

unsigned int ARRAY_SIZE;

// Main procedure
//----------------
int main(int argc, char** argv) {
	
	time_t begin = time(NULL);
	
	int rank, comm_sz;
	unsigned int width, height;
	
	int nodes = 0;	
	bool simul = false;
	bool output = false;
	int power;
	
	if( (argc < 2) or (argc > 5) ){
		cout << "Usage: " << endl << "<histogram_serial image_to_load> or " << endl
			 << "<histogram_serial image_to_load size_of_image> or " << endl
			 << "<histogram_serial image_to_load size_of_image number_of_nodes> or " << endl
			 << "<histogram_serial image_to_load size_of_image number_of_nodes output>" << endl;
		return -1;
    }
    
    if( argc >= 3 ){
		power = atoi(argv[2]);
		if( power > 64 ){
			cout << "The size of the simulated image must not exceed 2^64." << endl;
			return -1;
		}
		if( power % 2 > 0 ){
			cout << "The size of the simulated image must be an even power of 2." << endl;
			return -1;
		}
		
		ARRAY_SIZE = pow( 2, power/2 );
		cout << "ARRAY_SIZE: " << ARRAY_SIZE << endl;
	}
	
	if( argc >= 4 ){
		nodes = atoi(argv[3]);
	}
	
	if( argc >= 5 ){
		output = atoi(argv[4]);
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
		
		image_simul = new unsigned char*[ARRAY_SIZE];
		for(unsigned int i = 0; i < ARRAY_SIZE; i++){
			image_simul[i] = new unsigned char[ARRAY_SIZE];
		}
		
		cout << "after allocation of image_simul" << endl;
		
		time_t t;		
		srand((unsigned)time(&t));
		
		for(unsigned int i = 0; i < ARRAY_SIZE; i++){
			for(unsigned int j = 0; j < ARRAY_SIZE; j++){
				image_simul[i][j] = rand() % 256;
			}
		}
		
		cout << "after initialization of image_simul" << endl;
	}
	
	time_t initialization_time = time(NULL) - begin;
	
	cout << "Initialization time: " << initialization_time << endl;
	
	
	MPI_Init(&argc, &argv);
	
	MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	
	cout << "Number of processes is: " << comm_sz << endl;
	
	double initial_time = MPI_Wtime();
	
	if( !simul ){
		width = image_cimg.width();
		height = image_cimg.height();
	}
	else{
		width = ARRAY_SIZE;
		height = ARRAY_SIZE;
	}
	
	cout << "Width: " << width << endl;
	cout << "Height: " << height << endl;
	
	for(unsigned int x = 0; x < width; x++){
		for(unsigned int y = 0; y < height; y++){
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
	
	double elapsed_time = MPI_Wtime() - initial_time;
	
	cout << "Elapsed time: " << elapsed_time << endl;
	
	
	cout << endl << "Histogram: " << endl;	
	unsigned long int sum = 0;
	for (int i = 0 ; i < HIST_SIZE ; i++) {
		cout << hist[i] << " ";
		sum += hist[i];
	}
	
	cout << endl << endl << "Sum of all histogram elements: " << sum << endl;	
	cout << "Total pixels: " << (unsigned long) width * height << endl;
	
	
	MPI_Finalize();
	
	
	for (unsigned int i = 0; i < ARRAY_SIZE; ++i)
		delete [] image_simul[i];
	delete [] image_simul;
	
	
	//Writing the output results to a file
	if( output ){
		char date[DATE_SIZE];
		time_t now = time(0);
		strftime(date, sizeof(date), DATE_FORMAT, localtime(&now));
		
		string csv_name = string("outputs/") + string("output");
		csv_name += "_nodes_" + SSTR(nodes);
		csv_name += "_processes_" + SSTR(comm_sz);
		csv_name += "_threads_" + SSTR(1);
		csv_name += "_size_" + SSTR(power);
		csv_name += "_" + string(date);		
		csv_name += ".csv";
		
		cout << csv_name << endl;
		
		ofstream csv;
		csv.open(csv_name.c_str());
		
		char separator = ';';
		
		csv << "execution time" << separator << elapsed_time << endl;
		csv << "nodes" << separator << 1 << endl;
		csv << "processes" << separator << comm_sz << endl;
		csv << "threads" << separator << 1 << endl;
		csv << "width" << separator << width << endl;
		csv << "height" << separator << height << endl;
		csv << "size" << separator << power << endl;
		csv << "bin" << separator << "count" << endl;
		
		for( int h = 0; h < HIST_SIZE; h++ ){
			csv << h << separator << hist[h] << endl;
		}
		
		csv.close();
	}
	
	
	return 0;
}
