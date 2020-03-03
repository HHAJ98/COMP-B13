/**
 * Reads strings of 1s and 0s from the command line arguments and converts them
 * to their 2s complement equivalent in place. For example, "00100010110" would
 * become "11011101010" and vice versa. Each command line argument is converted
 * in place and printed out.
 *
 * Compile with:
 * gcc -g -Wall twosComplement.c twosComplementMain.c -o twosComplement
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  02.19.2020
 * Source File: twosComplementMain.c
 */

#include <stdio.h>

void twosComplement(char []);

int main(int argc, char *argv[]) {
  int i;
  for(i = 1; i < argc; i++){
    twosComplement(argv[i]);
	  printf("%s\n", argv[i]);
  }
  return 0;
}
