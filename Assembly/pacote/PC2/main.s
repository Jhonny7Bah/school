	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\12\0"
LC1:
	.ascii "oii Apr\303\255gio!!\0"
LC2:
	.ascii "Apr\303\255gio na \303\241rea!\0"
LC3:
	.ascii "[1,2,3,4,5,6,7,8,9]\0"
LC4:
	.ascii "[1,2,3,4,5,6,7,8,9,10]\0"
LC5:
	.ascii "%d\0"
LC6:
	.ascii "]\0"
LC7:
	.ascii "[50,40,30,20,10]\0"
LC8:
	.ascii "[50,40,30,10,20]\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	andl	$-16, %esp
	subl	$176, %esp
	.cfi_offset 7, -12
	call	___main
	movl	$0, 172(%esp)
	jmp	L2
L3:
	movl	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	addl	$1, 172(%esp)
L2:
	cmpl	$11, 172(%esp)
	jle	L3
	movl	$10, 168(%esp)
	jmp	L4
L5:
	movl	168(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	subl	$1, 168(%esp)
L4:
	cmpl	$0, 168(%esp)
	jg	L5
	movl	$0, 164(%esp)
	jmp	L6
L7:
	movl	$LC1, (%esp)
	call	_puts
	addl	$1, 164(%esp)
L6:
	cmpl	$10, 164(%esp)
	jle	L7
	movl	$10, 160(%esp)
	jmp	L8
L9:
	movl	$LC2, (%esp)
	call	_puts
	subl	$1, 160(%esp)
L8:
	cmpl	$0, 160(%esp)
	jns	L9
	leal	36(%esp), %edx
	movl	$0, %eax
	movl	$20, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$1, 36(%esp)
	movl	$2, 40(%esp)
	movl	$3, 44(%esp)
	movl	$4, 48(%esp)
	movl	$5, 52(%esp)
	movl	$6, 56(%esp)
	movl	$7, 60(%esp)
	movl	$8, 64(%esp)
	movl	$9, 68(%esp)
	movl	$9, 136(%esp)
	movl	$LC3, (%esp)
	call	_puts
	movl	136(%esp), %eax
	movl	$10, 36(%esp,%eax,4)
	addl	$1, 136(%esp)
	movl	$LC4, (%esp)
	call	_puts
	subl	$1, 136(%esp)
	movl	$91, (%esp)
	call	_putchar
	movl	$0, 156(%esp)
	jmp	L10
L12:
	movl	156(%esp), %eax
	movl	36(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	136(%esp), %eax
	subl	$1, %eax
	cmpl	156(%esp), %eax
	jle	L11
	movl	$44, (%esp)
	call	_putchar
L11:
	addl	$1, 156(%esp)
L10:
	movl	156(%esp), %eax
	cmpl	136(%esp), %eax
	jl	L12
	movl	$LC6, (%esp)
	call	_puts
	movl	136(%esp), %eax
	movl	%eax, 152(%esp)
	jmp	L13
L14:
	movl	152(%esp), %eax
	subl	$1, %eax
	movl	36(%esp,%eax,4), %edx
	movl	152(%esp), %eax
	movl	%edx, 36(%esp,%eax,4)
	subl	$1, 152(%esp)
L13:
	cmpl	$0, 152(%esp)
	jg	L14
	movl	$50, 36(%esp)
	addl	$1, 136(%esp)
	movl	$91, (%esp)
	call	_putchar
	movl	$0, 148(%esp)
	jmp	L15
L17:
	movl	148(%esp), %eax
	movl	36(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	136(%esp), %eax
	subl	$1, %eax
	cmpl	148(%esp), %eax
	jle	L16
	movl	$44, (%esp)
	call	_putchar
L16:
	addl	$1, 148(%esp)
L15:
	movl	148(%esp), %eax
	cmpl	136(%esp), %eax
	jl	L17
	movl	$LC6, (%esp)
	call	_puts
	movl	$0, 144(%esp)
	jmp	L18
L19:
	movl	144(%esp), %eax
	addl	$1, %eax
	movl	36(%esp,%eax,4), %edx
	movl	144(%esp), %eax
	movl	%edx, 36(%esp,%eax,4)
	addl	$1, 144(%esp)
L18:
	movl	136(%esp), %eax
	subl	$1, %eax
	cmpl	144(%esp), %eax
	jg	L19
	subl	$1, 136(%esp)
	movl	$91, (%esp)
	call	_putchar
	movl	$0, 140(%esp)
	jmp	L20
L22:
	movl	140(%esp), %eax
	movl	36(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	136(%esp), %eax
	subl	$1, %eax
	cmpl	140(%esp), %eax
	jle	L21
	movl	$44, (%esp)
	call	_putchar
L21:
	addl	$1, 140(%esp)
L20:
	movl	140(%esp), %eax
	cmpl	136(%esp), %eax
	jl	L22
	movl	$LC6, (%esp)
	call	_puts
	movl	$14, 132(%esp)
	movl	132(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$10, 128(%esp)
	movl	$20, 124(%esp)
	movl	128(%esp), %eax
	movl	%eax, 120(%esp)
	movl	120(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$50, 16(%esp)
	movl	$40, 20(%esp)
	movl	$30, 24(%esp)
	movl	$20, 28(%esp)
	movl	$10, 32(%esp)
	movl	$LC7, (%esp)
	call	_puts
	movl	28(%esp), %eax
	movl	%eax, 116(%esp)
	movl	32(%esp), %eax
	movl	%eax, 28(%esp)
	movl	116(%esp), %eax
	movl	%eax, 32(%esp)
	movl	$LC8, (%esp)
	call	_puts
	movl	$0, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
