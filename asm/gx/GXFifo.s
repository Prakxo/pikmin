.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global GXCPInterruptHandler
GXCPInterruptHandler:
/* 8020EB40 0020BAA0  7C 08 02 A6 */	mflr r0
/* 8020EB44 0020BAA4  90 01 00 04 */	stw r0, 4(r1)
/* 8020EB48 0020BAA8  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8020EB4C 0020BAAC  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8020EB50 0020BAB0  7C 9F 23 78 */	mr r31, r4
/* 8020EB54 0020BAB4  80 AD 34 24 */	lwz r5, __cpReg@sda21(r13)
/* 8020EB58 0020BAB8  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020EB5C 0020BABC  A0 05 00 00 */	lhz r0, 0(r5)
/* 8020EB60 0020BAC0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8020EB64 0020BAC4  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020EB68 0020BAC8  80 03 00 08 */	lwz r0, 8(r3)
/* 8020EB6C 0020BACC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8020EB70 0020BAD0  41 82 00 38 */	beq .L_8020EBA8
/* 8020EB74 0020BAD4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8020EB78 0020BAD8  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8020EB7C 0020BADC  41 82 00 2C */	beq .L_8020EBA8
/* 8020EB80 0020BAE0  80 6D 34 30 */	lwz r3, __GXCurrentThread@sda21(r13)
/* 8020EB84 0020BAE4  4B FE DA 41 */	bl OSResumeThread
/* 8020EB88 0020BAE8  38 00 00 00 */	li r0, 0
/* 8020EB8C 0020BAEC  90 0D 34 38 */	stw r0, GXOverflowSuspendInProgress@sda21(r13)
/* 8020EB90 0020BAF0  38 60 00 01 */	li r3, 1
/* 8020EB94 0020BAF4  38 80 00 01 */	li r4, 1
/* 8020EB98 0020BAF8  48 00 06 71 */	bl __GXWriteFifoIntReset
/* 8020EB9C 0020BAFC  38 60 00 01 */	li r3, 1
/* 8020EBA0 0020BB00  38 80 00 00 */	li r4, 0
/* 8020EBA4 0020BB04  48 00 06 19 */	bl __GXWriteFifoIntEnable
.L_8020EBA8:
/* 8020EBA8 0020BB08  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020EBAC 0020BB0C  80 03 00 08 */	lwz r0, 8(r3)
/* 8020EBB0 0020BB10  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8020EBB4 0020BB14  41 82 00 44 */	beq .L_8020EBF8
/* 8020EBB8 0020BB18  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8020EBBC 0020BB1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020EBC0 0020BB20  41 82 00 38 */	beq .L_8020EBF8
/* 8020EBC4 0020BB24  80 AD 34 40 */	lwz r5, __GXOverflowCount@sda21(r13)
/* 8020EBC8 0020BB28  38 60 00 00 */	li r3, 0
/* 8020EBCC 0020BB2C  38 80 00 01 */	li r4, 1
/* 8020EBD0 0020BB30  38 05 00 01 */	addi r0, r5, 1
/* 8020EBD4 0020BB34  90 0D 34 40 */	stw r0, __GXOverflowCount@sda21(r13)
/* 8020EBD8 0020BB38  48 00 05 E5 */	bl __GXWriteFifoIntEnable
/* 8020EBDC 0020BB3C  38 60 00 01 */	li r3, 1
/* 8020EBE0 0020BB40  38 80 00 00 */	li r4, 0
/* 8020EBE4 0020BB44  48 00 06 25 */	bl __GXWriteFifoIntReset
/* 8020EBE8 0020BB48  38 00 00 01 */	li r0, 1
/* 8020EBEC 0020BB4C  80 6D 34 30 */	lwz r3, __GXCurrentThread@sda21(r13)
/* 8020EBF0 0020BB50  90 0D 34 38 */	stw r0, GXOverflowSuspendInProgress@sda21(r13)
/* 8020EBF4 0020BB54  4B FE DC 59 */	bl OSSuspendThread
.L_8020EBF8:
/* 8020EBF8 0020BB58  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020EBFC 0020BB5C  80 83 00 08 */	lwz r4, 8(r3)
/* 8020EC00 0020BB60  38 A3 00 08 */	addi r5, r3, 8
/* 8020EC04 0020BB64  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 8020EC08 0020BB68  41 82 00 60 */	beq .L_8020EC68
/* 8020EC0C 0020BB6C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8020EC10 0020BB70  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8020EC14 0020BB74  41 82 00 54 */	beq .L_8020EC68
/* 8020EC18 0020BB78  54 80 06 F2 */	rlwinm r0, r4, 0, 0x1b, 0x19
/* 8020EC1C 0020BB7C  90 05 00 00 */	stw r0, 0(r5)
/* 8020EC20 0020BB80  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 8020EC24 0020BB84  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EC28 0020BB88  80 04 00 08 */	lwz r0, 8(r4)
/* 8020EC2C 0020BB8C  B0 03 00 02 */	sth r0, 2(r3)
/* 8020EC30 0020BB90  80 0D 34 3C */	lwz r0, BreakPointCB@sda21(r13)
/* 8020EC34 0020BB94  28 00 00 00 */	cmplwi r0, 0
/* 8020EC38 0020BB98  41 82 00 30 */	beq .L_8020EC68
/* 8020EC3C 0020BB9C  38 61 00 10 */	addi r3, r1, 0x10
/* 8020EC40 0020BBA0  4B FE 87 FD */	bl OSClearContext
/* 8020EC44 0020BBA4  38 61 00 10 */	addi r3, r1, 0x10
/* 8020EC48 0020BBA8  4B FE 86 2D */	bl OSSetCurrentContext
/* 8020EC4C 0020BBAC  81 8D 34 3C */	lwz r12, BreakPointCB@sda21(r13)
/* 8020EC50 0020BBB0  7D 88 03 A6 */	mtlr r12
/* 8020EC54 0020BBB4  4E 80 00 21 */	blrl 
/* 8020EC58 0020BBB8  38 61 00 10 */	addi r3, r1, 0x10
/* 8020EC5C 0020BBBC  4B FE 87 E1 */	bl OSClearContext
/* 8020EC60 0020BBC0  7F E3 FB 78 */	mr r3, r31
/* 8020EC64 0020BBC4  4B FE 86 11 */	bl OSSetCurrentContext
.L_8020EC68:
/* 8020EC68 0020BBC8  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8020EC6C 0020BBCC  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8020EC70 0020BBD0  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8020EC74 0020BBD4  7C 08 03 A6 */	mtlr r0
/* 8020EC78 0020BBD8  4E 80 00 20 */	blr 

