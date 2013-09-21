; threexplusone.s
; Michael Trotter
; mjt5v
; PreLab9
; CS216L-3
global _threexplusone
section .text
_threexplusone:
; Standard prologue
	push	ebp		; Save the old base ptr
	mov	ebp, esp	; Set the new value of the base ptr
	push	esi	; Save registers
;Body
L1:	mov	eax, [ebp+8] ;move parameter into eax
		cmp	eax, 1		; compare with one
		jg		L2				; move on if EBX > 1
		mov	eax, 0		; move zero into EAX
		jmp	L6
L2:
		mov	ecx,	eax	;move EAX into ECX
		and	ecx,	00000001H ;AND bits with 1
		cmp	ecx,	0	; check to see if even
		jle	L4			; jump to L4 if it is
L3:
		mov	ecx, 3	;move 3 into ECX
		imul	eax, ecx ;EAX = EAX*3
		inc	eax		;EAX = 3*EAX+1
		jmp	L5
L4:
		mov	ecx,	2	;move 2 into ECX
		xor	edx, edx	;clear EDX
		idiv	ecx		; divide EAX by 2; result goes into EAX
L5:
		push	eax		;push EAX onto stack
		call	_threexplusone	;do recursive call, result goes into EAX
		add	esp, 4	;delete arg
		inc	eax		;EAX=EAX+1
L6:
		; Standard epilogue
    pop   esi		; Restore registers that we used.
			; Note - no local variables to dealocate.
    pop   ebp		; Restore the caller's base pointer.
    ret			; Return to the caller.