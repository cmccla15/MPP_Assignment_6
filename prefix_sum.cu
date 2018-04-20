/*

*/

#include <cuda.h>
#include <cuda_runtime.h>
#include <string>
#include <vector>
#include <iostream>
#include <fstream>

using namespace std;

inline void gpu_handle_error( cudaError_t err, const char* file, int line, int abort = 1 )
{
	if (err != cudaSuccess)
	{
		fprintf (stderr, "gpu error %s, %s, %d\n", cudaGetErrorString (err), file, line);
		if (abort)
			exit (EXIT_FAILURE);
	}
}
#define gpu_err_chk(e) {gpu_handle_error( e, __FILE__, __LINE__ );}



void scan_serial( float* scanned, float* input, int length);

//void scan_parallel( float* scanned, float* input, int length);

//__global__ void scan_parallel_kernel( ){}

int main( int argc, char** argv )
{
    ifstream input( "floats.csv" );
    string line, field;

    vector<float> floats;

    while( input.is_open() )
    {
        v.clear();
        stringstream ss( line );

        while( getline( ss, field, ',' ))
    }
}

void scan_serial( float* scanned, float* input, int length)
{
    scanned[0] = 0;
    for( int i = 1; i < length; ++i )
    {
        scanned[i] = scanned[i-1] + input[i-1];
    }
}