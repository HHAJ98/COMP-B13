/**
 * This file contains the fucntion avgNoZero
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  01.21.2020
 * Source File: avgNoZero.c
 */


/**
  * This function returns the average of the numbers in array,  
  * not counting zeroes. Returns zero if size <= 0.  
  *  
  * @param array an array of doubles  
  * @param size the number of doubles in array to average  
  * @return the average of the numbers in array, not counting zeroes,  
  *         or zero if size <= 0.  
  */ 
double avgNoZero(double array[], int size){
    double sum = 0;
    int numNonZero = 0;
    int i;

    for(i = 0; i < size; i++){
        if(array[i] != 0){
            sum += array[i];
            numNonZero ++;
        }
    }

    return sum / numNonZero;
}