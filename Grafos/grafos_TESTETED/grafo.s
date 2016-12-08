	.file	"grafo.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
LC0:
	.ascii "cria_grafo:\0"
	.text
	.globl	_cria_grafo
	.def	_cria_grafo;	.scl	2;	.type	32;	.endef
_cria_grafo:
LFB6:
	.file 1 "C:/Users/Casa/Documents/Gustavo/g/grafos/grafo.c"
	.loc 1 14 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 16 0
	movl	$4, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	.loc 1 18 0
	cmpl	$0, -12(%ebp)
	jne	L2
	.loc 1 19 0
	movl	$LC0, (%esp)
	call	_perror
	.loc 1 20 0
	movl	$1, (%esp)
	call	_exit
L2:
	.loc 1 23 0
	call	_cria_lista_enc
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 25 0
	movl	-12(%ebp), %eax
	.loc 1 26 0
	leave
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
LC1:
	.ascii "add_cabeca_grafo:\0"
	.text
	.globl	_add_cabeca_grafo
	.def	_add_cabeca_grafo;	.scl	2;	.type	32;	.endef
_add_cabeca_grafo:
LFB7:
	.loc 1 28 0
	.cfi_startproc
	pushl	%ebp
LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI4:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 30 0
	cmpl	$0, 8(%ebp)
	jne	L5
	.loc 1 31 0
	movl	$LC1, (%esp)
	call	_perror
	.loc 1 32 0
	movl	$1, (%esp)
	call	_exit
L5:
	.loc 1 35 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_add_cabeca
	.loc 1 36 0
	leave
LCFI5:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.section .rdata,"dr"
LC2:
	.ascii "\12\12"
	.ascii "33333333335555555555554433\0"
LC3:
	.ascii "\12\12"
	.ascii "4444444444\0"
LC4:
	.ascii "imprime_grafo:\0"
LC5:
	.ascii "\12\12"
	.ascii "4444222222222222444444\0"
LC6:
	.ascii "w\0"
LC7:
	.ascii "grafo3.txt\0"
LC8:
	.ascii "\12\12"
	.ascii "1111155555555511\0"
LC9:
	.ascii "\12\12"
	.ascii "114411111\0"
LC10:
	.ascii "graph {\12\0"
LC11:
	.ascii "\12\22\0"
LC12:
	.ascii "%d -- %d\12\0"
	.text
	.globl	_imprime_grafo
	.def	_imprime_grafo;	.scl	2;	.type	32;	.endef
_imprime_grafo:
LFB8:
	.loc 1 38 0
	.cfi_startproc
	pushl	%ebp
LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI7:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 39 0
	movl	$LC2, (%esp)
	call	_printf
	.loc 1 40 0
	movl	$0, -20(%ebp)
	.loc 1 41 0
	movl	$0, -12(%ebp)
	.loc 1 42 0
	movl	$0, -16(%ebp)
	.loc 1 43 0
	movl	$0, -24(%ebp)
	.loc 1 44 0
	movl	$LC3, (%esp)
	call	_printf
	.loc 1 46 0
	cmpl	$0, 8(%ebp)
	jne	L7
	.loc 1 47 0
	movl	$LC4, (%esp)
	call	_perror
	.loc 1 48 0
	movl	$1, (%esp)
	call	_exit
L7:
	.loc 1 50 0
	movl	$LC5, (%esp)
	call	_printf
	.loc 1 51 0
	movl	$LC6, 4(%esp)
	movl	$LC7, (%esp)
	call	_fopen
	movl	%eax, -20(%ebp)
	.loc 1 52 0
	movl	$LC8, (%esp)
	call	_printf
	.loc 1 53 0
	cmpl	$0, -20(%ebp)
	jne	L8
	.loc 1 54 0
	movl	$LC4, (%esp)
	call	_perror
	.loc 1 55 0
	jmp	L6
L8:
	.loc 1 57 0
	movl	$LC9, (%esp)
	call	_printf
	.loc 1 58 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC10, (%esp)
	call	_fwrite
	.loc 1 59 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_obter_cabeca
	movl	%eax, -12(%ebp)
	.loc 1 60 0
	movl	$LC11, (%esp)
	call	_printf
	.loc 1 61 0
	jmp	L10
