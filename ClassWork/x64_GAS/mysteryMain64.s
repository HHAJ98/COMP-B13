/* This program takes two command line arguments and passes them to mystery64.o
 * , which contains a precompiled function, and prints  the value it returns.
 *
 * HASH: 7775
 * h % 6 = 5 >> argv[1] goes into %r9d
 * (h % 5) * 4 = 0 >> argv[2] goes 0 bytes above the stack pointer
 * h % 7 = 5 >> value from mystery64.o is returned in %r9
 * h % 3 + 1 = 3 >> three levels of indirection to get to the return value
 *
 * gcc -Wall -g mysteryMain64.s mystery64.o -o mysteryMain64
 *
 * @author:	 AJ Ferraro
 * Course: 	 COMP B13
 * Created on:  Mar 3, 2020
 * Source File: mysteryMain64.s
 * LOGIC CHECK: For my name, mystery64.o adds the two arguments together and
 * returns a tripple pointer to the result.
 */

	.file	"MysteryStart.c"
	.text
	.section	.rodata
.LC0:
	.string	"mystery returns %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$25, -12(%rbp)
	movl	$5, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi


	movl	%edi, %r9d	#argv[1] goes into the %r9d register
	movl	%esi, (%rsp)	#argv[2] 0 bytes above the stack pointer

	call	mystery

	movq	(%r9), %rax    # first level of redirection
	movq	(%rax), %rax    # second level of redirection
	movq	(%rax), %rax    # third level of redirection

	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
