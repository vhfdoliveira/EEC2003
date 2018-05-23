#!/bin/bash
#SBATCH --output=outputs/slurm-%j.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=1
#SBATCH --time=0-0:3

export OMP_NUM_THREADS=2

mpirun histogram_MPI_OpenMP bird-780x520.jpg
