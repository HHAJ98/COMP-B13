/**
 * Contains the function myName, which takes a 2d array of spaces and fills it
 * with my name in block letters.
 *
 * How this works:
 * 		movb	$'*',	1(%rdi, %rcx)
 * puts an asterix in column 1 at the current row. 
 * 
 * The function loops through all the rows, replacing the appropriate spaces by
 * filling each column, using conditional jumping to skip the replacement for 
 * the appropriate rows.
 *
 * @author:     AJ Ferraro
 * Course:      COMP B13
 * Created on:  04.17.2020
 * Source File: myNameMain.c
 */

	.globl		myName
myName:
	movq	$0,	%rax
	jmp	Condition
LoopBody:
	movl	%eax,	%ecx		# Get current row
	movq	%rcx,	%r8			# Move current row to %r8
	imull	%edx,	%ecx		# NumRows * NumCols

# The start of the A
	cmpq	$1,		%r8
	jle		A0
	movb	$'*',	1(%rdi, %rcx)
	movb	$'*',	13(%rdi, %rcx)
A0:
	cmpq	$0,		%r8
	jle		A1
	movb	$'*',	3(%rdi, %rcx)
	movb	$'*',	11(%rdi, %rcx)
A1:
	movb	$'*',	5(%rdi, %rcx)
	movb	$'*',	9(%rdi, %rcx)

	cmpq	$7,		%r8
	jge		J0
	cmpq	$3,		%r8
	je		J0
	cmpq	$4, 	%r8
	je		J0
	movb	$'*',	7(%rdi, %rcx)
# The start of the J
J0:
	cmpq	$3,		%r8
	jle		J1
	cmpq	$7, 	%r8
	jge		J1
	movb	$'*',	17(%rdi, %rcx)
J1:
	cmpq	$3,		%r8
	jle		J2
	cmpq	$8,		%r8
	jge		J2
	movb	$'*',	19(%rdi, %rcx)
J2:
	cmpq	$3,		%r8
	jle		J3
	movb	$'*',	21(%rdi, %rcx)
J3:
	cmpq	$5,		%r8
	jle		J4
	movb	$'*',	23(%rdi, %rcx)
J4:
	movb	$'*',	25(%rdi, %rcx)
	
	cmpq	$8,		%r8
	jge		J5
	movb	$'*',	27(%rdi, %rcx)
J5:
	cmpq	$7,		%r8
	jge		F0
	movb	$'*',	29(%rdi, %rcx)
# The start of the F
F0:
	movb	$'*',	37(%rdi, %rcx)
	movb	$'*',	39(%rdi, %rcx)
	movb	$'*',	41(%rdi, %rcx)

	cmpq	$6,		%r8
	jge		F1
	cmpq	$3,		%r8
	je		F1
	movb	$'*',	43(%rdi, %rcx)
	movb	$'*',	45(%rdi, %rcx)
	movb	$'*',	47(%rdi, %rcx)
F1:
	cmpq	$3,		%r8
	jge		F2
	movb	$'*',	49(%rdi, %rcx)
F2:
	incl	%eax
Condition:
	cmpl	%esi,	%eax	# Jump if we've done this to all the rows.
	jl	LoopBody

	# movq	$0,	%rax
ret
