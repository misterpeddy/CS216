	.file	"lifecycle.cpp"
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
	.def	__Unwind_SjLj_Resume;	.scl	2;	.type	32;	.endef
	.def	___gxx_personality_sj0;	.scl	2;	.type	32;	.endef
	.def	__Unwind_SjLj_Register;	.scl	2;	.type	32;	.endef
	.def	__Unwind_SjLj_Unregister;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "MyObject Default constructor: \0"
	.text
	.align 2
.globl __ZN8MyObjectC2EPKc
	.def	__ZN8MyObjectC2EPKc;	.scl	2;	.type	32;	.endef
__ZN8MyObjectC2EPKc:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 108
	mov	DWORD PTR [ebp-68], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-64], OFFSET FLAT:LLSDA1383
	lea	eax, [ebp-60]
	lea	edx, [ebp-24]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L19
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-92]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZNSaIcEC1Ev
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-88], 2
	call	__ZNSsC1EPKcRKSaIcE
	jmp	L12
L11:
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR [ebp-96], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZNSaIcED1Ev
	mov	edx, DWORD PTR [ebp-96]
	mov	DWORD PTR [ebp-100], edx
L13:
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-88], -1
	call	__Unwind_SjLj_Resume
L12:
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZNSaIcED1Ev
	mov	edx, DWORD PTR [ebp+8]
	inc	DWORD PTR __ZN8MyObject7numObjsE
	mov	eax, DWORD PTR __ZN8MyObject7numObjsE
	mov	DWORD PTR [edx+4], eax
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	mov	DWORD PTR [ebp-88], 1
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZlsRSoRK8MyObject
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	jmp	L10
L19:
	lea	ebp, [ebp+24]
	mov	eax, DWORD PTR [ebp-88]
	mov	edx, DWORD PTR [ebp-84]
	mov	DWORD PTR [ebp-100], edx
	cmp	eax, 1
	je	L11
L15:
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR [ebp-104], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-88], 0
	call	__ZNSsD1Ev
	mov	edx, DWORD PTR [ebp-104]
	mov	DWORD PTR [ebp-100], edx
L17:
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-88], -1
	call	__Unwind_SjLj_Resume
L10:
	lea	eax, [ebp-92]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	add	esp, 108
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret
	.section	.gcc_except_table,"dr"
LLSDA1383:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1383-LLSDACSB1383
LLSDACSB1383:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
LLSDACSE1383:
	.text
	.align 2
.globl __ZN8MyObjectC1EPKc
	.def	__ZN8MyObjectC1EPKc;	.scl	2;	.type	32;	.endef
__ZN8MyObjectC1EPKc:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 108
	mov	DWORD PTR [ebp-68], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-64], OFFSET FLAT:LLSDA1384
	lea	eax, [ebp-60]
	lea	edx, [ebp-24]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L29
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-92]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZNSaIcEC1Ev
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-88], 2
	call	__ZNSsC1EPKcRKSaIcE
	jmp	L22
L21:
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR [ebp-96], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZNSaIcED1Ev
	mov	edx, DWORD PTR [ebp-96]
	mov	DWORD PTR [ebp-100], edx
L23:
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-88], -1
	call	__Unwind_SjLj_Resume
L22:
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	call	__ZNSaIcED1Ev
	mov	edx, DWORD PTR [ebp+8]
	inc	DWORD PTR __ZN8MyObject7numObjsE
	mov	eax, DWORD PTR __ZN8MyObject7numObjsE
	mov	DWORD PTR [edx+4], eax
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	mov	DWORD PTR [ebp-88], 1
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZlsRSoRK8MyObject
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	jmp	L20
L29:
	lea	ebp, [ebp+24]
	mov	eax, DWORD PTR [ebp-88]
	mov	edx, DWORD PTR [ebp-84]
	mov	DWORD PTR [ebp-100], edx
	cmp	eax, 1
	je	L21
L25:
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR [ebp-104], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-88], 0
	call	__ZNSsD1Ev
	mov	edx, DWORD PTR [ebp-104]
	mov	DWORD PTR [ebp-100], edx
L27:
	mov	eax, DWORD PTR [ebp-100]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-88], -1
	call	__Unwind_SjLj_Resume
