#!/bin/bash 
#SBATCH --job-name=MPI_VH
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=0-0:15

srun --nodes=2 --ntasks=2 opencv "02_Imagens/Einstein_12800x12800.jpg"

export OMP_NUM_THREADS=8

srun opencv "02_Imagens/Einstein_12800x12800.jpg"
