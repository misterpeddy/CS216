	.file	"test.cpp"
	.toc
	.csect .text[PR]
	.align 2
	.lglobl .strtoimax
	.csect strtoimax[DS]
strtoimax:
	.long .strtoimax, TOC[tc0], 0
	.csect .text[PR]
.strtoimax:
LFB..4:
	mflr 0
	stw 31,-4(1)
LCFI..0:
	stw 0,8(1)
LCFI..1:
	stwu 1,-72(1)
LCFI..2:
	mr 31,1
LCFI..3:
	stw 3,96(31)
	stw 4,100(31)
	stw 5,104(31)
	lwz 3,96(31)
	lwz 4,100(31)
	lwz 5,104(31)
	bl .__strtollmax
	nop
	mr 9,3
	mr 10,4
	mr 3,9
	mr 4,10
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..strtoimax:
	.long 0
	.byte 0,9,32,97,128,1,3,1
	.long 0
	.long LT..strtoimax-.strtoimax
	.short 9
	.byte "strtoimax"
	.byte 31
	.align 2
LFE..4:
	.align 2
	.lglobl .wcsftime
	.csect wcsftime[DS]
wcsftime:
	.long .wcsftime, TOC[tc0], 0
	.csect .text[PR]
.wcsftime:
LFB..10:
	mflr 0
	stw 31,-4(1)
LCFI..4:
	stw 0,8(1)
LCFI..5:
	stwu 1,-72(1)
LCFI..6:
	mr 31,1
LCFI..7:
	stw 3,96(31)
	stw 4,100(31)
	stw 5,104(31)
	stw 6,108(31)
	lwz 3,96(31)
	lwz 4,100(31)
	lwz 5,104(31)
	lwz 6,108(31)
	bl .__iso_wcsftime
	nop
	mr 0,3
	mr 3,0
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..wcsftime:
	.long 0
	.byte 0,9,32,97,128,1,4,1
	.long 0
	.long LT..wcsftime-.wcsftime
	.short 8
	.byte "wcsftime"
	.byte 31
	.align 2
LFE..10:
	.align 2
	.lglobl .wcstok
	.csect wcstok[DS]
wcstok:
	.long .wcstok, TOC[tc0], 0
	.csect .text[PR]
.wcstok:
LFB..12:
	mflr 0
	stw 31,-4(1)
LCFI..8:
	stw 0,8(1)
LCFI..9:
	stwu 1,-72(1)
LCFI..10:
	mr 31,1
LCFI..11:
	stw 3,96(31)
	stw 4,100(31)
	stw 5,104(31)
	lwz 3,96(31)
	lwz 4,100(31)
	lwz 5,104(31)
	bl .__iso_wcstok
	nop
	mr 0,3
	mr 3,0
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..wcstok:
	.long 0
	.byte 0,9,32,97,128,1,3,1
	.long 0
	.long LT..wcstok-.wcstok
	.short 6
	.byte "wcstok"
	.byte 31
	.align 2
LFE..12:
	.align 2
	.lglobl .strtold
	.csect strtold[DS]
strtold:
	.long .strtold, TOC[tc0], 0
	.csect .text[PR]
.strtold:
LFB..75:
	mflr 0
	stw 31,-4(1)
LCFI..12:
	stw 0,8(1)
LCFI..13:
	stwu 1,-72(1)
LCFI..14:
	mr 31,1
LCFI..15:
	stw 3,96(31)
	stw 4,100(31)
	lwz 3,96(31)
	lwz 4,100(31)
	bl .strtod
	nop
	fmr 0,1
	fmr 1,0
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..strtold:
	.long 0
	.byte 0,9,32,97,128,1,2,1
	.long 0
	.long LT..strtold-.strtold
	.short 7
	.byte "strtold"
	.byte 31
	.align 2
LFE..75:
	.align 2
	.lglobl .select
	.csect select[DS]
select:
	.long .select, TOC[tc0], 0
	.csect .text[PR]
.select:
LFB..77:
	mflr 0
	stw 31,-4(1)
LCFI..16:
	stw 0,8(1)
