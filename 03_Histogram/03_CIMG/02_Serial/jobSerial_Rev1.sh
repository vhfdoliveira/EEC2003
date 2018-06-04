#!/bin/bash 
#SBATCH --job-name=MPI_VH
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-20:0


for i in {1..5};
do
		
	for rows in 16 17 18 19 20;
	do
		srun --nodes=1 --ntasks=1 histogram_serial 0 $rows 16 1 1
	done
	
done



