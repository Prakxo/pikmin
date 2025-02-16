.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global GXInitLightAttn
GXInitLightAttn:
/* 8021197C 0020E8DC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80211980 0020E8E0  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 80211984 0020E8E4  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 80211988 0020E8E8  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 8021198C 0020E8EC  D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 80211990 0020E8F0  D0 C3 00 24 */	stfs f6, 0x24(r3)
/* 80211994 0020E8F4  4E 80 00 20 */	blr 

.global GXInitLightPos
GXInitLightPos:
/* 80211998 0020E8F8  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8021199C 0020E8FC  D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 802119A0 0020E900  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 802119A4 0020E904  4E 80 00 20 */	blr 

.global GXInitLightDir
GXInitLightDir:
/* 802119A8 0020E908  FC 80 08 50 */	fneg f4, f1
/* 802119AC 0020E90C  FC 20 10 50 */	fneg f1, f2
/* 802119B0 0020E910  FC 00 18 50 */	fneg f0, f3
/* 802119B4 0020E914  D0 83 00 34 */	stfs f4, 0x34(r3)
/* 802119B8 0020E918  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 802119BC 0020E91C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802119C0 0020E920  4E 80 00 20 */	blr 

.global GXInitSpecularDir
GXInitSpecularDir:
/* 802119C4 0020E924  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802119C8 0020E928  FC 00 08 50 */	fneg f0, f1
/* 802119CC 0020E92C  FC 20 10 50 */	fneg f1, f2
/* 802119D0 0020E930  C0 A2 C3 64 */	lfs f5, lbl_803EC564@sda21(r2)
/* 802119D4 0020E934  EC C0 00 32 */	fmuls f6, f0, f0
/* 802119D8 0020E938  C0 82 C3 60 */	lfs f4, lbl_803EC560@sda21(r2)
/* 802119DC 0020E93C  EC 45 18 28 */	fsubs f2, f5, f3
/* 802119E0 0020E940  EC A1 00 72 */	fmuls f5, f1, f1
/* 802119E4 0020E944  EC E2 00 B2 */	fmuls f7, f2, f2
/* 802119E8 0020E948  EC A6 28 2A */	fadds f5, f6, f5
/* 802119EC 0020E94C  ED 07 28 2A */	fadds f8, f7, f5
/* 802119F0 0020E950  FC 08 20 40 */	fcmpo cr0, f8, f4
/* 802119F4 0020E954  40 81 00 5C */	ble .L_80211A50
/* 802119F8 0020E958  FC A0 40 34 */	frsqrte f5, f8
/* 802119FC 0020E95C  C8 E2 C3 68 */	lfd f7, lbl_803EC568@sda21(r2)
/* 80211A00 0020E960  C8 C2 C3 70 */	lfd f6, lbl_803EC570@sda21(r2)
/* 80211A04 0020E964  FC 85 01 72 */	fmul f4, f5, f5
/* 80211A08 0020E968  FC A7 01 72 */	fmul f5, f7, f5
/* 80211A0C 0020E96C  FC 88 01 32 */	fmul f4, f8, f4
/* 80211A10 0020E970  FC 86 20 28 */	fsub f4, f6, f4
/* 80211A14 0020E974  FC A5 01 32 */	fmul f5, f5, f4
/* 80211A18 0020E978  FC 85 01 72 */	fmul f4, f5, f5
/* 80211A1C 0020E97C  FC A7 01 72 */	fmul f5, f7, f5
/* 80211A20 0020E980  FC 88 01 32 */	fmul f4, f8, f4
/* 80211A24 0020E984  FC 86 20 28 */	fsub f4, f6, f4
/* 80211A28 0020E988  FC A5 01 32 */	fmul f5, f5, f4
/* 80211A2C 0020E98C  FC 85 01 72 */	fmul f4, f5, f5
/* 80211A30 0020E990  FC A7 01 72 */	fmul f5, f7, f5
/* 80211A34 0020E994  FC 88 01 32 */	fmul f4, f8, f4
/* 80211A38 0020E998  FC 86 20 28 */	fsub f4, f6, f4
/* 80211A3C 0020E99C  FC 85 01 32 */	fmul f4, f5, f4
/* 80211A40 0020E9A0  FC 88 01 32 */	fmul f4, f8, f4
/* 80211A44 0020E9A4  FC 80 20 18 */	frsp f4, f4
/* 80211A48 0020E9A8  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80211A4C 0020E9AC  C1 01 00 18 */	lfs f8, 0x18(r1)
.L_80211A50:
/* 80211A50 0020E9B0  C0 82 C3 64 */	lfs f4, lbl_803EC564@sda21(r2)
/* 80211A54 0020E9B4  FC 60 18 50 */	fneg f3, f3
/* 80211A58 0020E9B8  EC C4 40 24 */	fdivs f6, f4, f8
/* 80211A5C 0020E9BC  EC A0 01 B2 */	fmuls f5, f0, f6
/* 80211A60 0020E9C0  EC 81 01 B2 */	fmuls f4, f1, f6
/* 80211A64 0020E9C4  EC 42 01 B2 */	fmuls f2, f2, f6
/* 80211A68 0020E9C8  D0 A3 00 34 */	stfs f5, 0x34(r3)
/* 80211A6C 0020E9CC  D0 83 00 38 */	stfs f4, 0x38(r3)
/* 80211A70 0020E9D0  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80211A74 0020E9D4  C0 82 C3 78 */	lfs f4, lbl_803EC578@sda21(r2)
/* 80211A78 0020E9D8  EC 44 00 32 */	fmuls f2, f4, f0
/* 80211A7C 0020E9DC  EC 24 00 72 */	fmuls f1, f4, f1
/* 80211A80 0020E9E0  EC 04 00 F2 */	fmuls f0, f4, f3
/* 80211A84 0020E9E4  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 80211A88 0020E9E8  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80211A8C 0020E9EC  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80211A90 0020E9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80211A94 0020E9F4  4E 80 00 20 */	blr 

