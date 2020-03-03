/**
 * Contains the function twosComplement, which takes a binary number as a
 * string, and converts it to it's two's complement in place.
 * 
 * NOTE: THIS IMPLEMENTATION SEEMS ONLY TO WORK WITH SOME COMPILERS. SOME
 *       VERSIONS OF THE GNU C COMPILER PRODUCE A SEGMENTATION FAULT AT
 *       RUNTIME. I MOSTLY DID THIS FOR THE CHALLENGE OF NOT USING ANY IF/ELSE
 *       STATEMENTS, SO I MAY OR MAY NOT COME BACK LATER TO FIX IT LATER.
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
	//This number is the y-intercept of the line 0x61 - X, where X is the target
	//character. This line maps '0', which == 0x30, to '1', which == 0x31, and
	//vice versa.
	const char INTERCEPT = 0x61;

	const char *START = binaryString;
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

	//From this point until the beggining of the string, apply the equation
	//defined above to flip each "bit" of the string.
	while(traversePtr >= START){
		*traversePtr = INTERCEPT - *traversePtr;
		traversePtr--;
	}

}
