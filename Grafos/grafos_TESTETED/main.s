	.file	"main.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "-%p-\12\0"
LC1:
	.ascii "\12%d\0"
LC2:
	.ascii "\12"
	.ascii "0: %p 1: %p 2: %p 3:\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB6:
	.file 1 "C:/Users/Casa/Documents/Gustavo/g/grafos/main.c"
	.loc 1 11 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	.loc 1 11 0
	call	___main
	.loc 1 12 0
	movl	$0, 44(%esp)
	.loc 1 13 0
	movl	$0, 40(%esp)
	.loc 1 14 0
	movl	$0, 36(%esp)
	.loc 1 15 0
	movl	$0, 32(%esp)
	.loc 1 16 0
	movl	$0, 28(%esp)
	.loc 1 17 0
	movl	$0, 24(%esp)
	.loc 1 18 0
	movl	$0, 20(%esp)
	.loc 1 19 0
	movl	$5, (%esp)
	call	_cria_fila
	movl	%eax, 16(%esp)
	.loc 1 22 0
	call	_cria_grafo
	movl	%eax, 44(%esp)
	.loc 1 23 0
	movl	$0, (%esp)
	call	_cria_vertice
	movl	%eax, 36(%esp)
	.loc 1 24 0
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_cria_no
	movl	%eax, 40(%esp)
	.loc 1 25 0
	movl	$1, (%esp)
	call	_cria_vertice
	movl	%eax, 28(%esp)
	.loc 1 26 0
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_cria_no
	movl	%eax, 32(%esp)
	.loc 1 27 0
	movl	$2, (%esp)
	call	_cria_vertice
	movl	%eax, 20(%esp)
	.loc 1 28 0
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_cria_no
	movl	%eax, 24(%esp)
	.loc 1 31 0
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	.loc 1 33 0
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_add_cabeca_grafo
	.loc 1 34 0
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_add_cabeca_grafo
	.loc 1 35 0
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_add_cabeca_grafo
	.loc 1 38 0
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_liga_vertices
	.loc 1 39 0
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_liga_vertices
	.loc 1 40 0
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_liga_vertices
	.loc 1 41 0
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_liga_vertices
	.loc 1 47 0
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_enqueue
	.loc 1 48 0
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_dequeue
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 1 49 0
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	_enqueue
	.loc 1 50 0
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	_enqueue
	.loc 1 51 0
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_dequeue
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 1 52 0
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$6, (%esp)
	call	_enqueue
	.loc 1 53 0
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_dequeue
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 1 54 0
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_enqueue
	.loc 1 55 0
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_dequeue
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 1 56 0
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_dequeue
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 1 59 0
	movl	20(%esp), %eax
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	.loc 1 61 0
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_busca_largura
	.loc 1 63 0
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_imprime_grafo
	.loc 1 67 0
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_libera_grafo
	.loc 1 68 0
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_libera_vertice
	.loc 1 69 0
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_libera_vertice
	.loc 1 70 0
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_libera_vertice
	.loc 1 72 0
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 73 0
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 74 0
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 77 0
	movl	$0, %eax
	.loc 1 78 0
	leave
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.file 3 "C:/Users/Casa/Documents/Gustavo/g/grafos/no.h"
	.file 4 "C:/Users/Casa/Documents/Gustavo/g/grafos/vertice.h"
	.file 5 "C:/Users/Casa/Documents/Gustavo/g/grafos/grafo.h"
	.file 6 "C:/Users/Casa/Documents/Gustavo/g/grafos/fila.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x296
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\main.c\0"
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
	.ascii "no_t\0"
	.byte	0x3
	.byte	0x4
	.long	0x169
	.uleb128 0x7
	.ascii "nos\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "vertice_t\0"
	.byte	0x4
	.byte	0x8
	.long	0x180
	.uleb128 0x7
	.ascii "vertice\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "grafo_t\0"
	.byte	0x5
	.byte	0x7
	.long	0x199
	.uleb128 0x7
	.ascii "grafos\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "fila_t\0"
	.byte	0x6
	.byte	0x4
	.long	0x1b0
	.uleb128 0x7
	.ascii "filas\0"
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0xa
	.long	0x120
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x268
	.uleb128 0x9
	.ascii "grafo\0"
	.byte	0x1
	.byte	0xc
	.long	0x268
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0x9
	.ascii "elemento1\0"
	.byte	0x1
	.byte	0xd
	.long	0x26e
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0x9
	.ascii "vertice1\0"
	.byte	0x1
	.byte	0xe
	.long	0x274
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0x9
	.ascii "elemento2\0"
	.byte	0x1
	.byte	0xf
	.long	0x26e
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x9
	.ascii "vertice2\0"
	.byte	0x1
	.byte	0x10
	.long	0x274
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x9
	.ascii "elemento3\0"
	.byte	0x1
	.byte	0x11
	.long	0x26e
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0x9
	.ascii "vertice3\0"
	.byte	0x1
	.byte	0x12
	.long	0x274
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0x9
	.ascii "f\0"
	.byte	0x1
	.byte	0x13
	.long	0x27a
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x18a
	.uleb128 0x5
	.byte	0x4
	.long	0x15d
	.uleb128 0x5
	.byte	0x4
	.long	0x16f
	.uleb128 0x5
	.byte	0x4
	.long	0x1a2
	.uleb128 0xa
	.long	0x127
	.long	0x28b
	.uleb128 0xb
	.byte	0
	.uleb128 0xc
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x280
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
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
	.def	_cria_fila;	.scl	2;	.type	32;	.endef
	.def	_cria_grafo;	.scl	2;	.type	32;	.endef
	.def	_cria_vertice;	.scl	2;	.type	32;	.endef
	.def	_cria_no;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_add_cabeca_grafo;	.scl	2;	.type	32;	.endef
	.def	_liga_vertices;	.scl	2;	.type	32;	.endef
	.def	_enqueue;	.scl	2;	.type	32;	.endef
	.def	_dequeue;	.scl	2;	.type	32;	.endef
	.def	_busca_largura;	.scl	2;	.type	32;	.endef
	.def	_imprime_grafo;	.scl	2;	.type	32;	.endef
	.def	_libera_grafo;	.scl	2;	.type	32;	.endef
	.def	_libera_vertice;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
