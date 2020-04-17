/**
 * Creates a 2D array of char, sends it to a function to fill and prints the result.
 *
 * to compile, assemble, and link: gcc -g -Wall myNameMain.c myName.s -o myName

 * @author:	Hal Mendoza
 * Course: 	COMP B13
 * Created on:  Apr 15, 2020
 * Source File: myNameMain.c
 */

#include <stdio.h>
#include <stdlib.h>
void myName(char *twoDarrayChars, int numRows, int numCols);

#define NUMROWS 9
#define NUMCOLS 50
int main(int argc, char **argv) {
	char name[NUMROWS][NUMCOLS];
	
	int row,col;
	for(row=0; row<NUMROWS; ++row) {
		for(col=0; col<NUMCOLS; ++col)
			name[row][col] = ' '; //space
	}
	
	myName(&name[0][0], NUMROWS, NUMCOLS);

	for(row=0; row<NUMROWS; ++row) {
		for(col=0; col<NUMCOLS; ++col) {
			putchar(name[row][col]);
		}
		putchar('\n');
	}

	return 0;
}

