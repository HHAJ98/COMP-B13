/**
 * Contains the function twosComplement, which takes a binary number as a
 * string, and converts it to it's two's complement in place.
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  02.19.2020
 * Source File: twosComplementMain.c
 */

/*
 * Takes a binary number as a string, and converts it to it's two's complement
 * in place. Uses the third method discussed in class, walking backwards from
 * the end of the string until it hits the first '1', and after that point,
 * flips all the "bits" from '1's to '0's and vice versa.
 *
 * @param binaryString The target sting.
 */
void twosComplement (char binaryString[]){
	char *START = binaryString;
	char *traversePtr = START;

	//Loop through the entire string until you find the null character, the end
	//of the string.
	while(*traversePtr){
		traversePtr++;
	}

	//Walk backwards until you hit a '1'.
	while(*traversePtr != '1'){
		traversePtr--;
	}
	//Go back one more space, we don't want to change the first '1' we
	//encounter.
	traversePtr--;

	//From this point until the beggining of the string, 'flip' all the 
	//remaining bits
	while(traversePtr >= START){
		*traversePtr = (*traversePtr == '1') ? '0' : '1';
		traversePtr--;
	}

}
