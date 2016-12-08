	.file	"vertice.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
LC0:
	.ascii "cria_vertice:\0"
	.text
	.globl	_cria_vertice
	.def	_cria_vertice;	.scl	2;	.type	32;	.endef
_cria_vertice:
LFB6:
	.file 1 "C:/Users/Casa/Documents/Gustavo/g/grafos/vertice.c"
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
	.loc 1 18 0
	movl	$20, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	.loc 1 20 0
	cmpl	$0, -12(%ebp)
	jne	L2
	.loc 1 21 0
	movl	$LC0, (%esp)
	call	_perror
	.loc 1 22 0
	movl	$1, (%esp)
	call	_exit
L2:
	.loc 1 25 0
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 26 0
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 27 0
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 28 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 29 0
	call	_cria_lista_enc
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
	.loc 1 31 0
	movl	-12(%ebp), %eax
	.loc 1 32 0
	leave
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
LC1:
	.ascii "set_visitado:\0"
	.text
	.globl	_set_visitado
	.def	_set_visitado;	.scl	2;	.type	32;	.endef
_set_visitado:
LFB7:
	.loc 1 34 0
	.cfi_startproc
	pushl	%ebp
LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI4:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 36 0
	cmpl	$0, 8(%ebp)
	jne	L5
	.loc 1 37 0
	movl	$LC1, (%esp)
	call	_perror
	.loc 1 38 0
	movl	$1, (%esp)
	call	_exit
L5:
	.loc 1 40 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
	.loc 1 41 0
	leave
LCFI5:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_obtem_visitado
	.def	_obtem_visitado;	.scl	2;	.type	32;	.endef
_obtem_visitado:
LFB8:
	.loc 1 43 0
	.cfi_startproc
	pushl	%ebp
LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI7:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 44 0
	cmpl	$0, 8(%ebp)
	jne	L7
	.loc 1 45 0
	movl	$LC1, (%esp)
	call	_perror
	.loc 1 46 0
	movl	$1, (%esp)
	call	_exit
L7:
	.loc 1 48 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 49 0
	leave
LCFI8:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC2:
	.ascii "obtem_pai:\0"
	.text
	.globl	_obtem_pai
	.def	_obtem_pai;	.scl	2;	.type	32;	.endef
_obtem_pai:
LFB9:
	.loc 1 51 0
	.cfi_startproc
	pushl	%ebp
LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI10:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 52 0
	cmpl	$0, 8(%ebp)
	jne	L10
	.loc 1 53 0
	movl	$LC2, (%esp)
	call	_perror
	.loc 1 54 0
	movl	$1, (%esp)
	call	_exit
L10:
	.loc 1 56 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	.loc 1 57 0
	leave
LCFI11:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
LC3:
	.ascii "liga_vertices:\0"
	.text
	.globl	_liga_vertices
	.def	_liga_vertices;	.scl	2;	.type	32;	.endef
_liga_vertices:
LFB10:
	.loc 1 59 0
	.cfi_startproc
	pushl	%ebp
LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI13:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 61 0
	movl	$0, -12(%ebp)
	.loc 1 62 0
	movl	$0, -16(%ebp)
	.loc 1 64 0
	cmpl	$0, 8(%ebp)
	jne	L13
	.loc 1 65 0
	movl	$LC3, (%esp)
	call	_perror
	.loc 1 66 0
	movl	$1, (%esp)
	call	_exit
L13:
	.loc 1 69 0
	cmpl	$0, 12(%ebp)
	jne	L14
	.loc 1 70 0
	movl	$LC3, (%esp)
	call	_perror
	.loc 1 71 0
	movl	$1, (%esp)
	call	_exit
L14:
	.loc 1 74 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cria_no
	movl	%eax, -12(%ebp)
	.loc 1 75 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cria_no
	movl	%eax, -16(%ebp)
	.loc 1 77 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_add_cauda
	.loc 1 78 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_pai
	.loc 1 79 0
	leave
LCFI14:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC4:
	.ascii "imprime_arestas:\0"
	.text
	.globl	_imprime_arestas
	.def	_imprime_arestas;	.scl	2;	.type	32;	.endef
_imprime_arestas:
LFB11:
	.loc 1 81 0
	.cfi_startproc
	pushl	%ebp
LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI16:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 83 0
	cmpl	$0, 8(%ebp)
	jne	L16
	.loc 1 84 0
	movl	$LC4, (%esp)
	call	_perror
	.loc 1 85 0
	movl	$1, (%esp)
	call	_exit
L16:
	.loc 1 87 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_imprime_lista
	.loc 1 88 0
	leave
LCFI17:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
LC5:
	.ascii "libera_vertice:\0"
	.text
	.globl	_libera_vertice
	.def	_libera_vertice;	.scl	2;	.type	32;	.endef
_libera_vertice:
LFB12:
	.loc 1 90 0
	.cfi_startproc
	pushl	%ebp
LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI19:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 92 0
	cmpl	$0, 8(%ebp)
	jne	L18
	.loc 1 93 0
	movl	$LC5, (%esp)
	call	_perror
	.loc 1 94 0
	movl	$1, (%esp)
	call	_exit
L18:
	.loc 1 96 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_libera_lista
	.loc 1 97 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 98 0
	leave
LCFI20:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
LC6:
	.ascii "obter_cabeca_arestas:\0"
	.text
	.globl	_obter_cabeca_arestas
	.def	_obter_cabeca_arestas;	.scl	2;	.type	32;	.endef
_obter_cabeca_arestas:
LFB13:
	.loc 1 100 0
	.cfi_startproc
	pushl	%ebp
LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI22:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 102 0
	cmpl	$0, 8(%ebp)
	jne	L20
	.loc 1 103 0
	movl	$LC6, (%esp)
	call	_perror
	.loc 1 104 0
	movl	$1, (%esp)
	call	_exit
L20:
	.loc 1 106 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_obter_cabeca
	.loc 1 107 0
	leave
LCFI23:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
LC7:
	.ascii "obter_tamanho_arestas:\0"
	.text
	.globl	_obter_tamanho_arestas
	.def	_obter_tamanho_arestas;	.scl	2;	.type	32;	.endef
_obter_tamanho_arestas:
LFB14:
	.loc 1 109 0
	.cfi_startproc
	pushl	%ebp
LCFI24:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI25:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 110 0
	cmpl	$0, 8(%ebp)
	jne	L23
	.loc 1 111 0
	movl	$LC7, (%esp)
	call	_perror
	.loc 1 112 0
	movl	$1, (%esp)
	call	_exit
L23:
	.loc 1 114 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_obter_tamanho
	.loc 1 115 0
	leave
LCFI26:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC8:
	.ascii "obter_id:\0"
	.text
	.globl	_obter_id
	.def	_obter_id;	.scl	2;	.type	32;	.endef
_obter_id:
LFB15:
	.loc 1 117 0
	.cfi_startproc
	pushl	%ebp
LCFI27:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI28:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 119 0
	cmpl	$0, 8(%ebp)
	jne	L26
	.loc 1 120 0
	movl	$LC8, (%esp)
	call	_perror
	.loc 1 121 0
	movl	$1, (%esp)
	call	_exit
L26:
	.loc 1 123 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 124 0
	leave
LCFI29:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_pai
	.def	_pai;	.scl	2;	.type	32;	.endef
_pai:
LFB16:
	.loc 1 126 0
	.cfi_startproc
	pushl	%ebp
LCFI30:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI31:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 127 0
	cmpl	$0, 8(%ebp)
	jne	L29
	.loc 1 128 0
	movl	$LC7, (%esp)
	call	_perror
	.loc 1 129 0
	movl	$1, (%esp)
	call	_exit
L29:
	.loc 1 131 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
	.loc 1 132 0
	leave
LCFI32:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC9:
	.ascii "dist:\0"
	.text
	.globl	_dist
	.def	_dist;	.scl	2;	.type	32;	.endef
_dist:
LFB17:
	.loc 1 134 0
	.cfi_startproc
	pushl	%ebp
LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI34:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 135 0
	cmpl	$0, 8(%ebp)
	jne	L31
	.loc 1 136 0
	movl	$LC9, (%esp)
	call	_perror
	.loc 1 137 0
	movl	$1, (%esp)
	call	_exit
L31:
	.loc 1 139 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 140 0
	leave
LCFI35:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.section .rdata,"dr"
LC10:
	.ascii "obter_dist:\0"
	.text
	.globl	_obter_dist
	.def	_obter_dist;	.scl	2;	.type	32;	.endef
_obter_dist:
LFB18:
	.loc 1 142 0
	.cfi_startproc
	pushl	%ebp
LCFI36:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI37:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 143 0
	cmpl	$0, 8(%ebp)
	jne	L33
	.loc 1 144 0
	movl	$LC10, (%esp)
	call	_perror
	.loc 1 145 0
	movl	$1, (%esp)
	call	_exit
L33:
	.loc 1 147 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	.loc 1 148 0
	leave
