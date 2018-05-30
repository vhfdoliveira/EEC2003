#!/bin/bash 
#SBATCH --job-name=MPI_VH
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-30:0


for i in {1..3};
do
	
	for size in 30 32 34 36;
	do
		mpirun histogram_MPI 0 $size 8 1
	done
	
done


