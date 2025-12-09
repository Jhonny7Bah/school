	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"oii Apr\303\255gio!!"
.LC2:
	.string	"Apr\303\255gio na \303\241rea!"
.LC3:
	.string	"[1,2,3,4,5,6,7,8,9]"
.LC4:
	.string	"[1,2,3,4,5,6,7,8,9,10]"
.LC5:
	.string	"%d"
.LC6:
	.string	"]"
.LC7:
	.string	"[50,40,30,20,10]"
.LC8:
	.string	"[50,40,30,10,20]"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -188(%rbp)
	jmp	.L2
.L3:
	movl	-188(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -188(%rbp)
.L2:
	cmpl	$11, -188(%rbp)
	jle	.L3
	movl	$10, -184(%rbp)
	jmp	.L4
.L5:
	movl	-184(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -184(%rbp)
.L4:
	cmpl	$0, -184(%rbp)
	jg	.L5
	movl	$0, -180(%rbp)
	jmp	.L6
.L7:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -180(%rbp)
.L6:
	cmpl	$10, -180(%rbp)
	jle	.L7
	movl	$10, -176(%rbp)
	jmp	.L8
.L9:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	subl	$1, -176(%rbp)
.L8:
	cmpl	$0, -176(%rbp)
	jns	.L9
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -96(%rbp)
	movl	$2, -92(%rbp)
	movl	$3, -88(%rbp)
	movl	$4, -84(%rbp)
	movl	$5, -80(%rbp)
	movl	$6, -76(%rbp)
	movl	$7, -72(%rbp)
	movl	$8, -68(%rbp)
	movl	$9, -64(%rbp)
	movl	$9, -152(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-152(%rbp), %eax
	cltq
	movl	$10, -96(%rbp,%rax,4)
	addl	$1, -152(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	subl	$1, -152(%rbp)
	movl	$91, %edi
	call	putchar@PLT
	movl	$0, -172(%rbp)
	jmp	.L10
.L12:
	movl	-172(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-152(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -172(%rbp)
	jge	.L11
	movl	$44, %edi
	call	putchar@PLT
.L11:
	addl	$1, -172(%rbp)
.L10:
	movl	-172(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L12
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-152(%rbp), %eax
	movl	%eax, -168(%rbp)
	jmp	.L13
.L14:
	movl	-168(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	-168(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	subl	$1, -168(%rbp)
.L13:
	cmpl	$0, -168(%rbp)
	jg	.L14
	movl	$50, -96(%rbp)
	addl	$1, -152(%rbp)
	movl	$91, %edi
	call	putchar@PLT
	movl	$0, -164(%rbp)
	jmp	.L15
.L17:
	movl	-164(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-152(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -164(%rbp)
	jge	.L16
	movl	$44, %edi
	call	putchar@PLT
.L16:
	addl	$1, -164(%rbp)
.L15:
	movl	-164(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L17
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -160(%rbp)
	jmp	.L18
.L19:
	movl	-160(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	-160(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	addl	$1, -160(%rbp)
.L18:
	movl	-152(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -160(%rbp)
	jl	.L19
	subl	$1, -152(%rbp)
	movl	$91, %edi
	call	putchar@PLT
	movl	$0, -156(%rbp)
	jmp	.L20
.L22:
	movl	-156(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-152(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -156(%rbp)
	jge	.L21
	movl	$44, %edi
	call	putchar@PLT
.L21:
	addl	$1, -156(%rbp)
.L20:
	movl	-156(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L22
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$14, -148(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, -144(%rbp)
	movl	$20, -140(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$50, -128(%rbp)
	movl	$40, -124(%rbp)
	movl	$30, -120(%rbp)
	movl	$20, -116(%rbp)
	movl	$10, -112(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-116(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -112(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
