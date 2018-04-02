#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

int main(int argc, char** argv )
{
  
    Mat image;
    //image = imread( "/home/vhfdoliveira2/03_MPI_Histogram/02_Imagens/black_white.jpg", IMREAD_GRAYSCALE );
    image = imread( "/home/pattousai/DADOS/Linux/Dropbox/Mestrado/EEC2003_Computação_Alto_Desempenho/01_Aulas/03_MPI_Histogram/02_Imagens/black_white.jpg", IMREAD_GRAYSCALE );
    
    if ( !image.data )
    {
        printf("No image data \n");
        return -1;
    }
    
    printf("Image - Black and White\nWidth: %d\nHeight: %d\n\n", image.size().width, image.size().height);
    
    Mat A = image(Range::all(), Range::all());
    printf("Mat A\nWidth: %d\nHeight: %d\n\n", A.size().width, A.size().height);
    
    Mat B = image(Range::all(), Range(1,3));
    printf("Mat B\nWidth: %d\nHeight: %d\n\n", B.size().width, B.size().height);
    
    
    return 0;
}