L13:
	.loc 1 62 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, -24(%ebp)
	.loc 1 63 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obter_cabeca_arestas
	movl	%eax, -16(%ebp)
	.loc 1 64 0
	jmp	L11
L12:
	.loc 1 65 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, (%esp)
	call	_obter_id
	movl	%eax, %ebx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obter_id
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC12, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	.loc 1 66 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -16(%ebp)
L11:
	.loc 1 64 0 discriminator 1
	cmpl	$0, -16(%ebp)
	jne	L12
	.loc 1 68 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
L10:
	.loc 1 61 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L13
	.loc 1 70 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$125, (%esp)
	call	_fputc
	.loc 1 71 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
L6:
	.loc 1 72 0
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
LCFI8:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC13:
	.ascii "libera_grafo:\0"
	.text
	.globl	_libera_grafo
	.def	_libera_grafo;	.scl	2;	.type	32;	.endef
_libera_grafo:
LFB9:
	.loc 1 74 0
	.cfi_startproc
	pushl	%ebp
LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI10:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 76 0
	cmpl	$0, 8(%ebp)
	jne	L15
	.loc 1 77 0
	movl	$LC13, (%esp)
	call	_perror
	.loc 1 78 0
	movl	$1, (%esp)
	call	_exit
L15:
	.loc 1 80 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_libera_lista
	.loc 1 81 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 82 0
	leave
LCFI11:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
LC14:
	.ascii "busca_largura:\0"
LC15:
	.ascii "AAAAAAAA\0"
LC16:
	.ascii " BBBBBBB\0"
LC17:
	.ascii "AAAAARRRRRRRRRRRAAA\0"
LC18:
	.ascii "ptr: %p\12\0"
LC19:
	.ascii "fila: %d\0"
LC20:
	.ascii "--%d--\0"
LC21:
	.ascii "ptr2: %p\12\0"
LC22:
	.ascii "aaaaaaaaaaaaaal\0"
LC23:
	.ascii "eeeeeeeeeeeeel\0"
	.text
	.globl	_busca_largura
	.def	_busca_largura;	.scl	2;	.type	32;	.endef
_busca_largura:
LFB10:
	.loc 1 84 0
	.cfi_startproc
	pushl	%ebp
LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI13:
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 1 86 0
	movl	$0, -20(%ebp)
	.loc 1 87 0
	movl	$0, -12(%ebp)
	.loc 1 88 0
	movl	$0, -16(%ebp)
	.loc 1 89 0
	movl	$0, -24(%ebp)
	.loc 1 90 0
	movl	$0, -28(%ebp)
	.loc 1 92 0
	cmpl	$0, 8(%ebp)
	jne	L17
	.loc 1 93 0
	movl	$LC14, (%esp)
	call	_perror
	.loc 1 94 0
	movl	$1, (%esp)
	call	_exit
L17:
	.loc 1 97 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_obter_cabeca
	movl	%eax, -12(%ebp)
	.loc 1 100 0
	jmp	L18
L19:
	.loc 1 101 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_dist
	.loc 1 102 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_pai
	.loc 1 103 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_set_visitado
	.loc 1 104 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
L18:
	.loc 1 100 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L19
	.loc 1 107 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_obter_tamanho
	movl	%eax, (%esp)
	call	_cria_fila
	movl	%eax, -20(%ebp)
	.loc 1 108 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_dist
	.loc 1 109 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_enqueue
	.loc 1 111 0
	jmp	L20
L24:
	.loc 1 112 0
	movl	$LC15, (%esp)
	call	_printf
	.loc 1 113 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_dequeue
	movl	%eax, -12(%ebp)
	.loc 1 114 0
	movl	$LC16, (%esp)
	call	_printf
	.loc 1 115 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, -24(%ebp)
	.loc 1 116 0
	movl	$LC17, (%esp)
	call	_printf
	.loc 1 117 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_printf
	.loc 1 118 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_fila_tamanho
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_printf
	.loc 1 119 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_visitado
	movl	%eax, 4(%esp)
	movl	$LC20, (%esp)
	call	_printf
	.loc 1 120 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_visitado
	testl	%eax, %eax
	jne	L20
	.loc 1 121 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obter_cabeca_arestas
	movl	%eax, -16(%ebp)
	.loc 1 123 0
	jmp	L21