LCFI..17:
	stwu 1,-72(1)
LCFI..18:
	mr 31,1
LCFI..19:
	stw 3,96(31)
	stw 4,100(31)
	stw 5,104(31)
	stw 6,108(31)
	stw 7,112(31)
	lwz 3,96(31)
	lwz 4,100(31)
	lwz 5,104(31)
	lwz 6,108(31)
	lwz 7,112(31)
	bl .__fd_select
	nop
	mr 0,3
	mr 3,0
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..select:
	.long 0
	.byte 0,9,32,97,128,1,5,1
	.long 0
	.long LT..select-.select
	.short 6
	.byte "select"
	.byte 31
	.align 2
LFE..77:
	.align 2
	.lglobl .frexpl
	.csect frexpl[DS]
frexpl:
	.long .frexpl, TOC[tc0], 0
	.csect .text[PR]
.frexpl:
LFB..1114:
	mflr 0
	stw 31,-4(1)
LCFI..20:
	stw 0,8(1)
LCFI..21:
	stwu 1,-80(1)
LCFI..22:
	mr 31,1
LCFI..23:
	stfd 1,56(31)
	stw 5,112(31)
	lfd 1,56(31)
	lwz 5,112(31)
	bl .frexp
	nop
	fmr 0,1
	fmr 1,0
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..frexpl:
	.long 0
	.byte 0,9,32,97,128,1,1,3
	.long -1073741824
	.long LT..frexpl-.frexpl
	.short 6
	.byte "frexpl"
	.byte 31
	.align 2
LFE..1114:
	.align 2
	.lglobl .ldexpl
	.csect ldexpl[DS]
ldexpl:
	.long .ldexpl, TOC[tc0], 0
	.csect .text[PR]
.ldexpl:
LFB..1116:
	mflr 0
	stw 31,-4(1)
LCFI..24:
	stw 0,8(1)
LCFI..25:
	stwu 1,-80(1)
LCFI..26:
	mr 31,1
LCFI..27:
	stfd 1,56(31)
	stw 5,112(31)
	lfd 1,56(31)
	lwz 5,112(31)
	bl .ldexp
	nop
	fmr 0,1
	fmr 1,0
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..ldexpl:
	.long 0
	.byte 0,9,32,97,128,1,1,3
	.long -1073741824
	.long LT..ldexpl-.ldexpl
	.short 6
	.byte "ldexpl"
	.byte 31
	.align 2
LFE..1116:
	.align 2
	.lglobl .modfl
	.csect modfl[DS]
modfl:
	.long .modfl, TOC[tc0], 0
	.csect .text[PR]
.modfl:
LFB..1118:
	mflr 0
	stw 31,-4(1)
LCFI..28:
	stw 0,8(1)
LCFI..29:
	stwu 1,-80(1)
LCFI..30:
	mr 31,1
LCFI..31:
	stfd 1,56(31)
	stw 5,112(31)
	lfd 1,56(31)
	lwz 5,112(31)
	bl .modf
	nop
	fmr 0,1
	fmr 1,0
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..modfl:
	.long 0
	.byte 0,9,32,97,128,1,1,3
	.long -1073741824
	.long LT..modfl-.modfl
	.short 5
	.byte "modfl"
	.byte 31
	.align 2
LFE..1118:
	.lcomm _ZSt8__ioinit,1,_test.bss_cpp
	.align 2
	.globl _Z6getOnev
	.globl ._Z6getOnev
	.csect _Z6getOnev[DS]
_Z6getOnev:
	.long ._Z6getOnev, TOC[tc0], 0
	.csect .text[PR]
._Z6getOnev:
LFB..1488:
	stw 31,-4(1)
LCFI..32:
	stwu 1,-40(1)
LCFI..33:
	mr 31,1
LCFI..34:
	li 0,1
	mr 3,0
	lwz 1,0(1)
	lwz 31,-4(1)
	blr
LT.._Z6getOnev:
	.long 0
	.byte 0,9,32,96,128,1,0,1
	.long LT.._Z6getOnev-._Z6getOnev
	.short 10
	.byte "_Z6getOnev"
	.byte 31
	.align 2
