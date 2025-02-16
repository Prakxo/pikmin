.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __OSResetSWInterruptHandler
__OSResetSWInterruptHandler:
/* 801FA3B4 001F7314  7C 08 02 A6 */	mflr r0
/* 801FA3B8 001F7318  90 01 00 04 */	stw r0, 4(r1)
/* 801FA3BC 001F731C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801FA3C0 001F7320  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801FA3C4 001F7324  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801FA3C8 001F7328  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 801FA3CC 001F732C  48 00 2F F5 */	bl __OSGetSystemTime
/* 801FA3D0 001F7330  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 801FA3D4 001F7334  90 8D 32 2C */	stw r4, lbl_803E7F4C@sda21(r13)
/* 801FA3D8 001F7338  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 801FA3DC 001F733C  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 801FA3E0 001F7340  38 84 DE 83 */	addi r4, r4, 0x431BDE83@l
/* 801FA3E4 001F7344  90 6D 32 28 */	stw r3, HoldDown@sda21(r13)
/* 801FA3E8 001F7348  54 00 F0 BE */	srwi r0, r0, 2
/* 801FA3EC 001F734C  7C 04 00 16 */	mulhwu r0, r4, r0
/* 801FA3F0 001F7350  54 00 8B FE */	srwi r0, r0, 0xf
/* 801FA3F4 001F7354  1C 00 00 64 */	mulli r0, r0, 0x64
/* 801FA3F8 001F7358  54 1D E8 FE */	srwi r29, r0, 3
/* 801FA3FC 001F735C  3B C0 00 00 */	li r30, 0
/* 801FA400 001F7360  3F E0 CC 00 */	lis r31, 0xcc00
.L_801FA404:
/* 801FA404 001F7364  48 00 2F BD */	bl __OSGetSystemTime
/* 801FA408 001F7368  80 CD 32 2C */	lwz r6, lbl_803E7F4C@sda21(r13)
/* 801FA40C 001F736C  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 801FA410 001F7370  80 0D 32 28 */	lwz r0, HoldDown@sda21(r13)
/* 801FA414 001F7374  7C 86 20 10 */	subfc r4, r6, r4
/* 801FA418 001F7378  7C 00 19 10 */	subfe r0, r0, r3
/* 801FA41C 001F737C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 801FA420 001F7380  7C 1D 20 10 */	subfc r0, r29, r4
/* 801FA424 001F7384  7C A5 19 10 */	subfe r5, r5, r3
/* 801FA428 001F7388  7C A3 19 10 */	subfe r5, r3, r3
/* 801FA42C 001F738C  7C A5 00 D1 */	neg. r5, r5
/* 801FA430 001F7390  41 82 00 10 */	beq .L_801FA440
/* 801FA434 001F7394  80 1F 30 00 */	lwz r0, 0x3000(r31)
/* 801FA438 001F7398  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 801FA43C 001F739C  41 82 FF C8 */	beq .L_801FA404
.L_801FA440:
/* 801FA440 001F73A0  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 801FA444 001F73A4  80 03 30 00 */	lwz r0, 0xCC003000@l(r3)
/* 801FA448 001F73A8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 801FA44C 001F73AC  40 82 00 34 */	bne .L_801FA480
/* 801FA450 001F73B0  38 00 00 01 */	li r0, 1
/* 801FA454 001F73B4  90 0D 32 14 */	stw r0, Down@sda21(r13)
/* 801FA458 001F73B8  38 60 02 00 */	li r3, 0x200
/* 801FA45C 001F73BC  90 0D 32 18 */	stw r0, LastState@sda21(r13)
/* 801FA460 001F73C0  4B FF EE BD */	bl __OSMaskInterrupts
/* 801FA464 001F73C4  81 8D 32 10 */	lwz r12, ResetCallback@sda21(r13)
/* 801FA468 001F73C8  28 0C 00 00 */	cmplwi r12, 0
/* 801FA46C 001F73CC  41 82 00 14 */	beq .L_801FA480
/* 801FA470 001F73D0  38 00 00 00 */	li r0, 0
/* 801FA474 001F73D4  7D 88 03 A6 */	mtlr r12
/* 801FA478 001F73D8  90 0D 32 10 */	stw r0, ResetCallback@sda21(r13)
/* 801FA47C 001F73DC  4E 80 00 21 */	blrl 
.L_801FA480:
/* 801FA480 001F73E0  38 00 00 02 */	li r0, 2
/* 801FA484 001F73E4  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 801FA488 001F73E8  90 03 30 00 */	stw r0, 0xCC003000@l(r3)
/* 801FA48C 001F73EC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801FA490 001F73F0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801FA494 001F73F4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801FA498 001F73F8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 801FA49C 001F73FC  38 21 00 28 */	addi r1, r1, 0x28
/* 801FA4A0 001F7400  7C 08 03 A6 */	mtlr r0
/* 801FA4A4 001F7404  4E 80 00 20 */	blr 

