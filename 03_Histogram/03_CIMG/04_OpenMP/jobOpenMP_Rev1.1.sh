#!/bin/bash 
#SBATCH --job-name=OMP_R11_32
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --hint=compute_bound
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-3:0


for i in {1..5};
do
	
	for threads in 32;
	do
	
		export OMP_NUM_THREADS=$threads
		
		for rows in 16 17 18 19 20;
		do
			srun histogram_OpenMP_Rev1 0 $rows 16 1 1
		done
	
	done
		
	
done



