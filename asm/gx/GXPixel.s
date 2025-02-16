.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global GXSetFog
GXSetFog:
/* 80213998 002108F8  7C 08 02 A6 */	mflr r0
/* 8021399C 002108FC  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 802139A0 00210900  90 01 00 04 */	stw r0, 4(r1)
/* 802139A4 00210904  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 802139A8 00210908  93 E1 00 44 */	stw r31, 0x44(r1)
/* 802139AC 0021090C  93 C1 00 40 */	stw r30, 0x40(r1)
/* 802139B0 00210910  3B C3 00 00 */	addi r30, r3, 0
/* 802139B4 00210914  93 A1 00 3C */	stw r29, 0x3c(r1)
/* 802139B8 00210918  93 81 00 38 */	stw r28, 0x38(r1)
/* 802139BC 0021091C  3B 84 00 00 */	addi r28, r4, 0
/* 802139C0 00210920  41 82 00 0C */	beq .L_802139CC
/* 802139C4 00210924  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802139C8 00210928  40 82 00 14 */	bne .L_802139DC
.L_802139CC:
/* 802139CC 0021092C  C0 62 C3 A8 */	lfs f3, lbl_803EC5A8@sda21(r2)
/* 802139D0 00210930  C0 82 C3 AC */	lfs f4, lbl_803EC5AC@sda21(r2)
/* 802139D4 00210934  FC A0 18 90 */	fmr f5, f3
/* 802139D8 00210938  48 00 00 20 */	b .L_802139F8
.L_802139DC:
/* 802139DC 0021093C  EC 04 18 28 */	fsubs f0, f4, f3
/* 802139E0 00210940  EC A2 08 28 */	fsubs f5, f2, f1
/* 802139E4 00210944  EC 44 00 F2 */	fmuls f2, f4, f3
/* 802139E8 00210948  EC 84 00 24 */	fdivs f4, f4, f0
/* 802139EC 0021094C  EC 00 01 72 */	fmuls f0, f0, f5
/* 802139F0 00210950  EC A1 28 24 */	fdivs f5, f1, f5
/* 802139F4 00210954  EC 62 00 24 */	fdivs f3, f2, f0
.L_802139F8:
/* 802139F8 00210958  C0 22 C3 AC */	lfs f1, lbl_803EC5AC@sda21(r2)
/* 802139FC 0021095C  38 60 00 00 */	li r3, 0
/* 80213A00 00210960  C8 02 C3 B0 */	lfd f0, "@127_1"@sda21(r2)
/* 80213A04 00210964  48 00 00 0C */	b .L_80213A10
.L_80213A08:
/* 80213A08 00210968  EC 84 00 72 */	fmuls f4, f4, f1
/* 80213A0C 0021096C  38 63 00 01 */	addi r3, r3, 1
.L_80213A10:
/* 80213A10 00210970  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80213A14 00210974  41 81 FF F4 */	bgt .L_80213A08
/* 80213A18 00210978  C8 02 C3 C0 */	lfd f0, "@129"@sda21(r2)
/* 80213A1C 0021097C  C0 42 C3 B8 */	lfs f2, lbl_803EC5B8@sda21(r2)
/* 80213A20 00210980  C0 22 C3 A8 */	lfs f1, lbl_803EC5A8@sda21(r2)
/* 80213A24 00210984  48 00 00 0C */	b .L_80213A30
.L_80213A28:
/* 80213A28 00210988  EC 84 00 B2 */	fmuls f4, f4, f2
/* 80213A2C 0021098C  38 63 FF FF */	addi r3, r3, -1
.L_80213A30:
/* 80213A30 00210990  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 80213A34 00210994  40 81 00 0C */	ble .L_80213A40
/* 80213A38 00210998  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80213A3C 0021099C  41 80 FF EC */	blt .L_80213A28
.L_80213A40:
/* 80213A40 002109A0  3B A3 00 01 */	addi r29, r3, 1
/* 80213A44 002109A4  C0 02 C3 C8 */	lfs f0, lbl_803EC5C8@sda21(r2)
/* 80213A48 002109A8  3B E0 00 01 */	li r31, 1
/* 80213A4C 002109AC  C8 42 C3 D0 */	lfd f2, "@132"@sda21(r2)
/* 80213A50 002109B0  7F E0 E8 30 */	slw r0, r31, r29
/* 80213A54 002109B4  EC 20 01 32 */	fmuls f1, f0, f4
/* 80213A58 002109B8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80213A5C 002109BC  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 80213A60 002109C0  3C 00 43 30 */	lis r0, 0x4330
/* 80213A64 002109C4  90 61 00 34 */	stw r3, 0x34(r1)
/* 80213A68 002109C8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80213A6C 002109CC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80213A70 002109D0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80213A74 002109D4  EC 03 00 24 */	fdivs f0, f3, f0
/* 80213A78 002109D8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80213A7C 002109DC  48 00 13 4D */	bl __cvt_fp2unsigned
/* 80213A80 002109E0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80213A84 002109E4  54 69 02 3E */	clrlwi r9, r3, 8
/* 80213A88 002109E8  88 DC 00 01 */	lbz r6, 1(r28)
/* 80213A8C 002109EC  57 A8 02 3E */	clrlwi r8, r29, 8
/* 80213A90 002109F0  54 04 A3 68 */	rlwinm r4, r0, 0x14, 0xd, 0x14
/* 80213A94 002109F4  50 04 A5 7E */	rlwimi r4, r0, 0x14, 0x15, 0x1f
/* 80213A98 002109F8  89 7C 00 02 */	lbz r11, 2(r28)
/* 80213A9C 002109FC  54 00 A3 18 */	rlwinm r0, r0, 0x14, 0xc, 0xc
/* 80213AA0 00210A00  88 BC 00 00 */	lbz r5, 0(r28)
/* 80213AA4 00210A04  50 80 03 7E */	rlwimi r0, r4, 0, 0xd, 0x1f
/* 80213AA8 00210A08  81 81 00 28 */	lwz r12, 0x28(r1)
/* 80213AAC 00210A0C  54 07 02 3E */	clrlwi r7, r0, 8
/* 80213AB0 00210A10  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80213AB4 00210A14  64 EA EE 00 */	oris r10, r7, 0xee00
/* 80213AB8 00210A18  38 00 00 61 */	li r0, 0x61
/* 80213ABC 00210A1C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80213AC0 00210A20  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80213AC4 00210A24  65 27 EF 00 */	oris r7, r9, 0xef00
/* 80213AC8 00210A28  54 C6 40 2E */	slwi r6, r6, 8
/* 80213ACC 00210A2C  91 44 80 00 */	stw r10, 0xCC008000@l(r4)
/* 80213AD0 00210A30  55 8A A3 68 */	rlwinm r10, r12, 0x14, 0xd, 0x14
/* 80213AD4 00210A34  51 8A A5 7E */	rlwimi r10, r12, 0x14, 0x15, 0x1f
/* 80213AD8 00210A38  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80213ADC 00210A3C  55 89 A3 18 */	rlwinm r9, r12, 0x14, 0xc, 0xc
/* 80213AE0 00210A40  51 49 03 7E */	rlwimi r9, r10, 0, 0xd, 0x1f
/* 80213AE4 00210A44  90 E4 80 00 */	stw r7, 0xCC008000@l(r4)
/* 80213AE8 00210A48  65 07 F0 00 */	oris r7, r8, 0xf000
/* 80213AEC 00210A4C  51 66 06 3E */	rlwimi r6, r11, 0, 0x18, 0x1f
/* 80213AF0 00210A50  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80213AF4 00210A54  90 E4 80 00 */	stw r7, 0xCC008000@l(r4)
/* 80213AF8 00210A58  57 C7 A8 14 */	slwi r7, r30, 0x15
/* 80213AFC 00210A5C  51 27 03 3E */	rlwimi r7, r9, 0, 0xc, 0x1f
/* 80213B00 00210A60  54 E7 02 3E */	clrlwi r7, r7, 8
/* 80213B04 00210A64  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80213B08 00210A68  64 E7 F1 00 */	oris r7, r7, 0xf100
/* 80213B0C 00210A6C  90 E4 80 00 */	stw r7, 0xCC008000@l(r4)
/* 80213B10 00210A70  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80213B14 00210A74  54 A0 80 1E */	slwi r0, r5, 0x10
/* 80213B18 00210A78  50 C0 04 3E */	rlwimi r0, r6, 0, 0x10, 0x1f
/* 80213B1C 00210A7C  54 00 02 3E */	clrlwi r0, r0, 8
/* 80213B20 00210A80  64 00 F2 00 */	oris r0, r0, 0xf200
/* 80213B24 00210A84  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 80213B28 00210A88  B3 E3 00 02 */	sth r31, 2(r3)
/* 80213B2C 00210A8C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80213B30 00210A90  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 80213B34 00210A94  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 80213B38 00210A98  7C 08 03 A6 */	mtlr r0
/* 80213B3C 00210A9C  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 80213B40 00210AA0  83 81 00 38 */	lwz r28, 0x38(r1)
/* 80213B44 00210AA4  38 21 00 48 */	addi r1, r1, 0x48
/* 80213B48 00210AA8  4E 80 00 20 */	blr 

