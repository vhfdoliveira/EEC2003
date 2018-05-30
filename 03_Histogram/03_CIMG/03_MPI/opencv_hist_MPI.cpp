//gcc opencv.c -o opencv `pkg-config --libs --cflags opencv` -ldl -lm

#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <fstream>

#include <mpi.h>

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
	
	printf ("Hello from process %d on node %s!\n", rank, hostname);
	
	//TODO: check when this division isn't integer
	int local_rows = image.size().height / comm_sz;
	
	Mat local_image_MPI = image(Range(rank*local_rows, (rank+1)*local_rows), Range::all());
    
    
    // Initialize parameters
    int histSize = 256;    // bin size
    float range[] = { 0, 256 };
    const float *ranges[] = { range };
    
    bool uniform = true; 
    bool accumulate = false;
    
    // Calculate histogram
    Mat local_hist;
    calcHist( &local_image_MPI, 1, 0, Mat(), local_hist, 1, &histSize, ranges, uniform, accumulate );
    
    // Show the calculated histogram in command window
    int local_binVal[histSize];
    for( int h = 0; h < histSize; h++ )
	{
		local_binVal[h] = local_hist.at<float>(h);
	}
	
	int global_binVal[histSize];
	MPI_Reduce(local_binVal, global_binVal, histSize, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
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
