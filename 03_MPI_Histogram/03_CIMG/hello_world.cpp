//# Flags used to disable display capablities of CImg
//NODISPLAY_CFLAGS = -Dcimg_display=0
//g++ -o histogram_openmp histogram_openmp.cpp -Dcimg_display=0 -fopenmp

#include "/home/vhfdoliveira2/03_MPI_Histogram/03_CIMG/CImg_latest/CImg-2.2.2/CImg.h"
#include  <iostream>

 #include <cstdio>
 #include <jpeglib.h>
 #include <jerror.h>

using namespace cimg_library;
using namespace std;


int main() {
	
	
	CImg<unsigned char> image("/home/vhfdoliveira2/03_MPI_Histogram/03_CIMG/black_white.jpg");
	
	/*
	CImg<unsigned char> image(640,400,1,3);  // Define a 640x400 color image with 8 bits per color component.
	image.fill(0);                           // Set pixel values to 0 (color : black)
	unsigned char purple[] = { 255,0,255 };        // Define a purple color
	image.draw_text(100,100,"Hello World",purple); // Draw a purple "Hello world" at coordinates (100,100).
	*/
	
	const CImg<unsigned char> hist = image.histogram(256);
	
	
	cimg_for(hist, ptr, unsigned char){ cout << (int)*ptr << " "; }
	
	cout << endl;
	
	return 0;
}
