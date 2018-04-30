//gcc opencv.c -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
//mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
//srun --nodes=1 --cpus-per-task=2 --time=0-0:5 opencv "02_Imagens/Einstein_6400x6400.jpg"

#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <fstream>
#include <iostream>
#include <time.h>

#include <mpi.h>
#include <omp.h> 

#include <sstream>

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()
        
#define DATE_FORMAT "%Y%m%d_%H%M%S"
#define DATE_SIZE 20

using namespace cv;
using namespace std;

int main(int argc, char** argv )
{
	
	int  rank, comm_sz, len;
	char hostname[MPI_MAX_PROCESSOR_NAME];
	
	if( argc != 2){
		cout << "Usage: opencv ImageToLoad" << endl;
		return -1;
    }
	
	Mat image;
    image = imread( argv[1] , IMREAD_GRAYSCALE );
    
    if ( !image.data ){
        cout << "No image data" << endl;
        return -1;
    }
	  
	MPI_Init(&argc, &argv);
	
	double initial_time = MPI_Wtime();
	
	MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Get_processor_name(hostname, &len);
	
	
	printf ("Hello from process %d of %d on node %s!\n", rank, comm_sz, hostname);
	
	// Initialize parameters
	int histSize = 256;    // bin size
	float range[] = { 0, 256 };
	const float *ranges[] = { range };
	
	bool uniform = true; 
	bool accumulate = false;
	
	int width = image.size().width;
	int height = image.size().height;
	
	//TODO: check when this division isn't integer
	int local_rows = height / comm_sz;
	
	int nthreads, thread_id; 
	int total_binVal[histSize];
	for( int h = 0; h < histSize; h++ )
	{
		total_binVal[h] = 0;
	}
	
	#pragma omp parallel num_threads(16)
	{ 
		nthreads = omp_get_num_threads();
		thread_id = omp_get_thread_num();
		
		printf("Thread %d of %d says: Hello World\n", thread_id, nthreads); 
		
		int local_cols = width / nthreads;
		
		Mat local_image;
		local_image = image(Range(rank*local_rows, (rank+1)*local_rows), 
							Range(thread_id*local_cols, (thread_id+1)*local_cols ));
		
		
		
		// Calculate histogram
		Mat local_hist;
		calcHist( &local_image, 1, 0, Mat(), local_hist, 1, &histSize, ranges, uniform, accumulate );
		
		int local_binVal[histSize];
		for( int h = 0; h < histSize; h++ )
		{
			local_binVal[h] = local_hist.at<float>(h);
		}
		
		for( int h = 0; h < histSize; h++ )
		{
			total_binVal[h] += local_binVal[h];
		}
		
	
	}
	
	int global_binVal[histSize];
	MPI_Reduce(total_binVal, global_binVal, histSize, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	double elapsed_time = MPI_Wtime() - initial_time;
	
	cout << "global hist: " << endl;
	if( rank == 0 ){
		for( int h = 0; h < histSize; h++ ){
			cout<<" "<<global_binVal[h];
		}
		cout << endl;
		
		char date[DATE_SIZE];
		time_t now = time(0);
		strftime(date, sizeof(date), DATE_FORMAT, localtime(&now));
		
		string csv_name = string("outputs/") + string("output");
		csv_name += "_nodes_" + SSTR(comm_sz);
		csv_name += "_threads_" + SSTR(nthreads);
		csv_name += "_width_" + SSTR(width);
		csv_name += "_height_" + SSTR(height);
		csv_name += "_false_sharing";
		csv_name += "_" + string(date);		
		csv_name += ".csv";
		
		cout << csv_name << endl;
		
		ofstream csv;
		csv.open(csv_name.c_str());
		
		char separator = ';';
		
		csv << "execution time" << separator << elapsed_time << endl;
		csv << "nodes" << separator << comm_sz << endl;
		csv << "threads" << separator << nthreads << endl;
		csv << "width" << separator << width << endl;
		csv << "height" << separator << height << endl;
		csv << "bin" << separator << "count" << endl;
		
		for( int h = 0; h < histSize; h++ ){
			csv << h << separator << global_binVal[h] << endl;
		}
		
		csv.close();
		
	}
    
	
    
    MPI_Finalize();
    
    return 0;
}
