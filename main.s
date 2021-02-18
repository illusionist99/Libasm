	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$4294967291, %edi       ## imm = 0xFFFFFFFB
	leaq	L_.str(%rip), %rsi
	movl	$100, %edx
	callq	_write
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	___error
	movl	(%rax), %edi
	callq	_strerror
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movl	%edi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.space	1


.subsections_via_symbols
