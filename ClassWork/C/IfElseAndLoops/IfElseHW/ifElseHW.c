/**
 * Reverse-engineered from a functionally identical assembly language program
 * of the same name. Intended to be structured in exactly the same way, this
 * program takes a number from the command line and prints out another number
 * based on the input
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  03.24.2020
 * Source File: ifElseHW.c
 */

#include <stdio.h> 
#include <stdlib.h>

int main (int argc, char *argv[]){
    int input = atoi(argv[1]);
    int output;
    if(input == 4){
        output = input + 20;
    } else if (input <= 6 || input > 9){
        if(input != 0){
            if(input != -1){
                output = 99;
            } else {
                output = -44;
            }
        } else {
            output = 44;
        }
    } else {
        output = input + 20;
    }
    printf("%d\n", output);

    return 0;
}