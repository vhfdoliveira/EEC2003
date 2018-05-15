#!/bin/bash 
#SBATCH --job-name=MPI_VH
#SBATCH --output=slurms_output/slurm-%j.out
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=1
#SBATCH --time=0-2:0


for i in {1..5};
do

	for nodes in 2 4 8;
	do
		
		srun --nodes=$nodes --ntasks=$nodes opencv_mpi "02_Imagens/Einstein_12800x12800.jpg"
		
		width=6400		
		for height in 3200 6400 12800;
		do
			srun --nodes=$nodes --ntasks=$nodes opencv_mpi "02_Imagens/Einstein_"$width"x"$height".jpg"
		done
			
	done

	
done


