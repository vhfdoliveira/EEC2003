#include <stdio.h>
#include <opencv2/opencv.hpp>

using namespace cv;

int main(int argc, char** argv )
{
  
    Mat image;
    image = imread( "/home/vhfdoliveira2/03_MPI_Histogram/02_Imagens/bird-780x520.jpg", 1 );
    
    if ( !image.data )
    {
        printf("No image data \n");
        return -1;
    }
    
    namedWindow("Display Image", WINDOW_AUTOSIZE );
    imshow("Display Image", image);
    
    waitKey(0);
    
    return 0;
}
