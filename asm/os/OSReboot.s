.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global Run
Run:
/* 801F9EC4 001F6E24  7C 08 02 A6 */	mflr r0
/* 801F9EC8 001F6E28  90 01 00 04 */	stw r0, 4(r1)
/* 801F9ECC 001F6E2C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801F9ED0 001F6E30  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801F9ED4 001F6E34  7C 7F 1B 78 */	mr r31, r3
/* 801F9ED8 001F6E38  4B FF F0 A5 */	bl OSDisableInterrupts
/* 801F9EDC 001F6E3C  4B FF CE 3D */	bl ICFlashInvalidate
/* 801F9EE0 001F6E40  7C 00 04 AC */	sync 0
/* 801F9EE4 001F6E44  4C 00 01 2C */	isync 
/* 801F9EE8 001F6E48  7F E8 03 A6 */	mtlr r31
/* 801F9EEC 001F6E4C  4E 80 00 20 */	blr 
/* 801F9EF0 001F6E50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801F9EF4 001F6E54  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801F9EF8 001F6E58  38 21 00 18 */	addi r1, r1, 0x18
/* 801F9EFC 001F6E5C  7C 08 03 A6 */	mtlr r0
/* 801F9F00 001F6E60  4E 80 00 20 */	blr 

.global Callback
Callback:
/* 801F9F04 001F6E64  38 00 00 01 */	li r0, 1
/* 801F9F08 001F6E68  90 0D 32 00 */	stw r0, Prepared@sda21(r13)
/* 801F9F0C 001F6E6C  4E 80 00 20 */	blr 

