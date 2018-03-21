ls
mkdir 01_Tutoriais
mv * 01_Tutoriais/
ls
cd 01_Tutoriais/
ls
mpicc hello_mpi.c -o hello_mpi
vim jobMPI.sh 
sbatch jobMPI.sh 
ls
cat erro116615.err 
cat saida116615.out 
vim jobMPI.sh 
sbatch jobMPI.sh 
ls
cat saida116616.out 
vim jobMPI.sh 
sbatch jobMPI.sh 
vim jobMPI.sh 
sbatch jobMPI.sh 
cat saida116620.out 
vim jobMPI.sh 
sbatch jobMPI.sh 
cat saida116623.out 
vim jobMPI.sh 
sbatch jobMPI.sh 
cat saida116624.out 
squeue | vhf
squeue | grep vhf
vim jobMPI.sh 
sbatch jobMPI.sh 
ls
ls -al
cat slurm-116643.out 
vim jobMPI.sh 
squeue | grep vhf
ls
cd 01_Tutoriais/
ls
ls -al
cat saida116624.out 
cat jobMPI.sh 
mkdir 01_MPI
cp * 01_MPI/
ls
cd 01_MPI/
ls
cd ..
mv * 01_MPI/
ls
cd 01_MPI/
ls
cd ..
mkdir 02_OpenMP
cd 02_OpenMP/
ls
vim hello_openmp.c
vim hello_openmp.sh
icc -O2 hello_openmp.c -o hello_openmp -openmp
sbatch hello_openmp.sh 
squeue | grep vhf
ls
cat slurm-117563.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
ls
cat slurm-117564.out 
vim hello_openmp.sh 
vim hello_openmp.c 
icc -O2 hello_openmp.c -o hello_openmp -openmp
vim hello_openmp.sh 
sbatch hello_openmp.sh 
ls -al
cat slurm-117565.out 
sbatch hello_openmp.sh 
cat slurm-117566.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117569.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117570.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117571.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117572.out 
vim hello_openmp.sh 
vim hello_openmp.c 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117574.out 
icc -O2 hello_openmp.c -o hello_openmp -openmp
sbatch hello_openmp.sh 
cat slurm-117575.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117582.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117583.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117584.out 
vim hello_openmp.sh 
sbatch hello_openmp.sh 
cat slurm-117591.out 
cp hello_openmp.sh script.sh
vim script.sh 
rm script.sh 
vim hello_openmp.sh 
module avail
module load compilers/gnu/4.8 
python
gcc
ls
cd 01_Tutoriais/0
cd 01_Tutoriais/01_MPI/
ls
sbatch jobMPI.sh 
cat slurm-117708.out 
sbatch jobMPI.sh 
cat slurm-117709.out
ls
ls
cd 02_MPI_PI/
ls
gcc PI_serial.c -o PI_serial
module avail
module load compilers/gnu/4.8
gcc PI_serial.c -o PI_serial
g++ -Wall PI_serial.c -o PI_serial
gcc PI_serial.c -o PI_serial
module load compilers/gnu/4.7 
gcc PI_serial.c -o PI_serial
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
g++ -Wall PI_serial.c -o PI_serial
./PI_serial 
module avail
module avail | grep mpi
mpiicc PI_MPI.c -o PI_MPI
./PI_MPI 
mpiicc PI_MPI.c -o PI_MPI
./PI_MPI 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117721.out 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117722.out 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117722.out 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117726.out
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117727.out 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117729.out 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117749.out 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117752.out 
sbatch job_PI_MPI.sh 
cat slurm-117753.out 
cat slurm-117752.out 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117755.out 
mpiicc PI_MPI.c -o PI_MPI
sbatch job_PI_MPI.sh 
cat slurm-117763.out 
mpiicc PI_MPI.c -o PI_MPI
ls
cd 01_Tutoriais/02_OpenMP/
cd ..
ls
cd ..
ls
cd 01_Tutoriais/
ls
cd 02_OpenMP/
ls
cat hello_openmp.c 
ls
cat hello_openmp.sh 
ls
vim hello_openmp.c 