LCFI38:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.file 3 "C:/Users/Casa/Documents/Gustavo/g/grafos/no.h"
	.file 4 "C:/Users/Casa/Documents/Gustavo/g/grafos/lista_enc.h"
	.file 5 "C:/Users/Casa/Documents/Gustavo/g/grafos/vertice.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x537
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\vertice.c\0"
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
	.long	0x11d
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x7e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x86
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
	.long	0x16c
	.uleb128 0x7
	.ascii "nos\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "lista_enc_t\0"
	.byte	0x4
	.byte	0x6
	.long	0x185
	.uleb128 0x7
	.ascii "listas_enc\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "vertice_t\0"
	.byte	0x5
	.byte	0x8
	.long	0x1a3
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x14
	.byte	0x1
	.byte	0x8
	.long	0x1fa
	.uleb128 0x4
	.ascii "id\0"
	.byte	0x1
	.byte	0x9
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "arestas\0"
	.byte	0x1
	.byte	0xa
	.long	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.secrel32	LASF1
	.byte	0x1
	.byte	0xb
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "pai\0"
	.byte	0x1
	.byte	0xc
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "dist\0"
	.byte	0x1
	.byte	0xd
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x172
	.uleb128 0x5
	.byte	0x4
	.long	0x160
	.uleb128 0xa
	.byte	0x1
	.ascii "cria_vertice\0"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.long	0x247
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x247
	.uleb128 0xb
	.ascii "id\0"
	.byte	0x1
	.byte	0x10
	.long	0x123
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "p\0"
	.byte	0x1
	.byte	0x12
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x192
	.uleb128 0xd
	.byte	0x1
	.ascii "set_visitado\0"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	LFB7
	.long	LFE7
	.secrel32	LLST1
	.byte	0x1
	.long	0x28d
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x22
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.secrel32	LASF1
	.byte	0x1
	.byte	0x22
	.long	0x123
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "obtem_visitado\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0x123
	.long	LFB8
	.long	LFE8
	.secrel32	LLST2
	.byte	0x1
	.long	0x2c5
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x2b
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "obtem_pai\0"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x200
	.long	LFB9
	.long	LFE9
	.secrel32	LLST3
	.byte	0x1
	.long	0x2f8
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x33
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii "liga_vertices\0"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	LFB10
	.long	LFE10
	.secrel32	LLST4
	.byte	0x1
	.long	0x365
	.uleb128 0xb
	.ascii "vertice1\0"
	.byte	0x1
	.byte	0x3b
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "vertice2\0"
	.byte	0x1
	.byte	0x3b
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.ascii "destino\0"
	.byte	0x1
	.byte	0x3d
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.ascii "fonte\0"
	.byte	0x1
	.byte	0x3e
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii "imprime_arestas\0"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	LFB11
	.long	LFE11
	.secrel32	LLST5
	.byte	0x1
	.long	0x39a
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x51
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii "libera_vertice\0"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	LFB12
	.long	LFE12
	.secrel32	LLST6
	.byte	0x1
	.long	0x3ce
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x5a
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "obter_cabeca_arestas\0"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	0x200
	.long	LFB13
	.long	LFE13
	.secrel32	LLST7
	.byte	0x1
	.long	0x40c
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x64
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "obter_tamanho_arestas\0"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x123
	.long	LFB14
	.long	LFE14
	.secrel32	LLST8
	.byte	0x1
	.long	0x44b
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x6d
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "obter_id\0"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0x123
	.long	LFB15
	.long	LFE15
	.secrel32	LLST9
	.byte	0x1
	.long	0x47d
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x75
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii "pai\0"
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.long	LFB16
	.long	LFE16
	.secrel32	LLST10
	.byte	0x1
	.long	0x4b4
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x7e
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "pai\0"
	.byte	0x1
	.byte	0x7e
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii "dist\0"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.long	LFB17
	.long	LFE17
	.secrel32	LLST11
	.byte	0x1
	.long	0x4ed
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x86
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "dist\0"
	.byte	0x1
	.byte	0x86
	.long	0x123
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "obter_dist\0"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.long	0x123
	.long	LFB18
	.long	LFE18
	.secrel32	LLST12
	.byte	0x1
	.long	0x521
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.byte	0x8e
	.long	0x247
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	0x12a
	.long	0x52c
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x521
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
LLST10:
	.long	LFB16-Ltext0
	.long	LCFI30-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI30-Ltext0
	.long	LCFI31-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI31-Ltext0
	.long	LCFI32-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI32-Ltext0
	.long	LFE16-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST11:
	.long	LFB17-Ltext0
	.long	LCFI33-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI33-Ltext0
	.long	LCFI34-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI34-Ltext0
	.long	LCFI35-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI35-Ltext0
	.long	LFE17-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST12:
	.long	LFB18-Ltext0
	.long	LCFI36-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI36-Ltext0
	.long	LCFI37-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI37-Ltext0
	.long	LCFI38-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI38-Ltext0
	.long	LFE18-Ltext0
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
LASF1:
	.ascii "visitado\0"
LASF0:
	.ascii "vertice\0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_cria_lista_enc;	.scl	2;	.type	32;	.endef
	.def	_cria_no;	.scl	2;	.type	32;	.endef
	.def	_add_cauda;	.scl	2;	.type	32;	.endef
	.def	_imprime_lista;	.scl	2;	.type	32;	.endef
	.def	_libera_lista;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_obter_cabeca;	.scl	2;	.type	32;	.endef
	.def	_obter_tamanho;	.scl	2;	.type	32;	.endef
