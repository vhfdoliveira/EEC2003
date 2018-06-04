#!/bin/bash 
#SBATCH --job-name=OpenMP_MPI
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-5:0


for i in {1..5};
do
	
	export OMP_NUM_THREADS=32
	
	for rows in 16 17 18 19 20;
	do
		mpirun histogram_MPI_OpenMP 0 $rows 16 4 1
	done
		
	
done

