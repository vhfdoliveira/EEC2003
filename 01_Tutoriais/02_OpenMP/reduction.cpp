
#include <string.h>
#include <iostream>
using namespace std;

#include <omp.h> 


int hist[256];


// Main procedure
//----------------
int main(int argc, char** argv) {
	
	int aux[1024];
	
	for(int i=0;i<1024;i++){
		aux[i] = i % 256;
	}
	

	int nthreads;
	#pragma omp parallel
	{
		nthreads = omp_get_num_threads();
		
		if( omp_get_thread_num() == 0 ){ 			
			cout << endl << "Number of threads is: " << nthreads << endl;
		}
		
		#pragma omp for reduction(+:hist[:256])  
		for(int i = 0; i < 1024; i++){					
						
			hist[aux[i]]++;
		
		}
	}
	
	int sum=0;
	for(int x = 0; x < 256; x++){
		cout << hist[x] << " ";
		sum+=hist[x];
	}
	cout << endl;
	cout << "Total sum: " << sum << endl;
	
	return 0;
}