L20:
	lea	eax, [ebp-92]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	add	esp, 108
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret
	.section	.gcc_except_table,"dr"
LLSDA1384:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1384-LLSDACSB1384
LLSDACSB1384:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
LLSDACSE1384:
	.text
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "MyObject Copy constructor:    \0"
	.text
	.align 2
.globl __ZN8MyObjectC2ERKS_
	.def	__ZN8MyObjectC2ERKS_;	.scl	2;	.type	32;	.endef
__ZN8MyObjectC2ERKS_:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 76
	mov	DWORD PTR [ebp-40], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-36], OFFSET FLAT:LLSDA1386
	lea	eax, [ebp-32]
	lea	edx, [ebp-12]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L35
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-64]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-60], -1
	call	__ZNSsC1ERKSs
	mov	edx, DWORD PTR [ebp+8]
	inc	DWORD PTR __ZN8MyObject7numObjsE
	mov	eax, DWORD PTR __ZN8MyObject7numObjsE
	mov	DWORD PTR [edx+4], eax
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC1
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	mov	DWORD PTR [ebp-60], 1
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZlsRSoRK8MyObject
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	jmp	L30
L35:
	lea	ebp, [ebp+12]
	mov	eax, DWORD PTR [ebp-56]
	mov	DWORD PTR [ebp-72], eax
L31:
	mov	edx, DWORD PTR [ebp-72]
	mov	DWORD PTR [ebp-68], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-60], 0
	call	__ZNSsD1Ev
	mov	eax, DWORD PTR [ebp-68]
	mov	DWORD PTR [ebp-72], eax
L33:
	mov	edx, DWORD PTR [ebp-72]
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [ebp-60], -1
	call	__Unwind_SjLj_Resume
L30:
	lea	eax, [ebp-64]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	add	esp, 76
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret
	.section	.gcc_except_table,"dr"
LLSDA1386:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1386-LLSDACSB1386
LLSDACSB1386:
	.uleb128 0x0
	.uleb128 0x0
LLSDACSE1386:
	.text
	.align 2
.globl __ZN8MyObjectC1ERKS_
	.def	__ZN8MyObjectC1ERKS_;	.scl	2;	.type	32;	.endef
__ZN8MyObjectC1ERKS_:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 76
	mov	DWORD PTR [ebp-40], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-36], OFFSET FLAT:LLSDA1387
	lea	eax, [ebp-32]
	lea	edx, [ebp-12]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L41
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-64]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-60], -1
	call	__ZNSsC1ERKSs
	mov	edx, DWORD PTR [ebp+8]
	inc	DWORD PTR __ZN8MyObject7numObjsE
	mov	eax, DWORD PTR __ZN8MyObject7numObjsE
	mov	DWORD PTR [edx+4], eax
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC1
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	mov	DWORD PTR [ebp-60], 1
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZlsRSoRK8MyObject
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	jmp	L36
L41:
	lea	ebp, [ebp+12]
	mov	eax, DWORD PTR [ebp-56]
	mov	DWORD PTR [ebp-72], eax
L37:
	mov	edx, DWORD PTR [ebp-72]
	mov	DWORD PTR [ebp-68], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-60], 0
	call	__ZNSsD1Ev
	mov	eax, DWORD PTR [ebp-68]
	mov	DWORD PTR [ebp-72], eax
L39:
	mov	edx, DWORD PTR [ebp-72]
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [ebp-60], -1
	call	__Unwind_SjLj_Resume
L36:
	lea	eax, [ebp-64]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	add	esp, 76
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret
	.section	.gcc_except_table,"dr"
LLSDA1387:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1387-LLSDACSB1387
LLSDACSB1387:
	.uleb128 0x0
	.uleb128 0x0
LLSDACSE1387:
	.text
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "MyObject Destructor:          \0"
	.text
	.align 2
.globl __ZN8MyObjectD2Ev
	.def	__ZN8MyObjectD2Ev;	.scl	2;	.type	32;	.endef
