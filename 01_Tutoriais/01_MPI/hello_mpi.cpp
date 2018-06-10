#include <stdlib.h>
#include <stdio.h>
#include <mpi.h>

#include <iostream>

using namespace std;

int main (int argc, char *argv[])
{
  
  int  rank, comm_sz, len;
  char hostname[MPI_MAX_PROCESSOR_NAME];
  
  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Get_processor_name(hostname, &len);
  
  cout << "From process " << rank <<" running on processor " << hostname << ": Number of MPI processes is " << comm_sz << endl;


  MPI_Finalize();


  return 0;
}