.global GXInitFifoBase
GXInitFifoBase:
/* 8020EC7C 0020BBDC  7C 08 02 A6 */	mflr r0
/* 8020EC80 0020BBE0  90 01 00 04 */	stw r0, 4(r1)
/* 8020EC84 0020BBE4  38 05 FF FC */	addi r0, r5, -4
/* 8020EC88 0020BBE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020EC8C 0020BBEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020EC90 0020BBF0  3B E4 00 00 */	addi r31, r4, 0
/* 8020EC94 0020BBF4  7C 1F 02 14 */	add r0, r31, r0
/* 8020EC98 0020BBF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020EC9C 0020BBFC  3B C3 00 00 */	addi r30, r3, 0
/* 8020ECA0 0020BC00  38 85 C0 00 */	addi r4, r5, -16384
/* 8020ECA4 0020BC04  93 E3 00 00 */	stw r31, 0(r3)
/* 8020ECA8 0020BC08  90 03 00 04 */	stw r0, 4(r3)
/* 8020ECAC 0020BC0C  38 00 00 00 */	li r0, 0
/* 8020ECB0 0020BC10  90 A3 00 08 */	stw r5, 8(r3)
/* 8020ECB4 0020BC14  54 A5 F8 74 */	rlwinm r5, r5, 0x1f, 1, 0x1a
/* 8020ECB8 0020BC18  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8020ECBC 0020BC1C  48 00 00 9D */	bl GXInitFifoLimits
/* 8020ECC0 0020BC20  38 7E 00 00 */	addi r3, r30, 0
/* 8020ECC4 0020BC24  38 9F 00 00 */	addi r4, r31, 0
/* 8020ECC8 0020BC28  38 BF 00 00 */	addi r5, r31, 0
/* 8020ECCC 0020BC2C  48 00 00 1D */	bl GXInitFifoPtrs
/* 8020ECD0 0020BC30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020ECD4 0020BC34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020ECD8 0020BC38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020ECDC 0020BC3C  7C 08 03 A6 */	mtlr r0
/* 8020ECE0 0020BC40  38 21 00 20 */	addi r1, r1, 0x20
/* 8020ECE4 0020BC44  4E 80 00 20 */	blr 