__ZN8MyObjectD2Ev:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 76
	mov	DWORD PTR [ebp-40], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-36], OFFSET FLAT:LLSDA1389
	lea	eax, [ebp-32]
	lea	edx, [ebp-12]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L49
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-64]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC2
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	mov	DWORD PTR [ebp-60], 1
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZlsRSoRK8MyObject
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	jmp	L45
L49:
	lea	ebp, [ebp+12]
	mov	eax, DWORD PTR [ebp-56]
	mov	DWORD PTR [ebp-72], eax
L44:
	mov	edx, DWORD PTR [ebp-72]
	mov	DWORD PTR [ebp-68], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-60], 0
	call	__ZNSsD1Ev
	mov	eax, DWORD PTR [ebp-68]
	mov	DWORD PTR [ebp-72], eax
L46:
	mov	edx, DWORD PTR [ebp-72]
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [ebp-60], -1
	call	__Unwind_SjLj_Resume
L45:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-60], -1
	call	__ZNSsD1Ev
L42:
	lea	eax, [ebp-64]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	add	esp, 76
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret
	.section	.gcc_except_table,"dr"
LLSDA1389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1389-LLSDACSB1389
LLSDACSB1389:
	.uleb128 0x0
	.uleb128 0x0
LLSDACSE1389:
	.text
	.align 2
.globl __ZN8MyObjectD1Ev
	.def	__ZN8MyObjectD1Ev;	.scl	2;	.type	32;	.endef
__ZN8MyObjectD1Ev:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 76
	mov	DWORD PTR [ebp-40], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-36], OFFSET FLAT:LLSDA1390
	lea	eax, [ebp-32]
	lea	edx, [ebp-12]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L57
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-64]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC2
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt4cout
	mov	DWORD PTR [ebp-60], 1
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZlsRSoRK8MyObject
	mov	DWORD PTR [esp+4], OFFSET FLAT:__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	__ZNSolsEPFRSoS_E
	jmp	L53
L57:
	lea	ebp, [ebp+12]
	mov	eax, DWORD PTR [ebp-56]
	mov	DWORD PTR [ebp-72], eax
L52:
	mov	edx, DWORD PTR [ebp-72]
	mov	DWORD PTR [ebp-68], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-60], 0
	call	__ZNSsD1Ev
	mov	eax, DWORD PTR [ebp-68]
	mov	DWORD PTR [ebp-72], eax
L54:
	mov	edx, DWORD PTR [ebp-72]
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [ebp-60], -1
	call	__Unwind_SjLj_Resume
L53:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-60], -1
	call	__ZNSsD1Ev
L50:
	lea	eax, [ebp-64]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	add	esp, 76
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret
	.section	.gcc_except_table,"dr"
LLSDA1390:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1390-LLSDACSB1390
LLSDACSB1390:
	.uleb128 0x0
	.uleb128 0x0
LLSDACSE1390:
	.text
	.section .rdata,"dr"
LC3:
	.ascii "(\"\0"
LC4:
	.ascii "\",\0"
LC5:
	.ascii ")\0"
	.text
	.align 2
.globl __ZlsRSoRK8MyObject
	.def	__ZlsRSoRK8MyObject;	.scl	2;	.type	32;	.endef
__ZlsRSoRK8MyObject:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC3
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC4
	mov	DWORD PTR [esp], eax
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [eax+4]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZNSolsEi
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC5
	mov	DWORD PTR [esp], eax
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	ret
.globl __ZN8MyObject7numObjsE
	.bss
	.align 4
__ZN8MyObject7numObjsE:
	.space 4
.lcomm _staticObj,16
	.text
	.align 2
.globl __Z8cmpMyObj8MyObjectS_
	.def	__Z8cmpMyObj8MyObjectS_;	.scl	2;	.type	32;	.endef
__Z8cmpMyObj8MyObjectS_:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 140
	mov	DWORD PTR [ebp-84], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-80], OFFSET FLAT:LLSDA1392
	lea	eax, [ebp-76]
	lea	edx, [ebp-24]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L72
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-108]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	lea	eax, [ebp-40]
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZNK8MyObject7getNameEv
	sub	esp, 4
	lea	eax, [ebp-56]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 2
	call	__ZNK8MyObject7getNameEv
	sub	esp, 4
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 1
	call	__ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	test	al, al
	je	L60
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 2
	call	__ZNSsD1Ev
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZNSsD1Ev
	mov	DWORD PTR [ebp-112], 0
	jmp	L59
