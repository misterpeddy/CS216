	.file	"testDispatch.cpp"
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
	.def	___main;	.scl	2;	.type	32;	.endef
	.align 2
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	push	ebx
	sub	esp, 84
	and	esp, -16
	mov	eax, 0
	add	eax, 15
	add	eax, 15
	shr	eax, 4
	sal	eax, 4
	mov	DWORD PTR [ebp-60], eax
	mov	eax, DWORD PTR [ebp-60]
	call	__alloca
	call	___main
	lea	eax, [ebp-24]
	mov	DWORD PTR [esp], eax
	call	__ZN5AlphaC1Ev
	lea	eax, [ebp-24]
	mov	DWORD PTR [esp], eax
	call	__ZN5Alpha5printEv
	lea	eax, [ebp-24]
	mov	DWORD PTR [esp], eax
	call	__ZN5Alpha9printCharEv
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZN4BetaC1Ev
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZN4Beta5printEv
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZN4Beta9printCharEv
	mov	DWORD PTR [esp], 4
	call	__Znwj
	mov	ebx, eax
	mov	DWORD PTR [esp], ebx
	call	__ZN4BetaC1Ev
L11:
	mov	eax, ebx
	mov	DWORD PTR [ebp-44], eax
	mov	eax, DWORD PTR [ebp-44]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-44]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [edx]
	call	eax
	mov	eax, DWORD PTR [ebp-44]
	mov	edx, DWORD PTR [eax]
	add	edx, 4
	mov	eax, DWORD PTR [ebp-44]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [edx]
	call	eax
	mov	eax, 0
L10:
	mov	ebx, DWORD PTR [ebp-4]
	leave
	ret
	.section	.text$_ZN4Beta9printCharEv,"x"
	.linkonce discard
	.align 2
.globl __ZN4Beta9printCharEv
	.def	__ZN4Beta9printCharEv;	.scl	2;	.type	32;	.endef
__ZN4Beta9printCharEv:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [esp+4], 66
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	leave
	ret
	.section .rdata,"dr"
LC0:
	.ascii "This is a beta object.\0"
	.section	.text$_ZN4Beta5printEv,"x"
	.linkonce discard
	.align 2
.globl __ZN4Beta5printEv
	.def	__ZN4Beta5printEv;	.scl	2;	.type	32;	.endef
__ZN4Beta5printEv:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	leave
	ret
	.section	.text$_ZN4BetaC1Ev,"x"
	.linkonce discard
	.align 2
.globl __ZN4BetaC1Ev
	.def	__ZN4BetaC1Ev;	.scl	2;	.type	32;	.endef
__ZN4BetaC1Ev:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__ZN5AlphaC2Ev
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:__ZTV4Beta+8
	leave
	ret
L16:
L15:
	.section	.text$_ZN5AlphaC2Ev,"x"
	.linkonce discard
	.align 2
.globl __ZN5AlphaC2Ev
	.def	__ZN5AlphaC2Ev;	.scl	2;	.type	32;	.endef
__ZN5AlphaC2Ev:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:__ZTV5Alpha+8
	pop	ebp
	ret
L19:
L18:
	.section	.text$_ZN5Alpha9printCharEv,"x"
	.linkonce discard
	.align 2
.globl __ZN5Alpha9printCharEv
	.def	__ZN5Alpha9printCharEv;	.scl	2;	.type	32;	.endef
__ZN5Alpha9printCharEv:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [esp+4], 65
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	leave
	ret
	.section .rdata,"dr"
LC1:
	.ascii "This is an alpha object.\0"
	.section	.text$_ZN5Alpha5printEv,"x"
	.linkonce discard
	.align 2
.globl __ZN5Alpha5printEv
	.def	__ZN5Alpha5printEv;	.scl	2;	.type	32;	.endef
__ZN5Alpha5printEv:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC1
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	leave
	ret
	.section	.text$_ZN5AlphaC1Ev,"x"
	.linkonce discard
	.align 2
.globl __ZN5AlphaC1Ev
	.def	__ZN5AlphaC1Ev;	.scl	2;	.type	32;	.endef
__ZN5AlphaC1Ev:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:__ZTV5Alpha+8
	pop	ebp
	ret
L24:
L23:
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
	jae	L27
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	jmp	L26
L27:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
L26:
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
.globl __ZTV4Beta
	.section	.rdata$_ZTV4Beta,"dr"
	.linkonce same_size
	.align 8
__ZTV4Beta:
	.long	0
	.long	__ZTI4Beta
	.long	__ZN4Beta5printEv
	.long	__ZN4Beta9printCharEv
.globl __ZTV5Alpha
	.section	.rdata$_ZTV5Alpha,"dr"
	.linkonce same_size
	.align 8
__ZTV5Alpha:
	.long	0
	.long	__ZTI5Alpha
	.long	__ZN5Alpha5printEv
	.long	__ZN5Alpha9printCharEv
	.text
	.align 2
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	cmp	DWORD PTR [ebp+12], 65535
	jne	L29
	cmp	DWORD PTR [ebp+8], 1
	jne	L29
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt8__ioinit
	call	__ZNSt8ios_base4InitC1Ev
L29:
	cmp	DWORD PTR [ebp+12], 65535
	jne	L28
	cmp	DWORD PTR [ebp+8], 0
	jne	L28
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt8__ioinit
	call	__ZNSt8ios_base4InitD1Ev
L28:
	leave
	ret
.globl __ZTI5Alpha
	.section	.rdata$_ZTI5Alpha,"dr"
	.linkonce same_size
	.align 4
__ZTI5Alpha:
	.long	__ZTVN10__cxxabiv117__class_type_infoE+8
	.long	__ZTS5Alpha
.globl __ZTI4Beta
	.section	.rdata$_ZTI4Beta,"dr"
	.linkonce same_size
	.align 4
__ZTI4Beta:
	.long	__ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	__ZTS4Beta
	.long	__ZTI5Alpha
.globl __ZTS5Alpha
	.section	.rdata$_ZTS5Alpha,"dr"
	.linkonce same_size
__ZTS5Alpha:
	.ascii "5Alpha\0"
.globl __ZTS4Beta
	.section	.rdata$_ZTS4Beta,"dr"
	.linkonce same_size
__ZTS4Beta:
	.ascii "4Beta\0"
	.text
	.align 2
	.def	__GLOBAL__I_main;	.scl	3;	.type	32;	.endef
__GLOBAL__I_main:
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
	.long	__GLOBAL__I_main
	.text
	.align 2
	.def	__GLOBAL__D_main;	.scl	3;	.type	32;	.endef
__GLOBAL__D_main:
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
	.long	__GLOBAL__D_main
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	3;	.type	32;	.endef
	.def	__Znwj;	.scl	3;	.type	32;	.endef
	.def	__ZN4BetaC1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZN5AlphaC1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	3;	.type	32;	.endef
	.def	__ZNSolsEPFRSoS_E;	.scl	3;	.type	32;	.endef
	.def	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	3;	.type	32;	.endef
	.def	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	3;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNKSsixEj;	.scl	3;	.type	32;	.endef
	.def	__ZNKSs4sizeEv;	.scl	3;	.type	32;	.endef
	.def	__ZSt3minIjERKT_S2_S2_;	.scl	3;	.type	32;	.endef