.global GXSetFogRangeAdj
GXSetFogRangeAdj:
/* 80213B4C 00210AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80213B50 00210AB0  41 82 00 C0 */	beq .L_80213C10
/* 80213B54 00210AB4  A1 05 00 02 */	lhz r8, 2(r5)
/* 80213B58 00210AB8  38 00 00 61 */	li r0, 0x61
/* 80213B5C 00210ABC  A1 45 00 00 */	lhz r10, 0(r5)
/* 80213B60 00210AC0  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80213B64 00210AC4  55 08 60 26 */	slwi r8, r8, 0xc
/* 80213B68 00210AC8  51 48 05 3E */	rlwimi r8, r10, 0, 0x14, 0x1f
/* 80213B6C 00210ACC  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80213B70 00210AD0  38 E0 00 E9 */	li r7, 0xe9
/* 80213B74 00210AD4  55 09 02 3E */	clrlwi r9, r8, 8
/* 80213B78 00210AD8  50 E9 C0 0E */	rlwimi r9, r7, 0x18, 0, 7
/* 80213B7C 00210ADC  91 26 80 00 */	stw r9, 0xCC008000@l(r6)
/* 80213B80 00210AE0  38 E0 00 EA */	li r7, 0xea
/* 80213B84 00210AE4  54 E9 C0 0E */	slwi r9, r7, 0x18
/* 80213B88 00210AE8  A5 45 00 04 */	lhzu r10, 4(r5)
/* 80213B8C 00210AEC  38 E0 00 EB */	li r7, 0xeb
/* 80213B90 00210AF0  A1 05 00 02 */	lhz r8, 2(r5)
/* 80213B94 00210AF4  55 08 60 26 */	slwi r8, r8, 0xc
/* 80213B98 00210AF8  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80213B9C 00210AFC  51 48 05 3E */	rlwimi r8, r10, 0, 0x14, 0x1f
/* 80213BA0 00210B00  51 09 02 3E */	rlwimi r9, r8, 0, 8, 0x1f
/* 80213BA4 00210B04  91 26 80 00 */	stw r9, 0xCC008000@l(r6)
/* 80213BA8 00210B08  54 E9 C0 0E */	slwi r9, r7, 0x18
/* 80213BAC 00210B0C  38 E0 00 EC */	li r7, 0xec
/* 80213BB0 00210B10  A1 05 00 06 */	lhz r8, 6(r5)
/* 80213BB4 00210B14  A1 45 00 04 */	lhz r10, 4(r5)
/* 80213BB8 00210B18  55 08 60 26 */	slwi r8, r8, 0xc
/* 80213BBC 00210B1C  51 48 05 3E */	rlwimi r8, r10, 0, 0x14, 0x1f
/* 80213BC0 00210B20  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80213BC4 00210B24  51 09 02 3E */	rlwimi r9, r8, 0, 8, 0x1f
/* 80213BC8 00210B28  91 26 80 00 */	stw r9, 0xCC008000@l(r6)
/* 80213BCC 00210B2C  54 E9 C0 0E */	slwi r9, r7, 0x18
/* 80213BD0 00210B30  38 E0 00 ED */	li r7, 0xed
/* 80213BD4 00210B34  A1 05 00 0A */	lhz r8, 0xa(r5)
/* 80213BD8 00210B38  A1 45 00 08 */	lhz r10, 8(r5)
/* 80213BDC 00210B3C  55 08 60 26 */	slwi r8, r8, 0xc
/* 80213BE0 00210B40  51 48 05 3E */	rlwimi r8, r10, 0, 0x14, 0x1f
/* 80213BE4 00210B44  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80213BE8 00210B48  51 09 02 3E */	rlwimi r9, r8, 0, 8, 0x1f
/* 80213BEC 00210B4C  91 26 80 00 */	stw r9, 0xCC008000@l(r6)
/* 80213BF0 00210B50  A1 05 00 0E */	lhz r8, 0xe(r5)
/* 80213BF4 00210B54  A1 45 00 0C */	lhz r10, 0xc(r5)
/* 80213BF8 00210B58  55 08 60 26 */	slwi r8, r8, 0xc
/* 80213BFC 00210B5C  51 48 05 3E */	rlwimi r8, r10, 0, 0x14, 0x1f
/* 80213C00 00210B60  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80213C04 00210B64  55 09 02 3E */	clrlwi r9, r8, 8
/* 80213C08 00210B68  50 E9 C0 0E */	rlwimi r9, r7, 0x18, 0, 7
/* 80213C0C 00210B6C  91 26 80 00 */	stw r9, 0xCC008000@l(r6)
.L_80213C10:
/* 80213C10 00210B70  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 80213C14 00210B74  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213C18 00210B78  38 05 01 54 */	addi r0, r5, 0x154
/* 80213C1C 00210B7C  54 05 05 A8 */	rlwinm r5, r0, 0, 0x16, 0x14
/* 80213C20 00210B80  54 60 53 AA */	rlwinm r0, r3, 0xa, 0xe, 0x15
/* 80213C24 00210B84  7C A0 03 78 */	or r0, r5, r0
/* 80213C28 00210B88  54 05 02 3E */	clrlwi r5, r0, 8
/* 80213C2C 00210B8C  38 00 00 61 */	li r0, 0x61
/* 80213C30 00210B90  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80213C34 00210B94  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80213C38 00210B98  64 A5 E8 00 */	oris r5, r5, 0xe800
/* 80213C3C 00210B9C  38 00 00 01 */	li r0, 1
/* 80213C40 00210BA0  90 A3 80 00 */	stw r5, 0xCC008000@l(r3)
/* 80213C44 00210BA4  B0 04 00 02 */	sth r0, 2(r4)
/* 80213C48 00210BA8  4E 80 00 20 */	blr 

