.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global start__Q23zen11ogScrMapMgrFs
start__Q23zen11ogScrMapMgrFs:
/* 80182DE0 0017FD40  7C 08 02 A6 */	mflr r0
/* 80182DE4 0017FD44  90 01 00 04 */	stw r0, 4(r1)
/* 80182DE8 0017FD48  38 00 00 01 */	li r0, 1
/* 80182DEC 0017FD4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80182DF0 0017FD50  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80182DF4 0017FD54  7C 7F 1B 78 */	mr r31, r3
/* 80182DF8 0017FD58  B0 83 00 14 */	sth r4, 0x14(r3)
/* 80182DFC 0017FD5C  90 03 00 00 */	stw r0, 0(r3)
/* 80182E00 0017FD60  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80182E04 0017FD64  2C 00 00 01 */	cmpwi r0, 1
/* 80182E08 0017FD68  40 82 00 84 */	bne .L_80182E8C
/* 80182E0C 0017FD6C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80182E10 0017FD70  3C 60 70 69 */	lis r3, 0x70696331@ha
/* 80182E14 0017FD74  38 83 63 31 */	addi r4, r3, 0x70696331@l
/* 80182E18 0017FD78  90 1F 00 04 */	stw r0, 4(r31)
/* 80182E1C 0017FD7C  38 A0 00 01 */	li r5, 1
/* 80182E20 0017FD80  80 7F 00 04 */	lwz r3, 4(r31)
/* 80182E24 0017FD84  81 83 00 00 */	lwz r12, 0(r3)
/* 80182E28 0017FD88  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80182E2C 0017FD8C  7D 88 03 A6 */	mtlr r12
/* 80182E30 0017FD90  4E 80 00 21 */	blrl 
/* 80182E34 0017FD94  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80182E38 0017FD98  3C 80 43 30 */	lis r4, 0x4330
/* 80182E3C 0017FD9C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80182E40 0017FDA0  C8 22 AF 80 */	lfd f1, lbl_803EB180@sda21(r2)
/* 80182E44 0017FDA4  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80182E48 0017FDA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80182E4C 0017FDAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80182E50 0017FDB0  90 81 00 30 */	stw r4, 0x30(r1)
/* 80182E54 0017FDB4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80182E58 0017FDB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80182E5C 0017FDBC  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80182E60 0017FDC0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80182E64 0017FDC4  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 80182E68 0017FDC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80182E6C 0017FDCC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80182E70 0017FDD0  90 81 00 28 */	stw r4, 0x28(r1)
/* 80182E74 0017FDD4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80182E78 0017FDD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80182E7C 0017FDDC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80182E80 0017FDE0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80182E84 0017FDE4  4B FF D5 9D */	bl start__Q23zen13TypingTextMgrFv
/* 80182E88 0017FDE8  48 00 00 0C */	b .L_80182E94
.L_80182E8C:
/* 80182E8C 0017FDEC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80182E90 0017FDF0  90 1F 00 04 */	stw r0, 4(r31)
.L_80182E94:
/* 80182E94 0017FDF4  38 00 00 00 */	li r0, 0
/* 80182E98 0017FDF8  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 80182E9C 0017FDFC  B0 1F 00 2E */	sth r0, 0x2e(r31)
/* 80182EA0 0017FE00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80182EA4 0017FE04  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80182EA8 0017FE08  38 21 00 40 */	addi r1, r1, 0x40
/* 80182EAC 0017FE0C  7C 08 03 A6 */	mtlr r0
/* 80182EB0 0017FE10  4E 80 00 20 */	blr 