.global GXInitLightColor
GXInitLightColor:
/* 80211A98 0020E9F8  88 04 00 01 */	lbz r0, 1(r4)
/* 80211A9C 0020E9FC  88 A4 00 00 */	lbz r5, 0(r4)
/* 80211AA0 0020EA00  88 C4 00 02 */	lbz r6, 2(r4)
/* 80211AA4 0020EA04  54 00 80 1E */	slwi r0, r0, 0x10
/* 80211AA8 0020EA08  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 80211AAC 0020EA0C  88 84 00 03 */	lbz r4, 3(r4)
/* 80211AB0 0020EA10  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 80211AB4 0020EA14  7C 80 03 78 */	or r0, r4, r0
/* 80211AB8 0020EA18  90 03 00 0C */	stw r0, 0xc(r3)
/* 80211ABC 0020EA1C  4E 80 00 20 */	blr 

.global GXLoadLightObjImm
GXLoadLightObjImm:
/* 80211AC0 0020EA20  2C 04 00 10 */	cmpwi r4, 0x10
/* 80211AC4 0020EA24  41 82 00 7C */	beq .L_80211B40
/* 80211AC8 0020EA28  40 80 00 34 */	bge .L_80211AFC
/* 80211ACC 0020EA2C  2C 04 00 04 */	cmpwi r4, 4
/* 80211AD0 0020EA30  41 82 00 60 */	beq .L_80211B30
/* 80211AD4 0020EA34  40 80 00 1C */	bge .L_80211AF0
/* 80211AD8 0020EA38  2C 04 00 02 */	cmpwi r4, 2
/* 80211ADC 0020EA3C  41 82 00 4C */	beq .L_80211B28
/* 80211AE0 0020EA40  40 80 00 80 */	bge .L_80211B60
/* 80211AE4 0020EA44  2C 04 00 01 */	cmpwi r4, 1
/* 80211AE8 0020EA48  40 80 00 38 */	bge .L_80211B20
/* 80211AEC 0020EA4C  48 00 00 74 */	b .L_80211B60
.L_80211AF0:
/* 80211AF0 0020EA50  2C 04 00 08 */	cmpwi r4, 8
/* 80211AF4 0020EA54  41 82 00 44 */	beq .L_80211B38
/* 80211AF8 0020EA58  48 00 00 68 */	b .L_80211B60
.L_80211AFC:
/* 80211AFC 0020EA5C  2C 04 00 40 */	cmpwi r4, 0x40
/* 80211B00 0020EA60  41 82 00 50 */	beq .L_80211B50
/* 80211B04 0020EA64  40 80 00 10 */	bge .L_80211B14
/* 80211B08 0020EA68  2C 04 00 20 */	cmpwi r4, 0x20
/* 80211B0C 0020EA6C  41 82 00 3C */	beq .L_80211B48
/* 80211B10 0020EA70  48 00 00 50 */	b .L_80211B60
.L_80211B14:
/* 80211B14 0020EA74  2C 04 00 80 */	cmpwi r4, 0x80
/* 80211B18 0020EA78  41 82 00 40 */	beq .L_80211B58
/* 80211B1C 0020EA7C  48 00 00 44 */	b .L_80211B60
.L_80211B20:
/* 80211B20 0020EA80  38 00 00 00 */	li r0, 0
/* 80211B24 0020EA84  48 00 00 40 */	b .L_80211B64
.L_80211B28:
/* 80211B28 0020EA88  38 00 00 01 */	li r0, 1
/* 80211B2C 0020EA8C  48 00 00 38 */	b .L_80211B64
.L_80211B30:
/* 80211B30 0020EA90  38 00 00 02 */	li r0, 2
/* 80211B34 0020EA94  48 00 00 30 */	b .L_80211B64
.L_80211B38:
/* 80211B38 0020EA98  38 00 00 03 */	li r0, 3
/* 80211B3C 0020EA9C  48 00 00 28 */	b .L_80211B64
.L_80211B40:
/* 80211B40 0020EAA0  38 00 00 04 */	li r0, 4
/* 80211B44 0020EAA4  48 00 00 20 */	b .L_80211B64
.L_80211B48:
/* 80211B48 0020EAA8  38 00 00 05 */	li r0, 5
/* 80211B4C 0020EAAC  48 00 00 18 */	b .L_80211B64
.L_80211B50:
/* 80211B50 0020EAB0  38 00 00 06 */	li r0, 6
/* 80211B54 0020EAB4  48 00 00 10 */	b .L_80211B64
.L_80211B58:
/* 80211B58 0020EAB8  38 00 00 07 */	li r0, 7
/* 80211B5C 0020EABC  48 00 00 08 */	b .L_80211B64
.L_80211B60:
/* 80211B60 0020EAC0  38 00 00 00 */	li r0, 0
.L_80211B64:
/* 80211B64 0020EAC4  54 05 20 36 */	slwi r5, r0, 4
/* 80211B68 0020EAC8  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80211B6C 0020EACC  38 05 06 00 */	addi r0, r5, 0x600
/* 80211B70 0020EAD0  38 A0 00 10 */	li r5, 0x10
/* 80211B74 0020EAD4  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80211B78 0020EAD8  98 A6 80 00 */	stb r5, 0xCC008000@l(r6)
/* 80211B7C 0020EADC  64 00 00 0F */	oris r0, r0, 0xf
/* 80211B80 0020EAE0  38 A0 00 00 */	li r5, 0
/* 80211B84 0020EAE4  90 06 80 00 */	stw r0, 0xCC008000@l(r6)
/* 80211B88 0020EAE8  90 A6 80 00 */	stw r5, 0xCC008000@l(r6)
/* 80211B8C 0020EAEC  90 A6 80 00 */	stw r5, 0xCC008000@l(r6)
/* 80211B90 0020EAF0  90 A6 80 00 */	stw r5, 0xCC008000@l(r6)
/* 80211B94 0020EAF4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80211B98 0020EAF8  90 06 80 00 */	stw r0, 0xCC008000@l(r6)
/* 80211B9C 0020EAFC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80211BA0 0020EB00  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BA4 0020EB04  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80211BA8 0020EB08  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BAC 0020EB0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80211BB0 0020EB10  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BB4 0020EB14  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80211BB8 0020EB18  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BBC 0020EB1C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80211BC0 0020EB20  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BC4 0020EB24  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80211BC8 0020EB28  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BCC 0020EB2C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80211BD0 0020EB30  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BD4 0020EB34  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80211BD8 0020EB38  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BDC 0020EB3C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80211BE0 0020EB40  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BE4 0020EB44  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80211BE8 0020EB48  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BEC 0020EB4C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80211BF0 0020EB50  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BF4 0020EB54  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80211BF8 0020EB58  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80211BFC 0020EB5C  B0 A4 00 02 */	sth r5, 2(r4)
/* 80211C00 0020EB60  4E 80 00 20 */	blr 