L23:
	.loc 1 124 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, -28(%ebp)
	.loc 1 125 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_printf
	.loc 1 126 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obter_dist
	testl	%eax, %eax
	jne	L22
	.loc 1 127 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obter_dist
	incl	%eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dist
L22:
	.loc 1 128 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_pai
	.loc 1 129 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_enqueue
	.loc 1 130 0
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_set_visitado
	.loc 1 131 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -16(%ebp)
L21:
	.loc 1 123 0 discriminator 1
	cmpl	$0, -16(%ebp)
	jne	L23
L20:
	.loc 1 111 0 discriminator 1
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_vazia
	testl	%eax, %eax
	je	L24
	.loc 1 135 0
	movl	$LC22, (%esp)
	call	_printf
	.loc 1 138 0
	movl	$LC23, (%esp)
	call	_printf
	.loc 1 139 0
	leave
LCFI14:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC24:
	.ascii "arvore.txt\0"
LC25:
	.ascii "imprime_arvore:\0"
	.text
	.globl	_imprime_arvore
	.def	_imprime_arvore;	.scl	2;	.type	32;	.endef
_imprime_arvore:
LFB11:
	.loc 1 141 0
	.cfi_startproc
	pushl	%ebp
LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI16:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 143 0
	movl	$0, -16(%ebp)
	.loc 1 144 0
	movl	$0, -12(%ebp)
	.loc 1 145 0
	movl	$0, -20(%ebp)
	.loc 1 147 0
	movl	$LC6, 4(%esp)
	movl	$LC24, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	.loc 1 149 0
	cmpl	$0, -16(%ebp)
	jne	L26
	.loc 1 150 0
	movl	$LC25, (%esp)
	call	_perror
	.loc 1 151 0
	jmp	L25
L26:
	.loc 1 154 0
	cmpl	$0, 8(%ebp)
	jne	L28
	.loc 1 155 0
	movl	$LC25, (%esp)
	call	_perror
	.loc 1 156 0
	movl	$1, (%esp)
	call	_exit
L28:
	.loc 1 158 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC10, (%esp)
	call	_fwrite
	.loc 1 159 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_obter_cabeca
	movl	%eax, -12(%ebp)
	.loc 1 160 0
	jmp	L29
L30:
	.loc 1 161 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, -20(%ebp)
	.loc 1 162 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obter_id
	movl	%eax, %ebx
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_pai
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, (%esp)
	call	_obter_id
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC12, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	.loc 1 163 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
L29:
	.loc 1 160 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L30
	.loc 1 165 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$125, (%esp)
	call	_fputc
	.loc 1 166 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
