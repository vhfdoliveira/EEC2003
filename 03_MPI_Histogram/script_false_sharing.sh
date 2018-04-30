#!/bin/bash 
#SBATCH --job-name=MPI_VH
#SBATCH --output=slurms_output/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=0-0:5

export OMP_NUM_THREADS=8

for i in {1..5};
do
		
	srun --nodes=1 --ntasks=1 opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
	
done