.global __OSReboot
__OSReboot:
/* 801F9F10 001F6E70  7C 08 02 A6 */	mflr r0
/* 801F9F14 001F6E74  90 01 00 04 */	stw r0, 4(r1)
/* 801F9F18 001F6E78  94 21 FC B8 */	stwu r1, -0x348(r1)
/* 801F9F1C 001F6E7C  93 E1 03 44 */	stw r31, 0x344(r1)
/* 801F9F20 001F6E80  93 C1 03 40 */	stw r30, 0x340(r1)
/* 801F9F24 001F6E84  93 A1 03 3C */	stw r29, 0x33c(r1)
/* 801F9F28 001F6E88  7C 7D 1B 78 */	mr r29, r3
/* 801F9F2C 001F6E8C  3C 60 80 3D */	lis r3, Header@ha
/* 801F9F30 001F6E90  3B C3 24 A0 */	addi r30, r3, Header@l
/* 801F9F34 001F6E94  4B FF F0 49 */	bl OSDisableInterrupts
/* 801F9F38 001F6E98  3F E0 81 80 */	lis r31, 0x817FFFFC@ha
/* 801F9F3C 001F6E9C  38 60 00 00 */	li r3, 0
/* 801F9F40 001F6EA0  93 BF FF FC */	stw r29, 0x817FFFFC@l(r31)
/* 801F9F44 001F6EA4  38 00 00 01 */	li r0, 1
/* 801F9F48 001F6EA8  3C 80 80 00 */	lis r4, 0x800030E2@ha
/* 801F9F4C 001F6EAC  90 7F FF F8 */	stw r3, -8(r31)
/* 801F9F50 001F6EB0  38 61 00 70 */	addi r3, r1, 0x70
/* 801F9F54 001F6EB4  98 04 30 E2 */	stb r0, 0x800030E2@l(r4)
/* 801F9F58 001F6EB8  4B FF D4 E5 */	bl OSClearContext
/* 801F9F5C 001F6EBC  38 61 00 70 */	addi r3, r1, 0x70
/* 801F9F60 001F6EC0  4B FF D3 15 */	bl OSSetCurrentContext
/* 801F9F64 001F6EC4  48 00 5A 01 */	bl DVDInit
/* 801F9F68 001F6EC8  3C 60 80 20 */	lis r3, Callback@ha
/* 801F9F6C 001F6ECC  38 63 9F 04 */	addi r3, r3, Callback@l
/* 801F9F70 001F6ED0  48 00 7E 79 */	bl __DVDPrepareResetAsync
/* 801F9F74 001F6ED4  48 00 7D 91 */	bl DVDCheckDisk
/* 801F9F78 001F6ED8  2C 03 00 00 */	cmpwi r3, 0
/* 801F9F7C 001F6EDC  40 82 00 0C */	bne .L_801F9F88
/* 801F9F80 001F6EE0  80 7F FF FC */	lwz r3, -4(r31)
/* 801F9F84 001F6EE4  48 00 02 31 */	bl __OSDoHotReset
.L_801F9F88:
/* 801F9F88 001F6EE8  38 60 FF E0 */	li r3, -32
/* 801F9F8C 001F6EEC  4B FF F3 91 */	bl __OSMaskInterrupts
/* 801F9F90 001F6EF0  38 60 04 00 */	li r3, 0x400
/* 801F9F94 001F6EF4  4B FF F4 11 */	bl __OSUnmaskInterrupts
/* 801F9F98 001F6EF8  4B FF EF F9 */	bl OSEnableInterrupts
/* 801F9F9C 001F6EFC  48 00 00 04 */	b .L_801F9FA0
.L_801F9FA0:
/* 801F9FA0 001F6F00  48 00 00 04 */	b .L_801F9FA4
.L_801F9FA4:
/* 801F9FA4 001F6F04  80 0D 32 00 */	lwz r0, Prepared@sda21(r13)
/* 801F9FA8 001F6F08  2C 00 00 00 */	cmpwi r0, 0
/* 801F9FAC 001F6F0C  41 82 FF F8 */	beq .L_801F9FA4
/* 801F9FB0 001F6F10  7F C4 F3 78 */	mr r4, r30
/* 801F9FB4 001F6F14  38 61 00 40 */	addi r3, r1, 0x40
/* 801F9FB8 001F6F18  38 A0 00 20 */	li r5, 0x20
/* 801F9FBC 001F6F1C  38 C0 24 40 */	li r6, 0x2440
/* 801F9FC0 001F6F20  38 E0 00 00 */	li r7, 0
/* 801F9FC4 001F6F24  48 00 75 D9 */	bl DVDReadAbsAsyncForBS
/* 801F9FC8 001F6F28  3F E0 81 80 */	lis r31, 0x8180
/* 801F9FCC 001F6F2C  48 00 00 04 */	b .L_801F9FD0
.L_801F9FD0:
/* 801F9FD0 001F6F30  48 00 00 04 */	b .L_801F9FD4
.L_801F9FD4:
/* 801F9FD4 001F6F34  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801F9FD8 001F6F38  2C 00 00 01 */	cmpwi r0, 1
/* 801F9FDC 001F6F3C  41 82 FF F8 */	beq .L_801F9FD4
/* 801F9FE0 001F6F40  40 80 00 14 */	bge .L_801F9FF4
/* 801F9FE4 001F6F44  2C 00 FF FF */	cmpwi r0, -1
/* 801F9FE8 001F6F48  41 82 00 18 */	beq .L_801FA000
/* 801F9FEC 001F6F4C  40 80 00 20 */	bge .L_801FA00C
/* 801F9FF0 001F6F50  4B FF FF E4 */	b .L_801F9FD4
.L_801F9FF4:
/* 801F9FF4 001F6F54  2C 00 00 0C */	cmpwi r0, 0xc
/* 801F9FF8 001F6F58  40 80 FF DC */	bge .L_801F9FD4
/* 801F9FFC 001F6F5C  48 00 00 04 */	b .L_801FA000
.L_801FA000:
/* 801FA000 001F6F60  80 7F FF FC */	lwz r3, -4(r31)
/* 801FA004 001F6F64  48 00 01 B1 */	bl __OSDoHotReset
/* 801FA008 001F6F68  4B FF FF CC */	b .L_801F9FD4
.L_801FA00C:
/* 801FA00C 001F6F6C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801FA010 001F6F70  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 801FA014 001F6F74  38 03 00 1F */	addi r0, r3, 0x1f
/* 801FA018 001F6F78  38 84 00 20 */	addi r4, r4, 0x20
/* 801FA01C 001F6F7C  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 801FA020 001F6F80  48 00 00 04 */	b .L_801FA024
.L_801FA024:
/* 801FA024 001F6F84  48 00 00 04 */	b .L_801FA028
.L_801FA028:
/* 801FA028 001F6F88  80 0D 32 00 */	lwz r0, Prepared@sda21(r13)
/* 801FA02C 001F6F8C  2C 00 00 00 */	cmpwi r0, 0
/* 801FA030 001F6F90  41 82 FF F8 */	beq .L_801FA028
/* 801FA034 001F6F94  7F C5 F3 78 */	mr r5, r30
/* 801FA038 001F6F98  38 61 00 10 */	addi r3, r1, 0x10
/* 801FA03C 001F6F9C  38 C4 24 40 */	addi r6, r4, 0x2440
/* 801FA040 001F6FA0  3C 80 81 30 */	lis r4, 0x8130
/* 801FA044 001F6FA4  38 E0 00 00 */	li r7, 0
/* 801FA048 001F6FA8  48 00 75 55 */	bl DVDReadAbsAsyncForBS
/* 801FA04C 001F6FAC  3F E0 81 80 */	lis r31, 0x8180
/* 801FA050 001F6FB0  48 00 00 04 */	b .L_801FA054
.L_801FA054:
/* 801FA054 001F6FB4  48 00 00 04 */	b .L_801FA058
.L_801FA058:
/* 801FA058 001F6FB8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801FA05C 001F6FBC  2C 00 00 01 */	cmpwi r0, 1
/* 801FA060 001F6FC0  41 82 FF F8 */	beq .L_801FA058
/* 801FA064 001F6FC4  40 80 00 14 */	bge .L_801FA078
/* 801FA068 001F6FC8  2C 00 FF FF */	cmpwi r0, -1
/* 801FA06C 001F6FCC  41 82 00 18 */	beq .L_801FA084
/* 801FA070 001F6FD0  40 80 00 20 */	bge .L_801FA090
/* 801FA074 001F6FD4  4B FF FF E4 */	b .L_801FA058
.L_801FA078:
/* 801FA078 001F6FD8  2C 00 00 0C */	cmpwi r0, 0xc
/* 801FA07C 001F6FDC  40 80 FF DC */	bge .L_801FA058
/* 801FA080 001F6FE0  48 00 00 04 */	b .L_801FA084
.L_801FA084:
/* 801FA084 001F6FE4  80 7F FF FC */	lwz r3, -4(r31)
/* 801FA088 001F6FE8  48 00 01 2D */	bl __OSDoHotReset
/* 801FA08C 001F6FEC  4B FF FF CC */	b .L_801FA058
.L_801FA090:
/* 801FA090 001F6FF0  3C 60 81 30 */	lis r3, 0x8130
/* 801FA094 001F6FF4  7F C4 F3 78 */	mr r4, r30
/* 801FA098 001F6FF8  4B FF CC 49 */	bl ICInvalidateRange
/* 801FA09C 001F6FFC  3C 60 81 30 */	lis r3, 0x8130
/* 801FA0A0 001F7000  4B FF FE 25 */	bl Run
/* 801FA0A4 001F7004  80 01 03 4C */	lwz r0, 0x34c(r1)
/* 801FA0A8 001F7008  83 E1 03 44 */	lwz r31, 0x344(r1)
/* 801FA0AC 001F700C  83 C1 03 40 */	lwz r30, 0x340(r1)
/* 801FA0B0 001F7010  7C 08 03 A6 */	mtlr r0
/* 801FA0B4 001F7014  83 A1 03 3C */	lwz r29, 0x33c(r1)
/* 801FA0B8 001F7018  38 21 03 48 */	addi r1, r1, 0x348
/* 801FA0BC 001F701C  4E 80 00 20 */	blr 

.section .sbss, "wa"
.balign 8
.global Prepared
Prepared:
	.skip 0x4