.global GXInitFifoPtrs
GXInitFifoPtrs:
/* 8020ECE8 0020BC48  7C 08 02 A6 */	mflr r0
/* 8020ECEC 0020BC4C  90 01 00 04 */	stw r0, 4(r1)
/* 8020ECF0 0020BC50  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8020ECF4 0020BC54  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8020ECF8 0020BC58  3B E5 00 00 */	addi r31, r5, 0
/* 8020ECFC 0020BC5C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8020ED00 0020BC60  3B C4 00 00 */	addi r30, r4, 0
/* 8020ED04 0020BC64  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8020ED08 0020BC68  3B A3 00 00 */	addi r29, r3, 0
/* 8020ED0C 0020BC6C  4B FE A2 71 */	bl OSDisableInterrupts
/* 8020ED10 0020BC70  93 DD 00 14 */	stw r30, 0x14(r29)
/* 8020ED14 0020BC74  7C 1E F8 50 */	subf r0, r30, r31
/* 8020ED18 0020BC78  93 FD 00 18 */	stw r31, 0x18(r29)
/* 8020ED1C 0020BC7C  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8020ED20 0020BC80  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 8020ED24 0020BC84  2C 04 00 00 */	cmpwi r4, 0
/* 8020ED28 0020BC88  40 80 00 10 */	bge .L_8020ED38
/* 8020ED2C 0020BC8C  80 1D 00 08 */	lwz r0, 8(r29)
/* 8020ED30 0020BC90  7C 04 02 14 */	add r0, r4, r0
/* 8020ED34 0020BC94  90 1D 00 1C */	stw r0, 0x1c(r29)
.L_8020ED38:
/* 8020ED38 0020BC98  4B FE A2 6D */	bl OSRestoreInterrupts
/* 8020ED3C 0020BC9C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8020ED40 0020BCA0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8020ED44 0020BCA4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8020ED48 0020BCA8  7C 08 03 A6 */	mtlr r0
/* 8020ED4C 0020BCAC  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8020ED50 0020BCB0  38 21 00 28 */	addi r1, r1, 0x28
/* 8020ED54 0020BCB4  4E 80 00 20 */	blr 

.global GXInitFifoLimits
GXInitFifoLimits:
/* 8020ED58 0020BCB8  90 83 00 0C */	stw r4, 0xc(r3)
/* 8020ED5C 0020BCBC  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8020ED60 0020BCC0  4E 80 00 20 */	blr 

.global GXSetCPUFifo
GXSetCPUFifo:
/* 8020ED64 0020BCC4  7C 08 02 A6 */	mflr r0
/* 8020ED68 0020BCC8  90 01 00 04 */	stw r0, 4(r1)
/* 8020ED6C 0020BCCC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8020ED70 0020BCD0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8020ED74 0020BCD4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8020ED78 0020BCD8  7C 7E 1B 78 */	mr r30, r3
/* 8020ED7C 0020BCDC  4B FE A2 01 */	bl OSDisableInterrupts
/* 8020ED80 0020BCE0  80 0D 34 44 */	lwz r0, GPFifo@sda21(r13)
/* 8020ED84 0020BCE4  3B E3 00 00 */	addi r31, r3, 0
/* 8020ED88 0020BCE8  93 CD 34 48 */	stw r30, CPUFifo@sda21(r13)
/* 8020ED8C 0020BCEC  7C 1E 00 40 */	cmplw r30, r0
/* 8020ED90 0020BCF0  40 82 00 64 */	bne .L_8020EDF4
/* 8020ED94 0020BCF4  80 BE 00 00 */	lwz r5, 0(r30)
/* 8020ED98 0020BCF8  38 00 00 01 */	li r0, 1
/* 8020ED9C 0020BCFC  80 8D 34 20 */	lwz r4, __piReg@sda21(r13)
/* 8020EDA0 0020BD00  38 60 00 01 */	li r3, 1
/* 8020EDA4 0020BD04  54 A5 00 BE */	clrlwi r5, r5, 2
/* 8020EDA8 0020BD08  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8020EDAC 0020BD0C  38 80 00 01 */	li r4, 1
/* 8020EDB0 0020BD10  80 DE 00 04 */	lwz r6, 4(r30)
/* 8020EDB4 0020BD14  80 AD 34 20 */	lwz r5, __piReg@sda21(r13)
/* 8020EDB8 0020BD18  54 C6 00 BE */	clrlwi r6, r6, 2
/* 8020EDBC 0020BD1C  90 C5 00 10 */	stw r6, 0x10(r5)
/* 8020EDC0 0020BD20  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8020EDC4 0020BD24  80 AD 34 20 */	lwz r5, __piReg@sda21(r13)
/* 8020EDC8 0020BD28  54 C6 00 B4 */	rlwinm r6, r6, 0, 2, 0x1a
/* 8020EDCC 0020BD2C  54 C6 01 88 */	rlwinm r6, r6, 0, 6, 4
/* 8020EDD0 0020BD30  90 C5 00 14 */	stw r6, 0x14(r5)
/* 8020EDD4 0020BD34  98 0D 34 34 */	stb r0, CPGPLinked@sda21(r13)
/* 8020EDD8 0020BD38  48 00 04 31 */	bl __GXWriteFifoIntReset
/* 8020EDDC 0020BD3C  38 60 00 01 */	li r3, 1
/* 8020EDE0 0020BD40  38 80 00 00 */	li r4, 0
/* 8020EDE4 0020BD44  48 00 03 D9 */	bl __GXWriteFifoIntEnable
/* 8020EDE8 0020BD48  38 60 00 01 */	li r3, 1
/* 8020EDEC 0020BD4C  48 00 03 8D */	bl __GXFifoLink
/* 8020EDF0 0020BD50  48 00 00 60 */	b .L_8020EE50
.L_8020EDF4:
/* 8020EDF4 0020BD54  88 0D 34 34 */	lbz r0, CPGPLinked@sda21(r13)
/* 8020EDF8 0020BD58  28 00 00 00 */	cmplwi r0, 0
/* 8020EDFC 0020BD5C  41 82 00 14 */	beq .L_8020EE10
/* 8020EE00 0020BD60  38 60 00 00 */	li r3, 0
/* 8020EE04 0020BD64  48 00 03 75 */	bl __GXFifoLink
/* 8020EE08 0020BD68  38 00 00 00 */	li r0, 0
/* 8020EE0C 0020BD6C  98 0D 34 34 */	stb r0, CPGPLinked@sda21(r13)
.L_8020EE10:
/* 8020EE10 0020BD70  38 60 00 00 */	li r3, 0
/* 8020EE14 0020BD74  38 80 00 00 */	li r4, 0
/* 8020EE18 0020BD78  48 00 03 A5 */	bl __GXWriteFifoIntEnable
/* 8020EE1C 0020BD7C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8020EE20 0020BD80  80 6D 34 20 */	lwz r3, __piReg@sda21(r13)
/* 8020EE24 0020BD84  54 00 00 BE */	clrlwi r0, r0, 2
/* 8020EE28 0020BD88  90 03 00 0C */	stw r0, 0xc(r3)
/* 8020EE2C 0020BD8C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8020EE30 0020BD90  80 6D 34 20 */	lwz r3, __piReg@sda21(r13)
/* 8020EE34 0020BD94  54 00 00 BE */	clrlwi r0, r0, 2
/* 8020EE38 0020BD98  90 03 00 10 */	stw r0, 0x10(r3)
/* 8020EE3C 0020BD9C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8020EE40 0020BDA0  80 6D 34 20 */	lwz r3, __piReg@sda21(r13)
/* 8020EE44 0020BDA4  54 00 00 B4 */	rlwinm r0, r0, 0, 2, 0x1a
/* 8020EE48 0020BDA8  54 00 01 88 */	rlwinm r0, r0, 0, 6, 4
/* 8020EE4C 0020BDAC  90 03 00 14 */	stw r0, 0x14(r3)
.L_8020EE50:
/* 8020EE50 0020BDB0  7C 00 04 AC */	sync 0
/* 8020EE54 0020BDB4  7F E3 FB 78 */	mr r3, r31
/* 8020EE58 0020BDB8  4B FE A1 4D */	bl OSRestoreInterrupts
/* 8020EE5C 0020BDBC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8020EE60 0020BDC0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8020EE64 0020BDC4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8020EE68 0020BDC8  7C 08 03 A6 */	mtlr r0
/* 8020EE6C 0020BDCC  38 21 00 18 */	addi r1, r1, 0x18
/* 8020EE70 0020BDD0  4E 80 00 20 */	blr 

