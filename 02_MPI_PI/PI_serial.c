#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

int main (int argc, char *argv[])
{

	int n = 1000000000;
	int h = 0;
	
	double x, y, distance;
	time_t t;
	
	srand((unsigned)time(&t));
	
	int i ;
	for(i = 0; i<n; i++){
		
		x = ((double) ((double)rand()) / ((double)RAND_MAX));
		y = ((double) ((double)rand()) / ((double)RAND_MAX));	
		
		//printf("x: %f ; y: %f\n",x,y);
		
		distance = sqrt( pow(x-0.5, 2) + pow(y-0.5, 2) );
		//printf("Distance: %f\n", distance);
		
		if (distance <= 0.5){
			h++;
		}
	}
	
	//printf("hits: %d\n", h);
	
	double pi = ((double)(4*h)/n);
	
	printf("PI: %f\n", pi);
  
	return 0;
}
