#!/bin/bash 
#SBATCH --job-name=OMP_hello 
#SBATCH --time=0-0:20
#SBATCH --threads-per-core=1

KMP_AFFINITY="scatter"

export OMP_NUM_THREADS=10

./hello_openmp | sort