.global GXSetGPFifo
GXSetGPFifo:
/* 8020EE74 0020BDD4  7C 08 02 A6 */	mflr r0
/* 8020EE78 0020BDD8  90 01 00 04 */	stw r0, 4(r1)
/* 8020EE7C 0020BDDC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8020EE80 0020BDE0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8020EE84 0020BDE4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8020EE88 0020BDE8  7C 7E 1B 78 */	mr r30, r3
/* 8020EE8C 0020BDEC  4B FE A0 F1 */	bl OSDisableInterrupts
/* 8020EE90 0020BDF0  7C 7F 1B 78 */	mr r31, r3
/* 8020EE94 0020BDF4  48 00 02 C1 */	bl __GXFifoReadDisable
/* 8020EE98 0020BDF8  38 60 00 00 */	li r3, 0
/* 8020EE9C 0020BDFC  38 80 00 00 */	li r4, 0
/* 8020EEA0 0020BE00  48 00 03 1D */	bl __GXWriteFifoIntEnable
/* 8020EEA4 0020BE04  93 CD 34 44 */	stw r30, GPFifo@sda21(r13)
/* 8020EEA8 0020BE08  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EEAC 0020BE0C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8020EEB0 0020BE10  B0 03 00 20 */	sth r0, 0x20(r3)
/* 8020EEB4 0020BE14  80 1E 00 04 */	lwz r0, 4(r30)
/* 8020EEB8 0020BE18  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EEBC 0020BE1C  B0 03 00 24 */	sth r0, 0x24(r3)
/* 8020EEC0 0020BE20  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8020EEC4 0020BE24  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EEC8 0020BE28  B0 03 00 30 */	sth r0, 0x30(r3)
/* 8020EECC 0020BE2C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8020EED0 0020BE30  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EED4 0020BE34  B0 03 00 34 */	sth r0, 0x34(r3)
/* 8020EED8 0020BE38  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8020EEDC 0020BE3C  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EEE0 0020BE40  B0 03 00 38 */	sth r0, 0x38(r3)
/* 8020EEE4 0020BE44  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8020EEE8 0020BE48  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EEEC 0020BE4C  B0 03 00 28 */	sth r0, 0x28(r3)
/* 8020EEF0 0020BE50  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8020EEF4 0020BE54  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EEF8 0020BE58  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 8020EEFC 0020BE5C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8020EF00 0020BE60  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EF04 0020BE64  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 8020EF08 0020BE68  B0 03 00 22 */	sth r0, 0x22(r3)
/* 8020EF0C 0020BE6C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8020EF10 0020BE70  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EF14 0020BE74  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 8020EF18 0020BE78  B0 03 00 26 */	sth r0, 0x26(r3)
/* 8020EF1C 0020BE7C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8020EF20 0020BE80  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EF24 0020BE84  7C 00 86 70 */	srawi r0, r0, 0x10
/* 8020EF28 0020BE88  B0 03 00 32 */	sth r0, 0x32(r3)
/* 8020EF2C 0020BE8C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8020EF30 0020BE90  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EF34 0020BE94  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 8020EF38 0020BE98  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8020EF3C 0020BE9C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8020EF40 0020BEA0  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EF44 0020BEA4  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 8020EF48 0020BEA8  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 8020EF4C 0020BEAC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8020EF50 0020BEB0  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EF54 0020BEB4  54 00 84 3E */	srwi r0, r0, 0x10
/* 8020EF58 0020BEB8  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 8020EF5C 0020BEBC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8020EF60 0020BEC0  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020EF64 0020BEC4  54 00 84 3E */	srwi r0, r0, 0x10
/* 8020EF68 0020BEC8  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 8020EF6C 0020BECC  7C 00 04 AC */	sync 0
/* 8020EF70 0020BED0  80 6D 34 48 */	lwz r3, CPUFifo@sda21(r13)
/* 8020EF74 0020BED4  80 0D 34 44 */	lwz r0, GPFifo@sda21(r13)
/* 8020EF78 0020BED8  7C 03 00 40 */	cmplw r3, r0
/* 8020EF7C 0020BEDC  40 82 00 24 */	bne .L_8020EFA0
/* 8020EF80 0020BEE0  38 00 00 01 */	li r0, 1
/* 8020EF84 0020BEE4  98 0D 34 34 */	stb r0, CPGPLinked@sda21(r13)
/* 8020EF88 0020BEE8  38 60 00 01 */	li r3, 1
/* 8020EF8C 0020BEEC  38 80 00 00 */	li r4, 0
/* 8020EF90 0020BEF0  48 00 02 2D */	bl __GXWriteFifoIntEnable
/* 8020EF94 0020BEF4  38 60 00 01 */	li r3, 1
/* 8020EF98 0020BEF8  48 00 01 E1 */	bl __GXFifoLink
/* 8020EF9C 0020BEFC  48 00 00 20 */	b .L_8020EFBC
.L_8020EFA0:
/* 8020EFA0 0020BF00  38 00 00 00 */	li r0, 0
/* 8020EFA4 0020BF04  98 0D 34 34 */	stb r0, CPGPLinked@sda21(r13)
/* 8020EFA8 0020BF08  38 60 00 00 */	li r3, 0
/* 8020EFAC 0020BF0C  38 80 00 00 */	li r4, 0
/* 8020EFB0 0020BF10  48 00 02 0D */	bl __GXWriteFifoIntEnable
/* 8020EFB4 0020BF14  38 60 00 00 */	li r3, 0
/* 8020EFB8 0020BF18  48 00 01 C1 */	bl __GXFifoLink
.L_8020EFBC:
/* 8020EFBC 0020BF1C  38 60 00 01 */	li r3, 1
/* 8020EFC0 0020BF20  38 80 00 01 */	li r4, 1
/* 8020EFC4 0020BF24  48 00 02 45 */	bl __GXWriteFifoIntReset
/* 8020EFC8 0020BF28  48 00 01 65 */	bl __GXFifoReadEnable
/* 8020EFCC 0020BF2C  7F E3 FB 78 */	mr r3, r31
/* 8020EFD0 0020BF30  4B FE 9F D5 */	bl OSRestoreInterrupts
/* 8020EFD4 0020BF34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8020EFD8 0020BF38  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8020EFDC 0020BF3C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8020EFE0 0020BF40  7C 08 03 A6 */	mtlr r0
/* 8020EFE4 0020BF44  38 21 00 18 */	addi r1, r1, 0x18
/* 8020EFE8 0020BF48  4E 80 00 20 */	blr 

