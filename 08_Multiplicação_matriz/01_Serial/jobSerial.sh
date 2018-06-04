#!/bin/bash 
#SBATCH --job-name=SERIAL_VH
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=120G
#SBATCH --exclusive
#SBATCH --time=0-10:0


for i in {1..5};
do
		
	for size in 1024 2048 4096 8192 16384;
	do
		srun mult_matrix 1 $size 1024 1024 1024 1 1 "matrix1_"$size"x1024.csv" "matrix2_1024x1024.csv"
	done
	
done



