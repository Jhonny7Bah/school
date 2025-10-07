	.file	"meu_codigo.c"
	.text
	.section	.text.unlikely,"ax",@progbits
	.globl	PyInit_meu_codigo
	.type	PyInit_meu_codigo, @function
PyInit_meu_codigo:
.LFB173:
	.cfi_startproc
	endbr64
	leaq	__pyx_moduledef(%rip), %rdi
	jmp	PyModuleDef_Init@PLT
	.cfi_endproc
.LFE173:
	.size	PyInit_meu_codigo, .-PyInit_meu_codigo
	.text
	.p2align 4
	.type	Py_DECREF, @function
Py_DECREF:
.LFB107:
	.cfi_startproc
	subq	$1, (%rdi)
	je	.L5
	ret
.L5:
	jmp	_Py_Dealloc@PLT
	.cfi_endproc
.LFE107:
	.size	Py_DECREF, .-Py_DECREF
	.section	.text.unlikely
	.type	__Pyx_copy_spec_to_module, @function
__Pyx_copy_spec_to_module:
.LFB175:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	movq	%rdx, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%r8d, %ebx
	call	PyObject_GetAttrString@PLT
	testq	%rax, %rax
	je	.L7
	movq	%rax, %rbp
	leaq	_Py_NoneStruct(%rip), %rax
	cmpq	%rax, %rbp
	jne	.L13
	xorl	%r12d, %r12d
	andb	$1, %bl
	je	.L8
.L13:
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	PyDict_SetItemString@PLT
	movl	%eax, %r12d
.L8:
	movq	%rbp, %rdi
	call	Py_DECREF
	jmp	.L6
.L7:
	movq	PyExc_AttributeError(%rip), %rdi
	orl	$-1, %r12d
	call	PyErr_ExceptionMatches@PLT
	testl	%eax, %eax
	je	.L6
	call	PyErr_Clear@PLT
	xorl	%r12d, %r12d
.L6:
	popq	%rbx
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE175:
	.size	__Pyx_copy_spec_to_module, .-__Pyx_copy_spec_to_module
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Interpreter change detected - this module can only be loaded into one interpreter per process."
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"name"
.LC2:
	.string	"__loader__"
.LC3:
	.string	"loader"
.LC4:
	.string	"__file__"
.LC5:
	.string	"origin"
.LC6:
	.string	"__package__"
.LC7:
	.string	"parent"
.LC8:
	.string	"__path__"
.LC9:
	.string	"submodule_search_locations"
	.section	.text.unlikely
	.type	__pyx_pymod_create, @function
__pyx_pymod_create:
.LFB176:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rcx
	.cfi_def_cfa_offset 48
	call	PyThreadState_Get@PLT
	movq	16(%rax), %rdi
	call	PyInterpreterState_GetID@PLT
	cmpq	$-1, %rax
	je	.L33
	movq	main_interpreter_id.0(%rip), %rdx
	cmpq	$-1, %rdx
	jne	.L18
	movq	%rax, main_interpreter_id.0(%rip)
	jmp	.L19
.L18:
	cmpq	%rdx, %rax
	je	.L19
	movq	PyExc_ImportError(%rip), %rdi
	leaq	.LC0(%rip), %rsi
	call	PyErr_SetString@PLT
.L33:
	xorl	%r12d, %r12d
	jmp	.L15
.L19:
	movq	__pyx_m(%rip), %r12
	testq	%r12, %r12
	je	.L20
	incq	(%r12)
	jmp	.L15
.L20:
	leaq	.LC1(%rip), %rsi
	movq	%rbp, %rdi
	call	PyObject_GetAttrString@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L33
	movq	%rax, %rdi
	call	PyModule_NewObject@PLT
	movq	%r13, %rdi
	movq	%rax, %r14
	call	Py_DECREF
	testq	%r14, %r14
	je	.L33
	movq	%r14, %rdi
	call	PyModule_GetDict@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L22
	movl	$1, %r8d
	leaq	.LC2(%rip), %rcx
	movq	%rax, %rsi
	movq	%rbp, %rdi
	leaq	.LC3(%rip), %rdx
	call	__Pyx_copy_spec_to_module
	testl	%eax, %eax
	js	.L22
	movl	$1, %r8d
	leaq	.LC4(%rip), %rcx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	leaq	.LC5(%rip), %rdx
	call	__Pyx_copy_spec_to_module
	testl	%eax, %eax
	js	.L22
	movl	$1, %r8d
	leaq	.LC6(%rip), %rcx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	leaq	.LC7(%rip), %rdx
	call	__Pyx_copy_spec_to_module
	testl	%eax, %eax
	js	.L22
	xorl	%r8d, %r8d
	leaq	.LC8(%rip), %rcx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	leaq	.LC9(%rip), %rdx
	call	__Pyx_copy_spec_to_module
	testl	%eax, %eax
	js	.L22
	movq	%r14, %r12
	jmp	.L15
