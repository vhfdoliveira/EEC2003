#!/bin/bash
#SBATCH --output=slurm_outputs/slurm-%j.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=1
#SBATCH --time=0-0:10

export OMP_NUM_THREADS=8

mpirun histogram_MPI_OpenMP 0 32 2 0
