	.file	"test.cpp"
	.intel_syntax
	.text
	.align 2
	.def	__ZSt17__verify_groupingPKcjRKSs;	.scl	3;	.type	32;	.endef
__ZSt17__verify_groupingPKcjRKSs:
	push	ebp
	mov	ebp, esp
	sub	esp, 40
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp], eax
	call	__ZNKSs4sizeEv
	dec	eax
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+12]
	dec	eax
	mov	DWORD PTR [ebp-12], eax
	lea	eax, [ebp-12]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [ebp-4]
	mov	DWORD PTR [esp], eax
	call	__ZSt3minIjERKT_S2_S2_
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [ebp-16], eax
	mov	BYTE PTR [ebp-17], 1
	mov	DWORD PTR [ebp-24], 0
L2:
	mov	eax, DWORD PTR [ebp-24]
	cmp	eax, DWORD PTR [ebp-8]
	jae	L5
	cmp	BYTE PTR [ebp-17], 0
	je	L5
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp], eax
	call	__ZNKSsixEj
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp-24]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, eax
	movzx	eax, BYTE PTR [ecx]
	cmp	al, BYTE PTR [edx]
	sete	al
	mov	BYTE PTR [ebp-17], al
	lea	eax, [ebp-16]
	dec	DWORD PTR [eax]
	lea	eax, [ebp-24]
	inc	DWORD PTR [eax]
	jmp	L2
L5:
	cmp	DWORD PTR [ebp-16], 0
	je	L6
	cmp	BYTE PTR [ebp-17], 0
	je	L6
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp], eax
	call	__ZNKSsixEj
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, eax
	movzx	eax, BYTE PTR [ecx]
	cmp	al, BYTE PTR [edx]
	sete	al
	mov	BYTE PTR [ebp-17], al
	lea	eax, [ebp-16]
	dec	DWORD PTR [eax]
	jmp	L5
L6:
	mov	DWORD PTR [esp+4], 0
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp], eax
	call	__ZNKSsixEj
	mov	ecx, eax
	mov	eax, DWORD PTR [ebp-8]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, eax
	movzx	eax, BYTE PTR [ecx]
	cmp	al, BYTE PTR [edx]
	jg	L8
	movzx	eax, BYTE PTR [ebp-17]
	and	eax, 1
	mov	BYTE PTR [ebp-25], al
	jmp	L9
L8:
	mov	BYTE PTR [ebp-25], 0
L9:
	movzx	eax, BYTE PTR [ebp-25]
	mov	BYTE PTR [ebp-17], al
	movzx	eax, BYTE PTR [ebp-17]
	leave
	ret
.lcomm __ZSt8__ioinit,16
	.align 2
.globl __Z12passIntValuei
	.def	__Z12passIntValuei;	.scl	2;	.type	32;	.endef
__Z12passIntValuei:
	push	ebp
	mov	ebp, esp
	mov	DWORD PTR [ebp+8], 0
	pop	ebp
	ret
	.align 2
.globl __Z10passIntRefRi
	.def	__Z10passIntRefRi;	.scl	2;	.type	32;	.endef
__Z10passIntRefRi:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], 0
	pop	ebp
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.align 2
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	and	esp, -16
	mov	eax, 0
	add	eax, 15
	add	eax, 15
	shr	eax, 4
	sal	eax, 4
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	call	__alloca
	call	___main
	mov	DWORD PTR [ebp-4], 0
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [esp], eax
	call	__Z12passIntValuei
	lea	eax, [ebp-4]
	mov	DWORD PTR [esp], eax
	call	__Z10passIntRefRi
	mov	eax, 0
	leave
	ret
	.section	.text$_ZSt3minIjERKT_S2_S2_,"x"
	.linkonce discard
	.align 2
.globl __ZSt3minIjERKT_S2_S2_
	.def	__ZSt3minIjERKT_S2_S2_;	.scl	2;	.type	32;	.endef
__ZSt3minIjERKT_S2_S2_:
	push	ebp
	mov	ebp, esp
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	cmp	eax, DWORD PTR [edx]
	jae	L14
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	jmp	L13
L14:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
L13:
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.text
	.align 2
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	cmp	DWORD PTR [ebp+12], 65535
	jne	L16
	cmp	DWORD PTR [ebp+8], 1
	jne	L16
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt8__ioinit
	call	__ZNSt8ios_base4InitC1Ev
L16:
	cmp	DWORD PTR [ebp+12], 65535
	jne	L15
	cmp	DWORD PTR [ebp+8], 0
	jne	L15
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt8__ioinit
	call	__ZNSt8ios_base4InitD1Ev
L15:
	leave
	ret
	.align 2
	.def	__GLOBAL__I__Z12passIntValuei;	.scl	3;	.type	32;	.endef
__GLOBAL__I__Z12passIntValuei:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [esp+4], 65535
	mov	DWORD PTR [esp], 1
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	ret
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I__Z12passIntValuei
	.text
	.align 2
	.def	__GLOBAL__D__Z12passIntValuei;	.scl	3;	.type	32;	.endef
__GLOBAL__D__Z12passIntValuei:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [esp+4], 65535
	mov	DWORD PTR [esp], 0
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	ret
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D__Z12passIntValuei
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNKSsixEj;	.scl	3;	.type	32;	.endef
	.def	__ZNKSs4sizeEv;	.scl	3;	.type	32;	.endef
	.def	__ZSt3minIjERKT_S2_S2_;	.scl	3;	.type	32;	.endef
