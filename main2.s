	.file	"main2.c"
	.text
	.globl	_construct_node
	.def	_construct_node;	.scl	2;	.type	32;	.endef
_construct_node:
LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$16, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_destruct_node
	.def	_destruct_node;	.scl	2;	.type	32;	.endef
_destruct_node:
LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	L4
L5:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	movl	%eax, 8(%ebp)
L4:
	cmpl	$0, -12(%ebp)
	jne	L5
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_construct_movie
	.def	_construct_movie;	.scl	2;	.type	32;	.endef
_construct_movie:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$236, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %eax
	movl	%eax, -232(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-232(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_strcpy
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, %ebx
	leal	-232(%ebp), %eax
	movl	$52, %edx
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	%edx, %ecx
	rep movsl
	movl	8(%ebp), %eax
	addl	$236, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_construct_actor
	.def	_construct_actor;	.scl	2;	.type	32;	.endef
_construct_actor:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1036, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %eax
	movl	%eax, -1032(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-1032(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_strcpy
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, %ebx
	leal	-1032(%ebp), %eax
	movl	$252, %edx
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	%edx, %ecx
	rep movsl
	movl	8(%ebp), %eax
	addl	$1036, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_construct_array_actors
	.def	_construct_array_actors;	.scl	2;	.type	32;	.endef
_construct_array_actors:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_add_array_actors
	.def	_add_array_actors;	.scl	2;	.type	32;	.endef
_add_array_actors:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmpl	$0, 8(%ebp)
	je	L17
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L15
	movl	8(%ebp), %eax
	movl	$2, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	imull	$1008, %eax, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
L15:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	L16
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	imull	$1008, %eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 8(%eax)
L16:
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	imull	$1008, %eax, %eax
	addl	%ebx, %eax
	movl	%eax, %ebx
	leal	12(%ebp), %eax
	movl	$252, %edx
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	%edx, %ecx
	rep movsl
	jmp	L12
L17:
	nop
L12:
	addl	$44, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.globl	_destruct_array_actors
	.def	_destruct_array_actors;	.scl	2;	.type	32;	.endef
_destruct_array_actors:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L19
L20:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$1008, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$1008, %eax, %eax
	addl	%edx, %eax
	movl	1004(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	addl	$1, -12(%ebp)
L19:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L20
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.globl	_construct_array_movie
	.def	_construct_array_movie;	.scl	2;	.type	32;	.endef
_construct_array_movie:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.globl	_add_array_movies
	.def	_add_array_movies;	.scl	2;	.type	32;	.endef
_add_array_movies:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmpl	$0, 8(%ebp)
	je	L28
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L26
	movl	8(%ebp), %eax
	movl	$2, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	imull	$208, %eax, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
L26:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	L27
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	imull	$208, %eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
L27:
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, (%edx)
	imull	$208, %eax, %eax
	addl	%ebx, %eax
	movl	%eax, %ebx
	leal	12(%ebp), %eax
	movl	$52, %edx
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	%edx, %ecx
	rep movsl
	jmp	L23
L28:
	nop
L23:
	addl	$28, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.globl	_destruct_array_movies
	.def	_destruct_array_movies;	.scl	2;	.type	32;	.endef
_destruct_array_movies:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L30
L31:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$208, %eax, %eax
	addl	%edx, %eax
	movl	204(%eax), %eax
	movl	%eax, (%esp)
	call	_destruct_node
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$208, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_free
	addl	$1, -12(%ebp)
L30:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L31
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.globl	_actor_split_buffer
	.def	_actor_split_buffer;	.scl	2;	.type	32;	.endef
_actor_split_buffer:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$10, (%esp)
	call	_malloc
	movl	%eax, -20(%ebp)
	movl	$100, (%esp)
	call	_malloc
	movl	%eax, -24(%ebp)
	movl	$100, (%esp)
	call	_malloc
	movl	%eax, -28(%ebp)
	jmp	L33
L35:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L33:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L34
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	jne	L35
L34:
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-20(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	addl	$1, 8(%ebp)
	movl	$0, -12(%ebp)
	jmp	L36
L38:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L36:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L37
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	jne	L38
L37:
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	16(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	addl	$1, 8(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L39
L42:
	addl	$1, 8(%ebp)
L40:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L41
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	jne	L42
L41:
	addl	$1, 8(%ebp)
	addl	$1, -16(%ebp)
L39:
	cmpl	$2, -16(%ebp)
	jle	L40
	jmp	L44
L46:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L44:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L45
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	jne	L46
L45:
	movl	-12(%ebp), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	20(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.globl	_movie_split_buffer
	.def	_movie_split_buffer;	.scl	2;	.type	32;	.endef
_movie_split_buffer:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$100, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	movl	$10, (%esp)
	call	_malloc
	movl	%eax, -20(%ebp)
	movl	$100, (%esp)
	call	_malloc
	movl	%eax, -24(%ebp)
	movl	$0, -12(%ebp)
	jmp	L48
L50:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L48:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L49
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	jne	L50
L49:
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-20(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	addl	$1, 8(%ebp)
	movl	$0, -12(%ebp)
	jmp	L51
L53:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L51:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L52
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	jne	L53
L52:
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	16(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	addl	$1, 8(%ebp)
	movl	$0, -12(%ebp)
	jmp	L54
L56:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L54:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L55
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	jne	L56
L55:
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.globl	_split_movies
	.def	_split_movies;	.scl	2;	.type	32;	.endef
_split_movies:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$10, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	L58
L60:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L58:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L59
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	L60
L59:
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-16(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	addl	$1, 8(%ebp)
	movl	$0, -12(%ebp)
	jmp	L61
L63:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L61:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L62
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	L63
L62:
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-16(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	addl	$1, 8(%ebp)
	movl	$0, -12(%ebp)
	jmp	L64
L66:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L64:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L65
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	L66
L65:
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-16(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	addl	$1, 8(%ebp)
	movl	$0, -12(%ebp)
	jmp	L67
L69:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L67:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L68
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	L69
L68:
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-16(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	addl	$1, 8(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.globl	_binary_search_movies
	.def	_binary_search_movies;	.scl	2;	.type	32;	.endef
_binary_search_movies:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	L71
L75:
	movl	-8(%ebp), %eax
	subl	-4(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$208, %eax, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	L72
	movl	-12(%ebp), %eax
	jmp	L73
L72:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$208, %eax, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jge	L74
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -4(%ebp)
L74:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$208, %eax, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jle	L71
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
L71:
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jle	L75
	movl	$-1, %eax
L73:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	_split_buffer
	.def	_split_buffer;	.scl	2;	.type	32;	.endef
_split_buffer:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	16(%ebp), %eax
	movb	%al, -20(%ebp)
	movl	$0, -4(%ebp)
	jmp	L77
L79:
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -4(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
L77:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L78
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	-20(%ebp), %al
	je	L78
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	L79
L78:
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -4(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "r\0"
LC1:
	.ascii "title.basics.tsv\0"
LC2:
	.ascii "\12%i\0"
LC3:
	.ascii "name.basics2.tsv\0"
LC4:
	.ascii "\12%i \0"
LC5:
	.ascii "%i\0"
LC6:
	.ascii "\12Sucesso\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	andl	$-16, %esp
	movl	$4512, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	call	___main
	call	_construct_array_movie
	movl	%eax, 4496(%esp)
	call	_construct_array_actors
	movl	%eax, 4492(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_fopen
	movl	%eax, 4488(%esp)
	movl	4488(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$99, 4(%esp)
	leal	3448(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	movl	$0, 4484(%esp)
	jmp	L82
L83:
	movl	$9, 8(%esp)
	leal	2448(%esp), %eax
	movl	%eax, 4(%esp)
	leal	3448(%esp), %eax
	movl	%eax, (%esp)
	call	_split_buffer
	movl	%eax, 4508(%esp)
	leal	2448(%esp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, 4480(%esp)
	leal	3448(%esp), %edx
	movl	4508(%esp), %eax
	addl	%eax, %edx
	movl	$9, 8(%esp)
	leal	1448(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_split_buffer
	addl	%eax, 4508(%esp)
	movzbl	1448(%esp), %eax
	cmpb	$109, %al
	jne	L82
	movzbl	1449(%esp), %eax
	cmpb	$111, %al
	jne	L82
	movzbl	1450(%esp), %eax
	cmpb	$118, %al
	jne	L82
	movzbl	1451(%esp), %eax
	cmpb	$105, %al
	jne	L82
	movzbl	1452(%esp), %eax
	cmpb	$101, %al
	jne	L82
	leal	3448(%esp), %edx
	movl	4508(%esp), %eax
	addl	%eax, %edx
	movl	$9, 8(%esp)
	leal	448(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_split_buffer
	leal	224(%esp), %eax
	movl	$0, 12(%esp)
	leal	448(%esp), %edx
	movl	%edx, 8(%esp)
	movl	4480(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_construct_movie
	leal	4(%esp), %eax
	leal	224(%esp), %edx
	movl	$52, %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	rep movsl
	movl	4496(%esp), %eax
	movl	%eax, (%esp)
	call	_add_array_movies
L82:
	movl	4488(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$1024, 4(%esp)
	leal	3448(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	testl	%eax, %eax
	jne	L83
	movl	4496(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	4488(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$LC0, 4(%esp)
	movl	$LC3, (%esp)
	call	_fopen
	movl	%eax, 4488(%esp)
	movl	4488(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$99, 4(%esp)
	leal	3448(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	jmp	L84
L92:
	movl	$9, 8(%esp)
	leal	2448(%esp), %eax
	movl	%eax, 4(%esp)
	leal	3448(%esp), %eax
	movl	%eax, (%esp)
	call	_split_buffer
	movl	%eax, 4508(%esp)
	leal	2448(%esp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, 4476(%esp)
	leal	3448(%esp), %edx
	movl	4508(%esp), %eax
	addl	%eax, %edx
	movl	$9, 8(%esp)
	leal	448(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_split_buffer
	addl	%eax, 4508(%esp)
	movl	$0, 4504(%esp)
	jmp	L85
L86:
	leal	3448(%esp), %edx
	movl	4508(%esp), %eax
	addl	%eax, %edx
	movl	$9, 8(%esp)
	leal	2448(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_split_buffer
	addl	%eax, 4508(%esp)
	addl	$1, 4504(%esp)
L85:
	cmpl	$3, 4504(%esp)
	jle	L86
	movl	$0, 4508(%esp)
	movl	$10, (%esp)
	call	_putchar
	movl	$0, 4500(%esp)
	jmp	L87
L91:
	leal	2448(%esp), %edx
	movl	4508(%esp), %eax
	addl	%eax, %edx
	movl	$44, 8(%esp)
	leal	224(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_split_buffer
	addl	%eax, 4508(%esp)
	leal	224(%esp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, 4472(%esp)
	cmpl	$0, 4500(%esp)
	je	L88
	movl	4500(%esp), %eax
	movl	432(%esp,%eax,4), %eax
	cmpl	4472(%esp), %eax
	je	L94
L88:
	movl	4500(%esp), %eax
	movl	4472(%esp), %edx
	movl	%edx, 432(%esp,%eax,4)
	movl	4500(%esp), %eax
	movl	432(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	4496(%esp), %eax
	movl	%eax, (%esp)
	call	_binary_search_movies
	movl	%eax, 4472(%esp)
	movl	4500(%esp), %eax
	movl	432(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	cmpl	$0, 4472(%esp)
	js	L90
	movl	4496(%esp), %eax
	movl	8(%eax), %edx
	movl	4472(%esp), %eax
	imull	$208, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
L90:
	addl	$1, 4500(%esp)
L87:
	cmpl	$3, 4500(%esp)
	jle	L91
	jmp	L84
L94:
	nop
L84:
	movl	4488(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$1024, 4(%esp)
	leal	3448(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	testl	%eax, %eax
	jne	L92
	movl	4492(%esp), %eax
	movl	%eax, (%esp)
	call	_destruct_array_actors
	movl	4496(%esp), %eax
	movl	%eax, (%esp)
	call	_destruct_array_movies
	movl	$LC6, (%esp)
	call	_printf
	movl	$1, %eax
	leal	-8(%ebp), %esp
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_atoi;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
