
#include "circleLib.h"
const double PI = 3.14159;
double calcPerim (double radius){
	int two;
	double perimeter;

	perimeter = (radius * two) * pi;
	return perimeter;
}

double calcArea (double radius){
	double temp;
	double area;

	temp = (radius * radius);
	area = temp * pi;
	return area;
}
