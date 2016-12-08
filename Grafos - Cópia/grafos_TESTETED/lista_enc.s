	.file	"lista_enc.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
LC0:
	.ascii "cria_lista_enc:\0"
	.text
	.globl	_cria_lista_enc
	.def	_cria_lista_enc;	.scl	2;	.type	32;	.endef
_cria_lista_enc:
LFB6:
	.file 1 "C:/Users/Casa/Documents/Gustavo/g/grafos/lista_enc.c"
	.loc 1 17 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 19 0
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	.loc 1 21 0
	cmpl	$0, -12(%ebp)
	jne	L2
	.loc 1 22 0
	movl	$LC0, (%esp)
	call	_perror
	.loc 1 23 0
	movl	$1, (%esp)
	call	_exit
L2:
	.loc 1 26 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 27 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 28 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 30 0
	movl	-12(%ebp), %eax
	.loc 1 31 0
	leave
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "\12obter_cabeca: ponteiros invalidos\0"
	.text
	.globl	_obter_cabeca
	.def	_obter_cabeca;	.scl	2;	.type	32;	.endef
_obter_cabeca:
LFB7:
	.loc 1 33 0
	.cfi_startproc
	pushl	%ebp
LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI4:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 35 0
	cmpl	$0, 8(%ebp)
	jne	L5
	.loc 1 36 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	.loc 1 37 0
	movl	$1, (%esp)
	call	_exit
L5:
	.loc 1 39 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 40 0
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
	.ascii "\12obter_tamanho: ponteiros invalidos\0"
	.text
	.globl	_obter_tamanho
	.def	_obter_tamanho;	.scl	2;	.type	32;	.endef
_obter_tamanho:
LFB8:
	.loc 1 42 0
	.cfi_startproc
	pushl	%ebp
LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI7:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 43 0
	cmpl	$0, 8(%ebp)
	jne	L8
	.loc 1 44 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	.loc 1 45 0
	movl	$1, (%esp)
	call	_exit
L8:
	.loc 1 47 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 48 0
	leave
LCFI8:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC3:
	.ascii "\12\12add_cauda():\0"
	.align 4
LC4:
	.ascii "\12add_cauda: ponteiros invalidos\0"
	.align 4
LC5:
	.ascii "\12adicionando %p --- tamanho: %d\0"
	.align 4
LC6:
	.ascii "\12elemento %p adicionado --- tamanho: %d\0"
	.text
	.globl	_add_cauda
	.def	_add_cauda;	.scl	2;	.type	32;	.endef
_add_cauda:
LFB9:
	.loc 1 50 0
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
	movl	$LC3, (%esp)
	call	_printf
	.loc 1 56 0
	cmpl	$0, 8(%ebp)
	je	L11
	.loc 1 56 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%ebp)
	jne	L12
L11:
	.loc 1 57 0 is_stmt 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$31, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC4, (%esp)
	call	_fwrite
	.loc 1 58 0
	movl	$1, (%esp)
	call	_exit
L12:
	.loc 1 62 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	.loc 1 66 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L13
	.loc 1 67 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 68 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 69 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 71 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_desliga_no
	jmp	L14
L13:
	.loc 1 75 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_desliga_no
	.loc 1 77 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_liga_nos
	.loc 1 79 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 80 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
L14:
	.loc 1 83 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	.loc 1 85 0
	leave
LCFI11:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
LC7:
	.ascii "\12\12add_cabeca():\0"
	.align 4
LC8:
	.ascii "\12add_cabeca: ponteiros invalidos\0"
	.text
	.globl	_add_cabeca
	.def	_add_cabeca;	.scl	2;	.type	32;	.endef
_add_cabeca:
LFB10:
	.loc 1 86 0
	.cfi_startproc
	pushl	%ebp
LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI13:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 89 0
	movl	$LC7, (%esp)
	call	_printf
	.loc 1 92 0
	cmpl	$0, 8(%ebp)
	je	L16
	.loc 1 92 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%ebp)
	jne	L17
L16:
	.loc 1 93 0 is_stmt 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$32, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC8, (%esp)
	call	_fwrite
	.loc 1 94 0
	movl	$1, (%esp)
	call	_exit
L17:
	.loc 1 98 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	.loc 1 102 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L18
	.loc 1 103 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 104 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 105 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 106 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_desliga_no
	jmp	L19
L18:
	.loc 1 110 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_desliga_no
	.loc 1 112 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_liga_nos
	.loc 1 113 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 114 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
