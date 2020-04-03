/**
 * Contains the function polynomialA which takes 2 arguments, x and y (in that
 * order) and returns 3x^2 + 2xy + 5y^2
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  04.02.2020
 * Source File: PolynomialMain.c
 */

        .globl      polynomialA

polynomialA:
        movl        %edi, %eax      #x
        imull       %eax, %eax      #x^2
        imull       $3, %eax, %eax  #3x^2

        movl        %esi, %ecx      #y
        movl        %edi, %edx      #x
        imull       %edx, %ecx      #x * y
        imull       $2,   %ecx      #2xy

        movl        %esi, %edx      #y
        imull       %edx, %edx      #y^2
        imull       $5, %edx        #5y^2
        
        addl        %ecx, %eax
        addl        %edx, %eax
        ret
        