.global GXSaveCPUFifo
GXSaveCPUFifo:
/* 8020EFEC 0020BF4C  7C 08 02 A6 */	mflr r0
/* 8020EFF0 0020BF50  90 01 00 04 */	stw r0, 4(r1)
/* 8020EFF4 0020BF54  94 21 FF F8 */	stwu r1, -8(r1)
/* 8020EFF8 0020BF58  48 00 00 15 */	bl __GXSaveCPUFifoAux
/* 8020EFFC 0020BF5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020F000 0020BF60  38 21 00 08 */	addi r1, r1, 8
/* 8020F004 0020BF64  7C 08 03 A6 */	mtlr r0
/* 8020F008 0020BF68  4E 80 00 20 */	blr 

.global __GXSaveCPUFifoAux
__GXSaveCPUFifoAux:
/* 8020F00C 0020BF6C  7C 08 02 A6 */	mflr r0
/* 8020F010 0020BF70  90 01 00 04 */	stw r0, 4(r1)
/* 8020F014 0020BF74  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8020F018 0020BF78  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8020F01C 0020BF7C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8020F020 0020BF80  7C 7E 1B 78 */	mr r30, r3
/* 8020F024 0020BF84  4B FE 9F 59 */	bl OSDisableInterrupts
/* 8020F028 0020BF88  7C 7F 1B 78 */	mr r31, r3
/* 8020F02C 0020BF8C  48 00 17 45 */	bl GXFlush
/* 8020F030 0020BF90  80 6D 34 20 */	lwz r3, __piReg@sda21(r13)
/* 8020F034 0020BF94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8020F038 0020BF98  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8020F03C 0020BF9C  90 1E 00 00 */	stw r0, 0(r30)
/* 8020F040 0020BFA0  80 6D 34 20 */	lwz r3, __piReg@sda21(r13)
/* 8020F044 0020BFA4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8020F048 0020BFA8  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8020F04C 0020BFAC  90 1E 00 04 */	stw r0, 4(r30)
/* 8020F050 0020BFB0  80 6D 34 20 */	lwz r3, __piReg@sda21(r13)
/* 8020F054 0020BFB4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8020F058 0020BFB8  54 03 01 88 */	rlwinm r3, r0, 0, 6, 4
/* 8020F05C 0020BFBC  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8020F060 0020BFC0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8020F064 0020BFC4  88 0D 34 34 */	lbz r0, CPGPLinked@sda21(r13)
/* 8020F068 0020BFC8  28 00 00 00 */	cmplwi r0, 0
/* 8020F06C 0020BFCC  41 82 00 34 */	beq .L_8020F0A0
/* 8020F070 0020BFD0  80 8D 34 24 */	lwz r4, __cpReg@sda21(r13)
/* 8020F074 0020BFD4  A0 64 00 3A */	lhz r3, 0x3a(r4)
/* 8020F078 0020BFD8  A0 84 00 38 */	lhz r4, 0x38(r4)
/* 8020F07C 0020BFDC  50 64 80 1E */	rlwimi r4, r3, 0x10, 0, 0xf
/* 8020F080 0020BFE0  3C 04 80 00 */	addis r0, r4, 0x8000
/* 8020F084 0020BFE4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8020F088 0020BFE8  80 8D 34 24 */	lwz r4, __cpReg@sda21(r13)
/* 8020F08C 0020BFEC  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 8020F090 0020BFF0  A0 04 00 30 */	lhz r0, 0x30(r4)
/* 8020F094 0020BFF4  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 8020F098 0020BFF8  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8020F09C 0020BFFC  48 00 00 2C */	b .L_8020F0C8
.L_8020F0A0:
/* 8020F0A0 0020C000  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8020F0A4 0020C004  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8020F0A8 0020C008  7C 03 00 50 */	subf r0, r3, r0
/* 8020F0AC 0020C00C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8020F0B0 0020C010  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8020F0B4 0020C014  2C 03 00 00 */	cmpwi r3, 0
/* 8020F0B8 0020C018  40 80 00 10 */	bge .L_8020F0C8
/* 8020F0BC 0020C01C  80 1E 00 08 */	lwz r0, 8(r30)
/* 8020F0C0 0020C020  7C 03 02 14 */	add r0, r3, r0
/* 8020F0C4 0020C024  90 1E 00 1C */	stw r0, 0x1c(r30)
.L_8020F0C8:
/* 8020F0C8 0020C028  7F E3 FB 78 */	mr r3, r31
/* 8020F0CC 0020C02C  4B FE 9E D9 */	bl OSRestoreInterrupts
/* 8020F0D0 0020C030  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8020F0D4 0020C034  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8020F0D8 0020C038  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8020F0DC 0020C03C  7C 08 03 A6 */	mtlr r0
/* 8020F0E0 0020C040  38 21 00 18 */	addi r1, r1, 0x18
/* 8020F0E4 0020C044  4E 80 00 20 */	blr 

