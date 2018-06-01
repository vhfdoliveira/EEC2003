/* 
 * Load modules:
 * module load compilers/gnu/7.1
 * 
 * Compile with:
 * g++ -o generate_matrix generate_matrix.cpp -Wall
 * 
 * Usage:
 * generate_matrix <nº of rows> <nº of columns> <minimum value> <maximum value> <output filename>
 * 
 * example: ./generate_matrix 100 100 -10000 10000 matrix1.csv
 */
 
 #include <iostream>
using namespace std;

#include <string.h>

#include <sys/time.h>

#include <fstream>
#include <sstream>

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()
        
int main(int argc, char** argv) {
	
	if( argc != 6 ){
		cout << "Usage: " << endl
			 << "generate_matrix <nº of rows> <nº of columns> "
			 << "<minimum value> <maximum value> <output filename>" << endl;
		
		return -1;
	}
	
	int rows, columns;
	double minimum, maximum;
	string filename;
	
	rows = atoi( argv[1] );
	columns = atoi( argv[2] );
	minimum = atof( argv[3] );
	maximum = atof( argv[4] );
	filename = argv[5];
	
	
	ofstream csv;
	csv.open(filename.c_str());
	char separator = ';';
	
	time_t t;		
	srand((unsigned)time(&t));
	
	double value;
	
	for(int i = 0; i<rows; i++){
		for(int j = 0; j<columns;j++){
						
			value = minimum + ( (double)rand() / ((double)( RAND_MAX /(maximum-minimum) )));
			
			csv << value << separator;
		
		}
		csv << endl;
	}
	
	csv.close();
	
	
	return 0;
}        
        


        
        
        
        
        
 
