#!/bin/bash
#SBATCH --output=outputs/slurm-%j.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=1
#SBATCH --time=0-0:3

mpirun histogram_MPI bird-780x520.jpg
