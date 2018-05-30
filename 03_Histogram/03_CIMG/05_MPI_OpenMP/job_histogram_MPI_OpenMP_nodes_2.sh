#!/bin/bash 
#SBATCH --job-name=OpenMP_MPI
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-5:0


for i in {1..3};
do
	
	export OMP_NUM_THREADS=32
	
	for size in 30 32 34 36;
	do
		mpirun histogram_MPI_OpenMP 0 $size 2 1
	done
		
	
done

