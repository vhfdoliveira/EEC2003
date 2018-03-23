#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

int main (int argc, char *argv[])
{
	
	unsigned long int x = 10;
	unsigned int y = 10;
	
	printf("Unsigned long int: %d\n", sizeof(x));
	printf("Unsigned int: %d\n", sizeof(y));
	
	printf("UINT_MAX: %d\n", UINT_MAX);


	return 0;	
}
