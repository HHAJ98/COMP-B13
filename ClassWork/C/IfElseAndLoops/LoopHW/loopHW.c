/**
 * Reverse-engineered from a functionally identical assembly language program
 * of the same name. Intended to be structured in exactly the same way, this
 * program takes two command line arguments and loops through from the first
 * argument until the loop variable is >= the second argument, doubling the
 * loop variable each time through.
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  03.24.2020
 * Source File: loopHW.c
 */

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
    int input1 = atoi(argv[1]);
    int input2 = atoi(argv[2]);
    int i = input1;

    while (i <= input2){
        printf("%d\n", i);
        i += i;
    }
    return 0;
}