#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

#define ULINT_MAX 18446744070000000000

int main (int argc, char *argv[])
{
	
	unsigned long int x = 10;
	unsigned int y = 10;
	
	printf("Unsigned long int: %lu\n", sizeof(x));
	printf("Unsigned int: %u\n", sizeof(y));
	
	printf("UINT_MAX: %lu\n", ULINT_MAX);

	if( x >= ULINT_MAX ){
		printf("x>=ULINT_MAX\n");
	}

	x = (unsigned long int)18446744070000000000;

	if( x >= ULINT_MAX - 1 ){
		printf("x>=\n");
	}

	return 0;	
}
