#include <omp.h> 
#include <sched.h>
#include <stdio.h>
#include <time.h>

#include <iostream>

using namespace std;


int main (int argc, char *argv[]) 
{ 
	clock_t t;

	t = clock();
	
	int nthreads, thread_id, cpu_id; 
	#pragma omp parallel private(nthreads, thread_id, cpu_id) 
	{ 
		thread_id = omp_get_thread_num();
		cpu_id = sched_getcpu();
		printf("Thread %d is running on CPU %d and says: Hello World\n", thread_id, cpu_id); 
		if (thread_id == 0)
		{ 
			nthreads = omp_get_num_threads();
			printf("Thread %d is running on CPU %d and reports: the number of threads are %d\n", thread_id, cpu_id, nthreads); 
		}

	}

 	t = clock() - t;
	double time_taken = ((double)t) / CLOCKS_PER_SEC;

	printf("Time taken to execute: %f seconds\n", time_taken);
	
	return 0; 
}
