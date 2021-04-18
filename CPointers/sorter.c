
#include "sorter.h"
void fill_array_with_file_contents(char *contents, char **strArr);
char ** build_array_to_sort();
int row_size = 25 * sizeof(char);
int num_rows = 102401;
void sort(char *contents, int size){
	char **arr = build_array_to_sort();
	fill_array_with_file_contents(contents, arr);
}
