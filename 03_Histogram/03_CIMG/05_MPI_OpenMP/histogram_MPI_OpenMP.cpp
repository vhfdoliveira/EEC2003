/* 
 * Load modules:
 * module load compilers/gnu/7.1
 * module load libraries/openmpi/1.4-gnu-7.1
 * 
 * Compile with:
 * mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
 * 
 * Use:
 * mpirun --n 1 histogram_MPI_OpenMP 0 34 2 0
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
#include <mpi.h>

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

unsigned int ARRAY_SIZE;


// Main procedure
//----------------
int main(int argc, char** argv) {
	
	double time_ROI_begin, time_ROI_end;
	double time_begin, time_end;
	
	struct timeval t;
	
	gettimeofday(&t,NULL);
	time_begin = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	int rank, comm_sz, len;
	char hostname[MPI_MAX_PROCESSOR_NAME];
	int nthreads;
	
	
	unsigned int rows, columns;
	
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
	
	
	if( !simul ){
		columns = image_cimg.width();
		rows = image_cimg.height();
	}
	else{
		columns = ARRAY_SIZE;
		rows = ARRAY_SIZE;
	}
	
	cout << "Width: " << columns << endl;
	cout << "Height: " << rows << endl;
	
	
	// MPI initialization
	MPI_Init(&argc, &argv);
	
	//read the numbers of process
	MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
	//read the rank of each process
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	//get the processor name
	MPI_Get_processor_name(hostname, &len);
	
	cout << "Hello from process " << rank 
		 << " of " << comm_sz 
		 << " running in processor " << hostname << endl;
	
	
	gettimeofday(&t,NULL);
	time_ROI_begin = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	
	//TODO: check when this division isn't integer
	unsigned int local_rows = rows / comm_sz;
	
	for(unsigned int x = rank*local_rows; x < (rank+1)*local_rows; x++){
	
		#pragma omp parallel
		{
			if( (omp_get_thread_num() == 0) and (x == rank*local_rows) ){ 
				nthreads = omp_get_num_threads();
				cout << endl << "Number of threads is: " << nthreads << endl;
			}
			
			#pragma omp for reduction(+:hist[:HIST_SIZE])							
			for (unsigned int y = 0; y < columns; y++)
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
	
	//Reduce all local histograms to a global histogram
	unsigned long int global_hist[HIST_SIZE];
	MPI_Reduce(hist, global_hist, HIST_SIZE, MPI_UNSIGNED_LONG, MPI_SUM, 0, MPI_COMM_WORLD);
	
	
	if( rank == 0 ){
		gettimeofday(&t,NULL);
		time_ROI_end = (double)t.tv_sec+(double)t.tv_usec*1e-6;
		
		cout << "ROI time: " << time_ROI_end - time_ROI_begin << endl;
	
	
		//print the histogram of the image
		cout << endl << "Global histogram: " << endl;
		unsigned long int sum = 0;
		for(unsigned int i=0; i < HIST_SIZE; i++){
			cout << global_hist[i] << " ";
			sum+=global_hist[i];
		}
	
		cout << endl << endl << "Sum of all global histogram elements: " << sum << endl;	
		cout << "Total pixels: " << (unsigned long) columns * rows << endl;
	
	
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
			csv_name += "_processes_" + SSTR(comm_sz);
			csv_name += "_threads_" + SSTR(nthreads);
			csv_name += "_size_" + SSTR(power);
			csv_name += "_" + string(date);		
			csv_name += ".csv";
			
			cout << csv_name << endl;
			
			ofstream csv;
			csv.open(csv_name.c_str());
			
			char separator = ';';
			
			csv << "ROI time" << separator << time_ROI_end - time_ROI_begin << endl;
			csv << "Total time" << separator << time_end - time_begin << endl;
			csv << "nodes" << separator << nodes << endl;
			csv << "processes" << separator << comm_sz << endl;
			csv << "threads" << separator << nthreads << endl;
			csv << "width" << separator << columns << endl;
			csv << "height" << separator << rows << endl;
			csv << "size" << separator << power << endl;
			csv << "bin" << separator << "count" << endl;
			
			for( int h = 0; h < HIST_SIZE; h++ ){
				csv << h << separator << global_hist[h] << endl;
			}
			
			csv.close();
		}
	}
	
	MPI_Finalize();
	
	
	for (unsigned int i = 0; i < ARRAY_SIZE; ++i)
		delete [] image_simul[i];
	delete [] image_simul;
	
	
	return 0;
}
