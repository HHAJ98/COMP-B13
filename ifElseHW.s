	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -4(%rbp)
	cmpl	$4, -4(%rbp)
	je	.L2
	cmpl	$6, -4(%rbp)
	jle	.L3
	cmpl	$9, -4(%rbp)
	jg	.L3
.L2:
	movl	-4(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -8(%rbp)
	jmp	.L4
.L3:
	cmpl	$0, -4(%rbp)
	jne	.L5
	movl	$44, -8(%rbp)
	jmp	.L4
.L5:
	cmpl	$-1, -4(%rbp)
	jne	.L6
	movl	$-44, -8(%rbp)
	jmp	.L4
.L6:
	movl	$99, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	ret