.global GXSetBlendMode
GXSetBlendMode:
/* 80213C4C 00210BAC  2C 03 00 01 */	cmpwi r3, 1
/* 80213C50 00210BB0  39 20 00 01 */	li r9, 1
/* 80213C54 00210BB4  41 82 00 10 */	beq .L_80213C64
/* 80213C58 00210BB8  2C 03 00 03 */	cmpwi r3, 3
/* 80213C5C 00210BBC  41 82 00 08 */	beq .L_80213C64
/* 80213C60 00210BC0  39 20 00 00 */	li r9, 0
.L_80213C64:
/* 80213C64 00210BC4  81 0D 2A 68 */	lwz r8, gx@sda21(r13)
/* 80213C68 00210BC8  20 03 00 03 */	subfic r0, r3, 3
/* 80213C6C 00210BCC  7C 07 00 34 */	cntlzw r7, r0
/* 80213C70 00210BD0  39 48 01 D0 */	addi r10, r8, 0x1d0
/* 80213C74 00210BD4  81 08 01 D0 */	lwz r8, 0x1d0(r8)
/* 80213C78 00210BD8  20 03 00 02 */	subfic r0, r3, 2
/* 80213C7C 00210BDC  55 03 00 3C */	rlwinm r3, r8, 0, 0, 0x1e
/* 80213C80 00210BE0  7C 63 4B 78 */	or r3, r3, r9
/* 80213C84 00210BE4  90 6A 00 00 */	stw r3, 0(r10)
/* 80213C88 00210BE8  7C 00 00 34 */	cntlzw r0, r0
/* 80213C8C 00210BEC  54 E3 30 28 */	rlwinm r3, r7, 6, 0, 0x14
/* 80213C90 00210BF0  81 2D 2A 68 */	lwz r9, gx@sda21(r13)
/* 80213C94 00210BF4  54 08 E1 3C */	rlwinm r8, r0, 0x1c, 4, 0x1e
/* 80213C98 00210BF8  84 09 01 D0 */	lwzu r0, 0x1d0(r9)
/* 80213C9C 00210BFC  54 C7 60 26 */	slwi r7, r6, 0xc
/* 80213CA0 00210C00  54 86 40 2E */	slwi r6, r4, 8
/* 80213CA4 00210C04  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80213CA8 00210C08  7C 00 1B 78 */	or r0, r0, r3
/* 80213CAC 00210C0C  90 09 00 00 */	stw r0, 0(r9)
/* 80213CB0 00210C10  54 A4 28 34 */	slwi r4, r5, 5
/* 80213CB4 00210C14  38 60 00 61 */	li r3, 0x61
/* 80213CB8 00210C18  81 2D 2A 68 */	lwz r9, gx@sda21(r13)
/* 80213CBC 00210C1C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80213CC0 00210C20  38 00 00 01 */	li r0, 1
/* 80213CC4 00210C24  39 49 01 D0 */	addi r10, r9, 0x1d0
/* 80213CC8 00210C28  81 29 01 D0 */	lwz r9, 0x1d0(r9)
/* 80213CCC 00210C2C  55 29 07 FA */	rlwinm r9, r9, 0, 0x1f, 0x1d
/* 80213CD0 00210C30  7D 28 43 78 */	or r8, r9, r8
/* 80213CD4 00210C34  91 0A 00 00 */	stw r8, 0(r10)
/* 80213CD8 00210C38  81 0D 2A 68 */	lwz r8, gx@sda21(r13)
/* 80213CDC 00210C3C  39 28 01 D0 */	addi r9, r8, 0x1d0
/* 80213CE0 00210C40  81 08 01 D0 */	lwz r8, 0x1d0(r8)
/* 80213CE4 00210C44  55 08 05 1E */	rlwinm r8, r8, 0, 0x14, 0xf
/* 80213CE8 00210C48  7D 07 3B 78 */	or r7, r8, r7
/* 80213CEC 00210C4C  90 E9 00 00 */	stw r7, 0(r9)
/* 80213CF0 00210C50  80 ED 2A 68 */	lwz r7, gx@sda21(r13)
/* 80213CF4 00210C54  39 07 01 D0 */	addi r8, r7, 0x1d0
/* 80213CF8 00210C58  80 E7 01 D0 */	lwz r7, 0x1d0(r7)
/* 80213CFC 00210C5C  54 E7 06 28 */	rlwinm r7, r7, 0, 0x18, 0x14
/* 80213D00 00210C60  7C E6 33 78 */	or r6, r7, r6
/* 80213D04 00210C64  90 C8 00 00 */	stw r6, 0(r8)
/* 80213D08 00210C68  80 CD 2A 68 */	lwz r6, gx@sda21(r13)
/* 80213D0C 00210C6C  38 E6 01 D0 */	addi r7, r6, 0x1d0
/* 80213D10 00210C70  80 C6 01 D0 */	lwz r6, 0x1d0(r6)
/* 80213D14 00210C74  54 C6 06 EE */	rlwinm r6, r6, 0, 0x1b, 0x17
/* 80213D18 00210C78  7C C4 23 78 */	or r4, r6, r4
/* 80213D1C 00210C7C  90 87 00 00 */	stw r4, 0(r7)
/* 80213D20 00210C80  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213D24 00210C84  38 C4 01 D0 */	addi r6, r4, 0x1d0
/* 80213D28 00210C88  80 84 01 D0 */	lwz r4, 0x1d0(r4)
/* 80213D2C 00210C8C  54 84 02 3E */	clrlwi r4, r4, 8
/* 80213D30 00210C90  64 84 41 00 */	oris r4, r4, 0x4100
/* 80213D34 00210C94  90 86 00 00 */	stw r4, 0(r6)
/* 80213D38 00210C98  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 80213D3C 00210C9C  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213D40 00210CA0  80 64 01 D0 */	lwz r3, 0x1d0(r4)
/* 80213D44 00210CA4  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 80213D48 00210CA8  B0 04 00 02 */	sth r0, 2(r4)
/* 80213D4C 00210CAC  4E 80 00 20 */	blr 

