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
	imull	%edx,	%ecx		# NumRows * NumCols

# The start of the A
	cmpl	$1,		%eax
	jle		A0
	movb	$'*',	1(%rdi, %rcx)
	movb	$'*',	13(%rdi, %rcx)
A0:
	cmpl	$0,		%eax
	jle		A1
	movb	$'*',	3(%rdi, %rcx)
	movb	$'*',	11(%rdi, %rcx)
A1:
	movb	$'*',	5(%rdi, %rcx)
	movb	$'*',	9(%rdi, %rcx)

	cmpl	$7,		%eax
	jge		J0
	cmpl	$3,		%eax
	je		J0
	cmpl	$4, 	%eax
	je		J0
	movb	$'*',	7(%rdi, %rcx)
# The start of the J
J0:
	cmpl	$3,		%eax
	jle		J1
	cmpl	$7, 	%eax
	jge		J1
	movb	$'*',	17(%rdi, %rcx)
J1:
	cmpl	$3,		%eax
	jle		J2
	cmpl	$8,		%eax
	jge		J2
	movb	$'*',	19(%rdi, %rcx)
J2:
	cmpl	$3,		%eax
	jle		J3
	movb	$'*',	21(%rdi, %rcx)
J3:
	cmpl	$5,		%eax
	jle		J4
	movb	$'*',	23(%rdi, %rcx)
J4:
	movb	$'*',	25(%rdi, %rcx)
	
	cmpl	$8,		%eax
	jge		J5
	movb	$'*',	27(%rdi, %rcx)
J5:
	cmpl	$7,		%eax
	jge		F0
	movb	$'*',	29(%rdi, %rcx)
# The start of the F
F0:
	movb	$'*',	37(%rdi, %rcx)
	movb	$'*',	39(%rdi, %rcx)
	movb	$'*',	41(%rdi, %rcx)

	cmpl	$6,		%eax
	jge		F1
	cmpl	$3,		%eax
	je		F1
	movb	$'*',	43(%rdi, %rcx)
	movb	$'*',	45(%rdi, %rcx)
	movb	$'*',	47(%rdi, %rcx)
F1:
	cmpl	$3,		%eax
	jge		F2
	movb	$'*',	49(%rdi, %rcx)
F2:
	incl	%eax
Condition:
	cmpl	%esi,	%eax	# Jump if we've done this to all the rows.
	jl	LoopBody
ret
