/* 
 * Load modules:
 * module load compilers/gnu/7.1
 * 
 * Compile with:
 * g++ -o mult_matrix mult_matrix.cpp -Wall
 * 
 * Usage:
 * mult_matrix <read_file> <nº of rows of matrix 1> <<nº of columns of matrix 1> 
 * 			   <nº of rows of matrix 2> <<nº of columns of matrix 2>
 * 			   <create output file> <debug>
 * 
 * example: ./mult_matrix 0 100 200 200 150 0 2
 * example: ./mult_matrix 1 100 200 200 150 0 2 matrix1.csv matrix2.csv
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
#define MINIMUM_VALUE -10000
#define MAXIMUM_VALUE 10000



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
	
	if( debug >= 3 ){
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
	
	if( debug >= 3 ){
		cout << "After dynamic allocation." << endl << endl;
	}
	
	
	if( !read_file ){
		
		time_t t;		
		srand((unsigned)time(&t));
		
		for(int i = 0; i<rows1; i++){
			for(int j = 0; j<columns1;j++){
				matrix1[i][j] = MINIMUM_VALUE + 
								( (double)rand() / ( (double)( RAND_MAX /(MAXIMUM_VALUE-MINIMUM_VALUE) )) );
				
				//matrix1[i][j] = MINIMUM_VALUE + (rand()%MAXIMUM_VALUE);
			}
		}
		
		for(int i = 0; i<rows2; i++){
			for(int j = 0; j<columns2;j++){
				matrix2[i][j] = MINIMUM_VALUE + 
								( (double)rand() / ( (double)( RAND_MAX /(MAXIMUM_VALUE-MINIMUM_VALUE) )) );
				
				//matrix2[i][j] = MINIMUM_VALUE + (rand()%MAXIMUM_VALUE);
			}
		}
		
		if( debug >= 2 ){
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
	else{
		
		ifstream file1(path1);
		
		if( !file1.is_open() ){
			cout << "Unable to open file: " << path1 << endl;
			return -1;
		}
		
		ifstream file2(path2);
		
		if( !file2.is_open() ){
			cout << "Unable to open file: " << path2 << endl;
			return -1;
		}
		
		
		string read_value;
		char separator = ';';
		
		//TODO: check if the size of the file don't match with the size passed in the arguments and throw an error
		for(int i = 0; i < rows1; i++){
			for(int j = 0; j < columns1; j++){
				getline(file1, read_value, separator);
				matrix1[i][j] = atof( read_value.c_str() );
			}
		}
		
		//TODO: check if the size of the file don't match with the size passed in the arguments and throw an error
		for(int i = 0; i < rows2; i++){
			for(int j = 0; j < columns2; j++){
				getline(file2, read_value, separator);
				matrix2[i][j] = atof( read_value.c_str() );
			}
		}
		
		
		if( debug >= 2 ){
			cout << "READED MATRIX'S" << endl << endl;
			
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
	
	gettimeofday(&t,NULL);
	time_ROI_begin = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	for(int i = 0; i < rows1; i++){
		for(int j = 0; j < columns2; j++){
			for(int k = 0; k < columns1; k++){
				result[i][j] = result[i][j] + matrix1[i][k]*matrix2[k][j];
			}
		}
	}
	
	gettimeofday(&t,NULL);
	time_ROI_end = (double)t.tv_sec+(double)t.tv_usec*1e-6;
  	
  	if( debug >= 1 ){
		cout << "ROI time: " << time_ROI_end - time_ROI_begin << " seconds." << endl;
	}
  	
  	
  	if( debug >= 2 ){
		
		cout << endl << "RESULT" << endl;		
		for(int i = 0; i<rows_result; i++){
			cout << "[";
			for(int j = 0; j<columns_result;j++){
				cout << result[i][j] << " ";
			}
			cout << "]" << endl;
		}
	}
  	
  	
  	gettimeofday(&t,NULL);
	time_end = (double)t.tv_sec+(double)t.tv_usec*1e-6;
	
	if( debug >= 1 ){
		cout << "Total execution time: " << time_end - time_begin << " seconds." << endl;
	}
	
	
	if( output ){
		
		char date[DATE_SIZE];
		time_t now = time(0);
		strftime(date, sizeof(date), DATE_FORMAT, localtime(&now));
		
		string csv_name = string("outputs/") + string("output");
		csv_name += "_nodes_" + SSTR(1);
		csv_name += "_processes_" + SSTR(1);
		csv_name += "_threads_" + SSTR(1);
		csv_name += "_size_" + SSTR(rows1);
		csv_name += "_" + string(date);		
		csv_name += ".csv";
		
		if( debug >= 2 ){
			cout << csv_name << endl;
		}
		
		ofstream csv;
		csv.open(csv_name.c_str());
		
		char separator = ';';
		
		csv << "ROI time" << separator << time_ROI_end - time_ROI_begin << endl;
		csv << "Total time" << separator << time_end - time_begin << endl;
		csv << "nodes" << separator << 1 << endl;
		csv << "processes" << separator << 1 << endl;
		csv << "threads" << separator << 1 << endl;
		csv << "rows matrix 1" << separator << rows1 << endl;
		csv << "columns matrix 1" << separator << columns1 << endl;
		csv << "rows matrix 2" << separator << rows2 << endl;
		csv << "columns matrix 2" << separator << columns2 << endl;
		
		
		csv.close();
		
	}
	
	
	return 0;
}
