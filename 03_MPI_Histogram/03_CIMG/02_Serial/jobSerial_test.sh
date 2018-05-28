#!/bin/bash 
#SBATCH --job-name=MPI_VH
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=0-0:5

srun --nodes=1 --ntasks=1 histogram_serial 0 20 1 1




