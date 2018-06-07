#!/bin/bash 
#SBATCH --job-name=OpenMP_Rev2
#SBATCH --output=slurm_outputs/slurm-Rev2-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-20:0


for i in {1..5};
do
	
	export OMP_NUM_THREADS=16
	
	srun histogram_OpenMP_Rev2 0 20 16 1 1		
	
done