.global GXSetColorUpdate
GXSetColorUpdate:
/* 80213D50 00210CB0  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213D54 00210CB4  54 60 1D 78 */	rlwinm r0, r3, 3, 0x15, 0x1c
/* 80213D58 00210CB8  38 60 00 61 */	li r3, 0x61
/* 80213D5C 00210CBC  38 C4 01 D0 */	addi r6, r4, 0x1d0
/* 80213D60 00210CC0  80 84 01 D0 */	lwz r4, 0x1d0(r4)
/* 80213D64 00210CC4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80213D68 00210CC8  54 84 07 76 */	rlwinm r4, r4, 0, 0x1d, 0x1b
/* 80213D6C 00210CCC  7C 80 03 78 */	or r0, r4, r0
/* 80213D70 00210CD0  90 06 00 00 */	stw r0, 0(r6)
/* 80213D74 00210CD4  38 00 00 01 */	li r0, 1
/* 80213D78 00210CD8  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 80213D7C 00210CDC  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213D80 00210CE0  80 64 01 D0 */	lwz r3, 0x1d0(r4)
/* 80213D84 00210CE4  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 80213D88 00210CE8  B0 04 00 02 */	sth r0, 2(r4)
/* 80213D8C 00210CEC  4E 80 00 20 */	blr 

