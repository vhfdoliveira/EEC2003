//gcc opencv.c -o opencv `pkg-config --libs --cflags opencv` -ldl -lm

#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <fstream>

using namespace cv;
using namespace std;

int main(int argc, char** argv )
{
  
    Mat image;
    image = imread( "/home/vhfdoliveira2/03_MPI_Histogram/02_Imagens/black_white.jpg", IMREAD_GRAYSCALE );
    //image = imread( "/home/pattousai/DADOS/Linux/Dropbox/Mestrado/EEC2003_Computação_Alto_Desempenho/01_Aulas/03_MPI_Histogram/02_Imagens/Einstein_3400x3127.jpg", IMREAD_GRAYSCALE );
    
    if ( !image.data )
    {
        printf("No image data \n");
        return -1;
    }
    
    printf("Width: %d\nHeight: %d\n", image.size().width, image.size().height);
    
    // Initialize parameters
    int histSize = 256;    // bin size
    float range[] = { 0, 256 };
    const float *ranges[] = { range };
    
    bool uniform = true; 
    bool accumulate = false;
    
    // Calculate histogram
    Mat hist;
    calcHist( &image, 1, 0, Mat(), hist, 1, &histSize, ranges, uniform, accumulate );
    
    // Show the calculated histogram in command window
    double total;
    int binVal[histSize];
    for( int h = 0; h < histSize; h++ )
	{
		binVal[h] = hist.at<float>(h);
		cout<<" "<<binVal[h];
	}
	cout << endl;
	
	
	/*
	FileStorage fs("histogram_file.yml", FileStorage::WRITE);
	if (!fs.isOpened())
	{
		cout << "unable to open file storage!" << endl; 
		return -1;
	}
	
	fs << "my_histogram" << hist;
	fs.release();
	
	
	ofstream file;
	file.open("histogram_file.csv");
	file<< format(hist, Formatter::FMT_CSV) << endl;
	file.close();
	 
    cout << endl;
	*/
       
    return 0;
}
