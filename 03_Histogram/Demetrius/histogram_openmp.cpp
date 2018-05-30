
//# Flags used to disable display capablities of CImg
//NODISPLAY_CFLAGS = -Dcimg_display=0
//g++ -o histogram_openmp histogram_openmp.cpp -Dcimg_display=0 -fopenmp

#include "../../CImg_latest/CImg-2.2.2/CImg.h"
#include  <iostream>
#include <omp.h>

using namespace cimg_library;
using namespace std;


/// Establish the number of bins
const int HIST_SIZE = 256;
int hist[HIST_SIZE];

int main() {

	CImg<unsigned char> image("lena.jpg"),
	grayWeight(image.width(), image.height(), 1, 1, 0),
	imgR(image.width(), image.height(), 1, 3, 0),
	imgG(image.width(), image.height(), 1, 3, 0),
	imgB(image.width(), image.height(), 1, 3, 0);

	#pragma omp parallel 
	{
		if(omp_get_thread_num() == 0) cout << "number of threads " << omp_get_num_threads() << endl; 
	
		#pragma omp for reduction(+:hist[:256])
		for(int x = 0; x < image.width(); x++)
		{
			for (int y = 0; y < image.height(); y++)
			{
    			// Separation of channels
				int R = (int)image(x,y,0,0);
				int G = (int)image(x,y,0,1);
				int B = (int)image(x,y,0,2);
        		// Real weighted addition of channels for gray
				int grayValueWeight = (int)(0.299*R + 0.587*G + 0.114*B);

				// Index of the histogram vector
				int index = grayValueWeight;
				hist[index]++;
			}
		}
	}

	int sum=0;
	for (int i = 0 ; i < HIST_SIZE ; i++) {
		cout << hist[i] << " ";
		sum+=hist[i];
	}

	cout << "\nsum " << sum << " " << (sum/1960) << endl;

	return 0;
}
