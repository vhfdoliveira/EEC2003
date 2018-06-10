#!/bin/bash 
#SBATCH --job-name=MPI_R4_N2
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-7:0


for i in {1..5};
do
	
	export OMP_NUM_THREADS=32
	
	for rows in 16 17 18 19 20;
	do
		mpirun histogram_MPI_OpenMP_Rev4 0 $rows 16 2 1
	done
		
	
done

