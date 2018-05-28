#!/bin/bash 
#SBATCH --job-name=OpenMP_VH
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-10:0


for i in {1..3};
do
	
	for threads in 2 4 8 16 32;
	do
	
		export OMP_NUM_THREADS=$threads
		
		for size in 30 32 34 36;
		do
			srun histogram_OpenMP 0 $size 1 1
		done
	
	done
		
	
done



