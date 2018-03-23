#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <mpi.h>
#include <sys/time.h>


int main (int argc, char *argv[])
{
	//unsigned int n = 100000;
	unsigned long int n = 0;
	unsigned long int h = 0;
	unsigned long int execution_time_minutes;
	unsigned long int execution_time_seconds;
	
	if (argc != 2){
		printf("The time, in minutes, is expected as argument.\n");
		
		exit(1);
	}
	
	execution_time_minutes = atoi(argv[1]);
	execution_time_seconds = execution_time_minutes * 60;
	
	if (execution_time_minutes <= 0){
		printf("The time needs to be higher then 0.\n");
		
		exit(1);
	}
	
		
	int  rank, comm_sz, len;
	char hostname[MPI_MAX_PROCESSOR_NAME];
	  
	MPI_Init(&argc, &argv);
	
	double initial_time = MPI_Wtime();
	
	MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Get_processor_name(hostname, &len);
	
	printf ("Hello from process %d on node %s!\n", rank, hostname);	

	double x, y, distance;
	time_t t;
	
	srand((unsigned)time(&t)+rank);
	
	int i = 0;
	double current_time = MPI_Wtime();
	
	while( current_time - initial_time < execution_time_seconds - 1 ){
		for(i = 0; i<100000; i++){
			n++;
			
			x = ((double) ((double)rand()) / ((double)RAND_MAX));
			y = ((double) ((double)rand()) / ((double)RAND_MAX));	
			
			//printf("x: %f ; y: %f\n",x,y);
			
			distance = sqrt( pow(x-0.5, 2) + pow(y-0.5, 2) );
			//printf("Distance: %f\n", distance);
			
			if (distance <= 0.5){
				h++;
			}
		}
		
		current_time = MPI_Wtime();
		printf("Elapsed time: %f\n", current_time - initial_time );
	}
		
	
	printf("hits: %d\n", h);
	printf("numbers: %d\n", n);
	
	unsigned long int h_total = 0;
	MPI_Reduce(&h, &h_total, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	unsigned long int n_total = 0;
	MPI_Reduce(&n, &n_total, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	
	if (rank == 0){
		printf("Total hits: %d\n", h_total);
		printf("Total numbers: %d\n", n_total);
		
		double pi = ((double)(4*h_total)/n_total);
	
		printf("PI: %f\n", pi);
	}
	

	MPI_Finalize();
	
  
	return 0;
}