L60:
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 1
	call	__ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	test	al, al
	je	L62
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 2
	call	__ZNSsD1Ev
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZNSsD1Ev
	mov	DWORD PTR [ebp-112], -1
	jmp	L59
L62:
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 2
	call	__ZNSsD1Ev
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZNSsD1Ev
	mov	DWORD PTR [ebp-112], 1
	jmp	L59
L72:
	lea	ebp, [ebp+24]
	mov	eax, DWORD PTR [ebp-104]
	mov	edx, DWORD PTR [ebp-100]
	mov	DWORD PTR [ebp-120], edx
	cmp	eax, 1
	je	L68
L64:
	mov	eax, DWORD PTR [ebp-120]
	mov	DWORD PTR [ebp-116], eax
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 0
	call	__ZNSsD1Ev
	mov	edx, DWORD PTR [ebp-116]
	mov	DWORD PTR [ebp-120], edx
L66:
L68:
	mov	eax, DWORD PTR [ebp-120]
	mov	DWORD PTR [ebp-124], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 0
	call	__ZNSsD1Ev
	mov	edx, DWORD PTR [ebp-124]
	mov	DWORD PTR [ebp-120], edx
L70:
	mov	eax, DWORD PTR [ebp-120]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__Unwind_SjLj_Resume
L59:
	lea	eax, [ebp-108]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	mov	eax, DWORD PTR [ebp-112]
	lea	esp, [ebp-12]
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret
	.section	.gcc_except_table,"dr"
LLSDA1392:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1392-LLSDACSB1392
LLSDACSB1392:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
LLSDACSE1392:
	.text
	.section	.text$_ZNK8MyObject7getNameEv,"x"
	.linkonce discard
	.align 2
.globl __ZNK8MyObject7getNameEv
	.def	__ZNK8MyObject7getNameEv;	.scl	2;	.type	32;	.endef
__ZNK8MyObject7getNameEv:
	push	ebp
	mov	ebp, esp
	push	ebx
	sub	esp, 20
	mov	ebx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
	call	__ZNSsC1ERKSs
	mov	eax, ebx
	add	esp, 20
	pop	ebx
	pop	ebp
	ret	4
	.text
	.align 2
.globl __Z11getMaxMyObj8MyObjectS_
	.def	__Z11getMaxMyObj8MyObjectS_;	.scl	2;	.type	32;	.endef
__Z11getMaxMyObj8MyObjectS_:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 124
	mov	DWORD PTR [ebp-84], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-80], OFFSET FLAT:LLSDA1393
	lea	eax, [ebp-76]
	lea	edx, [ebp-24]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L85
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-108]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	lea	eax, [ebp-40]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZNK8MyObject7getNameEv
	sub	esp, 4
	lea	eax, [ebp-56]
	mov	edx, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 2
	call	__ZNK8MyObject7getNameEv
	sub	esp, 4
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 1
	call	__ZStgeIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	test	al, al
	je	L75
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], edx
	call	__ZN8MyObjectC1ERKS_
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 2
	call	__ZNSsD1Ev
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZNSsD1Ev
	jmp	L74
L75:
	mov	eax, DWORD PTR [ebp+16]
	mov	DWORD PTR [esp+4], eax
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [ebp-104], 1
	call	__ZN8MyObjectC1ERKS_
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 2
	call	__ZNSsD1Ev
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZNSsD1Ev
	jmp	L74
L85:
	lea	ebp, [ebp+24]
	mov	eax, DWORD PTR [ebp-104]
	mov	edx, DWORD PTR [ebp-100]
	mov	DWORD PTR [ebp-116], edx
	cmp	eax, 1
	je	L81
L77:
	mov	eax, DWORD PTR [ebp-116]
	mov	DWORD PTR [ebp-112], eax
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 0
	call	__ZNSsD1Ev
	mov	edx, DWORD PTR [ebp-112]
	mov	DWORD PTR [ebp-116], edx
