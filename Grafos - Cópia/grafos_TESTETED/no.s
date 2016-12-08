	.file	"no.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
LC0:
	.ascii "cria_no:\0"
	.text
	.globl	_cria_no
	.def	_cria_no;	.scl	2;	.type	32;	.endef
_cria_no:
LFB6:
	.file 1 "C:/Users/Casa/Documents/Gustavo/g/grafos/no.c"
	.loc 1 13 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 15 0
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	.loc 1 17 0
	cmpl	$0, -12(%ebp)
	jne	L2
	.loc 1 18 0
	movl	$LC0, (%esp)
	call	_perror
	.loc 1 19 0
	movl	$1, (%esp)
	call	_exit
L2:
	.loc 1 22 0
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 23 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 24 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 26 0
	movl	-12(%ebp), %eax
	.loc 1 27 0
	leave
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
LC1:
	.ascii "liga_nos: ponteiros invalidos\0"
	.text
	.globl	_liga_nos
	.def	_liga_nos;	.scl	2;	.type	32;	.endef
_liga_nos:
LFB7:
	.loc 1 30 0
	.cfi_startproc
	pushl	%ebp
LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI4:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 31 0
	cmpl	$0, 8(%ebp)
	je	L5
	.loc 1 31 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%ebp)
	jne	L6
L5:
	.loc 1 32 0 is_stmt 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	.loc 1 33 0
	movl	$1, (%esp)
	call	_exit
L6:
	.loc 1 36 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 37 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	.loc 1 38 0
	leave
LCFI5:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "desliga_nos: ponteiros invalidos\0"
	.text
	.globl	_desliga_no
	.def	_desliga_no;	.scl	2;	.type	32;	.endef
_desliga_no:
LFB8:
	.loc 1 41 0
	.cfi_startproc
	pushl	%ebp
LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI7:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 42 0
	cmpl	$0, 8(%ebp)
	jne	L8
	.loc 1 43 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$32, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	.loc 1 44 0
	movl	$1, (%esp)
	call	_exit
L8:
	.loc 1 47 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 48 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 49 0
	leave
LCFI8:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "obtem_dado: ponteiros invalidos\0"
	.text
	.globl	_obtem_dado
	.def	_obtem_dado;	.scl	2;	.type	32;	.endef
_obtem_dado:
LFB9:
	.loc 1 52 0
	.cfi_startproc
	pushl	%ebp
LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI10:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 53 0
	cmpl	$0, 8(%ebp)
	jne	L10
	.loc 1 54 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$31, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC3, (%esp)
	call	_fwrite
	.loc 1 55 0
	movl	$1, (%esp)
	call	_exit
L10:
	.loc 1 58 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 59 0
	leave
LCFI11:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "obtem_proximo: ponteiros invalidos\0"
	.text
	.globl	_obtem_proximo
	.def	_obtem_proximo;	.scl	2;	.type	32;	.endef
_obtem_proximo:
LFB10:
	.loc 1 62 0
	.cfi_startproc
	pushl	%ebp
LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI13:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 63 0
	cmpl	$0, 8(%ebp)
	jne	L13
	.loc 1 64 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC4, (%esp)
	call	_fwrite
	.loc 1 65 0
	movl	$1, (%esp)
	call	_exit
L13:
	.loc 1 68 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	.loc 1 69 0
	leave
LCFI14:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "obtem_anterior: ponteiros invalidos\0"
	.text
	.globl	_obtem_anterior
	.def	_obtem_anterior;	.scl	2;	.type	32;	.endef
_obtem_anterior:
LFB11:
	.loc 1 71 0
	.cfi_startproc
	pushl	%ebp
LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI16:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 72 0
	cmpl	$0, 8(%ebp)
	jne	L16
	.loc 1 73 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC5, (%esp)
	call	_fwrite
	.loc 1 74 0
	movl	$1, (%esp)
	call	_exit
L16:
	.loc 1 77 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 78 0
	leave
LCFI17:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
LC6:
	.ascii "swap_no: ponteiros invalidos\0"
	.text
	.globl	_swap_no
	.def	_swap_no;	.scl	2;	.type	32;	.endef
_swap_no:
LFB12:
	.loc 1 80 0
	.cfi_startproc
	pushl	%ebp
LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI19:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 82 0
	cmpl	$0, 8(%ebp)
	je	L19
	.loc 1 82 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%ebp)
	jne	L20
L19:
	.loc 1 83 0 is_stmt 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$28, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC6, (%esp)
	call	_fwrite
	.loc 1 84 0
	movl	$1, (%esp)
	call	_exit
L20:
	.loc 1 87 0
	movl	$0, -12(%ebp)
	.loc 1 88 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 89 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 90 0
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 91 0
	leave
LCFI20:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.file 3 "C:/Users/Casa/Documents/Gustavo/g/grafos/no.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x366
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\no.c\0"
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
	.long	0x118
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x79
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x81
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
	.ascii "no_t\0"
	.byte	0x3
	.byte	0x4
	.long	0x167
	.uleb128 0x3
	.ascii "nos\0"
	.byte	0xc
	.byte	0x1
	.byte	0x6
	.long	0x1a9
	.uleb128 0x4
	.ascii "dados\0"
	.byte	0x1
	.byte	0x7
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "proximo\0"
	.byte	0x1
	.byte	0x8
	.long	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "anterior\0"
	.byte	0x1
	.byte	0x9
	.long	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0x15b
	.uleb128 0x8
	.byte	0x1
	.ascii "cria_no\0"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.long	0x1ab
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x1ef
	.uleb128 0x9
	.ascii "dado\0"
	.byte	0x1
	.byte	0xd
	.long	0x1a9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "p\0"
	.byte	0x1
	.byte	0xf
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "liga_nos\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	LFB7
	.long	LFE7
	.secrel32	LLST1
	.byte	0x1
	.long	0x231
	.uleb128 0x9
	.ascii "fonte\0"
	.byte	0x1
	.byte	0x1d
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "destino\0"
	.byte	0x1
	.byte	0x1d
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "desliga_no\0"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	LFB8
	.long	LFE8
	.secrel32	LLST2
	.byte	0x1
	.long	0x260
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0x28
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "obtem_dado\0"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x1a9
	.long	LFB9
	.long	LFE9
	.secrel32	LLST3
	.byte	0x1
	.long	0x293
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0x33
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "obtem_proximo\0"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	0x1ab
	.long	LFB10
	.long	LFE10
	.secrel32	LLST4
	.byte	0x1
	.long	0x2c9
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0x3d
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "obtem_anterior\0"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	0x1ab
	.long	LFB11
	.long	LFE11
	.secrel32	LLST5
	.byte	0x1
	.long	0x300
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0x46
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "swap_no\0"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	LFB12
	.long	LFE12
	.secrel32	LLST6
	.byte	0x1
	.long	0x34a
	.uleb128 0x9
	.ascii "no1\0"
	.byte	0x1
	.byte	0x50
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "no2\0"
	.byte	0x1
	.byte	0x50
	.long	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.ascii "temp\0"
	.byte	0x1
	.byte	0x57
	.long	0x34a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x11e
	.uleb128 0xc
	.long	0x125
	.long	0x35b
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x350
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