.global __GXFifoInit
__GXFifoInit:
/* 8020F0E8 0020C048  7C 08 02 A6 */	mflr r0
/* 8020F0EC 0020C04C  3C 60 80 21 */	lis r3, GXCPInterruptHandler@ha
/* 8020F0F0 0020C050  90 01 00 04 */	stw r0, 4(r1)
/* 8020F0F4 0020C054  38 83 EB 40 */	addi r4, r3, GXCPInterruptHandler@l
/* 8020F0F8 0020C058  38 60 00 11 */	li r3, 0x11
/* 8020F0FC 0020C05C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8020F100 0020C060  4B FE 9E C9 */	bl __OSSetInterruptHandler
/* 8020F104 0020C064  38 60 40 00 */	li r3, 0x4000
/* 8020F108 0020C068  4B FE A2 9D */	bl __OSUnmaskInterrupts
/* 8020F10C 0020C06C  4B FE C9 D9 */	bl OSGetCurrentThread
/* 8020F110 0020C070  38 00 00 00 */	li r0, 0
/* 8020F114 0020C074  90 6D 34 30 */	stw r3, __GXCurrentThread@sda21(r13)
/* 8020F118 0020C078  90 0D 34 38 */	stw r0, GXOverflowSuspendInProgress@sda21(r13)
/* 8020F11C 0020C07C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020F120 0020C080  38 21 00 08 */	addi r1, r1, 8
/* 8020F124 0020C084  7C 08 03 A6 */	mtlr r0
/* 8020F128 0020C088  4E 80 00 20 */	blr 