L19:
	.loc 1 117 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	.loc 1 119 0
	leave
LCFI14:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC9:
	.ascii "\12\12rem_elemento():\0"
	.align 4
LC10:
	.ascii "rem_elemento: ponteiros invalidos\0"
LC11:
	.ascii "rem_elemento: lista vazia!\0"
LC12:
	.ascii "\12i: %d\0"
LC13:
	.ascii "\12Dado removido: %p\0"
	.text
	.globl	_rem_elemento
	.def	_rem_elemento;	.scl	2;	.type	32;	.endef
_rem_elemento:
LFB11:
	.loc 1 120 0
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
	.loc 1 122 0
	movl	$0, -12(%ebp)
	.loc 1 123 0
	movl	$1, -16(%ebp)
	.loc 1 126 0
	movl	$LC9, (%esp)
	call	_printf
	.loc 1 129 0
	cmpl	$0, 8(%ebp)
	jne	L21
	.loc 1 130 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC10, (%esp)
	call	_fwrite
	.loc 1 131 0
	movl	$1, (%esp)
	call	_exit
L21:
	.loc 1 133 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L22
	.loc 1 134 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC11, (%esp)
	call	_fwrite
	.loc 1 135 0
	jmp	L20
L22:
	.loc 1 137 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 138 0
	jmp	L24
L29:
	.loc 1 140 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	.loc 1 142 0
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	L25
	.loc 1 143 0
	cmpl	$1, 12(%ebp)
	jne	L26
	.loc 1 144 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 145 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_desliga_no
	jmp	L27
L26:
	.loc 1 147 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	L28
	.loc 1 148 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_anterior
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	.loc 1 149 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_desliga_no
	jmp	L27
L28:
	.loc 1 152 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_anterior
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_liga_nos
	.loc 1 153 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_desliga_no
L27:
	.loc 1 155 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 157 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_printf
	.loc 1 159 0
	jmp	L20
L25:
	.loc 1 161 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
	.loc 1 162 0
	incl	-16(%ebp)
L24:
	.loc 1 138 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L29
L20:
	.loc 1 164 0
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
	.section .rdata,"dr"
LC14:
	.ascii "\12\12posicao():\0"
LC15:
	.ascii "\12posicao: ponteiros invalidos\0"
LC16:
	.ascii "\12index: %d\0"
	.text
	.globl	_posicao
	.def	_posicao;	.scl	2;	.type	32;	.endef
_posicao:
LFB12:
	.loc 1 165 0
	.cfi_startproc
	pushl	%ebp
LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI19:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 167 0
	movl	$0, -12(%ebp)
	.loc 1 168 0
	movl	$1, -16(%ebp)
	.loc 1 171 0
	movl	$LC14, (%esp)
	call	_printf
	.loc 1 174 0
	cmpl	$0, 8(%ebp)
	je	L31
	.loc 1 174 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%ebp)
	jne	L32
L31:
	.loc 1 175 0 is_stmt 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC15, (%esp)
	call	_fwrite
	.loc 1 176 0
	movl	$1, (%esp)
	call	_exit
L32:
	.loc 1 178 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 179 0
	jmp	L33
L36:
	.loc 1 181 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_printf
	.loc 1 183 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	L34
	.loc 1 184 0
	movl	-16(%ebp), %eax
	jmp	L35
L34:
	.loc 1 185 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
	.loc 1 186 0
	incl	-16(%ebp)
L33:
	.loc 1 179 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L36
	.loc 1 188 0
	movl	$-1, %eax
L35:
	.loc 1 189 0
	leave
LCFI20:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
LC17:
	.ascii "\12tamanho: ponteiros invalidos\0"
	.text
	.globl	_tamanho_enc
	.def	_tamanho_enc;	.scl	2;	.type	32;	.endef
_tamanho_enc:
LFB13:
	.loc 1 190 0
	.cfi_startproc
	pushl	%ebp
LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI22:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 192 0
	cmpl	$0, 8(%ebp)
	jne	L38
	.loc 1 193 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC17, (%esp)
	call	_fwrite
	.loc 1 194 0
	movl	$1, (%esp)
	call	_exit
L38:
	.loc 1 196 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 197 0
	leave
LCFI23:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 4
LC18:
	.ascii "\12lista_vazia: ponteiros invalidos\0"
	.text
	.globl	_lista_vazia
	.def	_lista_vazia;	.scl	2;	.type	32;	.endef
_lista_vazia:
LFB14:
	.loc 1 198 0
	.cfi_startproc
	pushl	%ebp
