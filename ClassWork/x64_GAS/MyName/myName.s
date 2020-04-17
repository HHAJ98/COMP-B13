	.globl		myName
myName:
	movq	$0,	%rax
	jmp	Condition
LoopBody:
	movl	%eax,	%ecx		# Get current row
	movq	%rcx,	%r8
	imull	%edx,	%ecx		# NumRows * NumCols

	cmpq	$1,		%r8
	jle		L0
	movb	$'*',	1(%rdi, %rcx)
	movb	$'*',	13(%rdi, %rcx)
L0:
	cmpq	$0,		%r8
	jle		L1
	movb	$'*',	3(%rdi, %rcx)
	movb	$'*',	11(%rdi, %rcx)
L1:
	movb	$'*',	5(%rdi, %rcx)
	movb	$'*',	9(%rdi, %rcx)

	cmpq	$7,		%r8
	jge		L2
	cmpq	$3,		%r8
	je		L2
	cmpq	$4, 	%r8
	je		L2
	movb	$'*',	7(%rdi, %rcx)
L2:
	cmpq	$3,		%r8
	jle		L3
	cmpq	$7, 	%r8
	jge		L3
	movb	$'*',	17(%rdi, %rcx)
L3:
	cmpq	$3,		%r8
	jle		L4
	cmpq	$8,		%r8
	jge		L4
	movb	$'*',	19(%rdi, %rcx)
L4:
	cmpq	$3,		%r8
	jle		L5
	movb	$'*',	21(%rdi, %rcx)
L5:
	cmpq	$5,		%r8
	jle		L6
	movb	$'*',	23(%rdi, %rcx)
L6:
	movb	$'*',	25(%rdi, %rcx)
	
	cmpq	$8,		%r8
	jge		L7
	movb	$'*',	27(%rdi, %rcx)
L7:
	cmpq	$7,		%r8
	jge		L8
	movb	$'*',	29(%rdi, %rcx)
L8:
	movb	$'*',	37(%rdi, %rcx)
	movb	$'*',	39(%rdi, %rcx)
	movb	$'*',	41(%rdi, %rcx)

	cmpq	$6,		%r8
	jge		L9
	cmpq	$3,		%r8
	je		L9
	movb	$'*',	43(%rdi, %rcx)
	movb	$'*',	45(%rdi, %rcx)
	movb	$'*',	47(%rdi, %rcx)
L9:
	cmpq	$3,		%r8
	jge		L10
	movb	$'*',	49(%rdi, %rcx)
L10:
	incl	%eax
Condition:
	cmpl	%esi,	%eax	# Jump if we've done this to all the rows.
	jl	LoopBody

	movq	$0,	%rax
ret