.global GXSetChanAmbColor
GXSetChanAmbColor:
/* 80211C04 0020EB64  2C 03 00 03 */	cmpwi r3, 3
/* 80211C08 0020EB68  41 82 00 B0 */	beq .L_80211CB8
/* 80211C0C 0020EB6C  40 80 00 1C */	bge .L_80211C28
/* 80211C10 0020EB70  2C 03 00 01 */	cmpwi r3, 1
/* 80211C14 0020EB74  41 82 00 58 */	beq .L_80211C6C
/* 80211C18 0020EB78  40 80 00 88 */	bge .L_80211CA0
/* 80211C1C 0020EB7C  2C 03 00 00 */	cmpwi r3, 0
/* 80211C20 0020EB80  40 80 00 18 */	bge .L_80211C38
/* 80211C24 0020EB84  4E 80 00 20 */	blr 
.L_80211C28:
/* 80211C28 0020EB88  2C 03 00 05 */	cmpwi r3, 5
/* 80211C2C 0020EB8C  41 82 00 D4 */	beq .L_80211D00
/* 80211C30 0020EB90  4C 80 00 20 */	bgelr 
/* 80211C34 0020EB94  48 00 00 9C */	b .L_80211CD0
.L_80211C38:
/* 80211C38 0020EB98  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80211C3C 0020EB9C  38 60 00 00 */	li r3, 0
/* 80211C40 0020EBA0  88 C4 00 02 */	lbz r6, 2(r4)
/* 80211C44 0020EBA4  80 E5 00 A8 */	lwz r7, 0xa8(r5)
/* 80211C48 0020EBA8  88 A4 00 01 */	lbz r5, 1(r4)
/* 80211C4C 0020EBAC  88 04 00 00 */	lbz r0, 0(r4)
/* 80211C50 0020EBB0  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 80211C54 0020EBB4  50 C7 44 2E */	rlwimi r7, r6, 8, 0x10, 0x17
/* 80211C58 0020EBB8  54 A4 80 1E */	slwi r4, r5, 0x10
/* 80211C5C 0020EBBC  50 E4 04 3E */	rlwimi r4, r7, 0, 0x10, 0x1f
/* 80211C60 0020EBC0  54 07 C0 0E */	slwi r7, r0, 0x18
/* 80211C64 0020EBC4  50 87 02 3E */	rlwimi r7, r4, 0, 8, 0x1f
/* 80211C68 0020EBC8  48 00 00 CC */	b .L_80211D34
.L_80211C6C:
/* 80211C6C 0020EBCC  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80211C70 0020EBD0  38 60 00 01 */	li r3, 1
/* 80211C74 0020EBD4  88 C4 00 02 */	lbz r6, 2(r4)
/* 80211C78 0020EBD8  80 E5 00 AC */	lwz r7, 0xac(r5)
/* 80211C7C 0020EBDC  88 A4 00 01 */	lbz r5, 1(r4)
/* 80211C80 0020EBE0  88 04 00 00 */	lbz r0, 0(r4)
/* 80211C84 0020EBE4  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 80211C88 0020EBE8  50 C7 44 2E */	rlwimi r7, r6, 8, 0x10, 0x17
/* 80211C8C 0020EBEC  54 A4 80 1E */	slwi r4, r5, 0x10
/* 80211C90 0020EBF0  50 E4 04 3E */	rlwimi r4, r7, 0, 0x10, 0x1f
/* 80211C94 0020EBF4  54 07 C0 0E */	slwi r7, r0, 0x18
/* 80211C98 0020EBF8  50 87 02 3E */	rlwimi r7, r4, 0, 8, 0x1f
/* 80211C9C 0020EBFC  48 00 00 98 */	b .L_80211D34
.L_80211CA0:
/* 80211CA0 0020EC00  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80211CA4 0020EC04  38 60 00 00 */	li r3, 0
/* 80211CA8 0020EC08  88 E4 00 03 */	lbz r7, 3(r4)
/* 80211CAC 0020EC0C  80 05 00 A8 */	lwz r0, 0xa8(r5)
/* 80211CB0 0020EC10  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 80211CB4 0020EC14  48 00 00 80 */	b .L_80211D34
.L_80211CB8:
/* 80211CB8 0020EC18  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80211CBC 0020EC1C  38 60 00 01 */	li r3, 1
/* 80211CC0 0020EC20  88 E4 00 03 */	lbz r7, 3(r4)
/* 80211CC4 0020EC24  80 05 00 AC */	lwz r0, 0xac(r5)
/* 80211CC8 0020EC28  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 80211CCC 0020EC2C  48 00 00 68 */	b .L_80211D34
.L_80211CD0:
/* 80211CD0 0020EC30  88 04 00 02 */	lbz r0, 2(r4)
/* 80211CD4 0020EC34  38 60 00 00 */	li r3, 0
/* 80211CD8 0020EC38  88 E4 00 03 */	lbz r7, 3(r4)
/* 80211CDC 0020EC3C  54 06 40 2E */	slwi r6, r0, 8
/* 80211CE0 0020EC40  88 A4 00 01 */	lbz r5, 1(r4)
/* 80211CE4 0020EC44  88 04 00 00 */	lbz r0, 0(r4)
/* 80211CE8 0020EC48  50 E6 06 3E */	rlwimi r6, r7, 0, 0x18, 0x1f
/* 80211CEC 0020EC4C  54 A4 80 1E */	slwi r4, r5, 0x10
/* 80211CF0 0020EC50  50 C4 04 3E */	rlwimi r4, r6, 0, 0x10, 0x1f
/* 80211CF4 0020EC54  54 07 C0 0E */	slwi r7, r0, 0x18
/* 80211CF8 0020EC58  50 87 02 3E */	rlwimi r7, r4, 0, 8, 0x1f
/* 80211CFC 0020EC5C  48 00 00 38 */	b .L_80211D34
.L_80211D00:
/* 80211D00 0020EC60  88 04 00 02 */	lbz r0, 2(r4)
/* 80211D04 0020EC64  38 60 00 01 */	li r3, 1
/* 80211D08 0020EC68  88 E4 00 03 */	lbz r7, 3(r4)
/* 80211D0C 0020EC6C  54 06 40 2E */	slwi r6, r0, 8
/* 80211D10 0020EC70  88 A4 00 01 */	lbz r5, 1(r4)
/* 80211D14 0020EC74  88 04 00 00 */	lbz r0, 0(r4)
/* 80211D18 0020EC78  50 E6 06 3E */	rlwimi r6, r7, 0, 0x18, 0x1f
/* 80211D1C 0020EC7C  54 A4 80 1E */	slwi r4, r5, 0x10
/* 80211D20 0020EC80  50 C4 04 3E */	rlwimi r4, r6, 0, 0x10, 0x1f
/* 80211D24 0020EC84  54 07 C0 0E */	slwi r7, r0, 0x18
/* 80211D28 0020EC88  50 87 02 3E */	rlwimi r7, r4, 0, 8, 0x1f
/* 80211D2C 0020EC8C  48 00 00 08 */	b .L_80211D34
/* 80211D30 0020EC90  4E 80 00 20 */	blr 
.L_80211D34:
/* 80211D34 0020EC94  38 00 00 10 */	li r0, 0x10
/* 80211D38 0020EC98  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80211D3C 0020EC9C  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80211D40 0020ECA0  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80211D44 0020ECA4  38 03 10 0A */	addi r0, r3, 0x100a
/* 80211D48 0020ECA8  38 A0 00 00 */	li r5, 0
/* 80211D4C 0020ECAC  90 06 80 00 */	stw r0, 0xCC008000@l(r6)
/* 80211D50 0020ECB0  54 60 10 3A */	slwi r0, r3, 2
/* 80211D54 0020ECB4  90 E6 80 00 */	stw r7, 0xCC008000@l(r6)
/* 80211D58 0020ECB8  B0 A4 00 02 */	sth r5, 2(r4)
/* 80211D5C 0020ECBC  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80211D60 0020ECC0  7C 63 02 14 */	add r3, r3, r0
/* 80211D64 0020ECC4  90 E3 00 A8 */	stw r7, 0xa8(r3)
/* 80211D68 0020ECC8  4E 80 00 20 */	blr 