.global __ct__Q23zen11ogScrMapMgrFv
__ct__Q23zen11ogScrMapMgrFv:
/* 80182EB4 0017FE14  7C 08 02 A6 */	mflr r0
/* 80182EB8 0017FE18  90 01 00 04 */	stw r0, 4(r1)
/* 80182EBC 0017FE1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80182EC0 0017FE20  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80182EC4 0017FE24  3B E3 00 00 */	addi r31, r3, 0
/* 80182EC8 0017FE28  38 60 00 F8 */	li r3, 0xf8
/* 80182ECC 0017FE2C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80182ED0 0017FE30  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80182ED4 0017FE34  4B EC 41 31 */	bl alloc__6SystemFUl
/* 80182ED8 0017FE38  3B C3 00 00 */	addi r30, r3, 0
/* 80182EDC 0017FE3C  7F C0 F3 79 */	or. r0, r30, r30
/* 80182EE0 0017FE40  41 82 00 5C */	beq .L_80182F3C
/* 80182EE4 0017FE44  3B BE 00 00 */	addi r29, r30, 0
/* 80182EE8 0017FE48  38 61 00 14 */	addi r3, r1, 0x14
/* 80182EEC 0017FE4C  38 80 00 00 */	li r4, 0
/* 80182EF0 0017FE50  38 A0 00 00 */	li r5, 0
/* 80182EF4 0017FE54  38 C0 02 80 */	li r6, 0x280
/* 80182EF8 0017FE58  38 E0 01 E0 */	li r7, 0x1e0
/* 80182EFC 0017FE5C  48 03 07 2D */	bl set__7PUTRectFiiii
/* 80182F00 0017FE60  3C 80 72 6F */	lis r4, 0x726F6F74@ha
/* 80182F04 0017FE64  38 E4 6F 74 */	addi r7, r4, 0x726F6F74@l
/* 80182F08 0017FE68  39 01 00 14 */	addi r8, r1, 0x14
/* 80182F0C 0017FE6C  38 7D 00 00 */	addi r3, r29, 0
/* 80182F10 0017FE70  38 80 00 00 */	li r4, 0
/* 80182F14 0017FE74  38 A0 00 08 */	li r5, 8
/* 80182F18 0017FE78  38 C0 00 01 */	li r6, 1
/* 80182F1C 0017FE7C  48 02 DA B1 */	bl __ct__7P2DPaneFP7P2DPaneUsbUlRC7PUTRect
/* 80182F20 0017FE80  3C 60 80 2E */	lis r3, __vt__9P2DScreen@ha
/* 80182F24 0017FE84  38 03 07 E0 */	addi r0, r3, __vt__9P2DScreen@l
/* 80182F28 0017FE88  90 1E 00 00 */	stw r0, 0(r30)
/* 80182F2C 0017FE8C  38 00 00 00 */	li r0, 0
/* 80182F30 0017FE90  98 1E 00 EC */	stb r0, 0xec(r30)
/* 80182F34 0017FE94  90 1E 00 F0 */	stw r0, 0xf0(r30)
/* 80182F38 0017FE98  90 1E 00 F4 */	stw r0, 0xf4(r30)
.L_80182F3C:
/* 80182F3C 0017FE9C  93 DF 00 08 */	stw r30, 8(r31)
/* 80182F40 0017FEA0  3C 60 80 2D */	lis r3, lbl_802D4058@ha
/* 80182F44 0017FEA4  38 83 40 58 */	addi r4, r3, lbl_802D4058@l
/* 80182F48 0017FEA8  80 7F 00 08 */	lwz r3, 8(r31)
/* 80182F4C 0017FEAC  38 A0 00 01 */	li r5, 1
/* 80182F50 0017FEB0  38 C0 00 01 */	li r6, 1
/* 80182F54 0017FEB4  38 E0 00 01 */	li r7, 1
/* 80182F58 0017FEB8  48 02 FC A9 */	bl set__9P2DScreenFPCcbbb
/* 80182F5C 0017FEBC  38 60 00 F8 */	li r3, 0xf8
/* 80182F60 0017FEC0  4B EC 40 A5 */	bl alloc__6SystemFUl
/* 80182F64 0017FEC4  3B C3 00 00 */	addi r30, r3, 0
/* 80182F68 0017FEC8  7F C0 F3 79 */	or. r0, r30, r30
/* 80182F6C 0017FECC  41 82 00 5C */	beq .L_80182FC8
/* 80182F70 0017FED0  3B BE 00 00 */	addi r29, r30, 0
/* 80182F74 0017FED4  38 61 00 0C */	addi r3, r1, 0xc
/* 80182F78 0017FED8  38 80 00 00 */	li r4, 0
/* 80182F7C 0017FEDC  38 A0 00 00 */	li r5, 0
/* 80182F80 0017FEE0  38 C0 02 80 */	li r6, 0x280
/* 80182F84 0017FEE4  38 E0 01 E0 */	li r7, 0x1e0
/* 80182F88 0017FEE8  48 03 06 A1 */	bl set__7PUTRectFiiii
/* 80182F8C 0017FEEC  3C 80 72 6F */	lis r4, 0x726F6F74@ha
/* 80182F90 0017FEF0  38 E4 6F 74 */	addi r7, r4, 0x726F6F74@l
/* 80182F94 0017FEF4  39 01 00 0C */	addi r8, r1, 0xc
/* 80182F98 0017FEF8  38 7D 00 00 */	addi r3, r29, 0
/* 80182F9C 0017FEFC  38 80 00 00 */	li r4, 0
/* 80182FA0 0017FF00  38 A0 00 08 */	li r5, 8
/* 80182FA4 0017FF04  38 C0 00 01 */	li r6, 1
/* 80182FA8 0017FF08  48 02 DA 25 */	bl __ct__7P2DPaneFP7P2DPaneUsbUlRC7PUTRect
/* 80182FAC 0017FF0C  3C 60 80 2E */	lis r3, __vt__9P2DScreen@ha
/* 80182FB0 0017FF10  38 03 07 E0 */	addi r0, r3, __vt__9P2DScreen@l
/* 80182FB4 0017FF14  90 1E 00 00 */	stw r0, 0(r30)
/* 80182FB8 0017FF18  38 00 00 00 */	li r0, 0
/* 80182FBC 0017FF1C  98 1E 00 EC */	stb r0, 0xec(r30)
/* 80182FC0 0017FF20  90 1E 00 F0 */	stw r0, 0xf0(r30)
/* 80182FC4 0017FF24  90 1E 00 F4 */	stw r0, 0xf4(r30)
.L_80182FC8:
/* 80182FC8 0017FF28  93 DF 00 0C */	stw r30, 0xc(r31)
/* 80182FCC 0017FF2C  3C 60 80 2D */	lis r3, lbl_802D406C@ha
/* 80182FD0 0017FF30  38 83 40 6C */	addi r4, r3, lbl_802D406C@l
/* 80182FD4 0017FF34  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80182FD8 0017FF38  38 A0 00 01 */	li r5, 1
/* 80182FDC 0017FF3C  38 C0 00 01 */	li r6, 1
/* 80182FE0 0017FF40  38 E0 00 01 */	li r7, 1
/* 80182FE4 0017FF44  48 02 FC 1D */	bl set__9P2DScreenFPCcbbb
/* 80182FE8 0017FF48  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80182FEC 0017FF4C  3C 80 74 78 */	lis r4, 0x74783030@ha
/* 80182FF0 0017FF50  38 84 30 30 */	addi r4, r4, 0x74783030@l
/* 80182FF4 0017FF54  81 83 00 00 */	lwz r12, 0(r3)
/* 80182FF8 0017FF58  38 A0 00 01 */	li r5, 1
/* 80182FFC 0017FF5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80183000 0017FF60  7D 88 03 A6 */	mtlr r12
/* 80183004 0017FF64  4E 80 00 21 */	blrl 
/* 80183008 0017FF68  3B A3 00 00 */	addi r29, r3, 0
/* 8018300C 0017FF6C  38 60 04 18 */	li r3, 0x418
/* 80183010 0017FF70  4B EC 3F F5 */	bl alloc__6SystemFUl
/* 80183014 0017FF74  3B C3 00 00 */	addi r30, r3, 0
/* 80183018 0017FF78  7F C3 F3 79 */	or. r3, r30, r30
/* 8018301C 0017FF7C  41 82 00 0C */	beq .L_80183028
/* 80183020 0017FF80  7F A4 EB 78 */	mr r4, r29
/* 80183024 0017FF84  4B FF D3 6D */	bl __ct__Q23zen13TypingTextMgrFP10P2DTextBox
.L_80183028:
/* 80183028 0017FF88  93 DF 00 10 */	stw r30, 0x10(r31)
/* 8018302C 0017FF8C  3C 60 63 75 */	lis r3, 0x63757273@ha
/* 80183030 0017FF90  38 83 72 73 */	addi r4, r3, 0x63757273@l
/* 80183034 0017FF94  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80183038 0017FF98  38 A0 00 01 */	li r5, 1
/* 8018303C 0017FF9C  81 83 00 00 */	lwz r12, 0(r3)
/* 80183040 0017FFA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80183044 0017FFA4  7D 88 03 A6 */	mtlr r12
/* 80183048 0017FFA8  4E 80 00 21 */	blrl 
/* 8018304C 0017FFAC  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80183050 0017FFB0  38 00 FF FF */	li r0, -1
/* 80183054 0017FFB4  38 7F 00 00 */	addi r3, r31, 0
/* 80183058 0017FFB8  C0 02 AF 88 */	lfs f0, lbl_803EB188@sda21(r2)
/* 8018305C 0017FFBC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80183060 0017FFC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80183064 0017FFC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80183068 0017FFC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018306C 0017FFCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80183070 0017FFD0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80183074 0017FFD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80183078 0017FFD8  7C 08 03 A6 */	mtlr r0
/* 8018307C 0017FFDC  4E 80 00 20 */	blr 

