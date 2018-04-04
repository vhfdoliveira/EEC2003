//gcc opencv.c -o opencv `pkg-config --libs --cflags opencv` -ldl -lm

#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <fstream>

#include <mpi.h>
#include <omp.h> 

using namespace cv;
using namespace std;

int main(int argc, char** argv )
{
	
	int  rank, comm_sz, len;
	char hostname[MPI_MAX_PROCESSOR_NAME];
	
	Mat image;
    image = imread( "/home/vhfdoliveira2/03_MPI_Histogram/02_Imagens/black_white.jpg", IMREAD_GRAYSCALE );
    //image = imread( "/home/pattousai/DADOS/Linux/Dropbox/Mestrado/EEC2003_Computação_Alto_Desempenho/01_Aulas/03_MPI_Histogram/02_Imagens/Einstein_3400x3127.jpg", IMREAD_GRAYSCALE );
    //image = imread( "/home/pattousai/DADOS/Linux/Dropbox/Mestrado/EEC2003_Computação_Alto_Desempenho/01_Aulas/03_MPI_Histogram/02_Imagens/black_white.jpg", IMREAD_GRAYSCALE );
    
    if ( !image.data )
    {
        printf("No image data \n");
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
	
	//TODO: check when this division isn't integer
	int local_rows = image.size().height / comm_sz;
	
	int nthreads, thread_id; 
	int total_binVal[histSize];
	for( int h = 0; h < histSize; h++ )
	{
		total_binVal[h] = 0;
	}
	
	#pragma omp parallel 
	{ 
		nthreads = omp_get_num_threads();
		thread_id = omp_get_thread_num();
		
		printf("Thread %d says: Hello World\n", thread_id); 
		
		int local_cols = image.size().width / nthreads;
		
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
		
		#pragma omp critical
		{
			for( int h = 0; h < histSize; h++ )
			{
				total_binVal[h] += local_binVal[h];
			}
		}
	
	}
	
	int global_binVal[histSize];
	MPI_Reduce(total_binVal, global_binVal, histSize, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	cout << "global hist: " << endl;
	if( rank == 0 ){
		for( int h = 0; h < histSize; h++ )
		{
			cout<<" "<<global_binVal[h];
		}
		cout << endl;
	}
    
	
    
    MPI_Finalize();
    
    return 0;
}
