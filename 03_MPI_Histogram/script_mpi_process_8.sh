#!/bin/bash 
#SBATCH --job-name=MPI_VH
#SBATCH --output=slurms_output/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=0-0:10


for i in {1..5};
do

	srun opencv_mpi_process "02_Imagens/Einstein_12800x12800.jpg"

				
	width=6400		
	for height in 3200 6400 12800;
	do
		srun opencv_mpi_process "02_Imagens/Einstein_"$width"x"$height".jpg"
	done


done