L79:
L81:
	mov	eax, DWORD PTR [ebp-116]
	mov	DWORD PTR [ebp-120], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 0
	call	__ZNSsD1Ev
	mov	edx, DWORD PTR [ebp-120]
	mov	DWORD PTR [ebp-116], edx
L83:
	mov	eax, DWORD PTR [ebp-116]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__Unwind_SjLj_Resume
L74:
	lea	eax, [ebp-108]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	mov	eax, DWORD PTR [ebp+8]
	lea	esp, [ebp-12]
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret	4
	.section	.gcc_except_table,"dr"
LLSDA1393:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1393-LLSDACSB1393
LLSDACSB1393:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
LLSDACSE1393:
	.text
	.align 2
.globl __Z9swapMyObjR8MyObjectS0_
	.def	__Z9swapMyObjR8MyObjectS0_;	.scl	2;	.type	32;	.endef
__Z9swapMyObjR8MyObjectS0_:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	push	ebx
	sub	esp, 140
	mov	DWORD PTR [ebp-84], OFFSET FLAT:___gxx_personality_sj0
	mov	DWORD PTR [ebp-80], OFFSET FLAT:LLSDA1394
	lea	eax, [ebp-76]
	lea	edx, [ebp-24]
	mov	DWORD PTR [eax], edx
	mov	edx, OFFSET FLAT:L99
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax+8], esp
	lea	eax, [ebp-108]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Register
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZN8MyObjectC1ERKS_
	lea	edx, [ebp-56]
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	mov	DWORD PTR [ebp-104], 3
	call	__ZNK8MyObject7getNameEv
	sub	esp, 4
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 2
	call	__ZN8MyObject7setNameESs
	jmp	L88
L87:
	mov	eax, DWORD PTR [ebp-116]
	mov	DWORD PTR [ebp-112], eax
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 0
	call	__ZNSsD1Ev
	mov	edx, DWORD PTR [ebp-112]
	mov	DWORD PTR [ebp-116], edx
L89:
	jmp	L95
L88:
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 3
	call	__ZNSsD1Ev
	lea	edx, [ebp-56]
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	__ZNK8MyObject7getNameEv
	sub	esp, 4
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 1
	call	__ZN8MyObject7setNameESs
	jmp	L92
L99:
	lea	ebp, [ebp+24]
	mov	eax, DWORD PTR [ebp-104]
	mov	DWORD PTR [ebp-128], eax
	mov	edx, DWORD PTR [ebp-100]
	mov	DWORD PTR [ebp-116], edx
	cmp	DWORD PTR [ebp-128], 1
	je	L87
	cmp	DWORD PTR [ebp-128], 2
	je	L95
L91:
	mov	eax, DWORD PTR [ebp-116]
	mov	DWORD PTR [ebp-120], eax
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 0
	call	__ZNSsD1Ev
	mov	edx, DWORD PTR [ebp-120]
	mov	DWORD PTR [ebp-116], edx
L93:
	jmp	L95
L92:
	lea	eax, [ebp-56]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 3
	call	__ZNSsD1Ev
	jmp	L96
L95:
	mov	eax, DWORD PTR [ebp-116]
	mov	DWORD PTR [ebp-124], eax
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], 0
	call	__ZN8MyObjectD1Ev
	mov	edx, DWORD PTR [ebp-124]
	mov	DWORD PTR [ebp-116], edx
L97:
	mov	eax, DWORD PTR [ebp-116]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__Unwind_SjLj_Resume
L96:
	lea	eax, [ebp-40]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [ebp-104], -1
	call	__ZN8MyObjectD1Ev
L86:
	lea	eax, [ebp-108]
	mov	DWORD PTR [esp], eax
	call	__Unwind_SjLj_Unregister
	lea	esp, [ebp-12]
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	ret
	.section	.gcc_except_table,"dr"
LLSDA1394:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1394-LLSDACSB1394
LLSDACSB1394:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x2
	.uleb128 0x0
LLSDACSE1394:
	.text
	.section	.text$_ZN8MyObject7setNameESs,"x"
	.linkonce discard
	.align 2
.globl __ZN8MyObject7setNameESs
	.def	__ZN8MyObject7setNameESs;	.scl	2;	.type	32;	.endef
