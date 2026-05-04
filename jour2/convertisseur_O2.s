	.file	"convertisseur.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"\n=== Convertisseur universel ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"1. Kilometres -> Miles"
.LC2:
	.string	"2. Miles -> Kilometres"
.LC3:
	.string	"3. Kilogrammes -> Livres"
.LC4:
	.string	"4. Livres -> Kilogrammes"
.LC5:
	.string	"5. Celsius -> Fahrenheit"
.LC6:
	.string	"6. Fahrenheit -> Celsius"
.LC7:
	.string	"7. Quitter"
.LC8:
	.string	"Votre choix : "
.LC9:
	.string	"%d"
.LC10:
	.string	"Au revoir !"
.LC11:
	.string	"Erreur : choix invalide."
.LC12:
	.string	"Valeur a convertir : "
.LC13:
	.string	"%lf"
.LC15:
	.string	"%.2f km = %.2f miles\n"
.LC16:
	.string	"%.2f miles = %.2f km\n"
.LC18:
	.string	"%.2f kg = %.2f livres\n"
.LC19:
	.string	"%.2f livres = %.2f kg\n"
.LC23:
	.string	"%.2f C = %.2f F\n"
.LC24:
	.string	"%.2f F = %.2f C\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC0(%rip), %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	.LC1(%rip), %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	.LC2(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.LC3(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	.LC4(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.LC5(%rip), %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	28(%rsp), %rax
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L14:
	movq	%r15, %rdi
	call	puts@PLT
	movq	%r14, %rdi
	call	puts@PLT
	movq	%r13, %rdi
	call	puts@PLT
	movq	%r12, %rdi
	call	puts@PLT
	movq	%rbp, %rdi
	call	puts@PLT
	movq	%rbx, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	8(%rsp), %rsi
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	28(%rsp), %eax
	cmpl	$7, %eax
	je	.L19
	subl	$1, %eax
	cmpl	$6, %eax
	ja	.L20
	leaq	.LC12(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	32(%rsp), %rsi
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	28(%rsp), %eax
	cmpl	$6, %eax
	ja	.L6
	leaq	.L8(%rip), %rcx
	movl	%eax, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L6-.L8
	.long	.L13-.L8
	.long	.L12-.L8
	.long	.L11-.L8
	.long	.L10-.L8
	.long	.L9-.L8
	.long	.L7-.L8
	.section	.text.startup
	.p2align 4,,10
	.p2align 3
.L7:
	movsd	32(%rsp), %xmm0
	movl	$2, %edi
	movl	$2, %eax
	leaq	.LC24(%rip), %rsi
	movapd	%xmm0, %xmm1
	subsd	.LC22(%rip), %xmm1
	mulsd	.LC21(%rip), %xmm1
	divsd	.LC20(%rip), %xmm1
	call	__printf_chk@PLT
	movl	28(%rsp), %eax
	.p2align 4,,10
	.p2align 3
.L6:
	cmpl	$7, %eax
	jne	.L14
.L3:
	xorl	%eax, %eax
.L1:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L21
	addq	$56, %rsp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	movsd	32(%rsp), %xmm0
	movl	$2, %edi
	movl	$2, %eax
	movsd	.LC20(%rip), %xmm1
	leaq	.LC23(%rip), %rsi
	mulsd	%xmm0, %xmm1
	divsd	.LC21(%rip), %xmm1
	addsd	.LC22(%rip), %xmm1
	call	__printf_chk@PLT
	movl	28(%rsp), %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L10:
	movsd	32(%rsp), %xmm0
	movl	$2, %edi
	movl	$2, %eax
	leaq	.LC19(%rip), %rsi
	movapd	%xmm0, %xmm1
	divsd	.LC17(%rip), %xmm1
	call	__printf_chk@PLT
	movl	28(%rsp), %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L11:
	movsd	32(%rsp), %xmm0
	movl	$2, %edi
	movl	$2, %eax
	movsd	.LC17(%rip), %xmm1
	leaq	.LC18(%rip), %rsi
	mulsd	%xmm0, %xmm1
	call	__printf_chk@PLT
	movl	28(%rsp), %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L13:
	movsd	32(%rsp), %xmm0
	movl	$2, %edi
	movl	$2, %eax
	movsd	.LC14(%rip), %xmm1
	leaq	.LC15(%rip), %rsi
	mulsd	%xmm0, %xmm1
	call	__printf_chk@PLT
	movl	28(%rsp), %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L12:
	movsd	32(%rsp), %xmm0
	movl	$2, %edi
	movl	$2, %eax
	leaq	.LC16(%rip), %rsi
	movapd	%xmm0, %xmm1
	divsd	.LC14(%rip), %xmm1
	call	__printf_chk@PLT
	movl	28(%rsp), %eax
	jmp	.L6
.L19:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L20:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L1
.L21:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC14:
	.long	1869994401
	.long	1071899205
	.align 8
.LC17:
	.long	-813638605
	.long	1073849103
	.align 8
.LC20:
	.long	0
	.long	1075970048
	.align 8
.LC21:
	.long	0
	.long	1075052544
	.align 8
.LC22:
	.long	0
	.long	1077936128
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
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
