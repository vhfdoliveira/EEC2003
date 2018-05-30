/* 
 * Load modules:
 * module load compilers/gnu/7.1
 * module load libraries/openmpi/1.4-gnu-7.1
 * 
 * Compile with:
 * 
 */

#include <iostream>
using namespace std;

#include <string.h>

#include <sys/time.h>

#include <fstream>
#include <sstream>

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()
        
#define DATE_FORMAT "%Y%m%d_%H%M%S"
#define DATE_SIZE 20
#define MINIMUM_VALUE 0
#define MAXIMUM_VALUE 4



// Main procedure
//----------------
int main(int argc, char** argv) {
	
	double time_ROI_begin, time_ROI_end;
	double time_begin, time_end;
	
	struct timeval t;
	
	gettimeofday(&t,NULL);
	time_begin = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	bool read_file;
	int rows1, columns1;
	int rows2, columns2;
	int rows_result, columns_result;
	bool output;
	int debug;
	string path1, path2;
	
	
	if( (argc != 8) and (argc != 10) ){
		cout << "Usage: " << endl 
			 << "mult_matrix <generate matrix or read file> " 
			 << "<number of rows of matrix1> <number of columns of matrix1> "
			 << "<number of rows of matrix2> <number of columns of matrix2> "
			 << "<create output file> <debug> " 
			 << "optionals: <path of matrix1> <path of matrix2>"
			 << endl;
			 
		return -1;
	}
	
	read_file = atoi(argv[1]);
	
	rows1 = atoi(argv[2]);
	columns1 = atoi(argv[3]);
	rows2 = atoi(argv[4]);
	columns2 = atoi(argv[5]);
	
	if( columns1 != rows2 ){
		cout << "The number of columns of matrix1 must be equal to the number of rows of matrix2." << endl;
		return -1;
	}
	
	output = atoi(argv[6]);
	debug = atoi(argv[7]);
	
	if( argc == 10 ){
		path1 = argv[8];
		path2 = argv[9];
	}
	
	rows_result = rows1;
	columns_result = columns2;
	
	if( debug >= 2 ){
		cout << "INPUTS: " << endl
			 << "Read file: " << read_file << endl
			 << "Matrix 1: (" << rows1 << "x" << columns1 << ")" << endl
			 << "Matrix 2: (" << rows2 << "x" << columns2 << ")" << endl
			 << "Output: " << output << endl
			 << "Debug: " << debug << endl << endl;
	}
	
	
  	
  	double **matrix1;
	double **matrix2;
	double **result;
  	
  	matrix1 = new double *[rows1];
  	for(int i=0; i < rows1; i++){
		matrix1[i] = new double[columns1];
	}
	
	matrix2 = new double *[rows2];
  	for(int i=0; i < rows2; i++){
		matrix2[i] = new double[columns2];
	}
	
	result = new double *[rows_result];
  	for(int i=0; i < rows_result; i++){
		result[i] = new double[columns_result];
	}
	
	if( debug >= 2 ){
		cout << "After dynamic allocation." << endl << endl;
	}
	
	
	if( !read_file ){
		
		time_t t;		
		srand((unsigned)time(&t));
		
		for(int i = 0; i<rows1; i++){
			for(int j = 0; j<columns1;j++){
				//matrix1[i][j] = MINIMUM_VALUE + 
				//				( (double)rand() / ( (double)( RAND_MAX /(MAXIMUM_VALUE-MINIMUM_VALUE) )) );
				
				matrix1[i][j] = MINIMUM_VALUE + (rand()%MAXIMUM_VALUE);
			}
		}
		
		for(int i = 0; i<rows2; i++){
			for(int j = 0; j<columns2;j++){
				//matrix2[i][j] = MINIMUM_VALUE + 
				//				( (double)rand() / ( (double)( RAND_MAX /(MAXIMUM_VALUE-MINIMUM_VALUE) )) );
				
				matrix2[i][j] = MINIMUM_VALUE + (rand()%MAXIMUM_VALUE);
			}
		}
		
		if( debug >= 1 ){
			cout << "GENERATED MATRIX'S" << endl << endl;
			
			cout << "Matrix 1: " << endl;			
			for(int i = 0; i<rows1; i++){
				cout << "[";
				for(int j = 0; j<columns1;j++){
					cout << matrix1[i][j] << " ";
				}
				cout << "]" << endl;
			}
			
			cout << endl << "Matrix 2: " << endl;			
			for(int i = 0; i<rows2; i++){
				cout << "[";
				for(int j = 0; j<columns2;j++){
					cout << matrix2[i][j] << " ";
				}
				cout << "]" << endl;
			}
		}
	}
	
	
	for(int i = 0; i < rows1; i++){
		for(int j = 0; j < columns2; j++){
			for(int k = 0; k < columns1; k++){
				result[i][j] = result[i][j] + matrix1[i][k]*matrix2[k][j];
			}
		}
	}
  	
  	
  	if( debug >= 1 ){
		cout << endl << "RESULT" << endl;		
		for(int i = 0; i<rows_result; i++){
			cout << "[";
			for(int j = 0; j<columns_result;j++){
				cout << result[i][j] << " ";
			}
			cout << "]" << endl;
		}
	}
  	
  	
	
	return 0;
}
