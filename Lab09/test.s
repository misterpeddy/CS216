	.file	"test.cpp"
	.intel_syntax
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I__Z6getOnev
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D__Z6getOnev
.lcomm __ZSt8__ioinit,16
	.text
	.align 2
	.p2align 4,,15
.globl __Z6getOnev
	.def	__Z6getOnev;	.scl	2;	.type	32;	.endef
__Z6getOnev:
	push	ebp
	mov	eax, 1
	mov	ebp, esp
	pop	ebp
	ret
	.align 2
	.p2align 4,,15
.globl __Z6getTwov
	.def	__Z6getTwov;	.scl	2;	.type	32;	.endef
__Z6getTwov:
	push	ebp
	mov	eax, 2
	mov	ebp, esp
	pop	ebp
	ret
	.align 2
	.p2align 4,,15
.globl __Z8getThreev
	.def	__Z8getThreev;	.scl	2;	.type	32;	.endef
__Z8getThreev:
	push	ebp
	mov	eax, 3
	mov	ebp, esp
	pop	ebp
	ret
	.align 2
	.p2align 4,,15
.globl __Z7getFourv
	.def	__Z7getFourv;	.scl	2;	.type	32;	.endef
__Z7getFourv:
	push	ebp
	mov	eax, 4
	mov	ebp, esp
	pop	ebp
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.align 2
	.p2align 4,,15
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	eax, 16
	mov	ebp, esp
	sub	esp, 8
	and	esp, -16
	call	__alloca
	call	___main
	call	__Z6getOnev
	mov	edx, eax
	mov	eax, DWORD PTR __ZSt4cout
	mov	eax, DWORD PTR [eax-12]
	add	eax, OFFSET FLAT:__ZSt4cout
	mov	eax, DWORD PTR [eax+12]
	test	al, 64
	jne	L41
	test	al, 8
	je	L40
L41:
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZNSolsEm
L44:
	mov	DWORD PTR [esp], eax
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	call	__Z6getTwov
	mov	edx, eax
	mov	eax, DWORD PTR __ZSt4cout
	mov	eax, DWORD PTR [eax-12]
	add	eax, OFFSET FLAT:__ZSt4cout
	mov	eax, DWORD PTR [eax+12]
	test	al, 64
	jne	L50
	test	al, 8
	je	L49
L50:
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZNSolsEm
L53:
	mov	DWORD PTR [esp], eax
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	call	__Z8getThreev
	mov	edx, eax
	mov	eax, DWORD PTR __ZSt4cout
	mov	eax, DWORD PTR [eax-12]
	add	eax, OFFSET FLAT:__ZSt4cout
	mov	eax, DWORD PTR [eax+12]
	test	al, 64
	jne	L59
	test	al, 8
	je	L58
L59:
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZNSolsEm
L62:
	mov	DWORD PTR [esp], eax
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	call	__Z7getFourv
	mov	edx, eax
	mov	eax, DWORD PTR __ZSt4cout
	mov	eax, DWORD PTR [eax-12]
	add	eax, OFFSET FLAT:__ZSt4cout
	mov	eax, DWORD PTR [eax+12]
	test	al, 64
	jne	L68
	test	al, 8
	je	L67
L68:
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZNSolsEm
	mov	DWORD PTR [esp], eax
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	leave
	xor	eax, eax
	ret
	.p2align 4,,7
L40:
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZNSolsEl
	jmp	L44
	.p2align 4,,7
L49:
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZNSolsEl
	jmp	L53
	.p2align 4,,7
L58:
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZNSolsEl
	jmp	L62
	.p2align 4,,7
L67:
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZNSolsEl
	mov	DWORD PTR [esp], eax
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	leave
	xor	eax, eax
	ret
	.align 2
	.p2align 4,,15
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	DWORD PTR [ebp-8], ebx
	cmp	edx, 65535
	sete	bl
	mov	DWORD PTR [ebp-4], esi
	cmp	eax, 1
	mov	esi, eax
	sete	al
	test	bl, al
	jne	L78
	test	esi, esi
	sete	al
	test	bl, al
	jne	L79
L75:
	mov	ebx, DWORD PTR [ebp-8]
	mov	esi, DWORD PTR [ebp-4]
	mov	esp, ebp
	pop	ebp
	ret
	.p2align 4,,7
L78:
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt8__ioinit
	call	__ZNSt8ios_base4InitC1Ev
	test	esi, esi
	sete	al
	test	bl, al
	je	L75
	.p2align 4,,15
L79:
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt8__ioinit
	call	__ZNSt8ios_base4InitD1Ev
	mov	ebx, DWORD PTR [ebp-8]
	mov	esi, DWORD PTR [ebp-4]
	mov	esp, ebp
	pop	ebp
	ret
	.align 2
	.p2align 4,,15
	.def	__GLOBAL__I__Z6getOnev;	.scl	3;	.type	32;	.endef
__GLOBAL__I__Z6getOnev:
	push	ebp
	mov	edx, 65535
	mov	ebp, esp
	pop	ebp
	mov	eax, 1
	jmp	__Z41__static_initialization_and_destruction_0ii
	.align 2
	.p2align 4,,15
	.def	__GLOBAL__D__Z6getOnev;	.scl	3;	.type	32;	.endef
__GLOBAL__D__Z6getOnev:
	push	ebp
	mov	edx, 65535
	mov	ebp, esp
	pop	ebp
	xor	eax, eax
	jmp	__Z41__static_initialization_and_destruction_0ii
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNSolsEl;	.scl	3;	.type	32;	.endef
	.def	__ZNSolsEm;	.scl	3;	.type	32;	.endef
	.def	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	3;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	3;	.type	32;	.endef