.global __GXFifoReadEnable
__GXFifoReadEnable:
/* 8020F12C 0020C08C  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020F130 0020C090  84 03 00 08 */	lwzu r0, 8(r3)
/* 8020F134 0020C094  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8020F138 0020C098  60 00 00 01 */	ori r0, r0, 1
/* 8020F13C 0020C09C  90 03 00 00 */	stw r0, 0(r3)
/* 8020F140 0020C0A0  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 8020F144 0020C0A4  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020F148 0020C0A8  80 04 00 08 */	lwz r0, 8(r4)
/* 8020F14C 0020C0AC  B0 03 00 02 */	sth r0, 2(r3)
/* 8020F150 0020C0B0  4E 80 00 20 */	blr 

.global __GXFifoReadDisable
__GXFifoReadDisable:
/* 8020F154 0020C0B4  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020F158 0020C0B8  84 03 00 08 */	lwzu r0, 8(r3)
/* 8020F15C 0020C0BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8020F160 0020C0C0  90 03 00 00 */	stw r0, 0(r3)
/* 8020F164 0020C0C4  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 8020F168 0020C0C8  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020F16C 0020C0CC  80 04 00 08 */	lwz r0, 8(r4)
/* 8020F170 0020C0D0  B0 03 00 02 */	sth r0, 2(r3)
/* 8020F174 0020C0D4  4E 80 00 20 */	blr 

.global __GXFifoLink
__GXFifoLink:
/* 8020F178 0020C0D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020F17C 0020C0DC  41 82 00 0C */	beq .L_8020F188
/* 8020F180 0020C0E0  38 00 00 01 */	li r0, 1
/* 8020F184 0020C0E4  48 00 00 08 */	b .L_8020F18C
.L_8020F188:
/* 8020F188 0020C0E8  38 00 00 00 */	li r0, 0
.L_8020F18C:
/* 8020F18C 0020C0EC  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020F190 0020C0F0  54 00 20 36 */	slwi r0, r0, 4
/* 8020F194 0020C0F4  38 83 00 08 */	addi r4, r3, 8
/* 8020F198 0020C0F8  80 63 00 08 */	lwz r3, 8(r3)
/* 8020F19C 0020C0FC  54 63 07 34 */	rlwinm r3, r3, 0, 0x1c, 0x1a
/* 8020F1A0 0020C100  7C 60 03 78 */	or r0, r3, r0
/* 8020F1A4 0020C104  90 04 00 00 */	stw r0, 0(r4)
/* 8020F1A8 0020C108  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 8020F1AC 0020C10C  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020F1B0 0020C110  80 04 00 08 */	lwz r0, 8(r4)
/* 8020F1B4 0020C114  B0 03 00 02 */	sth r0, 2(r3)
/* 8020F1B8 0020C118  4E 80 00 20 */	blr 

