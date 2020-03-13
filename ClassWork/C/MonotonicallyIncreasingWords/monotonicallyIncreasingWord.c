/**
 * This file contains the fucntion monotonicallyIncreasingWord
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  03.12.2020
 * Source File: monotonicallyIncreasingWord.c
 */


/**
  * This function returns 0 if a word isn't monotonically Increasing, and 1 
  * otherwise. That is: if each letter in the word is strictly alphabeticaly
  * after the letter before it. This is a simple check, and assumes that words:
  *	- are all lowercase
  *	- are less than 100 characters long
  *	- contain no special symbols
  *  
  * @param *word a pointer to a c string < 100 characters long including NULL
  * @return 1 if the word is monotonically increasing, 0 if otherwise. 
  */ 
int monotonicallyIncreasingWord(char *word){
	char *letter;
	for(letter = word +1; *letter; letter++){
		if(*(letter -1) > *letter){
			return 0;
		}
	}
	return 1;
}