.global OSGetResetSwitchState
OSGetResetSwitchState:
/* 801FA4A8 001F7408  7C 08 02 A6 */	mflr r0
/* 801FA4AC 001F740C  90 01 00 04 */	stw r0, 4(r1)
/* 801FA4B0 001F7410  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801FA4B4 001F7414  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801FA4B8 001F7418  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801FA4BC 001F741C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801FA4C0 001F7420  4B FF EA BD */	bl OSDisableInterrupts
/* 801FA4C4 001F7424  3C 80 CC 00 */	lis r4, 0xCC003000@ha
/* 801FA4C8 001F7428  80 04 30 00 */	lwz r0, 0xCC003000@l(r4)
/* 801FA4CC 001F742C  3B A3 00 00 */	addi r29, r3, 0
/* 801FA4D0 001F7430  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 801FA4D4 001F7434  40 82 00 E4 */	bne .L_801FA5B8
/* 801FA4D8 001F7438  80 0D 32 14 */	lwz r0, Down@sda21(r13)
/* 801FA4DC 001F743C  2C 00 00 00 */	cmpwi r0, 0
/* 801FA4E0 001F7440  40 82 00 44 */	bne .L_801FA524
/* 801FA4E4 001F7444  80 0D 32 20 */	lwz r0, HoldUp@sda21(r13)
/* 801FA4E8 001F7448  38 80 00 00 */	li r4, 0
/* 801FA4EC 001F744C  80 6D 32 24 */	lwz r3, lbl_803E7F44@sda21(r13)
/* 801FA4F0 001F7450  38 A0 00 01 */	li r5, 1
/* 801FA4F4 001F7454  7C 00 22 78 */	xor r0, r0, r4
/* 801FA4F8 001F7458  7C 63 22 78 */	xor r3, r3, r4
/* 801FA4FC 001F745C  90 AD 32 14 */	stw r5, Down@sda21(r13)
/* 801FA500 001F7460  7C 60 03 79 */	or. r0, r3, r0
/* 801FA504 001F7464  41 82 00 08 */	beq .L_801FA50C
/* 801FA508 001F7468  48 00 00 08 */	b .L_801FA510
.L_801FA50C:
/* 801FA50C 001F746C  7C 85 23 78 */	mr r5, r4
.L_801FA510:
/* 801FA510 001F7470  7C BE 2B 78 */	mr r30, r5
/* 801FA514 001F7474  48 00 2E AD */	bl __OSGetSystemTime
/* 801FA518 001F7478  90 8D 32 2C */	stw r4, lbl_803E7F4C@sda21(r13)
/* 801FA51C 001F747C  90 6D 32 28 */	stw r3, HoldDown@sda21(r13)
/* 801FA520 001F7480  48 00 01 50 */	b .L_801FA670
.L_801FA524:
/* 801FA524 001F7484  80 0D 32 20 */	lwz r0, HoldUp@sda21(r13)
/* 801FA528 001F7488  3B E0 00 00 */	li r31, 0
/* 801FA52C 001F748C  80 6D 32 24 */	lwz r3, lbl_803E7F44@sda21(r13)
/* 801FA530 001F7490  3B C0 00 01 */	li r30, 1
/* 801FA534 001F7494  7C 00 FA 78 */	xor r0, r0, r31
/* 801FA538 001F7498  7C 63 FA 78 */	xor r3, r3, r31
/* 801FA53C 001F749C  7C 60 03 79 */	or. r0, r3, r0
/* 801FA540 001F74A0  40 82 00 5C */	bne .L_801FA59C
/* 801FA544 001F74A4  48 00 2E 7D */	bl __OSGetSystemTime
/* 801FA548 001F74A8  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 801FA54C 001F74AC  80 ED 32 2C */	lwz r7, lbl_803E7F4C@sda21(r13)
/* 801FA550 001F74B0  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 801FA554 001F74B4  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 801FA558 001F74B8  38 A5 DE 83 */	addi r5, r5, 0x431BDE83@l
/* 801FA55C 001F74BC  80 CD 32 28 */	lwz r6, HoldDown@sda21(r13)
/* 801FA560 001F74C0  54 00 F0 BE */	srwi r0, r0, 2
/* 801FA564 001F74C4  7C 05 00 16 */	mulhwu r0, r5, r0
/* 801FA568 001F74C8  54 00 8B FE */	srwi r0, r0, 0xf
/* 801FA56C 001F74CC  1C 00 00 64 */	mulli r0, r0, 0x64
/* 801FA570 001F74D0  7C A7 20 10 */	subfc r5, r7, r4
/* 801FA574 001F74D4  7C 66 19 10 */	subfe r3, r6, r3
/* 801FA578 001F74D8  54 00 E8 FE */	srwi r0, r0, 3
/* 801FA57C 001F74DC  6F E4 80 00 */	xoris r4, r31, 0x8000
/* 801FA580 001F74E0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801FA584 001F74E4  7C 05 00 10 */	subfc r0, r5, r0
/* 801FA588 001F74E8  7C 63 21 10 */	subfe r3, r3, r4
/* 801FA58C 001F74EC  7C 64 21 10 */	subfe r3, r4, r4
/* 801FA590 001F74F0  7C 63 00 D1 */	neg. r3, r3
/* 801FA594 001F74F4  40 82 00 08 */	bne .L_801FA59C
/* 801FA598 001F74F8  7F FE FB 78 */	mr r30, r31
.L_801FA59C:
/* 801FA59C 001F74FC  2C 1E 00 00 */	cmpwi r30, 0
/* 801FA5A0 001F7500  41 82 00 0C */	beq .L_801FA5AC
/* 801FA5A4 001F7504  38 00 00 01 */	li r0, 1
/* 801FA5A8 001F7508  48 00 00 08 */	b .L_801FA5B0
.L_801FA5AC:
/* 801FA5AC 001F750C  38 00 00 00 */	li r0, 0
.L_801FA5B0:
/* 801FA5B0 001F7510  7C 1E 03 78 */	mr r30, r0
/* 801FA5B4 001F7514  48 00 00 BC */	b .L_801FA670
.L_801FA5B8:
/* 801FA5B8 001F7518  80 0D 32 14 */	lwz r0, Down@sda21(r13)
/* 801FA5BC 001F751C  2C 00 00 00 */	cmpwi r0, 0
/* 801FA5C0 001F7520  41 82 00 2C */	beq .L_801FA5EC
/* 801FA5C4 001F7524  80 6D 32 18 */	lwz r3, LastState@sda21(r13)
/* 801FA5C8 001F7528  38 00 00 00 */	li r0, 0
/* 801FA5CC 001F752C  90 0D 32 14 */	stw r0, Down@sda21(r13)
/* 801FA5D0 001F7530  2C 03 00 00 */	cmpwi r3, 0
/* 801FA5D4 001F7534  3B C3 00 00 */	addi r30, r3, 0
/* 801FA5D8 001F7538  41 82 00 98 */	beq .L_801FA670
/* 801FA5DC 001F753C  48 00 2D E5 */	bl __OSGetSystemTime
/* 801FA5E0 001F7540  90 8D 32 24 */	stw r4, lbl_803E7F44@sda21(r13)
/* 801FA5E4 001F7544  90 6D 32 20 */	stw r3, HoldUp@sda21(r13)
/* 801FA5E8 001F7548  48 00 00 88 */	b .L_801FA670
.L_801FA5EC:
/* 801FA5EC 001F754C  80 0D 32 20 */	lwz r0, HoldUp@sda21(r13)
/* 801FA5F0 001F7550  3B C0 00 00 */	li r30, 0
/* 801FA5F4 001F7554  80 6D 32 24 */	lwz r3, lbl_803E7F44@sda21(r13)
/* 801FA5F8 001F7558  7C 00 F2 78 */	xor r0, r0, r30
/* 801FA5FC 001F755C  7C 63 F2 78 */	xor r3, r3, r30
/* 801FA600 001F7560  7C 60 03 79 */	or. r0, r3, r0
/* 801FA604 001F7564  41 82 00 5C */	beq .L_801FA660
/* 801FA608 001F7568  48 00 2D B9 */	bl __OSGetSystemTime
/* 801FA60C 001F756C  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 801FA610 001F7570  80 ED 32 24 */	lwz r7, lbl_803E7F44@sda21(r13)
/* 801FA614 001F7574  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 801FA618 001F7578  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 801FA61C 001F757C  38 A5 4D D3 */	addi r5, r5, 0x10624DD3@l
/* 801FA620 001F7580  80 CD 32 20 */	lwz r6, HoldUp@sda21(r13)
/* 801FA624 001F7584  54 00 F0 BE */	srwi r0, r0, 2
/* 801FA628 001F7588  7C 05 00 16 */	mulhwu r0, r5, r0
/* 801FA62C 001F758C  54 00 D1 BE */	srwi r0, r0, 6
/* 801FA630 001F7590  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FA634 001F7594  7C A7 20 10 */	subfc r5, r7, r4
/* 801FA638 001F7598  7C 66 19 10 */	subfe r3, r6, r3
/* 801FA63C 001F759C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 801FA640 001F75A0  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 801FA644 001F75A4  7C 00 28 10 */	subfc r0, r0, r5
/* 801FA648 001F75A8  7C 63 21 10 */	subfe r3, r3, r4
/* 801FA64C 001F75AC  7C 64 21 10 */	subfe r3, r4, r4
/* 801FA650 001F75B0  7C 63 00 D1 */	neg. r3, r3
/* 801FA654 001F75B4  41 82 00 0C */	beq .L_801FA660
/* 801FA658 001F75B8  3B C0 00 01 */	li r30, 1
/* 801FA65C 001F75BC  48 00 00 14 */	b .L_801FA670
.L_801FA660:
/* 801FA660 001F75C0  38 00 00 00 */	li r0, 0
/* 801FA664 001F75C4  90 0D 32 24 */	stw r0, lbl_803E7F44@sda21(r13)
/* 801FA668 001F75C8  3B C0 00 00 */	li r30, 0
/* 801FA66C 001F75CC  90 0D 32 20 */	stw r0, HoldUp@sda21(r13)
.L_801FA670:
/* 801FA670 001F75D0  93 CD 32 18 */	stw r30, LastState@sda21(r13)
/* 801FA674 001F75D4  7F A3 EB 78 */	mr r3, r29
/* 801FA678 001F75D8  4B FF E9 2D */	bl OSRestoreInterrupts
/* 801FA67C 001F75DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801FA680 001F75E0  7F C3 F3 78 */	mr r3, r30
/* 801FA684 001F75E4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801FA688 001F75E8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801FA68C 001F75EC  7C 08 03 A6 */	mtlr r0
/* 801FA690 001F75F0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 801FA694 001F75F4  38 21 00 18 */	addi r1, r1, 0x18
/* 801FA698 001F75F8  4E 80 00 20 */	blr 

.section .sbss, "wa"
.balign 8
.global ResetCallback
ResetCallback:
	.skip 0x4
.global Down
Down:
	.skip 0x4
.global LastState
LastState:
	.skip 0x8
.global HoldUp
HoldUp:
	.skip 0x4
.global lbl_803E7F44
lbl_803E7F44:
	.skip 0x4
.global HoldDown
HoldDown:
	.skip 0x4
.global lbl_803E7F4C
lbl_803E7F4C:
	.skip 0x4
