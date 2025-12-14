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
	.string	"%d"
.LC5:
	.string	"]"
.LC6:
	.string	"[50,40,30,20,10]"
.LC7:
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
	subq	$448, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -440(%rbp)
	jmp	.L2
.L3:
	movl	-440(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -440(%rbp)
.L2:
	cmpl	$10, -440(%rbp)
	jle	.L3
	movl	$10, -436(%rbp)
	jmp	.L4
.L5:
	movl	-436(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -436(%rbp)
.L4:
	cmpl	$0, -436(%rbp)
	jg	.L5
	movl	$0, -432(%rbp)
	jmp	.L6
.L7:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -432(%rbp)
.L6:
	cmpl	$10, -432(%rbp)
	jle	.L7
	movl	$10, -428(%rbp)
	jmp	.L8
.L9:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	subl	$1, -428(%rbp)
.L8:
	cmpl	$0, -428(%rbp)
	jns	.L9
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movl	$1, -336(%rbp)
	movl	$2, -332(%rbp)
	movl	$3, -328(%rbp)
	movl	$4, -324(%rbp)
	movl	$5, -320(%rbp)
	movl	$6, -316(%rbp)
	movl	$7, -312(%rbp)
	movl	$8, -308(%rbp)
	movl	$9, -304(%rbp)
	movl	$9, -404(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-404(%rbp), %eax
	cltq
	movl	$10, -336(%rbp,%rax,4)
	addl	$1, -404(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movl	$1, -256(%rbp)
	movl	$2, -252(%rbp)
	movl	$3, -248(%rbp)
	movl	$4, -244(%rbp)
	movl	$5, -240(%rbp)
	movl	$6, -236(%rbp)
	movl	$7, -232(%rbp)
	movl	$8, -228(%rbp)
	movl	$9, -224(%rbp)
	movl	$9, -400(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	subl	$1, -400(%rbp)
	movl	$91, %edi
	call	putchar@PLT
	movl	$0, -424(%rbp)
	jmp	.L10
.L12:
	movl	-424(%rbp), %eax
	cltq
	movl	-256(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-400(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -424(%rbp)
	jge	.L11
	movl	$44, %edi
	call	putchar@PLT
.L11:
	addl	$1, -424(%rbp)
.L10:
	movl	-424(%rbp), %eax
	cmpl	-400(%rbp), %eax
	jl	.L12
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movl	$1, -176(%rbp)
	movl	$2, -172(%rbp)
	movl	$3, -168(%rbp)
	movl	$4, -164(%rbp)
	movl	$5, -160(%rbp)
	movl	$6, -156(%rbp)
	movl	$7, -152(%rbp)
	movl	$8, -148(%rbp)
	movl	$9, -144(%rbp)
	movl	$9, -396(%rbp)
	movl	-396(%rbp), %eax
	movl	%eax, -420(%rbp)
	jmp	.L13
.L14:
	movl	-420(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-176(%rbp,%rax,4), %edx
	movl	-420(%rbp), %eax
	cltq
	movl	%edx, -176(%rbp,%rax,4)
	subl	$1, -420(%rbp)
.L13:
	cmpl	$0, -420(%rbp)
	jg	.L14
	movl	$50, -176(%rbp)
	addl	$1, -396(%rbp)
	movl	$91, %edi
	call	putchar@PLT
	movl	$0, -416(%rbp)
	jmp	.L15
.L17:
	movl	-416(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-396(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -416(%rbp)
	jge	.L16
	movl	$44, %edi
	call	putchar@PLT
.L16:
	addl	$1, -416(%rbp)
.L15:
	movl	-416(%rbp), %eax
	cmpl	-396(%rbp), %eax
	jl	.L17
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
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
	movl	$9, -392(%rbp)
	movl	$0, -412(%rbp)
	jmp	.L18
.L19:
	movl	-412(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	-412(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	addl	$1, -412(%rbp)
.L18:
	movl	-392(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -412(%rbp)
	jl	.L19
	subl	$1, -392(%rbp)
	movl	$91, %edi
	call	putchar@PLT
	movl	$0, -408(%rbp)
	jmp	.L20
.L22:
	movl	-408(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-392(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -408(%rbp)
	jge	.L21
	movl	$44, %edi
	call	putchar@PLT
.L21:
	addl	$1, -408(%rbp)
.L20:
	movl	-408(%rbp), %eax
	cmpl	-392(%rbp), %eax
	jl	.L22
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$14, -388(%rbp)
	movl	-388(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, -384(%rbp)
	movl	$20, -380(%rbp)
	movl	-384(%rbp), %eax
	movl	%eax, -376(%rbp)
	movl	-376(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$50, -368(%rbp)
	movl	$40, -364(%rbp)
	movl	$30, -360(%rbp)
	movl	$20, -356(%rbp)
	movl	$10, -352(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-356(%rbp), %eax
	movl	%eax, -372(%rbp)
	movl	-352(%rbp), %eax
	movl	%eax, -356(%rbp)
	movl	-372(%rbp), %eax
	movl	%eax, -352(%rbp)
	leaq	.LC7(%rip), %rax
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