LCFI24:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI25:
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 200 0
	cmpl	$0, 8(%ebp)
	jne	L41
	.loc 1 201 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC18, (%esp)
	call	_fwrite
	.loc 1 202 0
	movl	$1, (%esp)
	call	_exit
L41:
	.loc 1 204 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L42
	.loc 1 205 0
	movl	$1, %eax
	jmp	L43
L42:
	.loc 1 206 0
	movl	$0, %eax
L43:
	.loc 1 207 0
	leave
LCFI26:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC19:
	.ascii "\12\12imprime_lista():\0"
	.align 4
LC20:
	.ascii "\12imprime_lista: ponteiros invalidos\0"
LC21:
	.ascii "\12Dados: %p\0"
	.text
	.globl	_imprime_lista
	.def	_imprime_lista;	.scl	2;	.type	32;	.endef
_imprime_lista:
LFB15:
	.loc 1 208 0
	.cfi_startproc
	pushl	%ebp
LCFI27:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI28:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 210 0
	movl	$0, -12(%ebp)
	.loc 1 213 0
	movl	$LC19, (%esp)
	call	_printf
	.loc 1 216 0
	cmpl	$0, 8(%ebp)
	jne	L45
	.loc 1 217 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC20, (%esp)
	call	_fwrite
	.loc 1 218 0
	movl	$1, (%esp)
	call	_exit
L45:
	.loc 1 221 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 223 0
	jmp	L46
L47:
	.loc 1 224 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_printf
	.loc 1 225 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
L46:
	.loc 1 223 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L47
	.loc 1 227 0
	leave
LCFI29:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.section .rdata,"dr"
LC22:
	.ascii "\12\12imprime_lista_tras():\0"
	.align 4
LC23:
	.ascii "imprime_lista_tras: ponteiros invalidos\0"
LC24:
	.ascii "Dados: %p\12\0"
	.text
	.globl	_imprime_lista_tras
	.def	_imprime_lista_tras;	.scl	2;	.type	32;	.endef
_imprime_lista_tras:
LFB16:
	.loc 1 228 0
	.cfi_startproc
	pushl	%ebp
LCFI30:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI31:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 230 0
	movl	$0, -12(%ebp)
	.loc 1 233 0
	movl	$LC22, (%esp)
	call	_printf
	.loc 1 236 0
	cmpl	$0, 8(%ebp)
	jne	L49
	.loc 1 237 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC23, (%esp)
	call	_fwrite
	.loc 1 238 0
	movl	$1, (%esp)
	call	_exit
L49:
	.loc 1 241 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 242 0
	jmp	L50
L51:
	.loc 1 243 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, 4(%esp)
	movl	$LC24, (%esp)
	call	_printf
	.loc 1 244 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_anterior
	movl	%eax, -12(%ebp)
L50:
	.loc 1 242 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L51
	.loc 1 246 0
	leave
LCFI32:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC25:
	.ascii "\12\12libera_lista():\0"
	.align 4
LC26:
	.ascii "\12libera_lista: ponteiros invalidos\0"
LC27:
	.ascii "\12lista liberada!\0"
	.text
	.globl	_libera_lista
	.def	_libera_lista;	.scl	2;	.type	32;	.endef
_libera_lista:
LFB17:
	.loc 1 247 0
	.cfi_startproc
	pushl	%ebp
LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI34:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 249 0
	movl	$0, -12(%ebp)
	.loc 1 250 0
	movl	$0, -16(%ebp)
	.loc 1 253 0
	movl	$LC25, (%esp)
	call	_printf
	.loc 1 256 0
	cmpl	$0, 8(%ebp)
	jne	L53
	.loc 1 257 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC26, (%esp)
	call	_fwrite
	.loc 1 258 0
	movl	$1, (%esp)
	call	_exit
L53:
	.loc 1 261 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 263 0
	jmp	L54
L55:
	.loc 1 264 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 265 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 266 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
L54:
	.loc 1 263 0 discriminator 1
	cmpl	$0, -12(%ebp)
	jne	L55
	.loc 1 268 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 270 0
	movl	$LC27, (%esp)
	call	_printf
	.loc 1 272 0
	leave
LCFI35:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.section .rdata,"dr"
LC28:
	.ascii "\12\12bubble_sort(): \0"
	.align 4
LC29:
	.ascii "\12bubble_sort: ponteiros invalidos\0"
	.text
	.globl	_bubble_sort
	.def	_bubble_sort;	.scl	2;	.type	32;	.endef