__ZN8MyObject7setNameESs:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__ZNSsaSERKSs
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
	jae	L102
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	jmp	L101
L102:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
L101:
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.section	.text$_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_,"x"
	.linkonce discard
	.align 2
.globl __ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	.def	__ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_;	.scl	2;	.type	32;	.endef
__ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__ZNKSs7compareERKSs
	mov	DWORD PTR [ebp-4], eax
	cmp	DWORD PTR [ebp-4], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.section	.text$_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_,"x"
	.linkonce discard
	.align 2
.globl __ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	.def	__ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_;	.scl	2;	.type	32;	.endef
__ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__ZNKSs7compareERKSs
	shr	eax, 31
	leave
	ret
	.section	.text$_ZStgeIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_,"x"
	.linkonce discard
	.align 2
.globl __ZStgeIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	.def	__ZStgeIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_;	.scl	2;	.type	32;	.endef
__ZStgeIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	__ZNKSs7compareERKSs
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	not	eax
	shr	eax, 31
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.section .rdata,"dr"
LC6:
	.ascii "I'm static, outside of main\0"
	.text
	.align 2
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	cmp	DWORD PTR [ebp+12], 65535
	jne	L107
	cmp	DWORD PTR [ebp+8], 1
	jne	L107
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt8__ioinit
	call	__ZNSt8ios_base4InitC1Ev
L107:
	cmp	DWORD PTR [ebp+12], 65535
	jne	L108
	cmp	DWORD PTR [ebp+8], 1
	jne	L108
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC6
	mov	DWORD PTR [esp], OFFSET FLAT:_staticObj
	call	__ZN8MyObjectC1EPKc
L108:
	cmp	DWORD PTR [ebp+12], 65535
	jne	L109
	cmp	DWORD PTR [ebp+8], 0
	jne	L109
	mov	DWORD PTR [esp], OFFSET FLAT:_staticObj
	call	__ZN8MyObjectD1Ev
L109:
	cmp	DWORD PTR [ebp+12], 65535
	jne	L106
	cmp	DWORD PTR [ebp+8], 0
	jne	L106
	mov	DWORD PTR [esp], OFFSET FLAT:__ZSt8__ioinit
	call	__ZNSt8ios_base4InitD1Ev
L106:
	leave
	ret
	.align 2
	.def	__GLOBAL__I__ZN8MyObjectC2EPKc;	.scl	3;	.type	32;	.endef
__GLOBAL__I__ZN8MyObjectC2EPKc:
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
	.long	__GLOBAL__I__ZN8MyObjectC2EPKc
	.text
	.align 2
	.def	__GLOBAL__D__ZN8MyObjectC2EPKc;	.scl	3;	.type	32;	.endef
__GLOBAL__D__ZN8MyObjectC2EPKc:
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
	.long	__GLOBAL__D__ZN8MyObjectC2EPKc
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNKSs7compareERKSs;	.scl	3;	.type	32;	.endef
	.def	__ZStgeIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_;	.scl	3;	.type	32;	.endef
	.def	__ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_;	.scl	3;	.type	32;	.endef
	.def	__ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_;	.scl	3;	.type	32;	.endef
	.def	__ZNSolsEi;	.scl	3;	.type	32;	.endef
	.def	__ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E;	.scl	3;	.type	32;	.endef
	.def	__ZNSolsEPFRSoS_E;	.scl	3;	.type	32;	.endef
	.def	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	3;	.type	32;	.endef
	.def	__ZlsRSoRK8MyObject;	.scl	3;	.type	32;	.endef
	.def	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	3;	.type	32;	.endef
	.def	__ZNSsC1EPKcRKSaIcE;	.scl	3;	.type	32;	.endef
	.def	__ZNSaIcED1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNSaIcEC1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNSsaSERKSs;	.scl	3;	.type	32;	.endef
	.def	__ZNSsD1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNSsC1ERKSs;	.scl	3;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZNKSsixEj;	.scl	3;	.type	32;	.endef
	.def	__ZNKSs4sizeEv;	.scl	3;	.type	32;	.endef
	.def	__ZSt3minIjERKT_S2_S2_;	.scl	3;	.type	32;	.endef