LFE..1488:
	.align 2
	.globl _Z6getTwov
	.globl ._Z6getTwov
	.csect _Z6getTwov[DS]
_Z6getTwov:
	.long ._Z6getTwov, TOC[tc0], 0
	.csect .text[PR]
._Z6getTwov:
LFB..1490:
	stw 31,-4(1)
LCFI..35:
	stwu 1,-48(1)
LCFI..36:
	mr 31,1
LCFI..37:
	li 0,0
	stw 0,24(31)
	li 0,1
	stw 0,28(31)
L..11:
	lwz 0,28(31)
	cmpwi 0,0,2
	ble 0,L..14
	b L..12
L..14:
	lwz 9,24(31)
	addi 0,9,1
	stw 0,24(31)
	lwz 9,28(31)
	addi 0,9,1
	stw 0,28(31)
	b L..11
L..12:
	lwz 0,24(31)
	mr 3,0
	lwz 1,0(1)
	lwz 31,-4(1)
	blr
LT.._Z6getTwov:
	.long 0
	.byte 0,9,32,96,128,1,0,1
	.long LT.._Z6getTwov-._Z6getTwov
	.short 10
	.byte "_Z6getTwov"
	.byte 31
	.align 2
LFE..1490:
	.align 2
	.globl _Z8getThreev
	.globl ._Z8getThreev
	.csect _Z8getThreev[DS]
_Z8getThreev:
	.long ._Z8getThreev, TOC[tc0], 0
	.csect .text[PR]
._Z8getThreev:
LFB..1492:
	stw 31,-4(1)
LCFI..38:
	stwu 1,-48(1)
LCFI..39:
	mr 31,1
LCFI..40:
	li 0,0
	stw 0,24(31)
L..16:
	lwz 0,24(31)
	cmpwi 0,0,3
	bne 0,L..18
	b L..17
L..18:
	lwz 9,24(31)
	addi 0,9,1
	stw 0,24(31)
	b L..16
L..17:
	lwz 0,24(31)
	mr 3,0
	lwz 1,0(1)
	lwz 31,-4(1)
	blr
LT.._Z8getThreev:
	.long 0
	.byte 0,9,32,96,128,1,0,1
	.long LT.._Z8getThreev-._Z8getThreev
	.short 12
	.byte "_Z8getThreev"
	.byte 31
	.align 2
LFE..1492:
	.align 2
	.globl _Z7getFourv
	.globl ._Z7getFourv
	.csect _Z7getFourv[DS]
_Z7getFourv:
	.long ._Z7getFourv, TOC[tc0], 0
	.csect .text[PR]
._Z7getFourv:
LFB..1494:
	stw 31,-4(1)
LCFI..41:
	stwu 1,-48(1)
LCFI..42:
	mr 31,1
LCFI..43:
	li 0,0
	stw 0,24(31)
L..20:
	lwz 9,24(31)
	addi 0,9,1
	stw 0,24(31)
	lwz 0,24(31)
	cmpwi 0,0,4
	bne 0,L..20
	lwz 0,24(31)
	mr 3,0
	lwz 1,0(1)
	lwz 31,-4(1)
	blr
LT.._Z7getFourv:
	.long 0
	.byte 0,9,32,96,128,1,0,1
	.long LT.._Z7getFourv-._Z7getFourv
	.short 11
	.byte "_Z7getFourv"
	.byte 31
	.align 2
LFE..1494:
	.toc
LC..0:
	.tc _ZSt4cout[TC],_ZSt4cout[RW]
LC..1:
	.tc _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[TC],_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[DS]
	.csect .text[PR]
	.align 2
	.globl main
	.globl .main
	.csect main[DS]
main:
	.long .main, TOC[tc0], 0
	.csect .text[PR]
.main:
LFB..1497:
	mflr 0
	stw 31,-4(1)
LCFI..44:
	stw 0,8(1)
LCFI..45:
	stwu 1,-72(1)
LCFI..46:
	mr 31,1
