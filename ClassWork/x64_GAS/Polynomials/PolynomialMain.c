/**
 * Used to investigate calling an assembly language function from C
 *
 * gcc -S -O0 -Wall -fno-asynchronous-unwind-tables callC-AL-C.c
 * 
 * to compile, assemble, and link: gcc -g -Wall PolynomialMain.c polynomial.s -o polynomial

 * @author:	Hal Mendoza
 * Course: 	COMP B13
 * Created on:  Mar 24, 2020
 * Source File: callC-AL-C.c
 */

#include <stdio.h>
#include <stdlib.h>
int polynomialA(int, int);

int main(int argc, char **argv) {
	int argument1 = 3;
	int argument2 = 4;
	if(argc == 3) {
		argument1 = atoi(argv[1]);
		argument2 = atoi(argv[2]);
	}
	printf("%d\n",polynomialA(argument1, argument2));

	return 0;
}

