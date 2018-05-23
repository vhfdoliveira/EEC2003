/* 
 * Compile with:
 * g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
 * mpic++ -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
 * mpirun --nodes=2 --time=0-0:5 histogram_MPI <image>
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
	
	// MPI variables
	int  rank, comm_sz, len;
	char hostname[MPI_MAX_PROCESSOR_NAME];
	
	// check if the image was passed as argument
	if( argc != 2){
		cout << "Usage: histogram_serial ImageToLoad" << endl;
		return -1;
    }
	
	// load image
	CImg<unsigned char> image(argv[1]);
	
	// MPI initialization
	MPI_Init(&argc, &argv);
	
	double initial_time = MPI_Wtime();
	
	//read the numbers of process
	MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
	//read the rank of each process
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	//get the processor name
	MPI_Get_processor_name(hostname, &len);
	
	cout << "Number of processes: " << comm_sz << endl;
	cout << "Hello from process " << rank << endl; 
	
	cout << "Image: " << endl;	
	cout << "Width: " << image.width() << endl;
	cout << "Height: " << image.height() << endl;
	
	//TODO: check when this division isn't integer
	int local_rows = image.height() / comm_sz;
	
	//calculate histogram of each "sub-image"
	for(int x = 0; x < image.width(); x++){
		for (int y = rank*local_rows; y < (rank+1)*local_rows; y++){
			unsigned char R = (unsigned char)image(x,y,0,0);
			hist[R]++;
		}
	}
	
	
	//print the histogram of each "sub-image"
	cout << "Local histogram: " << endl;
	unsigned int sum = 0;
	for(int i=0; i < 256; i++){
		cout << hist[i] << " ";
		sum+=hist[i];
	}
	cout << endl << "Sum of all local histogram elements: " << sum << endl;	
	cout << endl << "Total of local pixels: " << image.width() * local_rows << endl;
	
	
	unsigned int global_hist[HIST_SIZE];
	MPI_Reduce(hist, global_hist, HIST_SIZE, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	
	if( rank == 0 ){
		
		//print the histogram of the image
		cout << "Global histogram: " << endl;
		sum = 0;
		for(int i=0; i < 256; i++){
			cout << global_hist[i] << " ";
			sum+=global_hist[i];
		}
		cout << endl << "Sum of all histogram elements: " << sum << endl;	
		cout << endl << "Total pixels: " << image.width() * image.height() << endl;
		
		double elapsed_time = MPI_Wtime() - initial_time;
	
		cout << "Elapsed time: " << elapsed_time << endl;
	}
	
	
	
	MPI_Finalize();
	
	return 0;
}