.global update__Q23zen11ogScrMapMgrFP10Controller
update__Q23zen11ogScrMapMgrFP10Controller:
/* 80183080 0017FFE0  7C 08 02 A6 */	mflr r0
/* 80183084 0017FFE4  90 01 00 04 */	stw r0, 4(r1)
/* 80183088 0017FFE8  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 8018308C 0017FFEC  93 E1 00 84 */	stw r31, 0x84(r1)
/* 80183090 0017FFF0  3B E4 00 00 */	addi r31, r4, 0
/* 80183094 0017FFF4  93 C1 00 80 */	stw r30, 0x80(r1)
/* 80183098 0017FFF8  7C 7E 1B 78 */	mr r30, r3
/* 8018309C 0017FFFC  80 63 00 00 */	lwz r3, 0(r3)
/* 801830A0 00180000  2C 03 FF FF */	cmpwi r3, -1
/* 801830A4 00180004  40 82 00 08 */	bne .L_801830AC
/* 801830A8 00180008  48 00 02 5C */	b .L_80183304
.L_801830AC:
/* 801830AC 0018000C  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 801830B0 00180010  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 801830B4 00180014  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 801830B8 00180018  EC 01 00 2A */	fadds f0, f1, f0
/* 801830BC 0018001C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 801830C0 00180020  80 7E 00 04 */	lwz r3, 4(r30)
/* 801830C4 00180024  48 02 FA 8D */	bl update__9P2DScreenFv
/* 801830C8 00180028  80 1E 00 00 */	lwz r0, 0(r30)
/* 801830CC 0018002C  2C 00 00 01 */	cmpwi r0, 1
/* 801830D0 00180030  40 82 00 14 */	bne .L_801830E4
/* 801830D4 00180034  38 00 00 00 */	li r0, 0
/* 801830D8 00180038  90 1E 00 00 */	stw r0, 0(r30)
/* 801830DC 0018003C  80 7E 00 00 */	lwz r3, 0(r30)
/* 801830E0 00180040  48 00 02 24 */	b .L_80183304
.L_801830E4:
/* 801830E4 00180044  2C 00 00 02 */	cmpwi r0, 2
/* 801830E8 00180048  40 82 00 14 */	bne .L_801830FC
/* 801830EC 0018004C  38 00 00 04 */	li r0, 4
/* 801830F0 00180050  90 1E 00 00 */	stw r0, 0(r30)
/* 801830F4 00180054  80 7E 00 00 */	lwz r3, 0(r30)
/* 801830F8 00180058  48 00 02 0C */	b .L_80183304
.L_801830FC:
/* 801830FC 0018005C  2C 00 00 04 */	cmpwi r0, 4
/* 80183100 00180060  40 82 00 14 */	bne .L_80183114
/* 80183104 00180064  38 00 FF FF */	li r0, -1
/* 80183108 00180068  90 1E 00 00 */	stw r0, 0(r30)
/* 8018310C 0018006C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80183110 00180070  48 00 01 F4 */	b .L_80183304
.L_80183114:
/* 80183114 00180074  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80183118 00180078  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8018311C 0018007C  41 82 00 0C */	beq .L_80183128
/* 80183120 00180080  38 00 00 02 */	li r0, 2
/* 80183124 00180084  90 1E 00 00 */	stw r0, 0(r30)
.L_80183128:
/* 80183128 00180088  A8 1E 00 14 */	lha r0, 0x14(r30)
/* 8018312C 0018008C  2C 00 00 01 */	cmpwi r0, 1
/* 80183130 00180090  40 82 01 54 */	bne .L_80183284
/* 80183134 00180094  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80183138 00180098  4B FF D8 65 */	bl update__Q23zen13TypingTextMgrFv
/* 8018313C 0018009C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80183140 001800A0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80183144 001800A4  80 E4 00 08 */	lwz r7, 8(r4)
/* 80183148 001800A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018314C 001800AC  A8 87 01 16 */	lha r4, 0x116(r7)
/* 80183150 001800B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80183154 001800B4  38 A4 FF E8 */	addi r5, r4, -24
/* 80183158 001800B8  A8 07 00 1A */	lha r0, 0x1a(r7)
/* 8018315C 001800BC  A8 C7 01 14 */	lha r6, 0x114(r7)
/* 80183160 001800C0  7D 88 03 A6 */	mtlr r12
/* 80183164 001800C4  A8 87 00 18 */	lha r4, 0x18(r7)
/* 80183168 001800C8  7C A0 2A 14 */	add r5, r0, r5
/* 8018316C 001800CC  7C 84 32 14 */	add r4, r4, r6
/* 80183170 001800D0  4E 80 00 21 */	blrl 
/* 80183174 001800D4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80183178 001800D8  C0 42 AF 8C */	lfs f2, lbl_803EB18C@sda21(r2)
/* 8018317C 001800DC  48 00 01 A1 */	bl fmodf__3stdFff
/* 80183180 001800E0  C0 02 AF 90 */	lfs f0, lbl_803EB190@sda21(r2)
/* 80183184 001800E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80183188 001800E8  48 09 8B 61 */	bl sinf
/* 8018318C 001800EC  C0 02 AF 8C */	lfs f0, lbl_803EB18C@sda21(r2)
/* 80183190 001800F0  80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 80183194 001800F4  EC 00 08 2A */	fadds f0, f0, f1
/* 80183198 001800F8  A8 A6 00 18 */	lha r5, 0x18(r6)
/* 8018319C 001800FC  A8 66 00 1C */	lha r3, 0x1c(r6)
/* 801831A0 00180100  A8 86 00 1A */	lha r4, 0x1a(r6)
/* 801831A4 00180104  A8 06 00 1E */	lha r0, 0x1e(r6)
/* 801831A8 00180108  7C 65 18 50 */	subf r3, r5, r3
/* 801831AC 0018010C  7C 63 0E 70 */	srawi r3, r3, 1
/* 801831B0 00180110  D0 06 00 C0 */	stfs f0, 0xc0(r6)
/* 801831B4 00180114  7C 63 01 94 */	addze r3, r3
/* 801831B8 00180118  7C 04 00 50 */	subf r0, r4, r0
/* 801831BC 0018011C  D0 06 00 C4 */	stfs f0, 0xc4(r6)
/* 801831C0 00180120  7C 00 0E 70 */	srawi r0, r0, 1
/* 801831C4 00180124  7C 00 01 94 */	addze r0, r0
/* 801831C8 00180128  D0 06 00 C8 */	stfs f0, 0xc8(r6)
/* 801831CC 0018012C  7C 63 07 34 */	extsh r3, r3
/* 801831D0 00180130  7C 00 07 34 */	extsh r0, r0
/* 801831D4 00180134  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 801831D8 00180138  B0 64 00 B8 */	sth r3, 0xb8(r4)
/* 801831DC 0018013C  B0 04 00 BA */	sth r0, 0xba(r4)
/* 801831E0 00180140  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 801831E4 00180144  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 801831E8 00180148  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801831EC 0018014C  FC 20 08 1E */	fctiwz f1, f1
/* 801831F0 00180150  FC 00 00 1E */	fctiwz f0, f0
/* 801831F4 00180154  81 83 00 00 */	lwz r12, 0(r3)
/* 801831F8 00180158  D8 21 00 78 */	stfd f1, 0x78(r1)
/* 801831FC 0018015C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80183200 00180160  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80183204 00180164  7D 88 03 A6 */	mtlr r12
/* 80183208 00180168  80 81 00 7C */	lwz r4, 0x7c(r1)
/* 8018320C 0018016C  80 A1 00 74 */	lwz r5, 0x74(r1)
/* 80183210 00180170  4E 80 00 21 */	blrl 
/* 80183214 00180174  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80183218 00180178  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8018321C 0018017C  41 82 00 14 */	beq .L_80183230
/* 80183220 00180180  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80183224 00180184  C0 02 AF 94 */	lfs f0, lbl_803EB194@sda21(r2)
/* 80183228 00180188  EC 01 00 28 */	fsubs f0, f1, f0
/* 8018322C 0018018C  D0 1E 00 24 */	stfs f0, 0x24(r30)
.L_80183230:
/* 80183230 00180190  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80183234 00180194  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80183238 00180198  41 82 00 14 */	beq .L_8018324C
/* 8018323C 0018019C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80183240 001801A0  C0 02 AF 94 */	lfs f0, lbl_803EB194@sda21(r2)
/* 80183244 001801A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80183248 001801A8  D0 1E 00 24 */	stfs f0, 0x24(r30)
.L_8018324C:
/* 8018324C 001801AC  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80183250 001801B0  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 80183254 001801B4  41 82 00 14 */	beq .L_80183268
/* 80183258 001801B8  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8018325C 001801BC  C0 02 AF 94 */	lfs f0, lbl_803EB194@sda21(r2)
/* 80183260 001801C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80183264 001801C4  D0 1E 00 28 */	stfs f0, 0x28(r30)
.L_80183268:
/* 80183268 001801C8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8018326C 001801CC  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80183270 001801D0  41 82 00 14 */	beq .L_80183284
/* 80183274 001801D4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80183278 001801D8  C0 02 AF 94 */	lfs f0, lbl_803EB194@sda21(r2)
/* 8018327C 001801DC  EC 01 00 2A */	fadds f0, f1, f0
/* 80183280 001801E0  D0 1E 00 28 */	stfs f0, 0x28(r30)
.L_80183284:
/* 80183284 001801E4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80183288 001801E8  A8 9E 00 2C */	lha r4, 0x2c(r30)
/* 8018328C 001801EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80183290 001801F0  A8 BE 00 2E */	lha r5, 0x2e(r30)
/* 80183294 001801F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80183298 001801F8  7D 88 03 A6 */	mtlr r12
/* 8018329C 001801FC  4E 80 00 21 */	blrl 
/* 801832A0 00180200  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 801832A4 00180204  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801832A8 00180208  41 82 00 10 */	beq .L_801832B8
/* 801832AC 0018020C  A8 7E 00 2C */	lha r3, 0x2c(r30)
/* 801832B0 00180210  38 03 FF FC */	addi r0, r3, -4
/* 801832B4 00180214  B0 1E 00 2C */	sth r0, 0x2c(r30)
.L_801832B8:
/* 801832B8 00180218  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 801832BC 0018021C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801832C0 00180220  41 82 00 10 */	beq .L_801832D0
/* 801832C4 00180224  A8 7E 00 2C */	lha r3, 0x2c(r30)
/* 801832C8 00180228  38 03 00 04 */	addi r0, r3, 4
/* 801832CC 0018022C  B0 1E 00 2C */	sth r0, 0x2c(r30)
.L_801832D0:
/* 801832D0 00180230  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 801832D4 00180234  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801832D8 00180238  41 82 00 10 */	beq .L_801832E8
/* 801832DC 0018023C  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 801832E0 00180240  38 03 FF FC */	addi r0, r3, -4
/* 801832E4 00180244  B0 1E 00 2E */	sth r0, 0x2e(r30)
.L_801832E8:
/* 801832E8 00180248  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 801832EC 0018024C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801832F0 00180250  41 82 00 10 */	beq .L_80183300
/* 801832F4 00180254  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 801832F8 00180258  38 03 00 04 */	addi r0, r3, 4
/* 801832FC 0018025C  B0 1E 00 2E */	sth r0, 0x2e(r30)
.L_80183300:
/* 80183300 00180260  80 7E 00 00 */	lwz r3, 0(r30)
.L_80183304:
/* 80183304 00180264  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80183308 00180268  83 E1 00 84 */	lwz r31, 0x84(r1)
/* 8018330C 0018026C  83 C1 00 80 */	lwz r30, 0x80(r1)
/* 80183310 00180270  38 21 00 88 */	addi r1, r1, 0x88
/* 80183314 00180274  7C 08 03 A6 */	mtlr r0
/* 80183318 00180278  4E 80 00 20 */	blr 

