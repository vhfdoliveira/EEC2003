#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <mpi.h>
#include <sys/time.h>
#include <iostream>

using namespace std;

#define ULINT_MAX 18446744070000000000

int main (int argc, char *argv[])
{
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
		
		exit(EXIT_FAILURE);
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
		for(i = 0; i<200000; i++){
			n++;
			if( n >= ULINT_MAX / comm_sz ){
				printf("The number of points exceeded the maximum allowed for unsigned long.\n");
				exit(EXIT_FAILURE);
			}
			
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
		//printf("Elapsed time: %f\n", current_time - initial_time );
	}
		
	
	printf("hits of process %d: %lu\n", rank, h);
	printf("numbers of process %d: %lu\n", rank, n);
	
	
	unsigned long int calc[2];
	unsigned long int result[2];
	int tag =100;
	
	calc[0] = n;
	calc[1] = h;
	
	MPI_Datatype newtype;
	MPI_Type_contiguous(2, MPI_UNSIGNED_LONG, &newtype);
	MPI_Type_commit(&newtype);
	
	MPI_Status status;
	
	if( rank == 1 ){
		
		MPI_Send(calc, 1, newtype, 0, tag, MPI_COMM_WORLD);
		
	}
	else if( rank == 0 ){
		MPI_Recv(result, 1, newtype, 1, tag, MPI_COMM_WORLD, &status);
		
		cout << "n recebido: " << result[0] << endl;
		cout << "h recebido: " << result[1] << endl;
		
		cout << "n local: " << calc[0] << endl;
		cout << "h local: " << calc[1] << endl;
		
		result[0] += calc[0];
		result[1] += calc[1]; 
		
		cout << "n total: " << result[0] << endl;
		cout << "h total: " << result[1] << endl;
		
		double pi = ((double)(4*result[1])/result[0]);	
		printf("\nPI: %f\n", pi);
	}
	
	MPI_Type_free( &newtype );
	
	/*
	double reduce_begin = MPI_Wtime();
	MPI_Reduce(&calc, &result, 2, MPI_UNSIGNED_LONG, MPI_SUM, 0, MPI_COMM_WORLD);	
	//MPI_Reduce(&calc, &result, 1, newtype, MPI_SUM, 0, MPI_COMM_WORLD);	
	double reduce_end = MPI_Wtime();
	
	if (rank == 0){
		printf("Total hits: %lu\n", result[1]);
		printf("Total numbers: %lu\n", result[0]);
		
		double pi = ((double)(4*result[1])/result[0]);
	
		printf("PI: %f\n", pi);
		
		printf("Reduce time: %f\n", reduce_end - reduce_begin);
	}
	*/

	MPI_Finalize();
	
  
	return 0;
}
