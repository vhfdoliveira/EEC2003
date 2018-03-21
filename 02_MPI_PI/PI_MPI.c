#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <mpi.h>

int main (int argc, char *argv[])
{
	int n = 1000000;
	int h = 0;
	
	int  rank, comm_sz, len;
	char hostname[MPI_MAX_PROCESSOR_NAME];
	  
	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);

	MPI_Get_processor_name(hostname, &len);
	printf ("Hello from process %d on node %s!\n", rank, hostname);	

	double x, y, distance;
	time_t t;
	
	srand((unsigned)time(&t)+rank);
	
	int i ;
	for(i = 0; i<n; i++){
		
		x = ((double) ((double)rand()) / ((double)RAND_MAX));
		y = ((double) ((double)rand()) / ((double)RAND_MAX));	
		
		//printf("x: %f ; y: %f\n",x,y);
		
		distance = sqrt( pow(x-0.5, 2) + pow(y-0.5, 2) );
		//printf("Distance: %f\n", distance);
		
		if (distance <= 0.5){
			h++;
		}
	}
	
	
	printf("hits: %d\n", h);
	
	int h_total = 0;
	MPI_Reduce(&h, &h_total, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	//int n_total = 0;
	//MPI_Reduce(&n, &n_total, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	if (rank == 0){
		printf("Total hits: %d\n", h_total);
		//printf("Total numbers: %d\n", n_total);
		
		//double pi = ((double)(4*h_total)/n_total);
		double pi = ((double)(4*h_total)/(n*comm_sz));
	
		printf("PI: %f\n", pi);
	}
	

	MPI_Finalize();
	
  
	return 0;
}
