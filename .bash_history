module load softwares/git/2.11.0-gnu-4.4 
git pull
cd 02_MPI_PI/
ls
vim PI_MPI_time.c 
mpiicc PI_MPI_time.c -o PI_MPI_time
srun -N2 -n8 --time=0-0:2 PI_MPI_time 2
srun -N2 -n2 --time=0-0:1 PI_MPI_time 1
module load softwares/git/2.11.0-gnu-4.4 
ls
git pull
ls
cd 02_MPI_PI/
vim test.c 
mpiicc test.c -o test
gcc test.c -o test
vim test.c 
exit
ls
cd 02_MPI_PI/
vim test.c 
mpiicc test.c -o test
./teste
./test
vim test.c 
mpiicc test.c -o test
./test
vim test.c 
mpiicc test.c -o test
./test
vim test.c 
mpiicc test.c -o test
./test
ls
module load softwares/git/2.11.0-gnu-4.4 
git pull
git commit . -m "b"
git pull
ls
cd 02_MPI_PI/
ls
rm test.c 
git commit . -m "c"
cd ..
git commit . -m "c"
git pull
git rm 02_MPI_PI/test.c
git pull
git status
git pull
git commit
git commit -m "k"
git merge
git pul
git pull
ls
cd 02_MPI_PI/
ls
vim PI_MPI_time.c 
ls
mpiicc PI_MPI_time.c -o PI_MPI_time
./PI_MPI_time 
srun -N2 -n2 --time=0-0:1 PI_MPI_time 1
module load softwares/git/2.11.0-gnu-4.4 
git pull
cd 02_MPI_PI/
ls
vim PI_MPI_time.c 
mpiicc PI_MPI_time.c -o PI_MPI_time
srun -N2 -n2 --time=0-0:1 PI_MPI_time 1
srun -N2 -n2 --time=0-0:1 PI_MPI_time 2
srun -N2 -n2 --time=0-0:2 PI_MPI_time 2
module load softwares/git/2.11.0-gnu-4.4 
git pull
ls
cd 02_MPI_PI/
mpiicc PI_MPI_time.c -o PI_MPI_time
srun -N2 -n3 --time=0-0:2 PI_MPI_time 2
srun -N2 -n16 --time=0-0:5 PI_MPI_time 5
module load softwares/git/2.11.0-gnu-4.4 
git pull
cd 02_MPI_PI/
ls
mpiicc PI_MPI_time_2_reduces.c -o PI_MPI_time_2_reduces
srun -N2 -n3 --time=0-0:1 PI_MPI_time 1
ls
vim PI_MPI_time_2_reduces.c 
srun -N2 -n3 --time=0-0:1 PI_MPI_time_2_reduces 1
module load softwares/git/2.11.0-gnu-4.4 
git pull
cd 02_MPI_PI/
ls
srun -N1 -n4 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N3 -n4 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N2 -n4 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N3 -n4 --time=0-0:1 PI_MPI_time_2_reduces 1
cd 02_MPI_PI/
srun -N3 -n4 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N1 -n4 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N1 -n32 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N3 -n32 --time=0-0:1 PI_MPI_time_2_reduces 1
cd 02_MPI_PI/
srun -N3 -n32 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N -n16 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N1 -n32 --time=0-0:1 PI_MPI_time_2_reduces 1
srun -N1 -n16 --time=0-0:1 PI_MPI_time_2_reduces 1
module load softwares/git/2.11.0-gnu-4.4 
git pull
cd 02_MPI_PI/
ls
mpiicc PI_MPI_time_1_reduce.c -o PI_MPI_time_1_reduce
srun -N1 -n16 --time=0-0:1 PI_MPI_time_1_reduce 1
srun -N3 -n96 --time=0-0:1 PI_MPI_time_1_reduce 1
srun -N3 -n32 --time=0-0:1 PI_MPI_time_1_reduce 1
module avail
module load softwares/opencv/2.4.13.3-gnu-4.8 
ls
git pull
module load softwares/git/2.11.0-gnu-4.4 
git pull
ls
cd 03_MPI_Histogram/
ls
ping www.google.com.br
ifconfig
ip
ip -d
ping www.google.com.br
ls
git pull
ls
mpiicc opencv_hello_world.c -o opencv_hello_world
gcc opencv_hello_world.c -o opencv_hello_world.c 
g++ opencv_hello_world.c -o opencv_hello_world.c 
git pull
g++ opencv_hello_world.c -o opencv_hello_world.c 
g++ opencv_hello_world.cpp -o opencv_hello_world
git pull
ls
g++ opencv_hello_world.cpp -o opencv_hello_world
ls
git pull
ls
cd ..
ls
cd 03_MPI_Histogram/
ls
cp opencv_hello_world.cpp opencv_hello_world.c
rm opencv_hello_world.c
module avail
cd ..
cd 02_MPI_PI/
ls
git pull
ls
mpiicc PI_MPI_time_1_reduce.cpp -o PI_MPI_time_1_reduce
srun -N1 -n1 --time=0-0:1 PI_MPI_time_1_reduce 1
ls
cd ..
cd 03_MPI_Histogram/
ls
mpiicc opencv_hello_world.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
./opencv 
g++ opencv_hello_world.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
./opencv
git pull
ls
cd 02_Imagens/
ls
cd ..
vim opencv_hello_world.cpp 
cd 02_Imagens/
pwd
cd ..
git pull
ls
mpiicc opencv_hello_world.cpp -o opencv
mpiicc opencv_hello_world.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
./opencv 
git pull
mpiicc opencv_hello_world.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
./opencv 
python3
module load softwares/python/3.6.1-gnu-4.8 
python3
module avail
git pull
ls
git pull
ls
mpiicc opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
git pull
mpiicc opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
./opencv_hist 
git pull
mpiicc opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
./opencv_hist 
ls
cd 02_Imagens/
ls
git pull
ls
cd ..
ls
mpiicc opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
./opencv_hist 
mpiicc opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
./opencv_hist 
mpiicc opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
./opencv_hist 
mpiicc opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
./opencv_hist 
module avail
g++ opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
mpiicc opencv_hist.cpp -o opencv_hist `pkg-config --libs --cflags opencv` -ldl -lm
./opencv_hist 
ls
module load softwares/git/2.11.0-gnu-4.4 
cd 03_MPI_Histogram/
ls
git commit opencv_hello_world.cpp opencv_hist.cpp -m "a"
git push origin master
ls
cd 03_MPI_Histogram/
ls
vim anotações\ 23.03 
module load softwares/git/2.11.0-gnu-4.4 
git pull
ls
vim anotações\ 23.03 
git commit opencv_hello_world.cpp -m "a"
exit
ls
module load softwares/git/2.11.0-gnu-4.4 
module load softwares/opencv/2.4.13.3-gnu-4.8 
cd 03_MPI_Histogram/
git pull
rm opencv
git pull
ls
mpiicc opencv_hist_MPI.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
./opencv
srun -N 2 -n 2 --time=0-0:5 opencv
mpiicc opencv_hist_MPI.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
srun -N 2 -n 2 --time=0-0:5 opencv
srun -N 2 -n 3 --time=0-0:5 opencv
srun -N 2 -n 10 --time=0-0:5 opencv
srun -N 5 -n 4 --time=0-0:5 opencv
mpiicc opencv_hist_MPI.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
srun -N 2 -n 2 --time=0-0:5 opencv
mpiicc opencv_hist.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
./opencv
mpiicc opencv_hist_MPI.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
srun -N 2 -n 2 --time=0-0:5 opencv
srun -N 4 -n 4 --time=0-0:5 opencv
srun -N 7 -n 7 --time=0-0:5 opencv
srun -N 4 -n 4 --time=0-0:5 opencv
mpiicc opencv_hist_MPI.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
srun -N 4 -n 4 --time=0-0:5 opencv
mpiicc opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm
mpiicc opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv
srun -N 4 -n 4 --time=0-0:5 opencv
srun --nodes 4  --time=0-0:5 opencv
srun --nodes 4 --ntasks 2 --time=0-0:5 opencv
srun --nodes 4 --ntasks 4 --time=0-0:5 opencv
srun --nodes 4 --ntasks 4 --cpus-per-task 4 --time=0-0:5 opencv
srun --nodes 4 --ntasks 4 --cpus-per-task 8 --time=0-0:5 opencv
srun --nodes 4 --ntasks 4 --cpus-per-task 32 --time=0-0:5 opencv
srun --nodes 4 --ntasks 4 --cpus-per-task 16 --time=0-0:5 opencv
srun --nodes 4 --ntasks 4 --cpus-per-task 24 --time=0-0:5 opencv
srun --nodes 4 --ntasks 4 --cpus-per-task 28 --time=0-0:5 opencv
srun --nodes 1 --ntasks 1 --cpus-per-task 28 --time=0-0:5 opencv
srun --nodes 1 --ntasks 1 --cpus-per-task 32 --time=0-0:5 opencv
srun --nodes 1 --ntasks 1 --cpus-per-task 33 --time=0-0:5 opencv
srun --nodes 1 --ntasks 2 --cpus-per-task 32 --time=0-0:5 opencv
srun --nodes 2 --ntasks 2 --cpus-per-task 32 --time=0-0:5 opencv
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
srun --nodes 4 --ntasks 4 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes 2 --ntasks 2 --cpus-per-task 4 --time=0-0:5 opencv
srun --nodes 2 --ntasks 2 --cpus-per-task 8 --time=0-0:5 opencv
srun --nodes 2 --ntasks 2 --cpus-per-task 5 --time=0-0:5 opencv
git commit . -m "a"
git push origin master
exit
ls
cd 03_MPI_Histogram/
ls
ls -al
module load softwares/git/2.11.0-gnu-4.4 
module load softwares/opencv/2.4.13.3-gnu-4.8 
git add opencv_hist_MPI_openmp.cpp 
git commit opencv_hist_MPI_openmp.cpp -m "a"
git push origin master
git pull
ls
cd 02_Imagens/
ls
cd ..
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=2 --cpus-per-task=2 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=2 --cpus-per-task=2 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=2 --cpus-per-task=2 --time=0-0:5 opencv
srun --nodes=2 --cpus-per-task=4 --time=0-0:5 opencv
srun --nodes=4 --cpus-per-task=4 --time=0-0:5 opencv
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=4 --cpus-per-task=4 --time=0-0:5 opencv
srun --nodes=4 --cpus-per-task=4 --time=0-0:5 opencv "02_Imagens/Einstein_3400x3200.jpg" 
git pull
ls
mkdir outputs
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
ls
cd csvfile/
ls
g++ main.cpp -o main
cd ..
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 opencv "02_Imagens/Einstein_3400x3200.jpg" 
cd 02_Imagens/
ls
git pull
ls
cd ..
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 opencv "02_Imagens/Einstein_3200x3200.jpg" 
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 opencv "02_Imagens/Einstein_3200x3200.jpg" 
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 opencv "02_Imagens/Einstein_1600x3200.jpg" 
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 opencv "02_Imagens/Einstein_1600x3200.jpg" 
cd 02_Imagens/
git pull
ls
cd ..
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 opencv "02_Imagens/Einstein_6400x6400.jpg" 
cd 02_Imagens/
ls
git pull
ls
cd ..
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=1 --cpus-per-task=1 --time=0-0:10 opencv "02_Imagens/Einstein_12800x12800.jpg" 
srun --nodes=1 --cpus-per-task=8 --time=0-0:10 opencv "02_Imagens/Einstein_12800x12800.jpg" 
srun --nodes=1 --cpus-per-task=2 --time=0-0:10 opencv "02_Imagens/Einstein_12800x12800.jpg" 
sbatch script.sh 
squeue
sbatch script.sh 
ls
cat slurm-169764.out 
sbatch script.sh 
cat slurm-169765.out 
sbatch script.sh 
cat slurm-169766.out 
sbatch script.sh 
cat slurm-169768.out 
sbatch script.sh 
cat slurm-169769.out 
sbatch script.sh 
cat slurm-169770.out 
sbatch script.sh 
cat slurm-169771'

