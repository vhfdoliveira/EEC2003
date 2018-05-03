/* 
 * Compile with:
 * g++ -o hello_jpeg_2 hello_jpeg_2.cpp -Wall -Dcimg_display=0 -Dcimg_use_jpeg -ljpeg
 */


// These includes are necessary to get the plug-in compile !
#include <cstdio>
#include <jpeglib.h>
//#include <jerror.h>

#include "CImg_latest/CImg-2.2.2/CImg.h"
using namespace cimg_library;

#include <iostream>
using namespace std;

// Main procedure
//----------------
int main() {

	CImg<unsigned char> img("/home/vhfdoliveira2/03_MPI_Histogram/03_CIMG/black_white.jpg");
	
	const CImg<unsigned char> hist = img.histogram(256);	
	
	unsigned int total = 0;
	
	cimg_for(hist, ptr, unsigned char){ 
		cout << (unsigned int)*ptr << " ";
		total += (unsigned int)*ptr; 
	}
	
	cout << endl << "Total pixels: " << total << endl;

	
	return 0;
}
