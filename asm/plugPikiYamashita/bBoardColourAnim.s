.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global set__Q23zen20bBoardColourAnimDataFPUc
set__Q23zen20bBoardColourAnimDataFPUc:
/* 801A1E10 0019ED70  28 04 00 00 */	cmplwi r4, 0
/* 801A1E14 0019ED74  4D 82 00 20 */	beqlr 
/* 801A1E18 0019ED78  88 04 00 00 */	lbz r0, 0(r4)
/* 801A1E1C 0019ED7C  38 E4 00 04 */	addi r7, r4, 4
/* 801A1E20 0019ED80  38 A0 00 00 */	li r5, 0
/* 801A1E24 0019ED84  98 03 00 00 */	stb r0, 0(r3)
/* 801A1E28 0019ED88  88 04 00 01 */	lbz r0, 1(r4)
/* 801A1E2C 0019ED8C  98 03 00 01 */	stb r0, 1(r3)
/* 801A1E30 0019ED90  88 04 00 02 */	lbz r0, 2(r4)
/* 801A1E34 0019ED94  98 03 00 02 */	stb r0, 2(r3)
/* 801A1E38 0019ED98  88 04 00 03 */	lbz r0, 3(r4)
/* 801A1E3C 0019ED9C  98 03 00 03 */	stb r0, 3(r3)
/* 801A1E40 0019EDA0  88 83 00 03 */	lbz r4, 3(r3)
/* 801A1E44 0019EDA4  28 04 00 00 */	cmplwi r4, 0
/* 801A1E48 0019EDA8  90 E3 00 04 */	stw r7, 4(r3)
/* 801A1E4C 0019EDAC  40 81 00 48 */	ble lbl_801A1E94
/* 801A1E50 0019EDB0  28 04 00 08 */	cmplwi r4, 8
/* 801A1E54 0019EDB4  38 C4 FF F8 */	addi r6, r4, -8
/* 801A1E58 0019EDB8  40 81 00 24 */	ble lbl_801A1E7C
/* 801A1E5C 0019EDBC  38 06 00 07 */	addi r0, r6, 7
/* 801A1E60 0019EDC0  54 00 E8 FE */	srwi r0, r0, 3
/* 801A1E64 0019EDC4  28 06 00 00 */	cmplwi r6, 0
/* 801A1E68 0019EDC8  7C 09 03 A6 */	mtctr r0
/* 801A1E6C 0019EDCC  40 81 00 10 */	ble lbl_801A1E7C
lbl_801A1E70:
/* 801A1E70 0019EDD0  38 E7 00 20 */	addi r7, r7, 0x20
/* 801A1E74 0019EDD4  38 A5 00 08 */	addi r5, r5, 8
/* 801A1E78 0019EDD8  42 00 FF F8 */	bdnz lbl_801A1E70
lbl_801A1E7C:
/* 801A1E7C 0019EDDC  7C 05 20 50 */	subf r0, r5, r4
/* 801A1E80 0019EDE0  7C 05 20 40 */	cmplw r5, r4
/* 801A1E84 0019EDE4  7C 09 03 A6 */	mtctr r0
/* 801A1E88 0019EDE8  40 80 00 0C */	bge lbl_801A1E94
lbl_801A1E8C:
/* 801A1E8C 0019EDEC  38 E7 00 04 */	addi r7, r7, 4
/* 801A1E90 0019EDF0  42 00 FF FC */	bdnz lbl_801A1E8C
lbl_801A1E94:
/* 801A1E94 0019EDF4  88 03 00 03 */	lbz r0, 3(r3)
/* 801A1E98 0019EDF8  90 E3 00 08 */	stw r7, 8(r3)
/* 801A1E9C 0019EDFC  54 00 10 3A */	slwi r0, r0, 2
/* 801A1EA0 0019EE00  7C E7 02 14 */	add r7, r7, r0
/* 801A1EA4 0019EE04  90 E3 00 0C */	stw r7, 0xc(r3)
/* 801A1EA8 0019EE08  4E 80 00 20 */	blr 