L25:
	.loc 1 167 0
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
LCFI17:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.file 3 "C:/Users/Casa/Documents/Gustavo/g/grafos/no.h"
	.file 4 "C:/Users/Casa/Documents/Gustavo/g/grafos/lista_enc.h"
	.file 5 "C:/Users/Casa/Documents/Gustavo/g/grafos/vertice.h"
	.file 6 "C:/Users/Casa/Documents/Gustavo/g/grafos/grafo.h"
	.file 7 "C:/Users/Casa/Documents/Gustavo/g/grafos/fila.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x42a
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\grafo.c\0"
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
	.long	0x11b
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x84
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
	.long	0x16a
	.uleb128 0x7
	.ascii "nos\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "lista_enc_t\0"
	.byte	0x4
	.byte	0x6
	.long	0x183
	.uleb128 0x7
	.ascii "listas_enc\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "vertice_t\0"
	.byte	0x5
	.byte	0x8
	.long	0x1a1
	.uleb128 0x7
	.ascii "vertice\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "grafo_t\0"
	.byte	0x6
	.byte	0x7
	.long	0x1ba
	.uleb128 0x3
	.ascii "grafos\0"
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.long	0x1dd
	.uleb128 0x4
	.ascii "vertices\0"
	.byte	0x1
	.byte	0xb
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.ascii "fila_t\0"
	.byte	0x7
	.byte	0x4
	.long	0x1eb
	.uleb128 0x7
	.ascii "filas\0"
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.long	0x170
	.uleb128 0x8
	.byte	0x1
	.ascii "cria_grafo\0"
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0x22b
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x22b
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x10
	.long	0x22b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1ab
	.uleb128 0xa
	.byte	0x1
	.ascii "add_cabeca_grafo\0"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	LFB7
	.long	LFE7
	.secrel32	LLST1
	.byte	0x1
	.long	0x274
	.uleb128 0xb
	.secrel32	LASF0
	.byte	0x1
	.byte	0x1c
	.long	0x22b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "no\0"
	.byte	0x1
	.byte	0x1c
	.long	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x15e
	.uleb128 0xa
	.byte	0x1
	.ascii "imprime_grafo\0"
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	LFB8
	.long	LFE8
	.secrel32	LLST2
	.byte	0x1
	.long	0x2e8
	.uleb128 0xb
	.secrel32	LASF0
	.byte	0x1
	.byte	0x26
	.long	0x22b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "fp\0"
	.byte	0x1
	.byte	0x28
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.secrel32	LASF1
	.byte	0x1
	.byte	0x29
	.long	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "no_aresta\0"
	.byte	0x1
	.byte	0x2a
	.long	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x2b
	.long	0x2ee
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x128
	.uleb128 0x5
	.byte	0x4
	.long	0x190
	.uleb128 0xa
	.byte	0x1
	.ascii "libera_grafo\0"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	LFB9
	.long	LFE9
	.secrel32	LLST3
	.byte	0x1
	.long	0x326
	.uleb128 0xb
	.secrel32	LASF0
	.byte	0x1
	.byte	0x4a
	.long	0x22b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "busca_largura\0"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.long	LFB10
	.long	LFE10
	.secrel32	LLST4
	.byte	0x1
	.long	0x3b3
	.uleb128 0xb
	.secrel32	LASF0
	.byte	0x1
	.byte	0x54
	.long	0x22b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "elemento\0"
	.byte	0x1
	.byte	0x54
	.long	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.ascii "fila\0"
	.byte	0x1
	.byte	0x56
	.long	0x3b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0x57
	.long	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "no2\0"
	.byte	0x1
	.byte	0x58
	.long	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii "ptr\0"
	.byte	0x1
	.byte	0x59
	.long	0x2ee
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.ascii "ptr2\0"
	.byte	0x1
	.byte	0x5a
	.long	0x2ee
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1dd
	.uleb128 0xa
	.byte	0x1
	.ascii "imprime_arvore\0"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.long	LFB11
	.long	LFE11
	.secrel32	LLST5
	.byte	0x1
	.long	0x414
	.uleb128 0xb
	.secrel32	LASF0
	.byte	0x1
	.byte	0x8d
	.long	0x22b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "fp\0"
	.byte	0x1
	.byte	0x8f
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.secrel32	LASF1
	.byte	0x1
	.byte	0x90
	.long	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x91
	.long	0x2ee
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.long	0x128
	.long	0x41f
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x414
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
LASF0:
	.ascii "grafo\0"
LASF1:
	.ascii "no_vertice\0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_cria_lista_enc;	.scl	2;	.type	32;	.endef
	.def	_add_cabeca;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_fputc;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_obter_cabeca;	.scl	2;	.type	32;	.endef
	.def	_obtem_dado;	.scl	2;	.type	32;	.endef
	.def	_obter_cabeca_arestas;	.scl	2;	.type	32;	.endef
	.def	_obter_id;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_obtem_proximo;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_libera_lista;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_dist;	.scl	2;	.type	32;	.endef
	.def	_pai;	.scl	2;	.type	32;	.endef
	.def	_set_visitado;	.scl	2;	.type	32;	.endef
	.def	_obter_tamanho;	.scl	2;	.type	32;	.endef
	.def	_cria_fila;	.scl	2;	.type	32;	.endef
	.def	_enqueue;	.scl	2;	.type	32;	.endef
	.def	_dequeue;	.scl	2;	.type	32;	.endef
	.def	_fila_tamanho;	.scl	2;	.type	32;	.endef
	.def	_obtem_visitado;	.scl	2;	.type	32;	.endef
	.def	_obter_dist;	.scl	2;	.type	32;	.endef
	.def	_vazia;	.scl	2;	.type	32;	.endef
	.def	_obtem_pai;	.scl	2;	.type	32;	.endef
