/**
 * Used to investigate calling an assembly language function from C and vice versa.
 *
 * gcc -S -O0 -Wall -fno-asynchronous-unwind-tables callC-AL-C.c
 * 
 * to compile, assemble, and link: gcc -g callC-AL-C.c mult2.s -o callC-AL-C

 * @author:	Hal Mendoza
 * Course: 	COMP B13
 * Created on:  Mar 24, 2020
 * Source File: callC-AL-C.c
 */

#include <stdio.h>
#include <stdlib.h>
int mult2(int);
int function1(int number) {
	int returnValue = mult2(number) + 7;
	return returnValue;
}

int function2(int number) {
	return number*number;
}

int main(int argc, char **argv) {

	int argument1 = atoi(argv[1]);
	printf("%d\n",function1(argument1));

	return 0;
}

