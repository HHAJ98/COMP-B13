/**
 * Contains the function mult2 which takes 1 argument, calls function2 with
 * that same argument, and returns double what function2 returns.
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  03.26.2020
 * Source File: callC-AL-C.c
 */

    .globl mult2
mult2:
    call    function2
    addl    %eax,       %eax
    ret
    