.global GXSetAlphaUpdate
GXSetAlphaUpdate:
/* 80213D90 00210CF0  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213D94 00210CF4  54 60 25 36 */	rlwinm r0, r3, 4, 0x14, 0x1b
/* 80213D98 00210CF8  38 60 00 61 */	li r3, 0x61
/* 80213D9C 00210CFC  38 C4 01 D0 */	addi r6, r4, 0x1d0
/* 80213DA0 00210D00  80 84 01 D0 */	lwz r4, 0x1d0(r4)
/* 80213DA4 00210D04  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80213DA8 00210D08  54 84 07 34 */	rlwinm r4, r4, 0, 0x1c, 0x1a
/* 80213DAC 00210D0C  7C 80 03 78 */	or r0, r4, r0
/* 80213DB0 00210D10  90 06 00 00 */	stw r0, 0(r6)
/* 80213DB4 00210D14  38 00 00 01 */	li r0, 1
/* 80213DB8 00210D18  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 80213DBC 00210D1C  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213DC0 00210D20  80 64 01 D0 */	lwz r3, 0x1d0(r4)
/* 80213DC4 00210D24  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 80213DC8 00210D28  B0 04 00 02 */	sth r0, 2(r4)
/* 80213DCC 00210D2C  4E 80 00 20 */	blr 

.global GXSetZMode
GXSetZMode:
/* 80213DD0 00210D30  80 CD 2A 68 */	lwz r6, gx@sda21(r13)
/* 80213DD4 00210D34  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80213DD8 00210D38  80 66 01 D8 */	lwz r3, 0x1d8(r6)
/* 80213DDC 00210D3C  38 E6 01 D8 */	addi r7, r6, 0x1d8
/* 80213DE0 00210D40  54 86 08 3C */	slwi r6, r4, 1
/* 80213DE4 00210D44  54 63 00 3C */	rlwinm r3, r3, 0, 0, 0x1e
/* 80213DE8 00210D48  7C 60 03 78 */	or r0, r3, r0
/* 80213DEC 00210D4C  90 07 00 00 */	stw r0, 0(r7)
/* 80213DF0 00210D50  54 A4 25 36 */	rlwinm r4, r5, 4, 0x14, 0x1b
/* 80213DF4 00210D54  38 60 00 61 */	li r3, 0x61
/* 80213DF8 00210D58  80 ED 2A 68 */	lwz r7, gx@sda21(r13)
/* 80213DFC 00210D5C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80213E00 00210D60  38 00 00 01 */	li r0, 1
/* 80213E04 00210D64  39 07 01 D8 */	addi r8, r7, 0x1d8
/* 80213E08 00210D68  80 E7 01 D8 */	lwz r7, 0x1d8(r7)
/* 80213E0C 00210D6C  54 E7 07 F6 */	rlwinm r7, r7, 0, 0x1f, 0x1b
/* 80213E10 00210D70  7C E6 33 78 */	or r6, r7, r6
/* 80213E14 00210D74  90 C8 00 00 */	stw r6, 0(r8)
/* 80213E18 00210D78  80 CD 2A 68 */	lwz r6, gx@sda21(r13)
/* 80213E1C 00210D7C  38 E6 01 D8 */	addi r7, r6, 0x1d8
/* 80213E20 00210D80  80 C6 01 D8 */	lwz r6, 0x1d8(r6)
/* 80213E24 00210D84  54 C6 07 34 */	rlwinm r6, r6, 0, 0x1c, 0x1a
/* 80213E28 00210D88  7C C4 23 78 */	or r4, r6, r4
/* 80213E2C 00210D8C  90 87 00 00 */	stw r4, 0(r7)
/* 80213E30 00210D90  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 80213E34 00210D94  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213E38 00210D98  80 64 01 D8 */	lwz r3, 0x1d8(r4)
/* 80213E3C 00210D9C  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 80213E40 00210DA0  B0 04 00 02 */	sth r0, 2(r4)
/* 80213E44 00210DA4  4E 80 00 20 */	blr 