_bubble_sort:
LFB18:
	.loc 1 274 0
	.cfi_startproc
	pushl	%ebp
LCFI36:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI37:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 276 0
	movl	$0, -12(%ebp)
	.loc 1 281 0
	movl	$LC28, (%esp)
	call	_printf
	.loc 1 284 0
	cmpl	$0, 8(%ebp)
	jne	L57
	.loc 1 285 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC29, (%esp)
	call	_fwrite
	.loc 1 286 0
	movl	$1, (%esp)
	call	_exit
L57:
	.loc 1 289 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	L58
L62:
	.loc 1 290 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 291 0
	movl	$0, -20(%ebp)
	jmp	L59
L61:
	.loc 1 292 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, (%esp)
	call	_obtem_dado
	cmpl	%eax, %ebx
	jbe	L60
	.loc 1 293 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_swap_no
	.loc 1 295 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_imprime_lista
L60:
	.loc 1 298 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
	.loc 1 291 0
	incl	-20(%ebp)
L59:
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	-16(%ebp), %eax
	decl	%eax
	cmpl	-20(%ebp), %eax
	jg	L61
	.loc 1 289 0 is_stmt 1
	decl	-16(%ebp)
L58:
	.loc 1 289 0 is_stmt 0 discriminator 1
	cmpl	$1, -16(%ebp)
	jg	L62
	.loc 1 301 0 is_stmt 1
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
LCFI38:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC30:
	.ascii "\12\12select_sort():\0"
	.align 4
LC31:
	.ascii "\12select_sort: ponteiros invalidos\0"
	.text
	.globl	_select_sort
	.def	_select_sort;	.scl	2;	.type	32;	.endef
_select_sort:
LFB19:
	.loc 1 303 0
	.cfi_startproc
	pushl	%ebp
LCFI39:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI40:
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	.loc 1 305 0
	movl	$0, -12(%ebp)
	.loc 1 306 0
	movl	$0, -16(%ebp)
	.loc 1 307 0
	movl	$0, -20(%ebp)
	.loc 1 312 0
	movl	$LC30, (%esp)
	call	_printf
	.loc 1 315 0
	cmpl	$0, 8(%ebp)
	jne	L64
	.loc 1 316 0
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC31, (%esp)
	call	_fwrite
	.loc 1 317 0
	movl	$1, (%esp)
	call	_exit
L64:
	.loc 1 320 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	L65
L69:
	.loc 1 322 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 324 0
	movl	$0, -28(%ebp)
L68:
	.loc 1 326 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	movl	%eax, %ebx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_dado
	cmpl	%eax, %ebx
	jbe	L66
	.loc 1 327 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
L66:
	.loc 1 328 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	testl	%eax, %eax
	je	L67
	.loc 1 329 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_proximo
	movl	%eax, -12(%ebp)
L67:
	.loc 1 330 0
	incl	-28(%ebp)
	.loc 1 331 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	L68
	.loc 1 332 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_swap_no
	.loc 1 334 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_imprime_lista
	.loc 1 336 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obtem_anterior
	movl	%eax, -20(%ebp)
	.loc 1 321 0
	decl	-24(%ebp)
