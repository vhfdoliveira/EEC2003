#include <stdio.h>
#define N 4

void init(int n, float (*b)){
	for(int i = 0; i < n; i++){
		b[i] = i;
	}
}

int main(){
	int i,j;

	float a[N], b[N];

	init(N,b);
	
	printf("b[N][N]:\n");
	for(int i = 0; i < N ; i++){
		printf(" %f ", b[i]);
	}
	printf("\n");
	
	
	for(i=0; i<N; i++) a[i]=0.0e0;
	
	/*#pragma omp parallel for reduction(+:a[0:N]) private(j)
	for(i=0; i<N; i++){
		for(j=0; j<N; j++){
			a[j] +=  b[i][j];
		}
	}*/
	
	#pragma omp parallel for reduction(+:a[0:N])
	for(i=0; i<N; i++){
		a[j] +=  b[i];
	}
	
	for(int i = 0; i < N ; i++){
		printf(" %f ", a[i]);
	}
	printf("\n");

	return 0;
}
