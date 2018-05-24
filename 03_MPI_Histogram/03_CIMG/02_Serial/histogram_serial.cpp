/* 
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

#include <iostream>
using namespace std;

#include <mpi.h>

#include <fstream>
#include <sstream>

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()
        
#define DATE_FORMAT "%Y%m%d_%H%M%S"
#define DATE_SIZE 20
#define ARRAY_SIZE 128000


/// Establish the number of bins
const int HIST_SIZE = 256;
unsigned int hist[HIST_SIZE];

// Main procedure
//----------------
int main(int argc, char** argv) {
	
	int rank, comm_sz;
	int width, height;
	
	int nodes = 0;	
	bool simul = false;
	
	if( (argc < 2) or (argc > 3) ){
		cout << "Usage: <histogram_serial ImageToLoad> or "
			 << "<histogram_serial ImageToLoad number_of_nodes>" << endl;
		return -1;
    }
    
    if( argc == 3 ){
		nodes = atoi(argv[2]);
	}
	
	if( argv[1] == '0' ){
		simul = true;
	}
	
	//CImg<unsigned char> image(argv[1]);
	CImg<unsigned char> image_cimg;
	unsigned char **image_simul;
	
	if( !simul ){
		image_cimg.assign(argv[1]);
	}
	else{
		*image_simul = new unsigned char[ARRAY_SIZE];
		for(int i = 0; i < ARRAY_SIZE; i++){
			image_simul = new unsigned char[ARRAY_SIZE];
		}
		
		time_t t;		
		srand((unsigned)time(&t));
		
		for(int i = 0; i < ARRAY_SIZE; i++){
			for(int j = 0; j < ARRAY_SIZE; j++){
				image_simul[i][j] = rand() % 256;
			}
		}
	}
	
	
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
	
	for(int x = 0; x < width; x++)
	{
		for (int y = 0; y < height; y++)
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
	
	double elapsed_time = MPI_Wtime() - initial_time;
	
	cout << "Elapsed time: " << elapsed_time << endl;
	
	
	cout << endl << "Histogram: " << endl;	
	unsigned int sum = 0;
	for (int i = 0 ; i < HIST_SIZE ; i++) {
		cout << hist[i] << " ";
		sum += hist[i];
	}
	
	cout << endl << endl << "Sum of all histogram elements: " << sum << endl;	
	cout << endl << "Total pixels: " << width * height << endl;
	
	
	MPI_Finalize();
	
	
	//Writing the output results to a file
	char date[DATE_SIZE];
	time_t now = time(0);
	strftime(date, sizeof(date), DATE_FORMAT, localtime(&now));
	
	string csv_name = string("outputs/") + string("output");
	csv_name += "_nodes_" + SSTR(1);
	csv_name += "_processes_" + SSTR(comm_sz);
	csv_name += "_threads_" + SSTR(1);
	csv_name += "_width_" + SSTR(width);
	csv_name += "_height_" + SSTR(height);
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
	csv << "bin" << separator << "count" << endl;
	
	for( int h = 0; h < HIST_SIZE; h++ ){
		csv << h << separator << hist[h] << endl;
	}
	
	csv.close();
	
	
	return 0;
}