.global GXSetZCompLoc
GXSetZCompLoc:
/* 80213E48 00210DA8  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213E4C 00210DAC  54 60 34 B2 */	rlwinm r0, r3, 6, 0x12, 0x19
/* 80213E50 00210DB0  38 60 00 61 */	li r3, 0x61
/* 80213E54 00210DB4  38 C4 01 DC */	addi r6, r4, 0x1dc
/* 80213E58 00210DB8  80 84 01 DC */	lwz r4, 0x1dc(r4)
/* 80213E5C 00210DBC  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80213E60 00210DC0  54 84 06 B0 */	rlwinm r4, r4, 0, 0x1a, 0x18
/* 80213E64 00210DC4  7C 80 03 78 */	or r0, r4, r0
/* 80213E68 00210DC8  90 06 00 00 */	stw r0, 0(r6)
/* 80213E6C 00210DCC  38 00 00 01 */	li r0, 1
/* 80213E70 00210DD0  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 80213E74 00210DD4  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213E78 00210DD8  80 64 01 DC */	lwz r3, 0x1dc(r4)
/* 80213E7C 00210DDC  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 80213E80 00210DE0  B0 04 00 02 */	sth r0, 2(r4)
/* 80213E84 00210DE4  4E 80 00 20 */	blr 

.global GXSetPixelFmt
GXSetPixelFmt:
/* 80213E88 00210DE8  80 ED 2A 68 */	lwz r7, gx@sda21(r13)
/* 80213E8C 00210DEC  3C A0 80 2F */	lis r5, p2f$194@ha
/* 80213E90 00210DF0  54 66 10 3A */	slwi r6, r3, 2
/* 80213E94 00210DF4  39 07 01 DC */	addi r8, r7, 0x1dc
/* 80213E98 00210DF8  38 05 8F D8 */	addi r0, r5, p2f$194@l
/* 80213E9C 00210DFC  80 E7 01 DC */	lwz r7, 0x1dc(r7)
/* 80213EA0 00210E00  7D 20 32 14 */	add r9, r0, r6
/* 80213EA4 00210E04  80 A9 00 00 */	lwz r5, 0(r9)
/* 80213EA8 00210E08  54 E6 00 38 */	rlwinm r6, r7, 0, 0, 0x1c
/* 80213EAC 00210E0C  54 80 18 38 */	slwi r0, r4, 3
/* 80213EB0 00210E10  7C C4 2B 78 */	or r4, r6, r5
/* 80213EB4 00210E14  90 88 00 00 */	stw r4, 0(r8)
/* 80213EB8 00210E18  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213EBC 00210E1C  38 A4 01 DC */	addi r5, r4, 0x1dc
/* 80213EC0 00210E20  80 84 01 DC */	lwz r4, 0x1dc(r4)
/* 80213EC4 00210E24  54 84 07 72 */	rlwinm r4, r4, 0, 0x1d, 0x19
/* 80213EC8 00210E28  7C 80 03 78 */	or r0, r4, r0
/* 80213ECC 00210E2C  90 05 00 00 */	stw r0, 0(r5)
/* 80213ED0 00210E30  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213ED4 00210E34  80 A4 01 DC */	lwz r5, 0x1dc(r4)
/* 80213ED8 00210E38  7C 07 28 40 */	cmplw r7, r5
/* 80213EDC 00210E3C  41 82 00 54 */	beq .L_80213F30
/* 80213EE0 00210E40  38 00 00 61 */	li r0, 0x61
/* 80213EE4 00210E44  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80213EE8 00210E48  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80213EEC 00210E4C  2C 03 00 02 */	cmpwi r3, 2
/* 80213EF0 00210E50  90 A4 80 00 */	stw r5, 0xCC008000@l(r4)
/* 80213EF4 00210E54  40 82 00 0C */	bne .L_80213F00
/* 80213EF8 00210E58  38 00 00 01 */	li r0, 1
/* 80213EFC 00210E5C  48 00 00 08 */	b .L_80213F04
.L_80213F00:
/* 80213F00 00210E60  38 00 00 00 */	li r0, 0
.L_80213F04:
/* 80213F04 00210E64  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213F08 00210E68  54 00 4B EC */	rlwinm r0, r0, 9, 0xf, 0x16
/* 80213F0C 00210E6C  38 A4 02 04 */	addi r5, r4, 0x204
/* 80213F10 00210E70  80 84 02 04 */	lwz r4, 0x204(r4)
/* 80213F14 00210E74  54 84 05 EA */	rlwinm r4, r4, 0, 0x17, 0x15
/* 80213F18 00210E78  7C 80 03 78 */	or r0, r4, r0
/* 80213F1C 00210E7C  90 05 00 00 */	stw r0, 0(r5)
/* 80213F20 00210E80  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213F24 00210E84  80 04 04 F0 */	lwz r0, 0x4f0(r4)
/* 80213F28 00210E88  60 00 00 04 */	ori r0, r0, 4
/* 80213F2C 00210E8C  90 04 04 F0 */	stw r0, 0x4f0(r4)
.L_80213F30:
/* 80213F30 00210E90  80 09 00 00 */	lwz r0, 0(r9)
/* 80213F34 00210E94  28 00 00 04 */	cmplwi r0, 4
/* 80213F38 00210E98  40 82 00 50 */	bne .L_80213F88
/* 80213F3C 00210E9C  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213F40 00210EA0  38 63 FF FC */	addi r3, r3, -4
/* 80213F44 00210EA4  38 00 00 61 */	li r0, 0x61
/* 80213F48 00210EA8  38 A4 01 D4 */	addi r5, r4, 0x1d4
/* 80213F4C 00210EAC  80 84 01 D4 */	lwz r4, 0x1d4(r4)
/* 80213F50 00210EB0  54 84 05 E8 */	rlwinm r4, r4, 0, 0x17, 0x14
/* 80213F54 00210EB4  50 64 4D 6C */	rlwimi r4, r3, 9, 0x15, 0x16
/* 80213F58 00210EB8  90 85 00 00 */	stw r4, 0(r5)
/* 80213F5C 00210EBC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80213F60 00210EC0  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80213F64 00210EC4  38 A3 01 D4 */	addi r5, r3, 0x1d4
/* 80213F68 00210EC8  80 63 01 D4 */	lwz r3, 0x1d4(r3)
/* 80213F6C 00210ECC  54 63 02 3E */	clrlwi r3, r3, 8
/* 80213F70 00210ED0  64 63 42 00 */	oris r3, r3, 0x4200
/* 80213F74 00210ED4  90 65 00 00 */	stw r3, 0(r5)
/* 80213F78 00210ED8  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80213F7C 00210EDC  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80213F80 00210EE0  80 03 01 D4 */	lwz r0, 0x1d4(r3)
/* 80213F84 00210EE4  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
.L_80213F88:
/* 80213F88 00210EE8  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80213F8C 00210EEC  38 00 00 01 */	li r0, 1
/* 80213F90 00210EF0  B0 03 00 02 */	sth r0, 2(r3)
/* 80213F94 00210EF4  4E 80 00 20 */	blr 

