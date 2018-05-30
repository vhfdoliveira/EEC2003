
// These includes are necessary to get the plug-in compile !
#include <cstdio>
#include <jpeglib.h>
#include <jerror.h>

// Define plugin and include the CImg Library.
#define cimg_plugin "/home/vhfdoliveira2/03_MPI_Histogram/03_CIMG/CImg_latest/CImg-2.2.2/plugins/jpeg_buffer.h"
#include "/home/vhfdoliveira2/03_MPI_Histogram/03_CIMG/CImg_latest/CImg-2.2.2/CImg.h"
using namespace cimg_library;

#include <iostream>
using namespace std;

// Main procedure
//----------------
int main() {

	// Create a jpeg memory buffer from the content of a jpeg file.
	// (this is for testing purposes only)
	const char *filename_input = "/home/vhfdoliveira2/03_MPI_Histogram/03_CIMG/black_white.jpg";
	std::fprintf(stderr," - Reading file '%s'\n",filename_input);
	std::FILE *file_input = std::fopen(filename_input,"rb");
	if (!file_input) { std::fprintf(stderr,"Input JPEG file not found !"); std::exit(0); }

	std::fprintf(stderr," - Construct input JPEG-coded buffer\n");
	unsigned buf_size = 500000; // Put the file size here !
	JOCTET *buffer_input = new JOCTET[buf_size];
	if (std::fread(buffer_input,sizeof(JOCTET),buf_size,file_input)) std::fclose(file_input);
	// -> 'buffer_input' is now a valid jpeg-coded memory buffer.

	// Create a CImg instance from the jpeg-coded buffer using the plug-in function.
	std::fprintf(stderr," - Create CImg instance from JPEG-coded buffer\n");
	CImg<unsigned char> img;
	img.load_jpeg_buffer(buffer_input, buf_size);
	delete[] buffer_input;
	
	
	const CImg<unsigned char> hist = img.histogram(256);	
	
	cimg_for(hist, ptr, unsigned char){ cout << (int)*ptr << " "; }
	
	cout << endl;

	/*
	// Do you image processing stuff here ....
	// Here, we just mirror the image and write "hello".
	std::fprintf(stderr," - Do simple processing\n");
	const unsigned char purple[] = { 255, 0, 0 };
	const unsigned char black[] = { 0, 0, 0 };
	img.mirror('y').draw_text(0,0,"   Hello!   ",purple,black,1,57);

	// Display image to see if everything's fine.
	img.display("Using 'jpeg_buffer.h' plugin");

	// Define a new JOCTET array where the processed image has to be saved
	// (we don't know its dimension before compressing it, therefore we have to allocate enough memory )
	std::fprintf(stderr," - Construct output JPEG-coded buffer\n");
	JOCTET *buffer_output = new JOCTET[2*buf_size];

	// Save processed image into this JOCTET buffer, compressed as jpeg.
	// This is done again by using the plug-in function.
	img.save_jpeg_buffer(buffer_output,buf_size,60);
	// Note that here, the variable 'buf_size' contains the length of the
	// data which have been written in the given output buffer.

	// Copy the content of the above array into a new file
	// (it should give you a valid JPEG file then !)
	const char *filename_output = "foo_output.jpg";
	std::fprintf(stderr," - Save output file '%s'\n",filename_output);
	std::FILE* file_output = std::fopen(filename_output,"wb");
	std::fwrite(buffer_output, sizeof(JOCTET), buf_size, file_output);
	std::fclose(file_output);
	delete[] buffer_output;

	std::fprintf(stderr," - All done !\n");
	* 
	*/
	
	
	return 0;
}
