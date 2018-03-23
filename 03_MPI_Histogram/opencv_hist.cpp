//gcc opencv.c -o opencv `pkg-config --libs --cflags opencv` -ldl -lm

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
    
    // Initialize parameters
    int histSize = 256;    // bin size
    float range[] = { 0, 255 };
    const float *ranges[] = { range };
    
    bool uniform = true; 
    bool accumulate = false;
    
    // Calculate histogram
    Mat hist;
    calcHist( &image, 1, 0, Mat(), hist, 1, &histSize, ranges, uniform, accumulate );
    
    // Show the calculated histogram in command window
    double total;
    for( int h = 0; h < histSize; h++ )
	 {
		float binVal = hist.at<float>(h);
		cout<<" "<<binVal;
	 }
	 
    
    return 0;
}