.global GXSetDither
GXSetDither:
/* 80213F98 00210EF8  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213F9C 00210EFC  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 80213FA0 00210F00  38 60 00 61 */	li r3, 0x61
/* 80213FA4 00210F04  38 C4 01 D0 */	addi r6, r4, 0x1d0
/* 80213FA8 00210F08  80 84 01 D0 */	lwz r4, 0x1d0(r4)
/* 80213FAC 00210F0C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80213FB0 00210F10  54 84 07 B8 */	rlwinm r4, r4, 0, 0x1e, 0x1c
/* 80213FB4 00210F14  7C 80 03 78 */	or r0, r4, r0
/* 80213FB8 00210F18  90 06 00 00 */	stw r0, 0(r6)
/* 80213FBC 00210F1C  38 00 00 01 */	li r0, 1
/* 80213FC0 00210F20  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 80213FC4 00210F24  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80213FC8 00210F28  80 64 01 D0 */	lwz r3, 0x1d0(r4)
/* 80213FCC 00210F2C  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 80213FD0 00210F30  B0 04 00 02 */	sth r0, 2(r4)
/* 80213FD4 00210F34  4E 80 00 20 */	blr 

.global GXSetDstAlpha
GXSetDstAlpha:
/* 80213FD8 00210F38  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80213FDC 00210F3C  54 66 44 2E */	rlwinm r6, r3, 8, 0x10, 0x17
/* 80213FE0 00210F40  84 05 01 D4 */	lwzu r0, 0x1d4(r5)
/* 80213FE4 00210F44  38 60 00 61 */	li r3, 0x61
/* 80213FE8 00210F48  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80213FEC 00210F4C  50 80 06 3E */	rlwimi r0, r4, 0, 0x18, 0x1f
/* 80213FF0 00210F50  90 05 00 00 */	stw r0, 0(r5)
/* 80213FF4 00210F54  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80213FF8 00210F58  38 00 00 01 */	li r0, 1
/* 80213FFC 00210F5C  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80214000 00210F60  38 E4 01 D4 */	addi r7, r4, 0x1d4
/* 80214004 00210F64  80 84 01 D4 */	lwz r4, 0x1d4(r4)
/* 80214008 00210F68  54 84 06 2C */	rlwinm r4, r4, 0, 0x18, 0x16
/* 8021400C 00210F6C  7C 84 33 78 */	or r4, r4, r6
/* 80214010 00210F70  90 87 00 00 */	stw r4, 0(r7)
/* 80214014 00210F74  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 80214018 00210F78  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 8021401C 00210F7C  80 64 01 D4 */	lwz r3, 0x1d4(r4)
/* 80214020 00210F80  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 80214024 00210F84  B0 04 00 02 */	sth r0, 2(r4)
/* 80214028 00210F88  4E 80 00 20 */	blr 

