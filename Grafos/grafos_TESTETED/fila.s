	.file	"fila.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.globl	_cria_fila
	.def	_cria_fila;	.scl	2;	.type	32;	.endef
_cria_fila:
LFB6:
	.file 1 "C:/Users/Casa/Documents/Gustavo/g/grafos/fila.c"
	.loc 1 16 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 17 0
	movl	$0, -12(%ebp)
	.loc 1 20 0
	movl	$24, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	.loc 1 24 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 25 0
	movl	8(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 26 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 27 0
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 28 0
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 30 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 32 0
	movl	-12(%ebp), %eax
	.loc 1 33 0
	leave
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Erro desalocando memoria da fila, ponteiro invalido!\0"
	.text
	.globl	_libera_fila
	.def	_libera_fila;	.scl	2;	.type	32;	.endef
_libera_fila:
LFB7:
	.loc 1 36 0
	.cfi_startproc
	pushl	%ebp
LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI4:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 37 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 39 0
	cmpl	$0, -12(%ebp)
	jne	L4
	.loc 1 41 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$52, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	.loc 1 42 0
	movl	$1, (%esp)
	call	_exit
L4:
	.loc 1 44 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 45 0
	leave
LCFI5:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.section .rdata,"dr"
LC1:
	.ascii "enqueue:\0"
LC2:
	.ascii "enqueue() em fila cheia!\0"
	.text
	.globl	_enqueue
	.def	_enqueue;	.scl	2;	.type	32;	.endef
_enqueue:
LFB8:
	.loc 1 48 0
	.cfi_startproc
	pushl	%ebp
LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI7:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 50 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 51 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 53 0
	cmpl	$0, 12(%ebp)
	jne	L6
	.loc 1 54 0
	movl	$LC1, (%esp)
	call	_perror
	.loc 1 55 0
	movl	$1, (%esp)
	call	_exit
L6:
	.loc 1 58 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	L7
	.loc 1 59 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	.loc 1 60 0
	movl	$-1, %eax
	jmp	L8
L7:
	.loc 1 62 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	decl	%eax
	cmpl	-12(%ebp), %eax
	jne	L9
	.loc 1 63 0
	movl	12(%ebp), %eax
	movl	$0, 12(%eax)
L9:
	.loc 1 65 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 66 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 67 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 68 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 70 0
	movl	$0, %eax
L8:
	.loc 1 71 0
	leave
LCFI8:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC3:
	.ascii "dequeue:\0"
LC4:
	.ascii "dequeue() em fila vazia!\0"
	.text
	.globl	_dequeue
	.def	_dequeue;	.scl	2;	.type	32;	.endef
_dequeue:
LFB9:
	.loc 1 73 0
	.cfi_startproc
	pushl	%ebp
LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI10:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 75 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 77 0
	cmpl	$0, 8(%ebp)
	jne	L11
	.loc 1 78 0
	movl	$LC3, (%esp)
	call	_perror
	.loc 1 79 0
	movl	$1, (%esp)
	call	_exit
L11:
	.loc 1 82 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	L12
	.loc 1 83 0
	movl	$0, -12(%ebp)
L12:
	.loc 1 85 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_vazia
	testl	%eax, %eax
	je	L13
	.loc 1 86 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC4, (%esp)
	call	_fwrite
	.loc 1 87 0
	movl	$1, (%esp)
	call	_exit
L13:
	.loc 1 89 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 90 0
	incl	-12(%ebp)
	.loc 1 91 0
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 92 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	-12(%ebp), %edx
	decl	%edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	.loc 1 93 0
	leave
LCFI11:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
LC5:
	.ascii "fila_tamanho:\0"
	.text
	.globl	_fila_tamanho
	.def	_fila_tamanho;	.scl	2;	.type	32;	.endef
_fila_tamanho:
LFB10:
	.loc 1 98 0
	.cfi_startproc
	pushl	%ebp
LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI13:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 99 0
	cmpl	$0, 8(%ebp)
	jne	L16
	.loc 1 100 0
	movl	$LC5, (%esp)
	call	_perror
	.loc 1 101 0
	movl	$1, (%esp)
	call	_exit
L16:
	.loc 1 103 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 104 0
	leave
LCFI14:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC6:
	.ascii "cabeca:\0"
	.text
	.globl	_cabeca
	.def	_cabeca;	.scl	2;	.type	32;	.endef
_cabeca:
LFB11:
	.loc 1 106 0
	.cfi_startproc
	pushl	%ebp
LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI16:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 107 0
	cmpl	$0, 8(%ebp)
	jne	L19
	.loc 1 108 0
	movl	$LC6, (%esp)
	call	_perror
	.loc 1 109 0
	movl	$1, (%esp)
	call	_exit
L19:
	.loc 1 111 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 112 0
	leave
LCFI17:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
LC7:
	.ascii "imprimir:\0"
LC8:
	.ascii "[%d]: %p\12\0"
	.text
	.globl	_imprimir
	.def	_imprimir;	.scl	2;	.type	32;	.endef
_imprimir:
LFB12:
	.loc 1 114 0
	.cfi_startproc
	pushl	%ebp
LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI19:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 117 0
	cmpl	$0, 8(%ebp)
	jne	L22
	.loc 1 118 0
	movl	$LC7, (%esp)
	call	_perror
	.loc 1 119 0
	movl	$1, (%esp)
	call	_exit
L22:
	.loc 1 121 0
	movl	$0, -12(%ebp)
	jmp	L23
L24:
	.loc 1 122 0 discriminator 2
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_printf
	.loc 1 121 0 discriminator 2
	incl	-12(%ebp)
L23:
	.loc 1 121 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L24
	.loc 1 123 0 is_stmt 1
	leave
LCFI20:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
LC9:
	.ascii "contem:\0"
	.text
	.globl	_contem
	.def	_contem;	.scl	2;	.type	32;	.endef
_contem:
LFB13:
	.loc 1 125 0
	.cfi_startproc
	pushl	%ebp
LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI22:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 129 0
	cmpl	$0, 8(%ebp)
	jne	L26
	.loc 1 130 0
	movl	$LC9, (%esp)
	call	_perror
	.loc 1 131 0
	movl	$1, (%esp)
	call	_exit
L26:
	.loc 1 133 0
	movl	$0, -12(%ebp)
	jmp	L27
L30:
	.loc 1 134 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	L28
	.loc 1 135 0
	movl	-12(%ebp), %eax
	jmp	L29
L28:
	.loc 1 133 0
	incl	-12(%ebp)
L27:
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L30
	.loc 1 136 0 is_stmt 1
	movl	$-1, %eax
L29:
	.loc 1 137 0
	leave
LCFI23:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
LC10:
	.ascii "tamanho:\0"
	.text
	.globl	_tamanho
	.def	_tamanho;	.scl	2;	.type	32;	.endef
_tamanho:
LFB14:
	.loc 1 139 0
	.cfi_startproc
	pushl	%ebp
LCFI24:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI25:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 140 0
	cmpl	$0, 8(%ebp)
	jne	L32
	.loc 1 141 0
	movl	$LC10, (%esp)
	call	_perror
	.loc 1 142 0
	movl	$1, (%esp)
	call	_exit
L32:
	.loc 1 144 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	.loc 1 145 0
	leave
LCFI26:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC11:
	.ascii "vazia:\0"
	.text
	.globl	_vazia
	.def	_vazia;	.scl	2;	.type	32;	.endef
_vazia:
LFB15:
	.loc 1 147 0
	.cfi_startproc
	pushl	%ebp
LCFI27:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI28:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 148 0
	cmpl	$0, 8(%ebp)
	jne	L35
	.loc 1 149 0
	movl	$LC11, (%esp)
	call	_perror
	.loc 1 150 0
	movl	$1, (%esp)
	call	_exit
L35:
	.loc 1 152 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L36
	.loc 1 153 0
	movl	$1, %eax
	jmp	L37
L36:
	.loc 1 155 0
	movl	$0, %eax
L37:
	.loc 1 156 0
	leave
LCFI29:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.file 3 "C:/Users/Casa/Documents/Gustavo/g/grafos/fila.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x457
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\fila.c\0"
	.long	Ltext0
	.long	Letext0
	.secrel32	Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x2
	.byte	0x81
	.long	0x11a
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x83
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.ascii "fila_t\0"
	.byte	0x3
	.byte	0x4
	.long	0x16b
	.uleb128 0x3
	.ascii "filas\0"
	.byte	0x18
	.byte	0x1
	.byte	0x6
	.long	0x1dc
	.uleb128 0x7
	.secrel32	LASF0
	.byte	0x1
	.byte	0x7
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "cauda\0"
	.byte	0x1
	.byte	0x8
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.secrel32	LASF1
	.byte	0x1
	.byte	0x9
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "index\0"
	.byte	0x1
	.byte	0xa
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "tamanho_max\0"
	.byte	0x1
	.byte	0xb
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "dados\0"
	.byte	0x1
	.byte	0xc
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1e2
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.byte	0x1
	.ascii "cria_fila\0"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.long	0x223
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x223
	.uleb128 0xa
	.secrel32	LASF1
	.byte	0x1
	.byte	0x10
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "p\0"
	.byte	0x1
	.byte	0x11
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x15d
	.uleb128 0xc
	.byte	0x1
	.ascii "libera_fila\0"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	LFB7
	.long	LFE7
	.secrel32	LLST1
	.byte	0x1
	.long	0x266
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x24
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "p\0"
	.byte	0x1
	.byte	0x25
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii "enqueue\0"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x120
	.long	LFB8
	.long	LFE8
	.secrel32	LLST2
	.byte	0x1
	.long	0x2c1
	.uleb128 0xd
	.ascii "x\0"
	.byte	0x1
	.byte	0x30
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x30
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "cauda\0"
	.byte	0x1
	.byte	0x32
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.secrel32	LASF1
	.byte	0x1
	.byte	0x33
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii "dequeue\0"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	0x1e2
	.long	LFB9
	.long	LFE9
	.secrel32	LLST3
	.byte	0x1
	.long	0x300
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x49
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x4b
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii "fila_tamanho\0"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0x120
	.long	LFB10
	.long	LFE10
	.secrel32	LLST4
	.byte	0x1
	.long	0x336
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x62
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.secrel32	LASF0
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	0x120
	.long	LFB11
	.long	LFE11
	.secrel32	LLST5
	.byte	0x1
	.long	0x363
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x6a
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii "imprimir\0"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	LFB12
	.long	LFE12
	.secrel32	LLST6
	.byte	0x1
	.long	0x39d
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x72
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x73
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii "contem\0"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	0x120
	.long	LFB13
	.long	LFE13
	.secrel32	LLST7
	.byte	0x1
	.long	0x3e5
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x7d
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.ascii "x\0"
	.byte	0x1
	.byte	0x7d
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x1
	.byte	0x7f
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.secrel32	LASF1
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	0x120
	.long	LFB14
	.long	LFE14
	.secrel32	LLST8
	.byte	0x1
	.long	0x412
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x8b
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii "vazia\0"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x120
	.long	LFB15
	.long	LFE15
	.secrel32	LLST9
	.byte	0x1
	.long	0x441
	.uleb128 0xa
	.secrel32	LASF2
	.byte	0x1
	.byte	0x93
	.long	0x223
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.long	0x127
	.long	0x44c
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x441
	.byte	0x1
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
Ldebug_loc0:
LLST0:
	.long	LFB6-Ltext0
	.long	LCFI0-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI0-Ltext0
	.long	LCFI1-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI1-Ltext0
	.long	LCFI2-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI2-Ltext0
	.long	LFE6-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST1:
	.long	LFB7-Ltext0
	.long	LCFI3-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI3-Ltext0
	.long	LCFI4-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI4-Ltext0
	.long	LCFI5-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI5-Ltext0
	.long	LFE7-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST2:
	.long	LFB8-Ltext0
	.long	LCFI6-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI6-Ltext0
	.long	LCFI7-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI7-Ltext0
	.long	LCFI8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI8-Ltext0
	.long	LFE8-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST3:
	.long	LFB9-Ltext0
	.long	LCFI9-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI9-Ltext0
	.long	LCFI10-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI10-Ltext0
	.long	LCFI11-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI11-Ltext0
	.long	LFE9-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST4:
	.long	LFB10-Ltext0
	.long	LCFI12-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI12-Ltext0
	.long	LCFI13-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI13-Ltext0
	.long	LCFI14-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI14-Ltext0
	.long	LFE10-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST5:
	.long	LFB11-Ltext0
	.long	LCFI15-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI15-Ltext0
	.long	LCFI16-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI16-Ltext0
	.long	LCFI17-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI17-Ltext0
	.long	LFE11-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST6:
	.long	LFB12-Ltext0
	.long	LCFI18-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI18-Ltext0
	.long	LCFI19-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI19-Ltext0
	.long	LCFI20-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI20-Ltext0
	.long	LFE12-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST7:
	.long	LFB13-Ltext0
	.long	LCFI21-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI21-Ltext0
	.long	LCFI22-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI22-Ltext0
	.long	LCFI23-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI23-Ltext0
	.long	LFE13-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST8:
	.long	LFB14-Ltext0
	.long	LCFI24-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI24-Ltext0
	.long	LCFI25-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI25-Ltext0
	.long	LCFI26-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI26-Ltext0
	.long	LFE14-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST9:
	.long	LFB15-Ltext0
	.long	LCFI27-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI27-Ltext0
	.long	LCFI28-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI28-Ltext0
	.long	LCFI29-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI29-Ltext0
	.long	LFE15-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF2:
	.ascii "fila\0"
LASF1:
	.ascii "tamanho\0"
LASF0:
	.ascii "cabeca\0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
