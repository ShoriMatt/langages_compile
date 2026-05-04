	.file	"convertisseur.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\n=== Convertisseur universel ==="
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L12:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jne	.L2
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L13
.L2:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jle	.L4
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jle	.L5
.L4:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L13
.L5:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	jne	.L6
	movsd	-24(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L7
.L6:
	movl	-28(%rbp), %eax
	cmpl	$2, %eax
	jne	.L8
	movsd	-24(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L7
.L8:
	movl	-28(%rbp), %eax
	cmpl	$3, %eax
	jne	.L9
	movsd	-24(%rbp), %xmm1
	movsd	.LC17(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L7
.L9:
	movl	-28(%rbp), %eax
	cmpl	$4, %eax
	jne	.L10
	movsd	-24(%rbp), %xmm0
	movsd	.LC17(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L7
.L10:
	movl	-28(%rbp), %eax
	cmpl	$5, %eax
	jne	.L11
	movsd	-24(%rbp), %xmm1
	movsd	.LC20(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LC22(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L7
.L11:
	movl	-28(%rbp), %eax
	cmpl	$6, %eax
	jne	.L7
	movsd	-24(%rbp), %xmm0
	movsd	.LC22(%rip), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC21(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC20(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
.L7:
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jne	.L12
	movl	$0, %eax
.L13:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
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
