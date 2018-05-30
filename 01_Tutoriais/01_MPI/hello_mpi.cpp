#include <stdlib.h>
#include <stdio.h>
#include <mpi.h>

#include <iostream>

using namespace std;

int main (int argc, char *argv[])
{
  
  cout << "Before the MPI_Init." << endl;

  int  rank, comm_sz, len;
  char hostname[MPI_MAX_PROCESSOR_NAME];
  
  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Get_processor_name(hostname, &len);
  
  cout << "From process " << rank <<" running on processor " << hostname << ": Number of MPI processes is " << comm_sz << endl;

  //printf("From process %d: Number of MPI processes is %d\n", rank, comm_sz);

  MPI_Finalize();
}
