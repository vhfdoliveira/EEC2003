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
cd 03_MPI_Histogram/
ls
cd 03_CIMG/
l
ls
g++ -o hello_jpeg hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -lpjeg
g++ -o hello_jpeg hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
ls
cd ..
cd Demetrius/
ls
g++ -o histogram_openmp histogram_openmp.cpp -Dcimg_display=0 -fopenmp
cd ..
cd 03_CIMG/
ls
g++ -o histogram_openmp histogram_openmp.cpp -Dcimg_display=0 -fopenmp
ls
git pull origin master
git fetch
git reset --hard origin master
git fetch
git reset --hard origin
git reset --hard master
git pull origin master
git reset --hard origin/master
git pull origin master
ls
g++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load compilers/gnu/7.1 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpiCC -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
gcc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpiicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpiicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg //mpiicc -O2 opencv_hist_MPI_openmp.cpp -o opencv `pkg-config --libs --cflags opencv` -ldl -lm -openmp
mpiicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg `pkg-config --libs -ldl -lm

mpiicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg `pkg-config --libs` -ldl -lm
mpiicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg ` -ldl -lm

mpiicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpiicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -ldl
mpiicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -ldl -lm -opopenmp
gcc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpicc -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module avail
module load libraries/openmpi/1.4-gnu-7.1 
mpiCC
mpiCC -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial black_white.jpg 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial black_white.jpg 
ls
cd 03_MPI_Histogram/
ls
cd 03_CIMG/
ls
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load compilers/gnu/7.1 
module load libraries/openmpi/1.4-gnu-7.1 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 
./histogram_serial bird-780x520.jpg 
ls
cd 03_MPI_Histogram/03_CIMG/03_MPI/
ls
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load compilers/gnu/7.1 
module load libraries/openmpi/1.4-gnu-7.1 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 
./histogram_serial bird-780x520.jpg 
./histogram_serial black_white.jpg 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial black_white.jpg 
./histogram_serial bird-780x520.jpg 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial black_white.jpg 
ls
cd ..
ls
cd 03_MPI/
l
ls
mpic++ -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_MPI black_white.jpg 
srun -N=2 --time=0-0:5 histogram_MPI bird-780x520.jpg 
srun --nodes=2 --time=0-0:5 histogram_MPI bird-780x520.jpg 
mpic++ -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --nodes=2 --time=0-0:5 histogram_MPI bird-780x520.jpg 
srun --nodes=2 --tasks-per-node=1 --time=0-0:5 histogram_MPI bird-780x520.jpg 
srun --nodes=2 --ntasks-per-node=1 --time=0-0:5 histogram_MPI bird-780x520.jpg 
srun --nodes=2 --ntasks-per-node=2 --time=0-0:5 histogram_MPI bird-780x520.jpg 
srun --nodes=2 --ntasks-per-node=2 -n4 --time=0-0:5 histogram_MPI bird-780x520.jpg 
srun --nodes=2 --ntasks-per-node=2 --cpus-per-task=1 --time=0-0:5 histogram_MPI bird-780x520.jpg 
mpic++ -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
srun --nodes=2 --ntasks-per-node=2 --cpus-per-task=1 --time=0-0:5 histogram_MPI bird-780x520.jpg 
srun --nodes=2 --ntasks-per-node=2 --cpus-per-task=1 --ntasks=4 --time=0-0:5 histogram_MPI bird-780x520.jpg 
srun --nodes=1 --ntasks-per-node=4 --cpus-per-task=1 --ntasks=4 --time=0-0:5 histogram_MPI bird-780x520.jpg 
ls
sbatch job_histogram_MPI.sh 
ls
mpic++ -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
sbatch job_histogram_MPI.sh 
mpiicc -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpiCC -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
sbatch job_histogram_MPI.sh 
cd ..
ls
cd ..
ls
cd 01_Tutoriais/
ls
cd 01_MPI/
ls
cat saida116615.out 
cat hello_mpi.c 
cp hello_mpi.c hello_mpi.cpp
mpic++ hello_mpi.cpp -o hello_mpi
srun --nodes=2 --tasks-per-node=2 --cpus-per-taks=1 --time=0-0:2 hello_mpi
srun --nodes=2 --tasks-per-node=2 --cpus-per-task=1 --time=0-0:2 hello_mpi
mpiicc hello_mpi.cpp -o hello_mpi
srun --nodes=2 --tasks-per-node=2 --cpus-per-task=1 --time=0-0:2 hello_mpi
srun --nodes=1 --tasks-per-node=4 --cpus-per-task=1 --time=0-0:2 hello_mpi
mpicxx hello_mpi.cpp -o hello_mpi
srun --nodes=1 --tasks-per-node=4 --cpus-per-task=1 --time=0-0:2 hello_mpi
ls
mpicxx hello_mpi.cpp -o hello_mpi
srun --nodes=1 --tasks-per-node=2 --cpus-per-task=1 --time=0-0:2 hello_mpi
mpirun hello_mpi
mpirun -n 2 hello_mpi
mpirun --nodes=1 --tasks-per-node=2 --cpus-per-task=1 --time=0-0:2 hello_mpi
mpirun --nodes=2 --tasks-per-node=2 --cpus-per-task=1 --time=0-0:2 hello_mpi
ls
vim jobMPI.sh 
sbatch jobMPI.sh 
lls
ls
cat slurm-223887.out 
cat saida116616.out 
vim jobMPI.sh 
sbatch jobMPI.sh 
ls
cat slurm-223888.out 
cd ..
cd 03_MPI_Histogram/03_CIMG/03_MPI/
ls
mpic++ -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpirun histogram_MPI
mpirun -n 2 histogram_MPI bird-780x520.jpg 
mpirun -n 4 histogram_MPI bird-780x520.jpg 
ls
sbatch job_histogram_MPI.sh 
cat outputs/slurm-223894.out 
cd ..
ls
cd 04_MPI_OpenMP/
l
ls
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -openmp
mpirun -n 2 histogram_MPI_OpenMP 
ls
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -openmp
ls
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
ls
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -lm -openmp
rm histogram_MPI_OpenMP
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -lm -openmp
ls
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -ldl -lm -openmp
ls
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg 
ls
mpirun -n 2 histogram_MPI_OpenMP
mpirun -n 2 histogram_MPI_OpenMP bird-780x520.jpg 
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg 
ls
rm penmp 
mpic++ -o histogram_MPI_OpenMP -openmp histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpic++ -o histogram_MPI_OpenMP -fopenmp histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
l
ls
rm histogram_MPI_OpenMP
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
ls
mpirun -n 2 histogram_MPI_OpenMP bird-780x520.jpg 
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
mpirun -n 2 histogram_MPI_OpenMP bird-780x520.jpg 
ls
sbatch job_histogram_MPI_OpenMP.sh 
squeue
squeue | grep vhf
cat outputs/slurm-223913.out 
sbatch job_histogram_MPI_OpenMP.sh 
rm outputs/slurm-223913.out 
ls
squeue | grep vhf
cat outputs/slurm-223916.out 
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
sbatch job_histogram_MPI_OpenMP.sh 
squeue | grep vhf
cat outputs/slurm-223920.out 
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
sbatch job_histogram_MPI_OpenMP.sh 
cat outputs/slurm-223940.out 
sbatch job_histogram_MPI_OpenMP.sh 
cat outputs/slurm-223941.out 
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
sbatch job_histogram_MPI_OpenMP.sh 
squeue | grep vhf
cat outputs/slurm-223942.out 
ls
cd 03_MPI_Histogram/03_CIMG/03_MPI/outputs/
ls
cat slurm-223876.out 
ls
cat slurm-223878.out 
ls
cat slurm-223879.out 
ls
git
ls
cd 03_MPI_Histogram/
git add .
git commit -m "A"
git push origin master
ls
cd 03_CIMG/
ls
cd 02_Serial/
ls
mpic++
module load compilers/gnu/7.3 
mpic++
module load libraries/openmpi/1.4-gnu-7.1 
mpic++
ls
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load compilers/gnu/7.1
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 
./histogram_serial bird-780x520.jpg 
./histogram_serial Einstein_12800x12800.jpg 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial Einstein_12800x12800.jpg 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial Einstein_12800x12800.jpg 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
ls
cd 01_Tutoriais/
ls
cd 01_MPI/
ls
vim hello_mpi.cpp 
module load compilers/gnu/7.1 
module load libraries/openmpi/1.4-gnu-7.1 
mpic++
ls
mpic++ -o hello_mpi hello_mpi.cpp 
mpiCC -o hello_mpi hello_mpi.cpp 
mpiicc -o hello_mpi hello_mpi.cpp 
vim hello_mpi.cpp 
mpic++ -o hello_mpi hello_mpi.cpp 
mpicxx -o hello_mpi hello_mpi.cpp 
module load compilers/gnu/7.3 
mpic++ -o hello_mpi hello_mpi.cpp 
./hello_mpi
srun --nodes=1 --ntasks=4 --time=0-0:5 hello_mpi
mpirun --nodes=1 --ntasks=4 --time=0-0:5 hello_mpi
ls
vim jobMPI.sh 
sbatch jobMPI.sh 
ls
squeue | grep vhf
squeue
squeue | grep vhf
ls
cat slurm-234111.out 
ls
cd 03_MPI_Histogram/
ls
cd 03_CIMG/
ls
cd 02_Serial/
ls
git add .
git commit -m "a"
git push origin master
ls
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load compilers/gnu/7.3 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load libraries/openmpi/1.4-gnu-7.1
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load compilers/gnu/7.1 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
ls
cd 03_MPI_Histogram/
ls
cd 03_CIMG/
ls
cd 02_Serial/
ls
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load libraries/openmpi/1.4-gnu-7.1
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 
./histogram_serial Einstein_12800x12800.jpg 
./histogram_serial 0
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0
module load compilers/gnu/7.1 
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0
mpic++ -o histogram_serial histogram_serial.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0
mpic++ -o histogram_serial histogram_serial_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 20 1 0
./histogram_serial 0 65 1 0
./histogram_serial 0 35 1 0
./histogram_serial 0 36 1 0
mpic++ -o histogram_serial histogram_serial_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 35 1 0
mpic++ -o histogram_serial histogram_serial_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 35 1 0
mpic++ -o histogram_serial histogram_serial_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 33 1 1
mpic++ -o histogram_serial histogram_serial_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
ls
srun histogram_serial 0 33 1 1
srun --time=0-0:5 histogram_serial 0 33 1 1
./histogram_serial 0 42 1 1
mpic++ -o histogram_serial histogram_serial_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 32 1 0
./histogram_serial 0 42 1 1
ls
sbatch jobSerial.sh 
squeue | grep vhf
squeue
squeue | grep vhf
ls
sbatch jobSerial_test.sh 
squeue | grep vhf
cd slurm_outputs/
ls
cat slurm-234744.out 
ls
cd ..
cd outputs/
ls
ls -al
cd ..
sbatch jobSerial_test.sh 
squeue | grep vhf
cd slurm_outputs/
ls
cat slurm-234745.out 
cd ..
cd outputs/
ls
ls -al
cd ..
cd 03_MPI/
ls
mpic++ -o histogram_MPI histogram_MPI_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpirun --nodes=2 --time=0-0:5 histogram_MPI 0 30 2 0
mpirun histogram_MPI 0 30 2 0
mpirun -n 2 histogram_MPI 0 26 2 0
mpic++ -o histogram_MPI histogram_MPI.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpirun -n 2 histogram_MPI bird-780x520.jpg 
mpic++ -o histogram_MPI histogram_MPI_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpirun -n 2 histogram_MPI 0 20 2 0
mpirun -n 2 histogram_MPI 0 34 2 0
ls
cd 03_MPI_Histogram/03_CIMG/02_Serial/
sbatch jobSerial.sh 
squeue | grep vhf
squeue
sbatch jobSerial.sh 
ls
cd 01_Tutoriais/
ls
cd 01_MPI/
ls
vim jobMPI.sh 
sbatch jobMPI.sh 
squeue | grep vhf
vim jobMPI.sh 
squeue | grep vhf
ls
cat slurm-234954.out 
module load libraries/openmpi/1.4-gnu-7.1 
module load compilers/gnu/7.1 
sbatch jobMPI.sh 
vim jobMPI.sh 
mpirun hello_mpi
squeue | grep vhf
cat slurm-234955.out 
ls
vim hello_mpi.cpp 
mpic++ -o hello_mpi hello_mpi.cpp 
mpirun hello_mpi
sbatch jobMPI.sh 
squeue | grep vhf
cat slurm-234956.out 
vim hello_mpi.cpp 
vim jobMPI.sh 
sbatch jobMPI.sh 
squeue | grep vhf
cat slurm-234957.out 
vim jobMPI.sh 
sbatch jobMPI.sh 
squeue | grep vhf
cat slurm-234958.out 
vim jobMPI.sh 
sbatch jobMPI.sh 
squeue | grep vhf
cat slurm-234959.out 
squeue | grep vhf
scancel 234952
scancel 234953
ls
cd 01_Tutoriais/
ls
cd 02_OpenMP/
ls
vim hello_openmp.c 
./hello_openmp 
vim hello_openmp.c 
export OMP_NUM_THREADS=2
./hello_openmp 
mpic++ -o hello_openmp hello_openmp.cpp -fopenmp
module load libraries/openmpi/1.4-gnu-7.1 
module load compilers/gnu/7.1 
mpic++ -o hello_openmp hello_openmp.cpp -fopenmp
./hello_openmp 
export OMP_NUM_THREADS=4
./hello_openmp 
squeue | grep vhf
cd ..
ls
cd ..
ls
cd 03_MPI_Histogram/
l
ls
cd 03_CIMG/02_Serial/
ls
cd outputs/
ls
ls -al
cd ..
cd slurm_outputs/
ls
ls -al
cat slurm-234960.out 
cd ..
mpic++
cd ..
ls
cd 01_Tutoriais/
ls
cd 01_MPI/
ls
vim hello_mpi.cpp 
ls
cd 03_MPI_Histogram/03_CIMG/02_Serial/
ls
sbatch jobSerial.sh 
squeue 
ls
cd outputs/
ls
ls -al
cat output_nodes_1_processes_1_threads_1_size_33_20180524_101822.csv 
cd ..
ls
cd 03_MPI/
ls
sbatch job_histogram_MPI_n2_p2.sh 
sbatch job_histogram_MPI_n4_p4.sh 
sbatch job_histogram_MPI_n8_p8.sh 
squeue | grep vhf
squeue
squeue | grep vhf
cd ..
cd 04_OpenMP/
ls
 * mpic++ -o histogram_MPI histogram_MPI_Rev1.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load compilers/gnu/7.1 