.global update__Q23zen16bBoardColourAnimFfP6ColourP6Colour
update__Q23zen16bBoardColourAnimFfP6ColourP6Colour:
/* 801A1EAC 0019EE0C  94 21 FF 08 */	stwu r1, -0xf8(r1)
/* 801A1EB0 0019EE10  3C 00 43 30 */	lis r0, 0x4330
/* 801A1EB4 0019EE14  A8 C3 00 06 */	lha r6, 6(r3)
/* 801A1EB8 0019EE18  81 23 00 08 */	lwz r9, 8(r3)
/* 801A1EBC 0019EE1C  38 C6 FF FF */	addi r6, r6, -1
/* 801A1EC0 0019EE20  88 E3 00 04 */	lbz r7, 4(r3)
/* 801A1EC4 0019EE24  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 801A1EC8 0019EE28  C8 82 B3 F8 */	lfd f4, lbl_803EB5F8@sda21(r2)
/* 801A1ECC 0019EE2C  90 C1 00 F4 */	stw r6, 0xf4(r1)
/* 801A1ED0 0019EE30  54 EA 10 3A */	slwi r10, r7, 2
/* 801A1ED4 0019EE34  81 09 00 04 */	lwz r8, 4(r9)
/* 801A1ED8 0019EE38  90 C1 00 EC */	stw r6, 0xec(r1)
/* 801A1EDC 0019EE3C  7C C8 52 14 */	add r6, r8, r10
/* 801A1EE0 0019EE40  7C A8 54 2E */	lfsx f5, r8, r10
/* 801A1EE4 0019EE44  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 801A1EE8 0019EE48  C0 46 00 04 */	lfs f2, 4(r6)
/* 801A1EEC 0019EE4C  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 801A1EF0 0019EE50  C8 61 00 F0 */	lfd f3, 0xf0(r1)
/* 801A1EF4 0019EE54  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 801A1EF8 0019EE58  EC C3 20 28 */	fsubs f6, f3, f4
/* 801A1EFC 0019EE5C  C0 63 00 00 */	lfs f3, 0(r3)
/* 801A1F00 0019EE60  EC 80 20 28 */	fsubs f4, f0, f4
/* 801A1F04 0019EE64  C0 02 B3 F0 */	lfs f0, lbl_803EB5F0@sda21(r2)
/* 801A1F08 0019EE68  EC A6 01 72 */	fmuls f5, f6, f5
/* 801A1F0C 0019EE6C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801A1F10 0019EE70  EC 83 28 28 */	fsubs f4, f3, f5
/* 801A1F14 0019EE74  EC 62 28 28 */	fsubs f3, f2, f5
/* 801A1F18 0019EE78  EC 64 18 24 */	fdivs f3, f4, f3
/* 801A1F1C 0019EE7C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801A1F20 0019EE80  FC 80 18 90 */	fmr f4, f3
/* 801A1F24 0019EE84  40 81 00 08 */	ble lbl_801A1F2C
/* 801A1F28 0019EE88  FC 80 00 90 */	fmr f4, f0
lbl_801A1F2C:
/* 801A1F2C 0019EE8C  38 07 00 01 */	addi r0, r7, 1
/* 801A1F30 0019EE90  80 C9 00 08 */	lwz r6, 8(r9)
/* 801A1F34 0019EE94  54 00 10 3A */	slwi r0, r0, 2
/* 801A1F38 0019EE98  C0 62 B3 F0 */	lfs f3, lbl_803EB5F0@sda21(r2)
/* 801A1F3C 0019EE9C  7D 26 02 14 */	add r9, r6, r0
/* 801A1F40 0019EEA0  C8 02 B4 00 */	lfd f0, lbl_803EB600@sda21(r2)
/* 801A1F44 0019EEA4  7D 06 52 14 */	add r8, r6, r10
/* 801A1F48 0019EEA8  88 C9 00 00 */	lbz r6, 0(r9)
/* 801A1F4C 0019EEAC  88 E8 00 00 */	lbz r7, 0(r8)
/* 801A1F50 0019EEB0  3C 00 43 30 */	lis r0, 0x4330
/* 801A1F54 0019EEB4  90 C1 00 F4 */	stw r6, 0xf4(r1)
/* 801A1F58 0019EEB8  EC 63 20 28 */	fsubs f3, f3, f4
/* 801A1F5C 0019EEBC  90 E1 00 EC */	stw r7, 0xec(r1)
/* 801A1F60 0019EEC0  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 801A1F64 0019EEC4  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 801A1F68 0019EEC8  C8 C1 00 E8 */	lfd f6, 0xe8(r1)
/* 801A1F6C 0019EECC  C8 A1 00 F0 */	lfd f5, 0xf0(r1)
/* 801A1F70 0019EED0  EC C6 00 28 */	fsubs f6, f6, f0
/* 801A1F74 0019EED4  EC A5 00 28 */	fsubs f5, f5, f0
/* 801A1F78 0019EED8  EC C6 00 F2 */	fmuls f6, f6, f3
/* 801A1F7C 0019EEDC  EC A5 01 32 */	fmuls f5, f5, f4
/* 801A1F80 0019EEE0  EC A6 28 2A */	fadds f5, f6, f5
/* 801A1F84 0019EEE4  FC A0 28 1E */	fctiwz f5, f5
/* 801A1F88 0019EEE8  D8 A1 00 E0 */	stfd f5, 0xe0(r1)
/* 801A1F8C 0019EEEC  80 C1 00 E4 */	lwz r6, 0xe4(r1)
/* 801A1F90 0019EEF0  98 C4 00 00 */	stb r6, 0(r4)
/* 801A1F94 0019EEF4  88 E8 00 01 */	lbz r7, 1(r8)
/* 801A1F98 0019EEF8  88 C9 00 01 */	lbz r6, 1(r9)
/* 801A1F9C 0019EEFC  90 E1 00 DC */	stw r7, 0xdc(r1)
/* 801A1FA0 0019EF00  90 C1 00 D4 */	stw r6, 0xd4(r1)
/* 801A1FA4 0019EF04  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 801A1FA8 0019EF08  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 801A1FAC 0019EF0C  C8 C1 00 D8 */	lfd f6, 0xd8(r1)
/* 801A1FB0 0019EF10  C8 A1 00 D0 */	lfd f5, 0xd0(r1)
/* 801A1FB4 0019EF14  EC C6 00 28 */	fsubs f6, f6, f0
/* 801A1FB8 0019EF18  EC A5 00 28 */	fsubs f5, f5, f0
/* 801A1FBC 0019EF1C  EC C6 00 F2 */	fmuls f6, f6, f3
/* 801A1FC0 0019EF20  EC A5 01 32 */	fmuls f5, f5, f4
/* 801A1FC4 0019EF24  EC A6 28 2A */	fadds f5, f6, f5
/* 801A1FC8 0019EF28  FC A0 28 1E */	fctiwz f5, f5
/* 801A1FCC 0019EF2C  D8 A1 00 C8 */	stfd f5, 0xc8(r1)
/* 801A1FD0 0019EF30  80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 801A1FD4 0019EF34  98 C4 00 01 */	stb r6, 1(r4)
/* 801A1FD8 0019EF38  88 E8 00 02 */	lbz r7, 2(r8)
/* 801A1FDC 0019EF3C  88 C9 00 02 */	lbz r6, 2(r9)
/* 801A1FE0 0019EF40  90 E1 00 C4 */	stw r7, 0xc4(r1)
/* 801A1FE4 0019EF44  90 C1 00 BC */	stw r6, 0xbc(r1)
/* 801A1FE8 0019EF48  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801A1FEC 0019EF4C  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 801A1FF0 0019EF50  C8 C1 00 C0 */	lfd f6, 0xc0(r1)
/* 801A1FF4 0019EF54  C8 A1 00 B8 */	lfd f5, 0xb8(r1)
/* 801A1FF8 0019EF58  EC C6 00 28 */	fsubs f6, f6, f0
/* 801A1FFC 0019EF5C  EC A5 00 28 */	fsubs f5, f5, f0
/* 801A2000 0019EF60  EC C6 00 F2 */	fmuls f6, f6, f3
/* 801A2004 0019EF64  EC A5 01 32 */	fmuls f5, f5, f4
/* 801A2008 0019EF68  EC A6 28 2A */	fadds f5, f6, f5
/* 801A200C 0019EF6C  FC A0 28 1E */	fctiwz f5, f5
/* 801A2010 0019EF70  D8 A1 00 B0 */	stfd f5, 0xb0(r1)
/* 801A2014 0019EF74  80 C1 00 B4 */	lwz r6, 0xb4(r1)
/* 801A2018 0019EF78  98 C4 00 02 */	stb r6, 2(r4)
/* 801A201C 0019EF7C  88 E8 00 03 */	lbz r7, 3(r8)
/* 801A2020 0019EF80  88 C9 00 03 */	lbz r6, 3(r9)
/* 801A2024 0019EF84  90 E1 00 AC */	stw r7, 0xac(r1)
/* 801A2028 0019EF88  90 C1 00 A4 */	stw r6, 0xa4(r1)
/* 801A202C 0019EF8C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 801A2030 0019EF90  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801A2034 0019EF94  C8 C1 00 A8 */	lfd f6, 0xa8(r1)
/* 801A2038 0019EF98  C8 A1 00 A0 */	lfd f5, 0xa0(r1)
/* 801A203C 0019EF9C  EC C6 00 28 */	fsubs f6, f6, f0
/* 801A2040 0019EFA0  EC A5 00 28 */	fsubs f5, f5, f0
/* 801A2044 0019EFA4  EC C6 00 F2 */	fmuls f6, f6, f3
/* 801A2048 0019EFA8  EC A5 01 32 */	fmuls f5, f5, f4
/* 801A204C 0019EFAC  EC A6 28 2A */	fadds f5, f6, f5
/* 801A2050 0019EFB0  FC A0 28 1E */	fctiwz f5, f5
/* 801A2054 0019EFB4  D8 A1 00 98 */	stfd f5, 0x98(r1)
/* 801A2058 0019EFB8  80 C1 00 9C */	lwz r6, 0x9c(r1)
/* 801A205C 0019EFBC  98 C4 00 03 */	stb r6, 3(r4)
/* 801A2060 0019EFC0  88 E3 00 04 */	lbz r7, 4(r3)
/* 801A2064 0019EFC4  80 C3 00 08 */	lwz r6, 8(r3)
/* 801A2068 0019EFC8  38 87 00 01 */	addi r4, r7, 1
/* 801A206C 0019EFCC  81 26 00 0C */	lwz r9, 0xc(r6)
/* 801A2070 0019EFD0  54 86 10 3A */	slwi r6, r4, 2
/* 801A2074 0019EFD4  54 E4 10 3A */	slwi r4, r7, 2
/* 801A2078 0019EFD8  7D 09 32 14 */	add r8, r9, r6
/* 801A207C 0019EFDC  7C E9 22 14 */	add r7, r9, r4
/* 801A2080 0019EFE0  88 C7 00 00 */	lbz r6, 0(r7)
/* 801A2084 0019EFE4  88 88 00 00 */	lbz r4, 0(r8)
/* 801A2088 0019EFE8  90 C1 00 94 */	stw r6, 0x94(r1)
/* 801A208C 0019EFEC  90 81 00 8C */	stw r4, 0x8c(r1)
/* 801A2090 0019EFF0  90 01 00 90 */	stw r0, 0x90(r1)
/* 801A2094 0019EFF4  90 01 00 88 */	stw r0, 0x88(r1)
/* 801A2098 0019EFF8  C8 C1 00 90 */	lfd f6, 0x90(r1)
/* 801A209C 0019EFFC  C8 A1 00 88 */	lfd f5, 0x88(r1)
/* 801A20A0 0019F000  EC C6 00 28 */	fsubs f6, f6, f0
/* 801A20A4 0019F004  EC A5 00 28 */	fsubs f5, f5, f0
/* 801A20A8 0019F008  EC C6 00 F2 */	fmuls f6, f6, f3
/* 801A20AC 0019F00C  EC A5 01 32 */	fmuls f5, f5, f4
/* 801A20B0 0019F010  EC A6 28 2A */	fadds f5, f6, f5
/* 801A20B4 0019F014  FC A0 28 1E */	fctiwz f5, f5
/* 801A20B8 0019F018  D8 A1 00 80 */	stfd f5, 0x80(r1)
/* 801A20BC 0019F01C  80 81 00 84 */	lwz r4, 0x84(r1)
/* 801A20C0 0019F020  98 85 00 00 */	stb r4, 0(r5)
/* 801A20C4 0019F024  88 C7 00 01 */	lbz r6, 1(r7)
/* 801A20C8 0019F028  88 88 00 01 */	lbz r4, 1(r8)
/* 801A20CC 0019F02C  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 801A20D0 0019F030  90 81 00 74 */	stw r4, 0x74(r1)
/* 801A20D4 0019F034  90 01 00 78 */	stw r0, 0x78(r1)
/* 801A20D8 0019F038  90 01 00 70 */	stw r0, 0x70(r1)
/* 801A20DC 0019F03C  C8 C1 00 78 */	lfd f6, 0x78(r1)
/* 801A20E0 0019F040  C8 A1 00 70 */	lfd f5, 0x70(r1)
/* 801A20E4 0019F044  EC C6 00 28 */	fsubs f6, f6, f0
/* 801A20E8 0019F048  EC A5 00 28 */	fsubs f5, f5, f0
/* 801A20EC 0019F04C  EC C6 00 F2 */	fmuls f6, f6, f3
/* 801A20F0 0019F050  EC A5 01 32 */	fmuls f5, f5, f4
/* 801A20F4 0019F054  EC A6 28 2A */	fadds f5, f6, f5
/* 801A20F8 0019F058  FC A0 28 1E */	fctiwz f5, f5
/* 801A20FC 0019F05C  D8 A1 00 68 */	stfd f5, 0x68(r1)
/* 801A2100 0019F060  80 81 00 6C */	lwz r4, 0x6c(r1)
/* 801A2104 0019F064  98 85 00 01 */	stb r4, 1(r5)
/* 801A2108 0019F068  88 C7 00 02 */	lbz r6, 2(r7)
/* 801A210C 0019F06C  88 88 00 02 */	lbz r4, 2(r8)
/* 801A2110 0019F070  90 C1 00 64 */	stw r6, 0x64(r1)
/* 801A2114 0019F074  90 81 00 5C */	stw r4, 0x5c(r1)
/* 801A2118 0019F078  90 01 00 60 */	stw r0, 0x60(r1)
/* 801A211C 0019F07C  90 01 00 58 */	stw r0, 0x58(r1)
/* 801A2120 0019F080  C8 C1 00 60 */	lfd f6, 0x60(r1)
/* 801A2124 0019F084  C8 A1 00 58 */	lfd f5, 0x58(r1)
/* 801A2128 0019F088  EC C6 00 28 */	fsubs f6, f6, f0
/* 801A212C 0019F08C  EC A5 00 28 */	fsubs f5, f5, f0
/* 801A2130 0019F090  EC C6 00 F2 */	fmuls f6, f6, f3
/* 801A2134 0019F094  EC A5 01 32 */	fmuls f5, f5, f4
/* 801A2138 0019F098  EC A6 28 2A */	fadds f5, f6, f5
/* 801A213C 0019F09C  FC A0 28 1E */	fctiwz f5, f5
/* 801A2140 0019F0A0  D8 A1 00 50 */	stfd f5, 0x50(r1)
/* 801A2144 0019F0A4  80 81 00 54 */	lwz r4, 0x54(r1)
/* 801A2148 0019F0A8  98 85 00 02 */	stb r4, 2(r5)
/* 801A214C 0019F0AC  88 C7 00 03 */	lbz r6, 3(r7)
/* 801A2150 0019F0B0  88 88 00 03 */	lbz r4, 3(r8)
/* 801A2154 0019F0B4  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 801A2158 0019F0B8  90 81 00 44 */	stw r4, 0x44(r1)
/* 801A215C 0019F0BC  90 01 00 48 */	stw r0, 0x48(r1)
/* 801A2160 0019F0C0  90 01 00 40 */	stw r0, 0x40(r1)
/* 801A2164 0019F0C4  C8 C1 00 48 */	lfd f6, 0x48(r1)
/* 801A2168 0019F0C8  C8 A1 00 40 */	lfd f5, 0x40(r1)
/* 801A216C 0019F0CC  EC C6 00 28 */	fsubs f6, f6, f0
/* 801A2170 0019F0D0  EC 05 00 28 */	fsubs f0, f5, f0
/* 801A2174 0019F0D4  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801A2178 0019F0D8  EC 00 01 32 */	fmuls f0, f0, f4
/* 801A217C 0019F0DC  EC 03 00 2A */	fadds f0, f3, f0
/* 801A2180 0019F0E0  FC 00 00 1E */	fctiwz f0, f0
/* 801A2184 0019F0E4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 801A2188 0019F0E8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801A218C 0019F0EC  98 05 00 03 */	stb r0, 3(r5)
/* 801A2190 0019F0F0  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A2194 0019F0F4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801A2198 0019F0F8  4C 41 13 82 */	cror 2, 1, 2
/* 801A219C 0019F0FC  40 82 00 44 */	bne lbl_801A21E0
/* 801A21A0 0019F100  88 83 00 04 */	lbz r4, 4(r3)
/* 801A21A4 0019F104  38 04 00 01 */	addi r0, r4, 1
/* 801A21A8 0019F108  98 03 00 04 */	stb r0, 4(r3)
/* 801A21AC 0019F10C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801A21B0 0019F110  80 A3 00 08 */	lwz r5, 8(r3)
/* 801A21B4 0019F114  88 85 00 03 */	lbz r4, 3(r5)
/* 801A21B8 0019F118  38 84 FF FF */	addi r4, r4, -1
/* 801A21BC 0019F11C  7C 00 20 00 */	cmpw r0, r4
/* 801A21C0 0019F120  41 80 00 20 */	blt lbl_801A21E0
/* 801A21C4 0019F124  88 05 00 02 */	lbz r0, 2(r5)
/* 801A21C8 0019F128  28 00 00 00 */	cmplwi r0, 0
/* 801A21CC 0019F12C  41 82 00 0C */	beq lbl_801A21D8
/* 801A21D0 0019F130  98 83 00 04 */	stb r4, 4(r3)
/* 801A21D4 0019F134  48 00 00 0C */	b lbl_801A21E0
lbl_801A21D8:
/* 801A21D8 0019F138  38 00 00 00 */	li r0, 0
/* 801A21DC 0019F13C  98 03 00 04 */	stb r0, 4(r3)
lbl_801A21E0:
/* 801A21E0 0019F140  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A21E4 0019F144  3C A0 43 30 */	lis r5, 0x4330
/* 801A21E8 0019F148  EC 00 08 2A */	fadds f0, f0, f1
/* 801A21EC 0019F14C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801A21F0 0019F150  A8 03 00 06 */	lha r0, 6(r3)
/* 801A21F4 0019F154  C8 22 B3 F8 */	lfd f1, lbl_803EB5F8@sda21(r2)
/* 801A21F8 0019F158  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 801A21FC 0019F15C  C0 43 00 00 */	lfs f2, 0(r3)
/* 801A2200 0019F160  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 801A2204 0019F164  90 A1 00 38 */	stw r5, 0x38(r1)
/* 801A2208 0019F168  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801A220C 0019F16C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A2210 0019F170  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A2214 0019F174  4C 41 13 82 */	cror 2, 1, 2
/* 801A2218 0019F178  40 82 00 4C */	bne lbl_801A2264
/* 801A221C 0019F17C  80 83 00 08 */	lwz r4, 8(r3)
/* 801A2220 0019F180  88 04 00 02 */	lbz r0, 2(r4)
/* 801A2224 0019F184  28 00 00 00 */	cmplwi r0, 0
/* 801A2228 0019F188  41 82 00 2C */	beq lbl_801A2254
/* 801A222C 0019F18C  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 801A2230 0019F190  90 A1 00 38 */	stw r5, 0x38(r1)
/* 801A2234 0019F194  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801A2238 0019F198  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A223C 0019F19C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801A2240 0019F1A0  80 83 00 08 */	lwz r4, 8(r3)
/* 801A2244 0019F1A4  88 84 00 03 */	lbz r4, 3(r4)
/* 801A2248 0019F1A8  38 04 FF FF */	addi r0, r4, -1
/* 801A224C 0019F1AC  98 03 00 04 */	stb r0, 4(r3)
/* 801A2250 0019F1B0  48 00 00 14 */	b lbl_801A2264
lbl_801A2254:
/* 801A2254 0019F1B4  C0 02 B3 F4 */	lfs f0, lbl_803EB5F4@sda21(r2)
/* 801A2258 0019F1B8  38 00 00 00 */	li r0, 0
/* 801A225C 0019F1BC  D0 03 00 00 */	stfs f0, 0(r3)
/* 801A2260 0019F1C0  98 03 00 04 */	stb r0, 4(r3)
lbl_801A2264:
/* 801A2264 0019F1C4  38 21 00 F8 */	addi r1, r1, 0xf8
/* 801A2268 0019F1C8  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 0x8
lbl_803EB5F0:
	.4byte 0x3F800000
lbl_803EB5F4:
	.4byte 0x00000000
lbl_803EB5F8:
	.4byte 0x43300000
	.4byte 0x80000000
lbl_803EB600:
	.4byte 0x43300000
	.4byte 0x00000000