.global GXSetChanMatColor
GXSetChanMatColor:
/* 80211D6C 0020ECCC  2C 03 00 03 */	cmpwi r3, 3
/* 80211D70 0020ECD0  41 82 00 B0 */	beq .L_80211E20
/* 80211D74 0020ECD4  40 80 00 1C */	bge .L_80211D90
/* 80211D78 0020ECD8  2C 03 00 01 */	cmpwi r3, 1
/* 80211D7C 0020ECDC  41 82 00 58 */	beq .L_80211DD4
/* 80211D80 0020ECE0  40 80 00 88 */	bge .L_80211E08
/* 80211D84 0020ECE4  2C 03 00 00 */	cmpwi r3, 0
/* 80211D88 0020ECE8  40 80 00 18 */	bge .L_80211DA0
/* 80211D8C 0020ECEC  4E 80 00 20 */	blr 
.L_80211D90:
/* 80211D90 0020ECF0  2C 03 00 05 */	cmpwi r3, 5
/* 80211D94 0020ECF4  41 82 00 D4 */	beq .L_80211E68
/* 80211D98 0020ECF8  4C 80 00 20 */	bgelr 
/* 80211D9C 0020ECFC  48 00 00 9C */	b .L_80211E38
.L_80211DA0:
/* 80211DA0 0020ED00  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80211DA4 0020ED04  38 60 00 00 */	li r3, 0
/* 80211DA8 0020ED08  88 C4 00 02 */	lbz r6, 2(r4)
/* 80211DAC 0020ED0C  80 E5 00 B0 */	lwz r7, 0xb0(r5)
/* 80211DB0 0020ED10  88 A4 00 01 */	lbz r5, 1(r4)
/* 80211DB4 0020ED14  88 04 00 00 */	lbz r0, 0(r4)
/* 80211DB8 0020ED18  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 80211DBC 0020ED1C  50 C7 44 2E */	rlwimi r7, r6, 8, 0x10, 0x17
/* 80211DC0 0020ED20  54 A4 80 1E */	slwi r4, r5, 0x10
/* 80211DC4 0020ED24  50 E4 04 3E */	rlwimi r4, r7, 0, 0x10, 0x1f
/* 80211DC8 0020ED28  54 07 C0 0E */	slwi r7, r0, 0x18
/* 80211DCC 0020ED2C  50 87 02 3E */	rlwimi r7, r4, 0, 8, 0x1f
/* 80211DD0 0020ED30  48 00 00 CC */	b .L_80211E9C
.L_80211DD4:
/* 80211DD4 0020ED34  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80211DD8 0020ED38  38 60 00 01 */	li r3, 1
/* 80211DDC 0020ED3C  88 C4 00 02 */	lbz r6, 2(r4)
/* 80211DE0 0020ED40  80 E5 00 B4 */	lwz r7, 0xb4(r5)
/* 80211DE4 0020ED44  88 A4 00 01 */	lbz r5, 1(r4)
/* 80211DE8 0020ED48  88 04 00 00 */	lbz r0, 0(r4)
/* 80211DEC 0020ED4C  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 80211DF0 0020ED50  50 C7 44 2E */	rlwimi r7, r6, 8, 0x10, 0x17
/* 80211DF4 0020ED54  54 A4 80 1E */	slwi r4, r5, 0x10
/* 80211DF8 0020ED58  50 E4 04 3E */	rlwimi r4, r7, 0, 0x10, 0x1f
/* 80211DFC 0020ED5C  54 07 C0 0E */	slwi r7, r0, 0x18
/* 80211E00 0020ED60  50 87 02 3E */	rlwimi r7, r4, 0, 8, 0x1f
/* 80211E04 0020ED64  48 00 00 98 */	b .L_80211E9C
.L_80211E08:
/* 80211E08 0020ED68  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80211E0C 0020ED6C  38 60 00 00 */	li r3, 0
/* 80211E10 0020ED70  88 E4 00 03 */	lbz r7, 3(r4)
/* 80211E14 0020ED74  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 80211E18 0020ED78  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 80211E1C 0020ED7C  48 00 00 80 */	b .L_80211E9C
.L_80211E20:
/* 80211E20 0020ED80  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80211E24 0020ED84  38 60 00 01 */	li r3, 1
/* 80211E28 0020ED88  88 E4 00 03 */	lbz r7, 3(r4)
/* 80211E2C 0020ED8C  80 05 00 B4 */	lwz r0, 0xb4(r5)
/* 80211E30 0020ED90  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 80211E34 0020ED94  48 00 00 68 */	b .L_80211E9C
.L_80211E38:
/* 80211E38 0020ED98  88 04 00 02 */	lbz r0, 2(r4)
/* 80211E3C 0020ED9C  38 60 00 00 */	li r3, 0
/* 80211E40 0020EDA0  88 E4 00 03 */	lbz r7, 3(r4)
/* 80211E44 0020EDA4  54 06 40 2E */	slwi r6, r0, 8
/* 80211E48 0020EDA8  88 A4 00 01 */	lbz r5, 1(r4)
/* 80211E4C 0020EDAC  88 04 00 00 */	lbz r0, 0(r4)
/* 80211E50 0020EDB0  50 E6 06 3E */	rlwimi r6, r7, 0, 0x18, 0x1f
/* 80211E54 0020EDB4  54 A4 80 1E */	slwi r4, r5, 0x10
/* 80211E58 0020EDB8  50 C4 04 3E */	rlwimi r4, r6, 0, 0x10, 0x1f
/* 80211E5C 0020EDBC  54 07 C0 0E */	slwi r7, r0, 0x18
/* 80211E60 0020EDC0  50 87 02 3E */	rlwimi r7, r4, 0, 8, 0x1f
/* 80211E64 0020EDC4  48 00 00 38 */	b .L_80211E9C
.L_80211E68:
/* 80211E68 0020EDC8  88 04 00 02 */	lbz r0, 2(r4)
/* 80211E6C 0020EDCC  38 60 00 01 */	li r3, 1
/* 80211E70 0020EDD0  88 E4 00 03 */	lbz r7, 3(r4)
/* 80211E74 0020EDD4  54 06 40 2E */	slwi r6, r0, 8
/* 80211E78 0020EDD8  88 A4 00 01 */	lbz r5, 1(r4)
/* 80211E7C 0020EDDC  88 04 00 00 */	lbz r0, 0(r4)
/* 80211E80 0020EDE0  50 E6 06 3E */	rlwimi r6, r7, 0, 0x18, 0x1f
/* 80211E84 0020EDE4  54 A4 80 1E */	slwi r4, r5, 0x10
/* 80211E88 0020EDE8  50 C4 04 3E */	rlwimi r4, r6, 0, 0x10, 0x1f
/* 80211E8C 0020EDEC  54 07 C0 0E */	slwi r7, r0, 0x18
/* 80211E90 0020EDF0  50 87 02 3E */	rlwimi r7, r4, 0, 8, 0x1f
/* 80211E94 0020EDF4  48 00 00 08 */	b .L_80211E9C
/* 80211E98 0020EDF8  4E 80 00 20 */	blr 
.L_80211E9C:
/* 80211E9C 0020EDFC  38 00 00 10 */	li r0, 0x10
/* 80211EA0 0020EE00  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80211EA4 0020EE04  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80211EA8 0020EE08  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80211EAC 0020EE0C  38 03 10 0C */	addi r0, r3, 0x100c
/* 80211EB0 0020EE10  38 A0 00 00 */	li r5, 0
/* 80211EB4 0020EE14  90 06 80 00 */	stw r0, 0xCC008000@l(r6)
/* 80211EB8 0020EE18  54 60 10 3A */	slwi r0, r3, 2
/* 80211EBC 0020EE1C  90 E6 80 00 */	stw r7, 0xCC008000@l(r6)
/* 80211EC0 0020EE20  B0 A4 00 02 */	sth r5, 2(r4)
/* 80211EC4 0020EE24  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80211EC8 0020EE28  7C 63 02 14 */	add r3, r3, r0
/* 80211ECC 0020EE2C  90 E3 00 B0 */	stw r7, 0xb0(r3)
/* 80211ED0 0020EE30  4E 80 00 20 */	blr 

