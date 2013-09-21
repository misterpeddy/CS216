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
.globl __Z12passIntValuePi
	.def	__Z12passIntValuePi;	.scl	2;	.type	32;	.endef
__Z12passIntValuePi:
	push	ebp
	mov	ebp, esp
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+8]
	add	eax, 16
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-4], eax
	leave
	ret
	.align 2
.globl __Z10passIntRefRPi
	.def	__Z10passIntRefRPi;	.scl	2;	.type	32;	.endef
__Z10passIntRefRPi:
	push	ebp
	mov	ebp, esp
	sub	esp, 4
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	add	eax, 16
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-4], eax
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I__Z12passIntValuePi
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D__Z12passIntValuePi
	.def	__ZNKSsixEj;	.scl	3;	.type	32;	.endef
	.def	__ZNKSs4sizeEv;	.scl	3;	.type	32;	.endef
	.def	__ZSt3minIjERKT_S2_S2_;	.scl	3;	.type	32;	.endef