cat slurm-169771.out 
sbatch script.sh 
cat slurm-169772.out 
sbatch script
sbatch script.sh 
cat slurm-169773.out 
ls
sbatch script_full.sh 
cat slurm-169775.out 
sbatch script_full.sh 
cat slurm-169776.out 
sbatch script_full.sh 
cat slurm-169777.out 
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
sbatch script_full.sh 
ls
cd slurms_output/
ls
cd ..
cat slurms_output/slurm-169778.out 
cat /etc/security/limits.conf
ulimit -a
sbatch script_full.sh 
cat slurms_output/slurm-169779.out 
sbatch script_full.sh 
cat slurms_output/slurm-169780.out 
cd 03_MPI_Histogram/
ls
mpiicc -O2 opencv_hist_MPI_rev1.cpp -o opencv_mpi `pkg-config --libs --cflags opencv` -ldl -lm -openmp
module load softwares/opencv/2.4.13.3-gnu-4.8 
module load softwares/git/2.11.0-gnu-4.4 
mpiicc -O2 opencv_hist_MPI_rev1.cpp -o opencv_mpi `pkg-config --libs --cflags opencv` -ldl -lm -openmp
ls
cd 03_MPI_Histogram/
ls
module load softwares/opencv/2.4.13.3-gnu-4.8 
module load softwares/git/2.11.0-gnu-4.4 
sbatch script_mpi.sh 
cat slurms_output/slurm-169823.out 
sbatch script_serial.sh 
cat slurms_output/slurm-169824.out 
ls
git add .
git commit . -m "a
git commit . -m "a"
git push origin master
cat slurms_output/slurm-169824.out 
mpiicc -O2 opencv_hist_MPI_serial.cpp -o opencv_serial `pkg-config --libs --cflags opencv` -ldl -lm -openmp
sbatch script_serial.sh 
cat slurms_output/slurm-169835.out 
git add .
git commit . -m "a"
git push origin master
mpiicc -O2 opencv_hist_MPI_openmp_reduction.cpp -o opencv_reduction `pkg-config --libs --cflags opencv` -ldl -lm -openmp
ls
module load softwares/git/2.11.0-gnu-4.4 
module load softwares/opencv/2.4.13.3-gnu-4.8 
module avail
ls
cd 03_MPI_Histogram/
ls
git add .
git commit . -m "a"
git push origin master
module load softwares/git/2.11.0-gnu-4.4 
module load softwares/opencv/2.4.13.3-gnu-4.8 
cd 03_MPI_Histogram/
ls
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
sbatch script_false_sharing.sh 
squeue
sbatch script_false_sharing.sh 
squeue
srun --nodes=1 --ntasks=1 --cpus-per-task=8 opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
srun --nodes=1 --ntasks=1 --cpus-per-task=8 --time=0-0:5 opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
srun --nodes=1 --ntasks=1 --cpus-per-task=4 --time=0-0:5 opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
squeue
srun --nodes=1 --ntasks=1 --cpus-per-task=4 --time=0-0:5 opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
srun --nodes=1 --ntasks=1 --cpus-per-task=6 --time=0-0:5 opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
squeue
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
./opencv_false_sharing "02_Imagens/Einstein_6400x3200.jpg"
./opencv_false_sharing "02_Imagens/black_white.jpg"
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/black_white.jpg"
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/black_white.jpg"
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/black_white.jpg"
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/black_white.jpg"
./opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg"
./opencv_false_sharing "02_Imagens/Einstein_6400x3200.jpg"
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/Einstein_6400x3200.jpg"
./opencv_false_sharing "02_Imagens/Einstein_3400x3127.jpg"
./opencv_false_sharing "02_Imagens/Einstein_3200x3200.jpg"
squeue
mpiicc -O2 opencv_hist_MPI_openmp_false_sharing.cpp -o opencv_false_sharing `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv_false_sharing "02_Imagens/Einstein_3200x3200.jpg"
./opencv_false_sharing "02_Imagens/Einstein_12800x12800.jpg" 
ls
cd outputs/
ls
git add output_nodes_1_threads_16_width_3200_height_3200_false_sharing_20180406_0110*
git commit . -m "a"
git push origin master
exit
module load softwares/git/2.11.0-gnu-4.4 
module load softwares/opencv/2.4.13.3-gnu-4.8 
cd 03_MPI_Histogram/
ls
mpiicc -O2 opencv_hist_MPI_rev2.cpp -o opencv_mpi_process `pkg-config --libs --cflags opencv` -ldl -lm -openmp
ls
sbatch script_mpi_process_2.sh 
sbatch script_mpi_process_4.sh 
sbatch script_mpi_process_8.sh 
squeue
cat slurms_output/slurm-170095.out 
cat slurms_output/slurm-170096.out 
cat slurms_output/slurm-170095.out 
cat slurms_output/slurm-170096.out 
squeue
cat slurms_output/slurm-170095.out 
cat slurms_output/slurm-170096.out 
ls
cd 03_MPI_Histogram/
ls
cd outputs/
ls
module load softwares/git/2.11.0-gnu-4.4 
module load softwares/opencv/2.4.13.3-gnu-4.8 
git add output_nodes_1_processes_*
git commit . -m "a"
git push origin master
cd ..
ls
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=8 --cpus-per-task=8 --time=0-0:5 opencv "02_Imagens/black_white.jpg" 
srun --nodes=1 --cpus-per-task=8 --time=0-0:5 opencv "02_Imagens/black_white.jpg" 
srun --nodes=1 --cpus-per-task=1 --time=0-0:5 opencv "02_Imagens/black_white.jpg" 
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=1 --cpus-per-task=1 --time=0-0:5 opencv "02_Imagens/black_white.jpg" 
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
srun --nodes=1 --cpus-per-task=1 --time=0-0:5 opencv "02_Imagens/black_white.jpg" 
srun --nodes=8 --cpus-per-task=1 --time=0-0:5 opencv "02_Imagens/black_white.jpg" 
srun --nodes=8 --cpus-per-task=1 --time=0-0:5 opencv "02_Imagens/Einstein_12800x12800.jpg" 
g++ -O2 openmp_reduction.cpp -o openmp_reduction -openmp
ls
ls -al
g++ -O2 openmp_reduction.cpp -o openmp_reduction
ls
./openmp_reduction 
g++ -O2 openmp_reduction.cpp -o openmp_reduction
./openmp_reduction 
g++ -O2 openmp_reduction.cpp -o openmp_reduction
ls
./openmp_reduction 
g++ -O2 openmp_reduction.cpp -o openmp_reduction
./openmp_reduction 
g++ -O2 openmp_reduction.cpp -o openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -openmp
icc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
./openmp_reduction 
srun openmp_reduction
srun --time=0-0:5 openmp_reduction
srun --time=0-0:30 openmp_reduction
srun --nodes=1 --time=0-0:30 openmp_reduction
srun --nodes=1 --cpus-per-task=1 --time=0-0:30 openmp_reduction
srun --nodes=1 --cpus-per-task=2 --time=0-0:30 openmp_reduction
srun --nodes=1 --cpus-per-task=10 --time=0-0:30 openmp_reduction
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
./openmp_reduction 
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
echo |cpp -fopenmp -dM |grep -i open
module avail
module load compilers/gnu/7.1 
echo |cpp -fopenmp -dM |grep -i open
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
module load compilers/intel/16.0.1 
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
mpiicc -O2 openmp_reduction.cpp -o openmp_reduction -openmp
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 openmp_reduction
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
srun --nodes=1 --cpus-per-task=20 --time=0-0:5 openmp_reduction
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction_example1.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 openmp_reduction
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 openmp_reduction
g++ -O2 openmp_reduction.cpp -o openmp_reduction -fopenmp
g++ -O2 opencv_hist_MPI_openmp_reduction1.cpp -o opencv_openmp_reduction `pkg-config --libs --cflags opencv` -ldl -lm -fopenmp
mod
g++ -O2 opencv_hist_MPI_openmp_reduction1.cpp -o opencv_openmp_reduction `pkg-config --libs --cflags opencv` -ldl -lm -fopenmp
g++ -O2 opencv_hist_MPI_openmp_reduction1.cpp -o opencv_openmp_reduction `pkg-config --libs --cflags opencv` -ldl -lm -lopencv_imgcodecs -fopenmp
pkg-config --cflags --libs opencv
module avail
exit
module load compilers/gnu/6.4 
cd 03_MPI_Histogram/
ls
g++ openmp_reduction.cpp -o reduction -fopenmp
./reduction 
srun --nodes-1 --cpus-per-task=10 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=9 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=8 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=10 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=9 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=8 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=3 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=2 --time=0-0:5 reduction 
srun --nodes=1 --cpus-per-task=4 --time=0-0:5 reduction 
srun --nodes=1 --ntasks=1 --cpus-per-task=4 --time=0-0:5 reduction 
srun --nodes=1 --ntasks=1 --cpus-per-task=3 --time=0-0:5 reduction 
g++ openmp_reduction.cpp -o reduction -fopenmp
srun --nodes=1 --ntasks=1 --cpus-per-task=3 --time=0-0:5 reduction 
g++ openmp_reduction.cpp -o reduction -fopenmp
srun --nodes=1 --ntasks=1 --cpus-per-task=3 --time=0-0:5 reduction 
g++ openmp_reduction.cpp -o reduction -fopenmp
srun --nodes=1 --ntasks=1 --cpus-per-task=3 --time=0-0:5 reduction 
g++ openmp_reduction.cpp -o reduction -fopenmp
g++ openmp_reduction.cpp -o reduction -fopenmp `pkg-config --libs --cflags opencv` -ldl -lm
module load softwares/opencv/2.4.13.3-gnu-4.8 
g++ openmp_reduction.cpp -o reduction -fopenmp
exit
cd 03_MPI_Histogram/
ls
g++ openmp_reduction.cpp -o reduction
g++ openmp_reduction.cpp -o reduction -fopenmp
module load compilers/gnu/6.4 
g++ openmp_reduction.cpp -o reduction -fopenmp
module load softwares/opencv/2.4.13.3-gnu-4.8 
g++ openmp_reduction.cpp -o reduction -fopenmp
exit
module load softwares/opencv/2.4.13.3-gnu-4.8 
module load compilers/gnu/6.4 
ls
cd 03_MPI_Histogram/
ls
g++ openmp_reduction.cpp -o reduction -fopenmp
g++ openmp_reduction.cpp -o reduction -fopenmp `pkg-config --libs --cflags opencv` -ldl -lm
g++ openmp_reduction.cpp -o reduction -fopenmp 
g++ openmp_reduction.cpp -o reduction -fopenmp `pkg-config --libs --cflags opencv` -ldl -lm
g++ `pkg-config --cflags opencv` openmp_reduction.cpp `pkg-config --libs opencv`  -o reduction -fopenmp
g++ `pkg-config --cflags opencv` -ldl -lm openmp_reduction.cpp `pkg-config --libs opencv`  -o reduction -fopenmp
g++ `pkg-config --cflags opencv` -ldl -lm openmp_reduction.cpp `pkg-config --libs opencv` -ldl -lm  -o reduction -fopenmp
pkg-config opencv --libs
g++ `pkg-config --cflags opencv` -ldl -lm openmp_reduction.cpp `pkg-config --libs opencv` -ldl -lm  -o reduction -fopenmp -lopencv_imgproc
ls
cd 04_Perfilagem/
ls
module avail
cd ..
mkdir 06_
cd 06_/
cd ..
cd 03_MPI_Histogram/
ls
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
module load softwares/opencv/2.4.13.3-gnu-4.8 
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
g++ -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
./opencv
ls
cd 02_Imagens/
ls
pwd
cd ..
./opencv  /home/vhfdoliveira2/03_MPI_Histogram/02_Imagens/black_white.jpg
srun --nodes=2 --cpus-per-task=2 --time=0-0:5 opencv "02_Imagens/Einstein_6400x6400.jpg"
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
module load compilers/gnu/7.1 
mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
cd
ls
cd intel/
ls
cd ism/rm/intelremotemon
ls
cd ism/
ls
cd rm/intelremotemon
cd rm
ls
cd
cd /opt/intel/
ls
cd parallel_studio_xe_2018/
ls
cd bin/
ls
cd ..
cd parallel_studio_xe_2016.1.056/bin/
ls
source psxevars.sh 
module avail
ls
cd 01_Tutoriais/03_libpng/
ls
gcc example_zarb.c -o example_zarb
module load n
cd ..
ls
mkdir 07_Dados_derivados
cd 07_Dados_derivados/
ls
g++ PI_MPI_time_1_reduce.cpp -o PI_MPI
mpiicc PI_MPI_time_1_reduce.cpp -o PI_MPI
./PI_MPI 
./PI_MPI 2
./PI_MPI 1
mpiicc PI_MPI_time_1_reduce.cpp -o PI_MPI
ls -al
mpiicc PI_MPI_time_1_reduce.cpp -o PI_MPI
./PI_MPI 1
srun --nodes=1 --ntasks=2 PI_MPI 1
srun --nodes=1 --ntasks=2 --time=0-0:2 PI_MPI 1
mpiicc PI_MPI_time_1_reduce.cpp -o PI_MPI
mpiicc PI_derived_send_recv.cpp -o PI_derived

srun --nodes=1 --ntasks=2 --time=0-0:2 PI_derived 1
mpiicc PI_derived_gather.cpp -o PI_derived
srun --nodes=1 --ntasks=2 --time=0-0:2 PI_derived 1
mpiicc PI_derived_gather.cpp -o PI_derived
srun --nodes=1 --ntasks=2 --time=0-0:2 PI_derived 1
mpiicc PI_derived_gather.cpp -o PI_derived
srun --nodes=1 --ntasks=2 --time=0-0:2 PI_derived 1
srun --nodes=1 --ntasks=3 --time=0-0:2 PI_derived 1
mpiicc PI_derived_gather.cpp -o PI_derived
srun --nodes=1 --ntasks=3 --time=0-0:2 PI_derived 1
ls
git
cd 03_MPI_Histogram/
ls
git
module load softwares/git/2.11.0-gnu-4.4 
git
ls
git pull origin master
git commit . -m "a"
git push origin master
ls
git add . -m "a"
git add .
git commit . -m "a"
git push origin master
ls
cd Demetrius/
ls
cd ..
ls
cd 03_CIMG/
ls
g++ -Wall hello_world.cpp -o hello
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello 
cd ..
module load softwares/opencv/2.4.13.3-gnu-4.8 
ls
cd 03_MPI_Histogram/03_CIMG/
ls
./hello 
g++ -Wall hello_world.cpp -o hello
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello
srun --time=0-0:1 hello
ls
cd CImg_latest
ls
cd CImg-2.2.2/
ls
pwd
cd ..
ls
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello
srun --time=0-0:1 hello
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello
srun --time=0-0:1 hello
cd /scratch/local/vhfdoliveira2/
ls
cd /scratch/
ls
cd ..
cd
cd 03_MPI_Histogram/03_CIMG/
ls
mpiicc hello_world.cpp -o hello -Dcimg_display=0
./hello 
srun --time=0-0:1 hello
mpiicc hello_world.cpp -o hello -Dcimg_display=0
./hello 
mpiicc hello_world.cpp -o hello -Dcimg_display=0
./hello 
srun --time=0-0:1 hello
module load compilers/gnu/7.1 
g++ hello_world.cpp -o hello -Dcimg_display=0
./hello 
srun --time=0-0:1 hello
g++ hello_world.cpp -o hello -Dcimg_display=0 -ljpeg
./hello 
srun --time=0-0:1 hello
module avail
module load libraries/png/1.6.29-intel-16.0.1
module load softwares/opencv/2.4.13.3-gnu-4.8 
module load libraries/gmp/5.1-gnu-4.4 
g++ hello_world.cpp -o hello -Dcimg_display=0 -ljpeg
./hello 
srun --time=0-0:1 hello
g++ hello_world.cpp -o hello -Dcimg_display=0 -ljpeg
./hello 
srun --time=0-0:1 hello
g++ hello_world.cpp -o hello -Dcimg_display=0 -ljpeg
./hello 
srun --time=0-0:1 hello
g++ hello_world.cpp -o hello -Dcimg_display=0 -ljpeg -O2 -L/usr/X11R6/lib -lm -lpthread -lX11
./hello 
srun --time=0-0:1 hello
g++ hello_world.cpp -o hello -Dcimg_display=0 -ljpeg -O2 -L/usr/X11R6/lib -lm -lpthread -lX11
srun --time=0-0:1 hello
g++ hello_world.cpp -o hello -Dcimg_display=0 -ljpeg -O2 -L/usr/X11R6/lib -lm -lpthread -lX11 -lpng -ljpeg -lz
./hello 
srun --time=0-0:1 hello
ls
cd 03_MPI_Histogram/03_CIMG/
ls
cd CImg_latest/CImg-2.2.2/examples/
ls
make wavelet_atrous.cpp 
make
module load compilers/gnu/7.1 
make linux
ls
./wavelet_atrous 
g++ -o wavelet_atrous wavelet_atrous.cpp -I.. -Wall -Wextra -Wfatal-errors -std=c++11 -pedantic -Dcimg_use_vt100 -Dcimg_display=0    -lm -lX11   -lpthread
./wavelet_atrous 
srun --time=0-0:2 wavelet_atrous
cd ..
ls
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello
srun --time=0-0:2 hello
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello
srun --time=0-0:2 hello
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello
srun --time=0-0:2 hello
g++ -Wall hello_world.cpp -o hello -Dcimg_display=0
./hello
srun --time=0-0:2 hello
ls
cd CImg_latest/CImg-2.2.2/examples/
ls
make use_jpeg_buffer.cpp 
g++ -o use_jpeg_buffer use_jpeg_buffer.cpp -I.. -Wall -Wextra -Wfatal-errors -std=c++11 -pedantic -Dcimg_use_vt100 -Dcimg_display=0    -lm -lX11   -lpthread -Dcimg_use_jpeg -ljpeg
./use_jpeg_buffer 
ls
cd img/
ls
cd ..
ls
cd ..
ls
pwd
cd CImg_latest/CImg-2.2.2/examples/
ls
./use_jpeg_buffer /home/vhfdoliveira2/03_MPI_Histogram/03_CIMG/black_white.jpg
./use_jpeg_buffer 
srun --time=0-0:1 use_jpeg_buffer
cd ..
ls
g++ -o hello_jpeg hello_jpeg.cpp -I.. -Wall -Wextra -Wfatal-errors -std=c++11 -pedantic -Dcimg_use_vt100 -Dcimg_display=0    -lm -lX11   -lpthread -Dcimg_use_jpeg -ljpeg
cd CImg_latest/CImg-2.2.2/plugins/
pwd
cd ..
g++ -o hello_jpeg hello_jpeg.cpp -I.. -Wall -Wextra -Wfatal-errors -std=c++11 -pedantic -Dcimg_use_vt100 -Dcimg_display=0    -lm -lX11   -lpthread -Dcimg_use_jpeg -ljpeg
./hello_jpeg 
srun --time=0-0:1 hello_jpeg
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -I.. -Wall -Wextra -Wfatal-errors -std=c++11 -pedantic -Dcimg_use_vt100 -Dcimg_display=0    -lm -lX11   -lpthread -Dcimg_use_jpeg -ljpeg
./hello_jpeg_2 
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -I.. -Wall -Wextra -Wfatal-errors -std=c++11 -pedantic -Dcimg_use_vt100 -Dcimg_display=0    -lm -lX11   -lpthread -Dcimg_use_jpeg -ljpeg
./hello_jpeg_2 
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_use_jpeg
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_use_jpeg -ljpeg
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./hello_jpeg_2 
srun --time=0-0:1
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -ljpeg
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --time=0-0:1 hello_jpeg_2
g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --time=0-0:1 hello_jpeg_2
ls
ls -al
cat .bash_profile 
sudo vim .bash_profile 
vim .bash_profile 
exit