module loadd
module load libraries/openmpi/1.4-gnu-7.1 
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
module load compilers/gnu/7.1 
module load libraries/openmpi/1.4-gnu-7.1 
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
module load compilers/gnu/7.3 
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
./histogram_OpenMP 0 20 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
./histogram_OpenMP 0 20 1 0
export OMP_NUM_THREADS=2
./histogram_OpenMP 0 20 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
./histogram_OpenMP 0 20 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
./histogram_OpenMP 0 20 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
./histogram_OpenMP 0 20 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
./histogram_OpenMP 0 20 1 0
./histogram_OpenMP 0 5 1 0
./histogram_OpenMP 0 6 1 0
./histogram_OpenMP 0 2 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
./histogram_OpenMP 0 2 1 0
squeue | grep vhf
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
./histogram_OpenMP 0 6 1 0
./histogram_OpenMP 0 10 1 0
./histogram_OpenMP 0 16 1 0
time histogram_OpenMP 0 16 1 0
time ./histogram_OpenMP 0 16 1 0
time ./histogram_OpenMP 0 32 1 0
export OMP_NUM_THREADS=2
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
time ./histogram_OpenMP 0 32 1 0
export OMP_NUM_THREADS=16
time ./histogram_OpenMP 0 32 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
export OMP_NUM_THREADS=2
time ./histogram_OpenMP 0 32 1 0
export OMP_NUM_THREADS=16
time ./histogram_OpenMP 0 32 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
export OMP_NUM_THREADS=2
time ./histogram_OpenMP 0 32 1 0
export OMP_NUM_THREADS=16
time ./histogram_OpenMP 0 32 1 0
mpic++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
time ./histogram_OpenMP 0 32 1 0
cd ..
ls
cd 02_Serial/
ls
g++ -o histogram_serial histogram_serial_Rev2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 20 1 0
g++ -o histogram_serial histogram_serial_Rev2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 30 1 0
g++ -o histogram_serial histogram_serial_Rev2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 32 1 0
g++ -o histogram_serial histogram_serial_Rev2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
./histogram_serial 0 32 1 1
sbatch jobSerial.sh 
squeue
squeue | grep vhf
cd ..
ls
cd 04_OpenMP/
ls
g++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
export OMP_NUM_THREADS=2
./histogram_OpenMP 0 20 1 0
./histogram_OpenMP 0 20 1 1
./histogram_OpenMP 0 32 1 1
export OMP_NUM_THREADS=16
./histogram_OpenMP 0 32 1 1
squeue | grep vhf
ls
sbatch jobOpenMP.sh 
squeue | grep vhf
squeue
squeue | grep vhf
ls -al
sbatch jobOpenMP.sh 
squeue | grep vhf
scancel 234963
squeue | grep vhf
ls
cd 01_Tutoriais/
ls
cd 01_MPI/
ls
module load libraries/openmpi/1.4-gnu-7.1 
module load compilers/gnu/7.1 
vim hello_mpi.cpp 
mpic++ -o hello_mpi hello_mpi.cpp 
mpirun hello_mpi
mpirun -n 2 hello_mpi
srun --ntasks=2 --time=0-0:2 hello_mpi
ls
cd 03_MPI_Histogram/
ls
cd 03_MPI_Histogram/
l
ls
git add .
git commit -m "a"
git push origin master
ls
cd 03_CIMG/
ls
cd 04_OpenMP/
ls
module load compilers/gnu/7.1 
g++ -o histogram_OpenMP histogram_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
export OMP_NUM_THREADS=32
./histogram_OpenMP 0 20 1 0
export OMP_NUM_THREADS=16
./histogram_OpenMP 0 20 1 0
./histogram_OpenMP 0 32 1 0
export OMP_NUM_THREADS=32
./histogram_OpenMP 0 32 1 0
cd ..
cd 05_MPI_OpenMP/
ls
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
module load libraries/openmpi/1.4-gnu-7.1 
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
module load compilers/gnu/7.3 
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
mpirun --nodes=1 histogram_MPI_OpenMP 0 20 1 0
mpirun --nodes 1 histogram_MPI_OpenMP 0 20 1 0
mpirun --n 1 histogram_MPI_OpenMP 0 20 1 0
mpic++ -o histogram_MPI_OpenMP histogram_MPI_OpenMP.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg -fopenmp
mpirun --n 1 histogram_MPI_OpenMP 0 20 1 0
export OMP_NUM_THREADS=16
mpirun --n 1 histogram_MPI_OpenMP 0 20 1 0
export OMP_NUM_THREADS=32
mpirun --n 1 histogram_MPI_OpenMP 0 20 1 0
export OMP_NUM_THREADS=16
mpirun --n 1 histogram_MPI_OpenMP 0 20 1 0
export OMP_NUM_THREADS=24
mpirun --n 1 histogram_MPI_OpenMP 0 20 1 0
export OMP_NUM_THREADS=8
mpirun --n 1 histogram_MPI_OpenMP 0 20 1 0
export OMP_NUM_THREADS=2
mpirun --n 1 histogram_MPI_OpenMP 0 20 1 0
mpirun --n 1 histogram_MPI_OpenMP 0 32 1 0
export OMP_NUM_THREADS=4
mpirun --n 1 histogram_MPI_OpenMP 0 32 1 0
export OMP_NUM_THREADS=8
mpirun --n 1 histogram_MPI_OpenMP 0 32 1 0
export OMP_NUM_THREADS=16
mpirun --n 1 histogram_MPI_OpenMP 0 32 1 0
export OMP_NUM_THREADS=8
mpirun --n 1 histogram_MPI_OpenMP 0 32 1 0
mpirun --n 2 histogram_MPI_OpenMP 0 32 2 0
mpirun --n 4 histogram_MPI_OpenMP 0 32 2 0
mpirun histogram_MPI_OpenMP 0 32 2 0
ls
sbatch job_histogram_MPI_OpenMP.sh 
cd slurm_outputs/
ls
squeue | grep vhf
squeue
squeue | grep vhf
cd ..
ls
sbatch job_histogram_MPI_OpenMP_nodes_2.sh 
sbatch job_histogram_MPI_OpenMP_nodes_4.sh 
squeue | grep vhf
squeue