.global fmodf__3stdFff
fmodf__3stdFff:
/* 8018331C 0018027C  7C 08 02 A6 */	mflr r0
/* 80183320 00180280  90 01 00 04 */	stw r0, 4(r1)
/* 80183324 00180284  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80183328 00180288  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8018332C 0018028C  FF E0 10 90 */	fmr f31, f2
/* 80183330 00180290  DB C1 00 18 */	stfd f30, 0x18(r1)
/* 80183334 00180294  FF C0 08 90 */	fmr f30, f1
/* 80183338 00180298  FC 20 FA 10 */	fabs f1, f31
/* 8018333C 0018029C  FC 00 F2 10 */	fabs f0, f30
/* 80183340 001802A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80183344 001802A4  40 81 00 0C */	ble .L_80183350
/* 80183348 001802A8  FC 20 F0 90 */	fmr f1, f30
/* 8018334C 001802AC  48 00 00 18 */	b .L_80183364
.L_80183350:
/* 80183350 001802B0  EC 3E F8 24 */	fdivs f1, f30, f31
/* 80183354 001802B4  48 09 20 A1 */	bl __cvt_dbl_usll
/* 80183358 001802B8  48 09 1F E9 */	bl __cvt_sll_flt
/* 8018335C 001802BC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80183360 001802C0  EC 3E 00 28 */	fsubs f1, f30, f0
.L_80183364:
/* 80183364 001802C4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80183368 001802C8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8018336C 001802CC  CB C1 00 18 */	lfd f30, 0x18(r1)
/* 80183370 001802D0  38 21 00 28 */	addi r1, r1, 0x28
/* 80183374 001802D4  7C 08 03 A6 */	mtlr r0
/* 80183378 001802D8  4E 80 00 20 */	blr 