.global GXSetNumChans
GXSetNumChans:
/* 80211ED4 0020EE34  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80211ED8 0020EE38  54 67 06 3E */	clrlwi r7, r3, 0x18
/* 80211EDC 0020EE3C  54 60 25 36 */	rlwinm r0, r3, 4, 0x14, 0x1b
/* 80211EE0 0020EE40  38 C4 02 04 */	addi r6, r4, 0x204
/* 80211EE4 0020EE44  80 A4 02 04 */	lwz r5, 0x204(r4)
/* 80211EE8 0020EE48  38 60 00 10 */	li r3, 0x10
/* 80211EEC 0020EE4C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80211EF0 0020EE50  54 A5 07 30 */	rlwinm r5, r5, 0, 0x1c, 0x18
/* 80211EF4 0020EE54  7C A0 03 78 */	or r0, r5, r0
/* 80211EF8 0020EE58  90 06 00 00 */	stw r0, 0(r6)
/* 80211EFC 0020EE5C  38 00 10 09 */	li r0, 0x1009
/* 80211F00 0020EE60  98 64 80 00 */	stb r3, 0xCC008000@l(r4)
/* 80211F04 0020EE64  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80211F08 0020EE68  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 80211F0C 0020EE6C  90 E4 80 00 */	stw r7, 0xCC008000@l(r4)
/* 80211F10 0020EE70  80 03 04 F0 */	lwz r0, 0x4f0(r3)
/* 80211F14 0020EE74  60 00 00 04 */	ori r0, r0, 4
/* 80211F18 0020EE78  90 03 04 F0 */	stw r0, 0x4f0(r3)
/* 80211F1C 0020EE7C  4E 80 00 20 */	blr 

