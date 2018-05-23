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


/// Establish the number of bins
const int HIST_SIZE = 256;
unsigned int hist[HIST_SIZE];

// Main procedure
//----------------
int main(int argc, char** argv) {
	
	if( argc != 2){
		cout << "Usage: histogram_serial ImageToLoad" << endl;
		return -1;
    }
	
	CImg<unsigned char> image(argv[1]);
	
	MPI_Init(&argc, &argv);
	
	double initial_time = MPI_Wtime();
	
	cout << "Width: " << image.width() << endl;
	cout << "Height: " << image.height() << endl;
	
	for(int x = 0; x < image.width(); x++)
	{
		for (int y = 0; y < image.height(); y++)
		{
			unsigned char R = (unsigned char)image(x,y,0,0);
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
	cout << endl << "Total pixels: " << image.width() * image.height() << endl;
	
	
	MPI_Finalize();
	
	return 0;
}
