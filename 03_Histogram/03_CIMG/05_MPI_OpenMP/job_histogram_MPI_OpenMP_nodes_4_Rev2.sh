#!/bin/bash 
#SBATCH --job-name=OMP_MPI_Rev2
#SBATCH --output=slurm_outputs/slurm-Rev2-%j.out
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-2:0


for i in {1..5};
do
	
	export OMP_NUM_THREADS=32
	
	mpirun histogram_MPI_OpenMP_Rev2 0 20 16 4 1
		
	
done

