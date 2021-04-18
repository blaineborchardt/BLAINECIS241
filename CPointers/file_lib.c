
#include "file_lib.h"
#include <stdio.h>
#include <stlib.h>
#include <string.h>

size_t load_file(char *path, char **contents){
	char input[255];
	int row_size = 15 * sizeof(char);
	long length;
	FILE *f = fopen(path, "rb");
	if (f){
		fseek(f, 0, SEEK_END);
		length = ftell(f);
		fseek(f, 0, SEEK_SET);
		*contents = malloc(length);
		if(*contents){
			fread(*contents, 1, length, f);
		}
		fclose(f);
	}
	return length;
}
size_t save_file(char *path, char *contents, size_t size)
{
	return 1;
}