LCFI..47:
	bl ._Z6getOnev
	mr 0,3
	lwz 3,LC..0(2)
	mr 4,0
	bl ._ZNSolsEi
	nop
	mr 0,3
	mr 3,0
	lwz 4,LC..1(2)
	bl ._ZNSolsEPFRSoS_E
	nop
	bl ._Z6getTwov
	mr 0,3
	lwz 3,LC..0(2)
	mr 4,0
	bl ._ZNSolsEi
	nop
	mr 0,3
	mr 3,0
	lwz 4,LC..1(2)
	bl ._ZNSolsEPFRSoS_E
	nop
	bl ._Z8getThreev
	mr 0,3
	lwz 3,LC..0(2)
	mr 4,0
	bl ._ZNSolsEi
	nop
	mr 0,3
	mr 3,0
	lwz 4,LC..1(2)
	bl ._ZNSolsEPFRSoS_E
	nop
	bl ._Z7getFourv
	mr 0,3
	lwz 3,LC..0(2)
	mr 4,0
	bl ._ZNSolsEi
	nop
	mr 0,3
	mr 3,0
	lwz 4,LC..1(2)
	bl ._ZNSolsEPFRSoS_E
	nop
	li 0,0
	mr 3,0
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT..main:
	.long 0
	.byte 0,9,32,97,128,1,0,1
	.long LT..main-.main
	.short 4
	.byte "main"
	.byte 31
	.align 2
LFE..1497:
	.toc
LC..2:
	.tc _ZSt8__ioinit[TC],_ZSt8__ioinit
	.csect .text[PR]
	.align 2
	.lglobl ._Z41__static_initialization_and_destruction_0ii
	.csect _Z41__static_initialization_and_destruction_0ii[DS]
_Z41__static_initialization_and_destruction_0ii:
	.long ._Z41__static_initialization_and_destruction_0ii, TOC[tc0], 0
	.csect .text[PR]
._Z41__static_initialization_and_destruction_0ii:
LFB..1502:
	mflr 0
	stw 31,-4(1)
LCFI..48:
	stw 0,8(1)
LCFI..49:
	stwu 1,-72(1)
LCFI..50:
	mr 31,1
LCFI..51:
	stw 3,96(31)
	stw 4,100(31)
	lwz 0,100(31)
	li 9,0
	ori 9,9,65535
	cmpw 0,0,9
	bne 0,L..26
	lwz 0,96(31)
	cmpwi 0,0,1
	bne 0,L..26
	lwz 3,LC..2(2)
	bl ._ZNSt8ios_base4InitC1Ev
	nop
L..26:
	lwz 0,100(31)
	li 9,0
	ori 9,9,65535
	cmpw 0,0,9
	bne 0,L..25
	lwz 0,96(31)
	cmpwi 0,0,0
	bne 0,L..25
	lwz 3,LC..2(2)
	bl ._ZNSt8ios_base4InitD1Ev
	nop
L..25:
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT.._Z41__static_initialization_and_destruction_0ii:
	.long 0
	.byte 0,9,32,97,128,1,2,1
	.long 0
	.long LT.._Z41__static_initialization_and_destruction_0ii-._Z41__static_initialization_and_destruction_0ii
	.short 47
	.byte "_Z41__static_initialization_and_destruction_0ii"
	.byte 31
	.align 2
LFE..1502:
	.csect _test.rw_cpp[RO],3
	.align 2
_SINFINITY:
	.long	2139095040
	.align 2
_SQNAN:
	.long	2143289344
	.weak	_ZNSt15basic_streambufIcSt11char_traitsIcEE13_S_pback_sizeE
	.csect _test.ro_cpp[RO],3
	.align 2
_ZNSt15basic_streambufIcSt11char_traitsIcEE13_S_pback_sizeE:
	.long	1
	.weak	_ZNSt15basic_streambufIwSt11char_traitsIwEE13_S_pback_sizeE
	.align 2
