/**
 * A program that will read a text file or take input from the command line and
 * print out each monotonically increasing word that it scans. A few assumptions
 * are made about the word, namely that words:
 *	- are all lowercase
 *	- are less than 100 characters long
 *	- contain no special symbols  
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  03.12.2020
 * Source File: monotonicallyIncreasingWordsMain.c
 */

#include <stdio.h>

int monotonicallyIncreasingWord(char*);

int main(){
	char input[100];
	while(scanf("%s", input) != EOF){
		if(monotonicallyIncreasingWord(input)){
			printf("%s\n", input);
		}
	}
	return 0;
}