.global GXSetChanCtrl
GXSetChanCtrl:
/* 80211F20 0020EE80  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80211F24 0020EE84  2C 03 00 04 */	cmpwi r3, 4
/* 80211F28 0020EE88  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80211F2C 0020EE8C  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80211F30 0020EE90  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80211F34 0020EE94  93 81 00 28 */	stw r28, 0x28(r1)
/* 80211F38 0020EE98  40 82 00 0C */	bne .L_80211F44
/* 80211F3C 0020EE9C  39 60 00 00 */	li r11, 0
/* 80211F40 0020EEA0  48 00 00 18 */	b .L_80211F58
.L_80211F44:
/* 80211F44 0020EEA4  2C 03 00 05 */	cmpwi r3, 5
/* 80211F48 0020EEA8  40 82 00 0C */	bne .L_80211F54
/* 80211F4C 0020EEAC  39 60 00 01 */	li r11, 1
/* 80211F50 0020EEB0  48 00 00 08 */	b .L_80211F58
.L_80211F54:
/* 80211F54 0020EEB4  7C 6B 1B 78 */	mr r11, r3
.L_80211F58:
/* 80211F58 0020EEB8  54 84 0D FC */	rlwinm r4, r4, 1, 0x17, 0x1e
/* 80211F5C 0020EEBC  7C 8A 33 78 */	or r10, r4, r6
/* 80211F60 0020EEC0  54 E0 07 FE */	clrlwi r0, r7, 0x1f
/* 80211F64 0020EEC4  7C C0 00 D0 */	neg r6, r0
/* 80211F68 0020EEC8  30 86 FF FF */	addic r4, r6, -1
/* 80211F6C 0020EECC  54 E0 07 BC */	rlwinm r0, r7, 0, 0x1e, 0x1e
/* 80211F70 0020EED0  7D 80 00 D0 */	neg r12, r0
/* 80211F74 0020EED4  7C C4 31 10 */	subfe r6, r4, r6
/* 80211F78 0020EED8  30 8C FF FF */	addic r4, r12, -1
/* 80211F7C 0020EEDC  7C 84 61 10 */	subfe r4, r4, r12
/* 80211F80 0020EEE0  54 E0 07 7A */	rlwinm r0, r7, 0, 0x1d, 0x1d
/* 80211F84 0020EEE4  7F 80 00 D0 */	neg r28, r0
/* 80211F88 0020EEE8  30 1C FF FF */	addic r0, r28, -1
/* 80211F8C 0020EEEC  54 EC 07 38 */	rlwinm r12, r7, 0, 0x1c, 0x1c
/* 80211F90 0020EEF0  7C 00 E1 10 */	subfe r0, r0, r28
/* 80211F94 0020EEF4  7F AC 00 D0 */	neg r29, r12
/* 80211F98 0020EEF8  33 9D FF FF */	addic r28, r29, -1
/* 80211F9C 0020EEFC  54 EC 06 F6 */	rlwinm r12, r7, 0, 0x1b, 0x1b
/* 80211FA0 0020EF00  7F CC 00 D0 */	neg r30, r12
/* 80211FA4 0020EF04  7F 9C E9 10 */	subfe r28, r28, r29
/* 80211FA8 0020EF08  33 BE FF FF */	addic r29, r30, -1
/* 80211FAC 0020EF0C  54 EC 06 B4 */	rlwinm r12, r7, 0, 0x1a, 0x1a
/* 80211FB0 0020EF10  7F EC 00 D0 */	neg r31, r12
/* 80211FB4 0020EF14  7F BD F1 10 */	subfe r29, r29, r30
/* 80211FB8 0020EF18  33 DF FF FF */	addic r30, r31, -1
/* 80211FBC 0020EF1C  54 EC 06 72 */	rlwinm r12, r7, 0, 0x19, 0x19
/* 80211FC0 0020EF20  7F DE F9 10 */	subfe r30, r30, r31
/* 80211FC4 0020EF24  7F EC 00 D0 */	neg r31, r12
/* 80211FC8 0020EF28  31 9F FF FF */	addic r12, r31, -1
/* 80211FCC 0020EF2C  55 4A 06 B0 */	rlwinm r10, r10, 0, 0x1a, 0x18
/* 80211FD0 0020EF30  54 A5 30 32 */	slwi r5, r5, 6
/* 80211FD4 0020EF34  7D 45 2B 78 */	or r5, r10, r5
/* 80211FD8 0020EF38  54 AA 07 B8 */	rlwinm r10, r5, 0, 0x1e, 0x1c
/* 80211FDC 0020EF3C  54 C5 10 3A */	slwi r5, r6, 2
/* 80211FE0 0020EF40  7D 45 2B 78 */	or r5, r10, r5
/* 80211FE4 0020EF44  54 A5 07 76 */	rlwinm r5, r5, 0, 0x1d, 0x1b
/* 80211FE8 0020EF48  54 84 18 38 */	slwi r4, r4, 3
/* 80211FEC 0020EF4C  7C A4 23 78 */	or r4, r5, r4
/* 80211FF0 0020EF50  54 84 07 34 */	rlwinm r4, r4, 0, 0x1c, 0x1a
/* 80211FF4 0020EF54  54 00 20 36 */	slwi r0, r0, 4
/* 80211FF8 0020EF58  7C 80 03 78 */	or r0, r4, r0
/* 80211FFC 0020EF5C  54 04 06 F2 */	rlwinm r4, r0, 0, 0x1b, 0x19
/* 80212000 0020EF60  57 80 28 34 */	slwi r0, r28, 5
/* 80212004 0020EF64  7C 80 03 78 */	or r0, r4, r0
/* 80212008 0020EF68  54 04 05 66 */	rlwinm r4, r0, 0, 0x15, 0x13
/* 8021200C 0020EF6C  57 A0 58 28 */	slwi r0, r29, 0xb
/* 80212010 0020EF70  7C 80 03 78 */	or r0, r4, r0
/* 80212014 0020EF74  54 04 05 24 */	rlwinm r4, r0, 0, 0x14, 0x12
/* 80212018 0020EF78  57 C0 60 26 */	slwi r0, r30, 0xc
/* 8021201C 0020EF7C  7C 80 03 78 */	or r0, r4, r0
/* 80212020 0020EF80  54 E7 06 30 */	rlwinm r7, r7, 0, 0x18, 0x18
/* 80212024 0020EF84  7F EC F9 10 */	subfe r31, r12, r31
/* 80212028 0020EF88  7D 87 00 D0 */	neg r12, r7
/* 8021202C 0020EF8C  30 EC FF FF */	addic r7, r12, -1
/* 80212030 0020EF90  54 04 04 E2 */	rlwinm r4, r0, 0, 0x13, 0x11
/* 80212034 0020EF94  57 E0 68 24 */	slwi r0, r31, 0xd
/* 80212038 0020EF98  7C 80 03 78 */	or r0, r4, r0
/* 8021203C 0020EF9C  7C E7 61 10 */	subfe r7, r7, r12
/* 80212040 0020EFA0  54 04 04 A0 */	rlwinm r4, r0, 0, 0x12, 0x10
/* 80212044 0020EFA4  54 E0 70 22 */	slwi r0, r7, 0xe
/* 80212048 0020EFA8  2C 09 00 00 */	cmpwi r9, 0
/* 8021204C 0020EFAC  7C 86 03 78 */	or r6, r4, r0
/* 80212050 0020EFB0  40 82 00 08 */	bne .L_80212058
/* 80212054 0020EFB4  39 00 00 00 */	li r8, 0
.L_80212058:
/* 80212058 0020EFB8  20 A9 00 02 */	subfic r5, r9, 2
/* 8021205C 0020EFBC  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80212060 0020EFC0  30 05 FF FF */	addic r0, r5, -1
/* 80212064 0020EFC4  7D 40 29 10 */	subfe r10, r0, r5
/* 80212068 0020EFC8  7C A9 00 D0 */	neg r5, r9
/* 8021206C 0020EFCC  30 05 FF FF */	addic r0, r5, -1
/* 80212070 0020EFD0  7C E0 29 10 */	subfe r7, r0, r5
/* 80212074 0020EFD4  54 C5 06 6C */	rlwinm r5, r6, 0, 0x19, 0x16
/* 80212078 0020EFD8  55 00 38 30 */	slwi r0, r8, 7
/* 8021207C 0020EFDC  7C A8 03 78 */	or r8, r5, r0
/* 80212080 0020EFE0  38 C0 00 10 */	li r6, 0x10
/* 80212084 0020EFE4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80212088 0020EFE8  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 8021208C 0020EFEC  38 0B 10 0E */	addi r0, r11, 0x100e
/* 80212090 0020EFF0  55 09 05 EA */	rlwinm r9, r8, 0, 0x17, 0x15
/* 80212094 0020EFF4  55 48 48 2C */	slwi r8, r10, 9
/* 80212098 0020EFF8  90 05 80 00 */	stw r0, 0xCC008000@l(r5)
/* 8021209C 0020EFFC  7D 20 43 78 */	or r0, r9, r8
/* 802120A0 0020F000  54 08 05 A8 */	rlwinm r8, r0, 0, 0x16, 0x14
/* 802120A4 0020F004  54 E0 50 2A */	slwi r0, r7, 0xa
/* 802120A8 0020F008  7D 07 03 78 */	or r7, r8, r0
/* 802120AC 0020F00C  90 E5 80 00 */	stw r7, 0xCC008000@l(r5)
/* 802120B0 0020F010  38 00 00 00 */	li r0, 0
/* 802120B4 0020F014  2C 03 00 04 */	cmpwi r3, 4
/* 802120B8 0020F018  B0 04 00 02 */	sth r0, 2(r4)
/* 802120BC 0020F01C  40 82 00 18 */	bne .L_802120D4
/* 802120C0 0020F020  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 802120C4 0020F024  38 00 10 10 */	li r0, 0x1010
/* 802120C8 0020F028  90 05 80 00 */	stw r0, 0xCC008000@l(r5)
/* 802120CC 0020F02C  90 E5 80 00 */	stw r7, 0xCC008000@l(r5)
/* 802120D0 0020F030  48 00 00 1C */	b .L_802120EC
.L_802120D4:
/* 802120D4 0020F034  2C 03 00 05 */	cmpwi r3, 5
/* 802120D8 0020F038  40 82 00 14 */	bne .L_802120EC
/* 802120DC 0020F03C  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 802120E0 0020F040  38 00 10 11 */	li r0, 0x1011
/* 802120E4 0020F044  90 05 80 00 */	stw r0, 0xCC008000@l(r5)
/* 802120E8 0020F048  90 E5 80 00 */	stw r7, 0xCC008000@l(r5)
.L_802120EC:
/* 802120EC 0020F04C  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 802120F0 0020F050  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 802120F4 0020F054  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 802120F8 0020F058  83 81 00 28 */	lwz r28, 0x28(r1)
/* 802120FC 0020F05C  38 21 00 38 */	addi r1, r1, 0x38
/* 80212100 0020F060  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EC560:
	.float 0.0
lbl_803EC564:
	.float 1.0
lbl_803EC568:
	.double 0.5
lbl_803EC570:
	.double 3.0
lbl_803EC578:
	.float 1048576.0