_ZNSt15basic_streambufIwSt11char_traitsIwEE13_S_pback_sizeE:
	.long	1
	.csect .text[PR]
	.align 2
	.globl _GLOBAL__I__Z6getOnev
	.globl ._GLOBAL__I__Z6getOnev
	.csect _GLOBAL__I__Z6getOnev[DS]
_GLOBAL__I__Z6getOnev:
	.long ._GLOBAL__I__Z6getOnev, TOC[tc0], 0
	.csect .text[PR]
._GLOBAL__I__Z6getOnev:
LFB..1504:
	mflr 0
	stw 31,-4(1)
LCFI..52:
	stw 0,8(1)
LCFI..53:
	stwu 1,-72(1)
LCFI..54:
	mr 31,1
LCFI..55:
	li 3,1
	li 4,0
	ori 4,4,65535
	bl ._Z41__static_initialization_and_destruction_0ii
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT.._GLOBAL__I__Z6getOnev:
	.long 0
	.byte 0,9,32,97,128,1,0,1
	.long LT.._GLOBAL__I__Z6getOnev-._GLOBAL__I__Z6getOnev
	.short 21
	.byte "_GLOBAL__I__Z6getOnev"
	.byte 31
	.align 2
LFE..1504:
	.align 2
	.globl _GLOBAL__D__Z6getOnev
	.globl ._GLOBAL__D__Z6getOnev
	.csect _GLOBAL__D__Z6getOnev[DS]
_GLOBAL__D__Z6getOnev:
	.long ._GLOBAL__D__Z6getOnev, TOC[tc0], 0
	.csect .text[PR]
._GLOBAL__D__Z6getOnev:
LFB..1506:
	mflr 0
	stw 31,-4(1)
LCFI..56:
	stw 0,8(1)
LCFI..57:
	stwu 1,-72(1)
LCFI..58:
	mr 31,1
LCFI..59:
	li 3,0
	li 4,0
	ori 4,4,65535
	bl ._Z41__static_initialization_and_destruction_0ii
	lwz 1,0(1)
	lwz 0,8(1)
	mtlr 0
	lwz 31,-4(1)
	blr
LT.._GLOBAL__D__Z6getOnev:
	.long 0
	.byte 0,9,32,97,128,1,0,1
	.long LT.._GLOBAL__D__Z6getOnev-._GLOBAL__D__Z6getOnev
	.short 21
	.byte "_GLOBAL__D__Z6getOnev"
	.byte 31
	.align 2
LFE..1506:
	.csect .data[RW],3
	.align 2
	.globl _GLOBAL__F__Z6getOnev
_GLOBAL__F__Z6getOnev:
Lframe..1:
	.vbyte	4,LECIE..1-LSCIE..1
LSCIE..1:
	.vbyte	4,0x0
	.byte	0x1
	.byte "zP"
	.byte 0
	.byte	0x1
	.byte	0x7c
	.byte	0x41
	.byte	0x5
	.byte	0x0
	.vbyte	4,__gxx_personality_v0
	.byte	0xc
	.byte	0x1
	.byte	0x0
	.align 2
LECIE..1:
LSFDE..1:
	.vbyte	4,LEFDE..1-LASFDE..1
LASFDE..1:
	.vbyte	4,LASFDE..1-Lframe..1
	.vbyte	4,LFB..4
	.vbyte	4,LFE..4-LFB..4
	.byte	0x0
	.byte	0x4
	.vbyte	4,LCFI..2-LFB..4
	.byte	0xe
	.byte	0x48
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x9f
	.byte	0x1
	.byte	0x4
	.vbyte	4,LCFI..3-LCFI..2
	.byte	0xd
	.byte	0x1f
	.align 2
LEFDE..1:
LSFDE..3:
	.vbyte	4,LEFDE..3-LASFDE..3
LASFDE..3:
	.vbyte	4,LASFDE..3-Lframe..1
	.vbyte	4,LFB..10
	.vbyte	4,LFE..10-LFB..10
	.byte	0x0
	.byte	0x4
	.vbyte	4,LCFI..6-LFB..10
	.byte	0xe
	.byte	0x48
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x9f
	.byte	0x1
	.byte	0x4
	.vbyte	4,LCFI..7-LCFI..6
	.byte	0xd
	.byte	0x1f
	.align 2
