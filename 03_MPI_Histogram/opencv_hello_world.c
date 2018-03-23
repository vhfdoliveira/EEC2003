#include <opencv2/opencv.hpp>
using namespace cv;

int main( int argc, char** argv )
{
	char* imageName = "02_Imagens/bird-780x520.jpg";
	Mat image;
	
	image = imread( imageName, IMREAD_COLOR );
	
	if( argc != 2 || !image.data )
	{
	printf( " No image data \n " );
	return -1;
	}
	
	namedWindow( imageName, WINDOW_AUTOSIZE );
	
	imshow( imageName, image );
	
	waitKey(0);	
	
	return 0;
}