.global GXSetFieldMask
GXSetFieldMask:
/* 8021402C 00210F8C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80214030 00210F90  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80214034 00210F94  54 05 07 FA */	rlwinm r5, r0, 0, 0x1f, 0x1d
/* 80214038 00210F98  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 8021403C 00210F9C  7C A0 03 78 */	or r0, r5, r0
/* 80214040 00210FA0  54 05 02 3E */	clrlwi r5, r0, 8
/* 80214044 00210FA4  38 00 00 61 */	li r0, 0x61
/* 80214048 00210FA8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8021404C 00210FAC  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80214050 00210FB0  64 A5 44 00 */	oris r5, r5, 0x4400
/* 80214054 00210FB4  38 00 00 01 */	li r0, 1
/* 80214058 00210FB8  90 A3 80 00 */	stw r5, 0xCC008000@l(r3)
/* 8021405C 00210FBC  B0 04 00 02 */	sth r0, 2(r4)
/* 80214060 00210FC0  4E 80 00 20 */	blr 

.global GXSetFieldMode
GXSetFieldMode:
/* 80214064 00210FC4  7C 08 02 A6 */	mflr r0
/* 80214068 00210FC8  90 01 00 04 */	stw r0, 4(r1)
/* 8021406C 00210FCC  54 80 B0 92 */	rlwinm r0, r4, 0x16, 2, 9
/* 80214070 00210FD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80214074 00210FD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80214078 00210FD8  3F E0 CC 01 */	lis r31, 0xCC008000@ha
/* 8021407C 00210FDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80214080 00210FE0  3B C0 00 61 */	li r30, 0x61
/* 80214084 00210FE4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80214088 00210FE8  7C 7D 1B 78 */	mr r29, r3
/* 8021408C 00210FEC  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 80214090 00210FF0  84 85 00 7C */	lwzu r4, 0x7c(r5)
/* 80214094 00210FF4  54 84 02 90 */	rlwinm r4, r4, 0, 0xa, 8
/* 80214098 00210FF8  7C 80 03 78 */	or r0, r4, r0
/* 8021409C 00210FFC  90 05 00 00 */	stw r0, 0(r5)
/* 802140A0 00211000  9B DF 80 00 */	stb r30, 0xCC008000@l(r31)
/* 802140A4 00211004  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 802140A8 00211008  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 802140AC 0021100C  90 1F 80 00 */	stw r0, 0xCC008000@l(r31)
/* 802140B0 00211010  4B FF EE C9 */	bl __GXFlushTextureState
/* 802140B4 00211014  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802140B8 00211018  9B DF 80 00 */	stb r30, 0xCC008000@l(r31)
/* 802140BC 0021101C  64 00 68 00 */	oris r0, r0, 0x6800
/* 802140C0 00211020  90 1F 80 00 */	stw r0, 0xCC008000@l(r31)
/* 802140C4 00211024  4B FF EE B5 */	bl __GXFlushTextureState
/* 802140C8 00211028  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802140CC 0021102C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802140D0 00211030  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802140D4 00211034  7C 08 03 A6 */	mtlr r0
/* 802140D8 00211038  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802140DC 0021103C  38 21 00 20 */	addi r1, r1, 0x20
/* 802140E0 00211040  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
.global p2f$194
p2f$194:
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
.global lbl_803EC5A8
lbl_803EC5A8:
	.4byte 0x00000000
.global lbl_803EC5AC
lbl_803EC5AC:
	.4byte 0x3F000000
.global "@127_1"
"@127_1":
	.4byte 0x3FF00000
	.4byte 0x00000000
.global lbl_803EC5B8
lbl_803EC5B8:
	.4byte 0x40000000
	.4byte 0x00000000
.global "@129"
"@129":
	.4byte 0x3FE00000
	.4byte 0x00000000
.global lbl_803EC5C8
lbl_803EC5C8:
	.4byte 0x4B00001E
	.4byte 0x00000000
.global "@132"
"@132":
	.4byte 0x43300000
	.4byte 0x80000000