LEFDE..3:
LSFDE..5:
	.vbyte	4,LEFDE..5-LASFDE..5
LASFDE..5:
	.vbyte	4,LASFDE..5-Lframe..1
	.vbyte	4,LFB..12
	.vbyte	4,LFE..12-LFB..12
	.byte	0x0
	.byte	0x4
	.vbyte	4,LCFI..10-LFB..12
	.byte	0xe
	.byte	0x48
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x9f
	.byte	0x1
	.byte	0x4
	.vbyte	4,LCFI..11-LCFI..10
	.byte	0xd
	.byte	0x1f
	.align 2
LEFDE..5:
LSFDE..9:
	.vbyte	4,LEFDE..9-LASFDE..9
LASFDE..9:
	.vbyte	4,LASFDE..9-Lframe..1
	.vbyte	4,LFB..77
	.vbyte	4,LFE..77-LFB..77
	.byte	0x0
	.byte	0x4
	.vbyte	4,LCFI..18-LFB..77
	.byte	0xe
	.byte	0x48
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x9f
	.byte	0x1
	.byte	0x4
	.vbyte	4,LCFI..19-LCFI..18
	.byte	0xd
	.byte	0x1f
	.align 2
LEFDE..9:
LSFDE..25:
	.vbyte	4,LEFDE..25-LASFDE..25
LASFDE..25:
	.vbyte	4,LASFDE..25-Lframe..1
	.vbyte	4,LFB..1497
	.vbyte	4,LFE..1497-LFB..1497
	.byte	0x0
	.byte	0x4
	.vbyte	4,LCFI..46-LFB..1497
	.byte	0xe
	.byte	0x48
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x9f
	.byte	0x1
	.byte	0x4
	.vbyte	4,LCFI..47-LCFI..46
	.byte	0xd
	.byte	0x1f
	.align 2
LEFDE..25:
LSFDE..27:
	.vbyte	4,LEFDE..27-LASFDE..27
LASFDE..27:
	.vbyte	4,LASFDE..27-Lframe..1
	.vbyte	4,LFB..1502
	.vbyte	4,LFE..1502-LFB..1502
	.byte	0x0
	.byte	0x4
	.vbyte	4,LCFI..50-LFB..1502
	.byte	0xe
	.byte	0x48
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x9f
	.byte	0x1
	.byte	0x4
	.vbyte	4,LCFI..51-LCFI..50
	.byte	0xd
	.byte	0x1f
	.align 2
LEFDE..27:
LSFDE..29:
	.vbyte	4,LEFDE..29-LASFDE..29
LASFDE..29:
	.vbyte	4,LASFDE..29-Lframe..1
	.vbyte	4,LFB..1504
	.vbyte	4,LFE..1504-LFB..1504
	.byte	0x0
	.byte	0x4
	.vbyte	4,LCFI..54-LFB..1504
	.byte	0xe
	.byte	0x48
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x9f
	.byte	0x1
	.byte	0x4
	.vbyte	4,LCFI..55-LCFI..54
	.byte	0xd
	.byte	0x1f
	.align 2
LEFDE..29:
LSFDE..31:
	.vbyte	4,LEFDE..31-LASFDE..31
LASFDE..31:
	.vbyte	4,LASFDE..31-Lframe..1
	.vbyte	4,LFB..1506
	.vbyte	4,LFE..1506-LFB..1506
	.byte	0x0
	.byte	0x4
	.vbyte	4,LCFI..58-LFB..1506
	.byte	0xe
	.byte	0x48
	.byte	0x11
	.byte	0x41
	.byte	0x7e
	.byte	0x9f
	.byte	0x1
	.byte	0x4
	.vbyte	4,LCFI..59-LCFI..58
	.byte	0xd
	.byte	0x1f
	.align 2
LEFDE..31:
	.vbyte	4,0x0
	.csect .text[PR]
_section_.text:
	.csect .data[RW],3
	.long _section_.text
