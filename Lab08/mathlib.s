; mathlib.s
; Michael Trotter
; mjt5v
; PreLab8
; CS216L-3
global _product
global _power
section .text
_product:
	; Standard prologue
	push	ebp		; Save the old base ptr
	mov	ebp, esp	; Set the new value of the base ptr
	push	esi	; Save registers
	; Body
	xor	eax,	eax	; Place zero in EAX to represent product
	xor	ebx,	ebx	; Place zero in EBX to represent counter
	mov	esi,	[ebp+8] ; Put Parameter 1 in esi
	mov	ecx,	[ebp+12] ; Put Parameter 2 in ecx
product_loop:
	cmp	esi,	ebx	; Checks if P2 has been added P1 times
	jle	product_done	; if it has, goto finish
	add	eax,	ecx	;	adds P2 into product
	inc	ebx
	jmp	product_loop
product_done:
	; Loop is complete and return value is in EAX
	; Standard epilogue
    pop   esi		; Restore registers that we used.
			; Note - no local variables to dealocate.
    pop   ebp		; Restore the caller's base pointer.
    ret			; Return to the caller.
	 
_power:
	; Standard prologue
	push	ebp		; Save the old base ptr
	mov	ebp, esp	; Set the new value of the base ptr
	push	esi	; Save registers
	;Body
	mov	ebx,	[ebp+8] ; Place base in ebx
	mov	ecx,	[ebp+12] ; Place exponent in ecx
	cmp	ecx, 0
	jg	L1
	mov	eax, 1
	jmp	L2
L1:
	dec	ecx	;exp = exp-1
	push	ecx	;push exp
	push	ebx	;push	base
	call _power	;do the call, result goes into eax
	pop	ebx	;pop the base
	add	esp, 4	;delete arg for exp
	push	ebx	;push base
	push	eax	;push current value
	call	_product	;do the call, result goes into eax
	add	esp, 8	;delete arguments
L2:
	; Standard epilogue
    pop   esi		; Restore registers that we used.
			; Note - no local variables to dealocate.
    pop   ebp		; Restore the caller's base pointer.
    ret			; Return to the caller.