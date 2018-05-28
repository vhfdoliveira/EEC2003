#!/bin/bash 
#SBATCH --job-name=MPI_VH
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-20:0


for i in {1..3};
do
		
	for size in 30 32 34 36;
	do
		srun --nodes=1 --ntasks=1 histogram_serial 0 $size 1 1
	done
	
done