.global __GXWriteFifoIntEnable
__GXWriteFifoIntEnable:
/* 8020F1BC 0020C11C  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 8020F1C0 0020C120  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 8020F1C4 0020C124  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 8020F1C8 0020C128  38 C5 00 08 */	addi r6, r5, 8
/* 8020F1CC 0020C12C  80 A5 00 08 */	lwz r5, 8(r5)
/* 8020F1D0 0020C130  54 A4 07 B8 */	rlwinm r4, r5, 0, 0x1e, 0x1c
/* 8020F1D4 0020C134  7C 83 1B 78 */	or r3, r4, r3
/* 8020F1D8 0020C138  90 66 00 00 */	stw r3, 0(r6)
/* 8020F1DC 0020C13C  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020F1E0 0020C140  38 83 00 08 */	addi r4, r3, 8
/* 8020F1E4 0020C144  80 63 00 08 */	lwz r3, 8(r3)
/* 8020F1E8 0020C148  54 63 07 76 */	rlwinm r3, r3, 0, 0x1d, 0x1b
/* 8020F1EC 0020C14C  7C 60 03 78 */	or r0, r3, r0
/* 8020F1F0 0020C150  90 04 00 00 */	stw r0, 0(r4)
/* 8020F1F4 0020C154  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 8020F1F8 0020C158  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020F1FC 0020C15C  80 04 00 08 */	lwz r0, 8(r4)
/* 8020F200 0020C160  B0 03 00 02 */	sth r0, 2(r3)
/* 8020F204 0020C164  4E 80 00 20 */	blr 

.global __GXWriteFifoIntReset
__GXWriteFifoIntReset:
/* 8020F208 0020C168  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 8020F20C 0020C16C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8020F210 0020C170  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 8020F214 0020C174  38 C5 00 10 */	addi r6, r5, 0x10
/* 8020F218 0020C178  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8020F21C 0020C17C  54 A4 00 3C */	rlwinm r4, r5, 0, 0, 0x1e
/* 8020F220 0020C180  7C 83 1B 78 */	or r3, r4, r3
/* 8020F224 0020C184  90 66 00 00 */	stw r3, 0(r6)
/* 8020F228 0020C188  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 8020F22C 0020C18C  38 83 00 10 */	addi r4, r3, 0x10
/* 8020F230 0020C190  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8020F234 0020C194  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 8020F238 0020C198  7C 60 03 78 */	or r0, r3, r0
/* 8020F23C 0020C19C  90 04 00 00 */	stw r0, 0(r4)
/* 8020F240 0020C1A0  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 8020F244 0020C1A4  80 6D 34 24 */	lwz r3, __cpReg@sda21(r13)
/* 8020F248 0020C1A8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8020F24C 0020C1AC  B0 03 00 04 */	sth r0, 4(r3)
/* 8020F250 0020C1B0  4E 80 00 20 */	blr 

.global GXSetCurrentGXThread
GXSetCurrentGXThread:
/* 8020F254 0020C1B4  7C 08 02 A6 */	mflr r0
/* 8020F258 0020C1B8  90 01 00 04 */	stw r0, 4(r1)
/* 8020F25C 0020C1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020F260 0020C1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020F264 0020C1C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8020F268 0020C1C8  4B FE 9D 15 */	bl OSDisableInterrupts
/* 8020F26C 0020C1CC  83 CD 34 30 */	lwz r30, __GXCurrentThread@sda21(r13)
/* 8020F270 0020C1D0  7C 7F 1B 78 */	mr r31, r3
/* 8020F274 0020C1D4  4B FE C8 71 */	bl OSGetCurrentThread
/* 8020F278 0020C1D8  90 6D 34 30 */	stw r3, __GXCurrentThread@sda21(r13)
/* 8020F27C 0020C1DC  7F E3 FB 78 */	mr r3, r31
/* 8020F280 0020C1E0  4B FE 9D 25 */	bl OSRestoreInterrupts
/* 8020F284 0020C1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020F288 0020C1E8  7F C3 F3 78 */	mr r3, r30
/* 8020F28C 0020C1EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020F290 0020C1F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020F294 0020C1F4  7C 08 03 A6 */	mtlr r0
/* 8020F298 0020C1F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8020F29C 0020C1FC  4E 80 00 20 */	blr 

.global GXGetCPUFifo
GXGetCPUFifo:
/* 8020F2A0 0020C200  80 6D 34 48 */	lwz r3, CPUFifo@sda21(r13)
/* 8020F2A4 0020C204  4E 80 00 20 */	blr 

.section .sbss, "wa"
.balign 8
.global __GXCurrentThread
__GXCurrentThread:
	.skip 0x4
.global CPGPLinked
CPGPLinked:
	.skip 0x4
.global GXOverflowSuspendInProgress
GXOverflowSuspendInProgress:
	.skip 0x4
.global BreakPointCB
BreakPointCB:
	.skip 0x4
.global __GXOverflowCount
__GXOverflowCount:
	.skip 0x4
.global GPFifo
GPFifo:
	.skip 0x4
.global CPUFifo
CPUFifo:
	.skip 0x4
