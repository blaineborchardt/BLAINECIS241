
#include <stdio.h>
#include <stdlib.h>
#include "file_lib.c"
#include "sorter.c"

/*
 * Read the file from the command line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */
int main(int argc, char **argv){
	
	//Read the original file.
	char *file_contents;
	char *file_path = "out_of_order_file";
	long length;

	length = load_file(file_path, &file_contents);

	sort(file_contents, length);

	free(file_contents);

	//Sort the file with the function you wrote.
	//Write out the new file.
}
