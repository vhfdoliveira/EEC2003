//mpiicc opencv.c -o opencv `pkg-config --libs --cflags opencv` -ldl -lm

#include <stdio.h>
#include <opencv2/opencv.hpp>

using namespace cv;

int main(int argc, char** argv )
{
  
    Mat image;
    image = imread( "/home/vhfdoliveira2/03_MPI_Histogram/02_Imagens/bird-780x520.jpg", IMREAD_GRAYSCALE );
    
    if ( !image.data )
    {
        printf("No image data \n");
        return -1;
    }
    
    printf("Width: %d\nHeight: %d\n", image.size().width, image.size().height);
    
    
    return 0;
}