.global draw__Q23zen11ogScrMapMgrFR8Graphics
draw__Q23zen11ogScrMapMgrFR8Graphics:
/* 8018337C 001802DC  7C 08 02 A6 */	mflr r0
/* 80183380 001802E0  90 01 00 04 */	stw r0, 4(r1)
/* 80183384 001802E4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80183388 001802E8  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8018338C 001802EC  7C 7F 1B 78 */	mr r31, r3
/* 80183390 001802F0  80 03 00 00 */	lwz r0, 0(r3)
/* 80183394 001802F4  2C 00 FF FF */	cmpwi r0, -1
/* 80183398 001802F8  41 82 00 5C */	beq .L_801833F4
/* 8018339C 001802FC  C0 22 AF 98 */	lfs f1, lbl_803EB198@sda21(r2)
/* 801833A0 00180300  38 61 00 10 */	addi r3, r1, 0x10
/* 801833A4 00180304  C0 42 AF 8C */	lfs f2, lbl_803EB18C@sda21(r2)
/* 801833A8 00180308  38 80 00 00 */	li r4, 0
/* 801833AC 0018030C  C0 62 AF 9C */	lfs f3, lbl_803EB19C@sda21(r2)
/* 801833B0 00180310  38 A0 00 00 */	li r5, 0
/* 801833B4 00180314  38 C0 02 80 */	li r6, 0x280
/* 801833B8 00180318  38 E0 01 E0 */	li r7, 0x1e0
/* 801833BC 0018031C  48 02 CD D5 */	bl __ct__13P2DPerspGraphFiiiifff
/* 801833C0 00180320  38 61 00 10 */	addi r3, r1, 0x10
/* 801833C4 00180324  48 02 CE DD */	bl setPort__13P2DPerspGraphFv
/* 801833C8 00180328  80 7F 00 04 */	lwz r3, 4(r31)
/* 801833CC 0018032C  38 C1 00 10 */	addi r6, r1, 0x10
/* 801833D0 00180330  38 80 00 00 */	li r4, 0
/* 801833D4 00180334  38 A0 00 00 */	li r5, 0
/* 801833D8 00180338  48 02 FA FD */	bl draw__9P2DScreenFiiPC14P2DGrafContext
/* 801833DC 0018033C  3C 60 80 2E */	lis r3, __vt__13P2DPerspGraph@ha
/* 801833E0 00180340  38 03 06 98 */	addi r0, r3, __vt__13P2DPerspGraph@l
/* 801833E4 00180344  3C 60 80 2E */	lis r3, __vt__14P2DGrafContext@ha
/* 801833E8 00180348  90 01 00 10 */	stw r0, 0x10(r1)
/* 801833EC 0018034C  38 03 05 D4 */	addi r0, r3, __vt__14P2DGrafContext@l
/* 801833F0 00180350  90 01 00 10 */	stw r0, 0x10(r1)
.L_801833F4:
/* 801833F4 00180354  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801833F8 00180358  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801833FC 0018035C  38 21 01 00 */	addi r1, r1, 0x100
/* 80183400 00180360  7C 08 03 A6 */	mtlr r0
/* 80183404 00180364  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802D4058:
	.asciz "screen/blo/test.blo"
.balign 4
lbl_802D406C:
	.asciz "screen/blo/test2.blo"

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EB180:
	.4byte 0x43300000
	.4byte 0x80000000
lbl_803EB188:
	.4byte 0x00000000
lbl_803EB18C:
	.4byte 0x3F800000
lbl_803EB190:
	.4byte 0x40C90FDB
lbl_803EB194:
	.4byte 0x40800000
lbl_803EB198:
	.4byte 0x41F00000
lbl_803EB19C:
	.4byte 0x459C4000