.L22:
	movq	%r14, %rdi
	call	Py_DECREF
.L15:
	popq	%rdx
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE176:
	.size	__pyx_pymod_create, .-__pyx_pymod_create
	.section	.rodata.str1.1
.LC10:
	.string	"meu_codigo"
	.text
	.p2align 4
	.type	__Pyx_main.part.0, @function
__Pyx_main.part.0:
.LFB250:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%edi, %ebx
	subq	$472, %rsp
	.cfi_def_cfa_offset 512
	movq	%fs:40, %rax
	movq	%rax, 456(%rsp)
	xorl	%eax, %eax
	leaq	32(%rsp), %rbp
	movq	%rsp, %r13
	movq	%rbp, %rdi
	call	PyConfig_InitPythonConfig@PLT
	movl	$0, 128(%rsp)
	testl	%ebx, %ebx
	je	.L35
	testq	%r12, %r12
	je	.L35
	movq	(%r12), %rcx
	leaq	296(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	PyConfig_SetString@PLT
	pushq	24(%rsp)
	.cfi_def_cfa_offset 520
	pushq	24(%rsp)
	.cfi_def_cfa_offset 528
	pushq	24(%rsp)
	.cfi_def_cfa_offset 536
	pushq	24(%rsp)
	.cfi_def_cfa_offset 544
	call	PyStatus_Exception@PLT
	movq	%r13, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L38
	movslq	%ebx, %rdx
	movq	%r12, %rcx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	PyConfig_SetArgv@PLT
	pushq	24(%rsp)
	.cfi_def_cfa_offset 520
	pushq	24(%rsp)
	.cfi_def_cfa_offset 528
	pushq	24(%rsp)
	.cfi_def_cfa_offset 536
	pushq	24(%rsp)
	.cfi_def_cfa_offset 544
	call	PyStatus_Exception@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L38
.L35:
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	Py_InitializeFromConfig@PLT
	pushq	24(%rsp)
	.cfi_def_cfa_offset 520
	pushq	24(%rsp)
	.cfi_def_cfa_offset 528
	pushq	24(%rsp)
	.cfi_def_cfa_offset 536
	pushq	24(%rsp)
	.cfi_def_cfa_offset 544
	call	PyStatus_Exception@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 512
	testl	%eax, %eax
	jne	.L38
	movq	%rbp, %rdi
	call	PyConfig_Clear@PLT
	leaq	.LC10(%rip), %rdi
	movl	$1, __pyx_module_is_main_meu_codigo(%rip)
	call	PyImport_ImportModule@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L52
	call	Py_DECREF
.L40:
	call	Py_FinalizeEx@PLT
	shrl	$31, %eax
	addl	%eax, %eax
.L34:
	movq	456(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L53
	addq	$472, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L38:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	PyConfig_Clear@PLT
	movl	$1, %eax
	jmp	.L34
.L52:
	call	PyErr_Occurred@PLT
	testq	%rax, %rax
	je	.L40
	call	PyErr_Print@PLT
	movl	$1, %eax
	jmp	.L34
.L53:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE250:
	.size	__Pyx_main.part.0, .-__Pyx_main.part.0
	.section	.text.unlikely
	.type	__pyx_bisect_code_objects.constprop.0, @function
__pyx_bisect_code_objects.constprop.0:
.LFB251:
	.cfi_startproc
	movl	%esi, %ecx
	movl	%esi, %eax
	decl	%ecx
	js	.L59
	movslq	%ecx, %rdx
	salq	$4, %rdx
	cmpl	$0, 8(%rdi,%rdx)
	jle	.L56
.L59:
	xorl	%eax, %eax
	xorl	%edx, %edx
.L64:
	cmpl	%edx, %ecx
	jle	.L65
	movl	%ecx, %eax
	subl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	movslq	%eax, %rsi
	salq	$4, %rsi
	cmpl	$1, 8(%rdi,%rsi)
	jg	.L60
	je	.L56
	leal	1(%rax), %edx
	jmp	.L64
.L60:
	movl	%eax, %ecx
	jmp	.L64
.L65:
	movslq	%eax, %rdx
	salq	$4, %rdx
	cmpl	$0, 8(%rdi,%rdx)
	jg	.L56
	incl	%eax
.L56:
	ret
	.cfi_endproc
.LFE251:
	.size	__pyx_bisect_code_objects.constprop.0, .-__pyx_bisect_code_objects.constprop.0
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"Module 'meu_codigo' has already been imported. Re-initialisation is not supported."
	.section	.rodata.str1.1
.LC12:
	.string	"builtins"
.LC13:
	.string	"cython_runtime"
.LC14:
	.string	"__builtins__"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"compile time Python version %d.%d of module '%.100s' %s runtime version %d.%d"
	.section	.rodata.str1.1
.LC16:
	.string	"does not match"
.LC17:
	.string	""
.LC18:
	.string	"init meu_codigo"
.LC19:
	.string	"meu_codigo.pyx"
	.section	.text.unlikely
	.type	__pyx_pymod_exec_meu_codigo, @function
__pyx_pymod_exec_meu_codigo:
.LFB177:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movq	__pyx_m(%rip), %rdx
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L67
	cmpq	%rdi, %rdx
	je	.L66
	movq	PyExc_RuntimeError(%rip), %rdi
	leaq	.LC11(%rip), %rsi
	call	PyErr_SetString@PLT
	orl	$-1, %eax
	jmp	.L66
.L67:
	incq	(%rdi)
	movq	%rdi, __pyx_m(%rip)
	call	PyModule_GetDict@PLT
	movq	%rax, __pyx_mstate_global_static(%rip)
	testq	%rax, %rax
	je	.L69
	incq	(%rax)
	leaq	.LC12(%rip), %rdi
	call	PyImport_AddModule@PLT
	testq	%rax, %rax
	je	.L70
	incq	(%rax)
.L70:
	movq	%rax, 8+__pyx_mstate_global_static(%rip)
	testq	%rax, %rax
	je	.L69
	leaq	.LC13(%rip), %rdi
	call	PyImport_AddModule@PLT
	testq	%rax, %rax
	je	.L71
	incq	(%rax)
.L71:
	movq	%rax, 16+__pyx_mstate_global_static(%rip)
	movq	__pyx_m(%rip), %rdi
	testq	%rax, %rax
	je	.L69
	movq	8+__pyx_mstate_global_static(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	call	PyObject_SetAttrString@PLT
	testl	%eax, %eax
	js	.L69
	movq	Py_Version(%rip), %rax
	xorb	%al, %al
	movq	%rax, %rdx
	xorq	$51052737, %rdx
	testl	$4294901760, %edx
	jne	.L72
.L74:
	xorl	%edi, %edi
	call	PyTuple_New@PLT
	movq	%rax, 24+__pyx_mstate_global_static(%rip)
	testq	%rax, %rax
	jne	.L196
	jmp	.L69
.L72:
	leaq	16(%rsp), %rbp
	pushq	%rdx
	.cfi_def_cfa_offset 296
	movq	%rax, %rdx
	shrq	$24, %rax
	shrq	$16, %rdx
	movl	$200, %esi
	movq	%rbp, %rdi
	movl	$11, %r8d
	movzbl	%dl, %edx
	leaq	.LC10(%rip), %r9
	movl	$3, %ecx
	pushq	%rdx
	.cfi_def_cfa_offset 304
	leaq	.LC15(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 312
	leaq	.LC16(%rip), %rax
	pushq	%rax
	.cfi_def_cfa_offset 320
	xorl	%eax, %eax
	call	PyOS_snprintf@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 288
	xorl	%edi, %edi
	movl	$1, %edx
	movq	%rbp, %rsi
	call	PyErr_WarnEx@PLT
	testl	%eax, %eax
	js	.L69
	jmp	.L74
.L196:
	leaq	.LC17(%rip), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	PyBytes_FromStringAndSize@PLT
	movq	%rax, 32+__pyx_mstate_global_static(%rip)
	testq	%rax, %rax
	je	.L69
	movq	%rbp, %rdi
	xorl	%esi, %esi
	leaq	48+__pyx_mstate_global_static(%rip), %r12
	call	PyUnicode_FromStringAndSize@PLT
	leaq	__pyx_string_tab(%rip), %rbp
	leaq	__pyx_string_tab_encodings(%rip), %r13
	movq	%rax, 40+__pyx_mstate_global_static(%rip)
	testq	%rax, %rax
	je	.L69
.L75:
	movq	0(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L197
	movb	10(%rbp), %al
	testb	$32, %al
	je	.L76
	testb	$64, %al
	je	.L77
	call	PyUnicode_InternFromString@PLT
	jmp	.L78
.L77:
	movzwl	8(%rbp), %esi
	decl	%esi
	movslq	%esi, %rsi
	andb	$31, %al
	je	.L79
	movzbl	%al, %eax
	xorl	%ecx, %ecx
	movq	0(%r13,%rax,8), %rdx
	call	PyUnicode_Decode@PLT
	jmp	.L78
.L79:
	call	PyUnicode_FromStringAndSize@PLT
	jmp	.L78
.L76:
	movzwl	8(%rbp), %esi
	decl	%esi
	movslq	%esi, %rsi
	call	PyBytes_FromStringAndSize@PLT
.L78:
	testq	%rax, %rax
	je	.L69
	movq	%rax, (%r12)
	movq	%rax, %rdi
	call	PyObject_Hash@PLT
	incq	%rax
	je	.L69
	addq	$16, %rbp
	addq	$8, %r12
	jmp	.L75
.L69:
	xorl	%eax, %eax
.L83:
	cmpq	$0, __pyx_m(%rip)
	je	.L95
	cmpq	$0, __pyx_mstate_global_static(%rip)
	je	.L98
	testl	%eax, %eax
	je	.L98
	call	_PyThreadState_UncheckedGet@PLT
	movq	144+__pyx_mstate_global_static(%rip), %rdi
	movq	%rax, %r12
	testq	%rdi, %rdi
	je	.L99
	movl	136+__pyx_mstate_global_static(%rip), %r8d
	movl	%r8d, %esi
	call	__pyx_bisect_code_objects.constprop.0
	cmpl	%eax, %r8d
	jle	.L99
	cltq
	salq	$4, %rax
	addq	%rax, %rdi
	cmpl	$1, 8(%rdi)
	jne	.L99
	movq	(%rdi), %rbp
	incq	0(%rbp)
	jmp	.L100
.L99:
	movq	96(%r12), %r15
	movq	104(%r12), %r14
	movq	$0, 96(%r12)
	movl	$1, %edx
	movq	112(%r12), %r13
	leaq	.LC18(%rip), %rsi
	movq	$0, 104(%r12)
	leaq	.LC19(%rip), %rdi
	movq	$0, 112(%r12)
	call	PyCode_NewEmpty@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	jne	.L101
	testq	%r15, %r15
	je	.L102
	movq	%r15, %rdi
	call	Py_DECREF
.L102:
	testq	%r14, %r14
	je	.L103
	movq	%r14, %rdi
	call	Py_DECREF
.L103:
	testq	%r13, %r13
	je	.L98
	movq	%r13, %rdi
	call	Py_DECREF
	jmp	.L98
.L101:
	movq	96(%r12), %rdi
	movq	104(%r12), %r8
	movq	%r15, 96(%r12)
	movq	112(%r12), %rbx
	movq	%r14, 104(%r12)
	movq	%r13, 112(%r12)
	testq	%rdi, %rdi
	je	.L105
	movq	%r8, 8(%rsp)
	call	Py_DECREF
	movq	8(%rsp), %r8
.L105:
	testq	%r8, %r8
	je	.L106
	movq	%r8, %rdi
	call	Py_DECREF
.L106:
	testq	%rbx, %rbx
	je	.L107
	movq	%rbx, %rdi
	call	Py_DECREF
.L107:
	movq	144+__pyx_mstate_global_static(%rip), %r13
	testq	%r13, %r13
	jne	.L108
	movl	$1024, %edi
	call	PyMem_Malloc@PLT
	testq	%rax, %rax
	je	.L100
	movabsq	$274877906945, %rcx
	movq	%rax, 144+__pyx_mstate_global_static(%rip)
	movq	%rcx, 136+__pyx_mstate_global_static(%rip)
	movl	$1, 8(%rax)
	movq	%rbp, (%rax)
	incq	0(%rbp)
	jmp	.L100
.L108:
	movl	136+__pyx_mstate_global_static(%rip), %r14d
	movq	%r13, %rdi
	movl	%r14d, %esi
	call	__pyx_bisect_code_objects.constprop.0
	movslq	%eax, %rbx
	cmpl	%ebx, %r14d
	jle	.L109
	movslq	%ebx, %rax
	salq	$4, %rax
	addq	%r13, %rax
	cmpl	$1, 8(%rax)
	jne	.L109
	movq	(%rax), %rdi
	movq	%rbp, (%rax)
	incq	0(%rbp)
	call	Py_DECREF
	jmp	.L100
.L109:
	cmpl	140+__pyx_mstate_global_static(%rip), %r14d
	jne	.L110
	addl	$64, %r14d
	movq	%r13, %rdi
	movslq	%r14d, %rsi
	salq	$4, %rsi
	call	PyMem_Realloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L100
	movq	%rax, 144+__pyx_mstate_global_static(%rip)
	movl	%r14d, 140+__pyx_mstate_global_static(%rip)
.L110:
	movslq	136+__pyx_mstate_global_static(%rip), %rax
	movl	$1, %edi
	movl	$16, %ecx
	movl	%eax, %edx
	movq	%rax, %r14
	salq	$4, %rax
	subl	%ebx, %edx
	subq	%rdx, %rdi
	salq	$4, %rdi
	cmpl	%r14d, %ebx
	cmovg	%rcx, %rdi
	xorl	%ecx, %ecx
	salq	$4, %rdx
	cmpl	%r14d, %ebx
	cmovg	%rcx, %rdx
	salq	$4, %rbx
	incl	%r14d
	leaq	-16(%rax,%rdi), %rsi
	addq	%rax, %rdi
	addq	%r13, %rsi
	addq	%r13, %rdi
	addq	%rbx, %r13
	call	memmove@PLT
	movl	$1, 8(%r13)
	movq	%rbp, 0(%r13)
	movl	%r14d, 136+__pyx_mstate_global_static(%rip)
	incq	0(%rbp)
.L100:
	movq	__pyx_mstate_global_static(%rip), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	call	PyFrame_New@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L111
	movl	$1, 40(%rax)
	movq	%rax, %rdi
	call	PyTraceBack_Here@PLT
.L111:
	movq	%rbp, %rdi
	call	Py_DECREF
	testq	%r12, %r12
	je	.L98
	movq	%r12, %rdi
	call	Py_DECREF
.L98:
	movq	__pyx_m(%rip), %rdi
	testq	%rdi, %rdi
	je	.L94
	movq	$0, __pyx_m(%rip)
.L202:
	call	Py_DECREF
	jmp	.L94
.L95:
	call	PyErr_Occurred@PLT
	testq	%rax, %rax
	jne	.L94
	movq	PyExc_ImportError(%rip), %rdi
	leaq	.LC18(%rip), %rsi
	call	PyErr_SetString@PLT
.L94:
	cmpq	$1, __pyx_m(%rip)
	sbbl	%eax, %eax
	jmp	.L66
.L197:
	cmpl	$0, __pyx_module_is_main_meu_codigo(%rip)
	je	.L82
	movq	88+__pyx_mstate_global_static(%rip), %rdx
	movq	104+__pyx_mstate_global_static(%rip), %rsi
	movq	__pyx_m(%rip), %rdi
	call	PyObject_SetAttr@PLT
	testl	%eax, %eax
	js	.L201
.L82:
	call	PyImport_GetModuleDict@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L201
	leaq	.LC10(%rip), %r12
	movq	%rax, %rdi
	movq	%r12, %rsi
	call	PyDict_GetItemString@PLT
	testq	%rax, %rax
	je	.L85
.L87:
	movq	80+__pyx_mstate_global_static(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	PyTuple_Pack@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L201
	jmp	.L198
.L85:
	movq	__pyx_m(%rip), %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	PyDict_SetItemString@PLT
	testl	%eax, %eax
	js	.L201
	jmp	.L87
.L198:
	cmpq	$0, 152+__pyx_mstate_global_static(%rip)
	je	.L88
.L91:
	movq	152+__pyx_mstate_global_static(%rip), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	PyObject_Call@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L89
	jmp	.L199
.L88:
	movq	112+__pyx_mstate_global_static(%rip), %rsi
	movq	8+__pyx_mstate_global_static(%rip), %rdi
	call	PyObject_GetAttr@PLT
	movq	%rax, 152+__pyx_mstate_global_static(%rip)
	testq	%rax, %rax
	jne	.L91
.L89:
	orl	$-1, %ebx
	jmp	.L92
.L199:
	call	Py_DECREF
	xorl	%ebx, %ebx
.L92:
	movq	%rbp, %rdi
	call	Py_DECREF
	incl	%ebx
	je	.L201
	call	PyDict_New@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L201
	movq	__pyx_mstate_global_static(%rip), %rdi
	movq	128+__pyx_mstate_global_static(%rip), %rsi
	movq	%rax, %rdx
	call	PyDict_SetItem@PLT
	movq	%rbp, %rdi
	testl	%eax, %eax
	jns	.L202
	call	Py_DECREF
.L201:
	movl	$1, %eax
	jmp	.L83
.L66:
	movq	216(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L116
	call	__stack_chk_fail@PLT
.L116:
	addq	$232, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE177:
	.size	__pyx_pymod_exec_meu_codigo, .-__pyx_pymod_exec_meu_codigo
	.section	.rodata.str1.1
.LC20:
	.string	"out of memory\\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB213:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testl	%edi, %edi
	je	.L224
	movslq	%edi, %rax
	movl	%edi, %ebx
	movq	%rsi, %r14
	leaq	0(,%rax,8), %rbp
	movq	%rax, (%rsp)
	movq	%rbp, %rdi
	call	malloc@PLT
	movq	%rbp, %rdi
	movq	%rax, %r13
	call	malloc@PLT
	xorl	%esi, %esi
	movl	$6, %edi
	movq	%rax, %rbp
	call	setlocale@PLT
	movq	%rax, %rdi
	call	strdup@PLT
	testq	%r13, %r13
	movq	%rax, 8(%rsp)
	movq	%rax, %rcx
	sete	%al
	testq	%rbp, %rbp
	sete	%dl
	orb	%dl, %al
	jne	.L219
	testq	%rcx, %rcx
	je	.L219
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	testl	%ebx, %ebx
	jle	.L208
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L210:
	movq	(%r14,%r15,8), %rdi
	xorl	%esi, %esi
	call	Py_DecodeLocale@PLT
	testq	%rax, %rax
	movq	%rax, 0(%r13,%r15,8)
	movq	%rax, 0(%rbp,%r15,8)
	movl	$1, %eax
	cmove	%eax, %r12d
	addq	$1, %r15
	cmpq	(%rsp), %r15
	jne	.L210
	movq	8(%rsp), %r14
	movl	$6, %edi
	movq	%r14, %rsi
	call	setlocale@PLT
	movq	%r14, %rdi
	call	free@PLT
	testl	%r12d, %r12d
	je	.L225
.L215:
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L213:
	movq	0(%rbp,%r14,8), %rdi
	addq	$1, %r14
	call	PyMem_RawFree@PLT
	cmpl	%r14d, %ebx
	jg	.L213
.L212:
	movq	%r13, %rdi
	call	free@PLT
	movq	%rbp, %rdi
	call	free@PLT
.L203:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L224:
	.cfi_restore_state
	leaq	PyInit_meu_codigo(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	PyImport_AppendInittab@PLT
	testl	%eax, %eax
	js	.L216
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%esi, %esi
	xorl	%edi, %edi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__Pyx_main.part.0
.L225:
	.cfi_restore_state
	leaq	PyInit_meu_codigo(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	PyImport_AppendInittab@PLT
	testl	%eax, %eax
	js	.L226
.L214:
	movq	%r13, %rsi
	movl	%ebx, %edi
	call	__Pyx_main.part.0
	movl	%eax, %r12d
	testl	%ebx, %ebx
	jg	.L215
	jmp	.L212
.L216:
	movl	$1, %r12d
	jmp	.L203
.L208:
	movq	8(%rsp), %r14
	movl	$6, %edi
	movl	$1, %r12d
	movq	%r14, %rsi
	call	setlocale@PLT
	movq	%r14, %rdi
	call	free@PLT
	leaq	PyInit_meu_codigo(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	PyImport_AppendInittab@PLT
	testl	%eax, %eax
	jns	.L214
	jmp	.L212
.L226:
	movl	$1, %r12d
	jmp	.L215
.L219:
	movl	$15, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	leaq	.LC20(%rip), %rdi
	movl	$1, %r12d
	call	fwrite@PLT
	movq	%r13, %rdi
	call	free@PLT
	movq	%rbp, %rdi
	call	free@PLT
	movq	8(%rsp), %rdi
	call	free@PLT
	jmp	.L203
	.cfi_endproc
.LFE213:
	.size	main, .-main
	.data
	.align 8
	.type	main_interpreter_id.0, @object
	.size	main_interpreter_id.0, 8
main_interpreter_id.0:
	.quad	-1
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	__pyx_string_tab, @object
	.size	__pyx_string_tab, 192
__pyx_string_tab:
	.quad	__pyx_k_
	.value	2
	.byte	32
	.zero	5
	.quad	__pyx_k_cline_in_traceback
	.value	19
	.byte	96
	.zero	5
	.quad	__pyx_k_end
	.value	4
	.byte	96
	.zero	5
	.quad	__pyx_k_file
	.value	5
	.byte	96
	.zero	5
	.quad	__pyx_k_hello_world
	.value	12
	.byte	32
	.zero	5
	.quad	__pyx_k_main
	.value	9
	.byte	96
	.zero	5
	.quad	__pyx_k_module
	.value	11
	.byte	96
	.zero	5
	.quad	__pyx_k_name
	.value	9
	.byte	96
	.zero	5
	.quad	__pyx_k_print
	.value	6
	.byte	96
	.zero	5
	.quad	__pyx_k_qualname
	.value	13
	.byte	96
	.zero	5
	.quad	__pyx_k_test
	.value	9
	.byte	96
	.zero	5
	.quad	0
	.value	0
	.byte	0
	.zero	5
	.section	.rodata
	.align 8
	.type	__pyx_string_tab_encodings, @object
	.size	__pyx_string_tab_encodings, 8
__pyx_string_tab_encodings:
	.zero	8
	.section	.data.rel.local,"aw"
	.align 32
	.type	__pyx_moduledef, @object
	.size	__pyx_moduledef, 104
__pyx_moduledef:
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	__pyx_methods
	.quad	__pyx_moduledef_slots
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	__pyx_moduledef_slots, @object
	.size	__pyx_moduledef_slots, 48
__pyx_moduledef_slots:
	.long	1
	.zero	4
	.quad	__pyx_pymod_create
	.long	2
	.zero	4
	.quad	__pyx_pymod_exec_meu_codigo
	.long	0
	.zero	4
	.quad	0
	.local	__pyx_methods
	.comm	__pyx_methods,32,32
	.local	__pyx_mstate_global_static
	.comm	__pyx_mstate_global_static,168,32
	.section	.rodata
	.align 16
	.type	__pyx_k_cline_in_traceback, @object
	.size	__pyx_k_cline_in_traceback, 19
__pyx_k_cline_in_traceback:
	.string	"cline_in_traceback"
	.align 8
	.type	__pyx_k_hello_world, @object
	.size	__pyx_k_hello_world, 12
__pyx_k_hello_world:
	.string	"hello world"
	.align 8
	.type	__pyx_k_qualname, @object
	.size	__pyx_k_qualname, 13
__pyx_k_qualname:
	.string	"__qualname__"
	.align 8
	.type	__pyx_k_module, @object
	.size	__pyx_k_module, 11
__pyx_k_module:
	.string	"__module__"
	.type	__pyx_k_print, @object
	.size	__pyx_k_print, 6
__pyx_k_print:
	.string	"print"
	.align 8
	.type	__pyx_k_test, @object
	.size	__pyx_k_test, 9
__pyx_k_test:
	.string	"__test__"
	.align 8
	.type	__pyx_k_name, @object
	.size	__pyx_k_name, 9
__pyx_k_name:
	.string	"__name__"
	.align 8
	.type	__pyx_k_main, @object
	.size	__pyx_k_main, 9
__pyx_k_main:
	.string	"__main__"
	.type	__pyx_k_file, @object
	.size	__pyx_k_file, 5
__pyx_k_file:
	.string	"file"
	.type	__pyx_k_end, @object
	.size	__pyx_k_end, 4
__pyx_k_end:
	.string	"end"
	.type	__pyx_k_, @object
	.size	__pyx_k_, 2
__pyx_k_:
	.string	"?"
	.globl	__pyx_module_is_main_meu_codigo
	.bss
	.align 4
	.type	__pyx_module_is_main_meu_codigo, @object
	.size	__pyx_module_is_main_meu_codigo, 4
__pyx_module_is_main_meu_codigo:
	.zero	4
	.local	__pyx_m
	.comm	__pyx_m,8,8
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
