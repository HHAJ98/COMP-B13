/**
 * Reads 4 integers from the command line, passes them to polynomial2,
 * and prints out the return
 * 
 * To assemble and link without gcc:
         as -gstabs polynomial2.s Polynomial2Main.s -o poly2.o
         ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -L /usr/lib/x86_64-linux-gnu -l :crt1.o -l :crti.o -l :crtn.o -lc poly2.o -o poly2
                
 * @author:        Hal Mendoza
 * Course:         COMP B13
 * Created on:     May 10, 2020
 * Source File:    Polynomial2Main.s
 */
 
 .section	.rodata
	.align 8
.LC0:
	.string	"Requires 4 int command-line args\n"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$5, -20(%rbp)
	jne	.L2
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -4(%rbp)
	jmp	.L3
.L2:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
.L3:
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	polynomial2
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	ret