L65:
	.loc 1 321 0 is_stmt 0 discriminator 1
	cmpl	$1, -24(%ebp)
	jg	L69
	.loc 1 338 0 is_stmt 1
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
LCFI41:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.file 3 "C:/Users/Casa/Documents/Gustavo/g/grafos/no.h"
	.file 4 "C:/Users/Casa/Documents/Gustavo/g/grafos/lista_enc.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x5d9
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\Users\\Casa\\Documents\\Gustavo\\g\\grafos\\lista_enc.c\0"
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
	.long	0x11f
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x80
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x88
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
	.long	0x16e
	.uleb128 0x7
	.ascii "nos\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "lista_enc_t\0"
	.byte	0x4
	.byte	0x6
	.long	0x187
	.uleb128 0x3
	.ascii "listas_enc\0"
	.byte	0xc
	.byte	0x1
	.byte	0xa
	.long	0x1ce
	.uleb128 0x4
	.ascii "cabeca\0"
	.byte	0x1
	.byte	0xb
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "cauda\0"
	.byte	0x1
	.byte	0xc
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "tamanho\0"
	.byte	0x1
	.byte	0xd
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x162
	.uleb128 0x8
	.byte	0x1
	.ascii "cria_lista_enc\0"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	0x20a
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x20a
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x13
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x174
	.uleb128 0x8
	.byte	0x1
	.ascii "obter_cabeca\0"
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	0x1ce
	.long	LFB7
	.long	LFE7
	.secrel32	LLST1
	.byte	0x1
	.long	0x246
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0x21
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "obter_tamanho\0"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.long	0x125
	.long	LFB8
	.long	LFE8
	.secrel32	LLST2
	.byte	0x1
	.long	0x27d
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0x2a
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "add_cauda\0"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	LFB9
	.long	LFE9
	.secrel32	LLST3
	.byte	0x1
	.long	0x2ba
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0x32
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.secrel32	LASF1
	.byte	0x1
	.byte	0x32
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "add_cabeca\0"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	LFB10
	.long	LFE10
	.secrel32	LLST4
	.byte	0x1
	.long	0x2f8
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0x56
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.secrel32	LASF1
	.byte	0x1
	.byte	0x56
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "rem_elemento\0"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	LFB11
	.long	LFE11
	.secrel32	LLST5
	.byte	0x1
	.long	0x353
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0x78
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "index\0"
	.byte	0x1
	.byte	0x78
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0x7a
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "i\0"
	.byte	0x1
	.byte	0x7b
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "posicao\0"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x125
	.long	LFB12
	.long	LFE12
	.secrel32	LLST6
	.byte	0x1
	.long	0x3af
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0xa5
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.secrel32	LASF1
	.byte	0x1
	.byte	0xa5
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0xa7
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "index\0"
	.byte	0x1
	.byte	0xa8
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "tamanho_enc\0"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.long	0x125
	.long	LFB13
	.long	LFE13
	.secrel32	LLST7
	.byte	0x1
	.long	0x3e4
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0xbe
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii "lista_vazia\0"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.long	0x125
	.long	LFB14
	.long	LFE14
	.secrel32	LLST8
	.byte	0x1
	.long	0x419
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0xc6
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "imprime_lista\0"
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.long	LFB15
	.long	LFE15
	.secrel32	LLST9
	.byte	0x1
	.long	0x459
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0xd0
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0xd2
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "imprime_lista_tras\0"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.long	LFB16
	.long	LFE16
	.secrel32	LLST10
	.byte	0x1
	.long	0x49e
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0xe4
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0xe6
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "libera_lista\0"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	LFB17
	.long	LFE17
	.secrel32	LLST11
	.byte	0x1
	.long	0x4ef
	.uleb128 0xa
	.secrel32	LASF0
	.byte	0x1
	.byte	0xf7
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "no\0"
	.byte	0x1
	.byte	0xf9
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "proximo\0"
	.byte	0x1
	.byte	0xfa
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii "bubble_sort\0"
	.byte	0x1
	.word	0x112
	.byte	0x1
	.long	LFB18
	.long	LFE18
	.secrel32	LLST12
	.byte	0x1
	.long	0x54a
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.word	0x112
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "no\0"
	.byte	0x1
	.word	0x114
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii "i\0"
	.byte	0x1
	.word	0x116
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.ascii "j\0"
	.byte	0x1
	.word	0x116
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.ascii "select_sort\0"
	.byte	0x1
	.word	0x12f
	.byte	0x1
	.long	LFB19
	.long	LFE19
	.secrel32	LLST13
	.byte	0x1
	.long	0x5c3
	.uleb128 0xe
	.secrel32	LASF0
	.byte	0x1
	.word	0x12f
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii "no\0"
	.byte	0x1
	.word	0x131
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii "max\0"
	.byte	0x1
	.word	0x132
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.ascii "fim\0"
	.byte	0x1
	.word	0x133
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.ascii "i\0"
	.byte	0x1
	.word	0x135
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.ascii "j\0"
	.byte	0x1
	.word	0x135
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.long	0x12c
	.long	0x5ce
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x5c3
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
LLST13:
	.long	LFB19-Ltext0
	.long	LCFI39-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI39-Ltext0
	.long	LCFI40-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI40-Ltext0
	.long	LCFI41-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI41-Ltext0
	.long	LFE19-Ltext0
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
	.ascii "lista\0"
LASF1:
	.ascii "elemento\0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_desliga_no;	.scl	2;	.type	32;	.endef
	.def	_liga_nos;	.scl	2;	.type	32;	.endef
	.def	_obtem_proximo;	.scl	2;	.type	32;	.endef
	.def	_obtem_anterior;	.scl	2;	.type	32;	.endef
	.def	_obtem_dado;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_swap_no;	.scl	2;	.type	32;	.endef
