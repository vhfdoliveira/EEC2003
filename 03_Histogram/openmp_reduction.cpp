#include <omp.h> 
#include <iostream>

#include <opencv2/opencv.hpp>


using namespace std;
using namespace cv;

int main()
{

	Mat image;
    image = imread( "/home/vhfdoliveira2/03_MPI_Histogram/02_Imagens/black_white.jpg", IMREAD_GRAYSCALE );
    //image = imread( "/home/pattousai/DADOS/Linux/Dropbox/Mestrado/EEC2003_Computação_Alto_Desempenho/01_Aulas/03_MPI_Histogram/02_Imagens/Einstein_3400x3127.jpg", IMREAD_GRAYSCALE );
    
    if ( !image.data )
    {
        printf("No image data \n");
        return -1;
    }
	
	int total = 0;
	int nthreads = 0;
	int thread_id = 0;
	
	int size = 10;
	int global_array[10];
	for(int i = 0; i < 10; i++){
		global_array[i] = 0;
	}
	
	#pragma omp parallel reduction(+:global_array[:10])
	{
		nthreads = omp_get_num_threads();
		thread_id = omp_get_thread_num();
		
		for(int i=0; i < 10; i++){
			global_array[i] = i;
		}
		
		//total = thread_id;
		
		/*nthreads = omp_get_num_threads();
		thread_id = omp_get_thread_num();
				
		cout << "Thread " << thread_id	<<" of " << nthreads << " says: Hello World\n" << endl;
		
		int local_array[10];
		//#pragma omp for
		for( int i = 0; i < 10; i++ ){
			local_array[i] = thread_id;
		}
		
		
		
		#pragma omp for reduction(+:global_array[0:10])
		for(int i = 0; i < 10; i++){
			global_array[i] += local_array[i];
		}
		
		/*#pragma omp for reduction(+:total)
		for(int i = 0; i < 10000; i++){
			total += i;
		}*/
	}
	
	
	cout << "Global array: " << endl;
	for(int i = 0; i < 10; i++ ){
		cout << global_array[i] << " ; ";
	}
	cout << endl;
	
	//cout << "Total: " << total << endl;
	
	return 0;
}
