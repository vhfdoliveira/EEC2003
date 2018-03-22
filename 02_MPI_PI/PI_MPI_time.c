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
	unsigned long int minutes;
	unsigned long int seconds;
	
	if (argc != 2){
		printf("The time, in minutes, is expected as argument.\n");
		
		exit(1);
	}
	
	minutes = atoi(argv[1]);
	seconds = minutes * 60;
	
	if (minutes <= 0){
		printf("The time needs to be higher then 0.\n");
		
		exit(1);
	}
	
	printf("Minutes of the execution: %d.\n", minutes);
	
	
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
	
	int i = 0;
	double begin = MPI_Wtime();
	for(i = 0; i<100000; i++){
		
		x = ((double) ((double)rand()) / ((double)RAND_MAX));
		y = ((double) ((double)rand()) / ((double)RAND_MAX));	
		
		//printf("x: %f ; y: %f\n",x,y);
		
		distance = sqrt( pow(x-0.5, 2) + pow(y-0.5, 2) );
		//printf("Distance: %f\n", distance);
		
		if (distance <= 0.5){
			h++;
		}
	}
	double end = MPI_Wtime();

	printf("Elapsed time is %f\n", end - begin);
	
	
	printf("hits: %d\n", h);
	
	
	//struct timeval stop, start;
	//gettimeofday(&start, NULL);
		
	int h_total = 0;
	MPI_Reduce(&h, &h_total, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	int n_total = 0;
	MPI_Reduce(&n, &n_total, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	
	//gettimeofday(&stop, NULL);
	//printf("took %lu\n", stop.tv_usec - start.tv_usec);
	
	
	if (rank == 0){
		printf("Total hits: %d\n", h_total);
		printf("Total numbers: %d\n", n_total);
		
		//double pi = ((double)(4*h_total)/n_total);
		double pi = ((double)(4*h_total)/(n*comm_sz));
	
		printf("PI: %f\n", pi);
	}
	

	MPI_Finalize();
	
  
	return 0;
}
