#!/bin/bash 
#SBATCH --job-name=OpenMP_VH
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-20:0


for i in {1..5};
do
	
	for threads in 2 4 8 16 32;
	do
	
		export OMP_NUM_THREADS=$threads
		
		for rows in 16 17 18 19 20;
		do
			srun histogram_OpenMP 0 $rows 16 1 1
		done
	
	done
		
	
done



