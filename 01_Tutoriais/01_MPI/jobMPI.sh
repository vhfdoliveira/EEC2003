#!/bin/bash
#SBATCH --ntasks=4
#SBATCH --nodes=2
#SBATCH --time=0-0:5

srun hello_mpi
