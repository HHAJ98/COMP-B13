/**
 * Reads floating-point currentNums from stdin and prints the average, not
 * including zeros.
 *
 * Compile with: gcc -g -Wall avgNoZero.c avgNoZeroMain.c -o avgNoZero
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  01.21.2020
 * Source File: avgNoZeroMain.c
 */

#include <stdio.h>
#define SIZE 1000

double avgNoZero(double array[], int size); 

int main(int argc, char **argv){
    double input[SIZE];
    double currentNum;
    double average;
    int count = 0;

    /*scanf takes input from the std io stream, %lf specifier tells it we want
      a flaoting point number and to convert it to a double
    */
    while(scanf("%lf", &currentNum) == 1 && count < SIZE){ 
        input[count++] = currentNum;
    }
    
    average = avgNoZero(input, count);
    printf("%f\n", average);

    return 0;
}
