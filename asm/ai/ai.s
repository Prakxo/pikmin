.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global AIRegisterDMACallback
AIRegisterDMACallback:
/* 80206004 00202F64  7C 08 02 A6 */	mflr r0
/* 80206008 00202F68  90 01 00 04 */	stw r0, 4(r1)
/* 8020600C 00202F6C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80206010 00202F70  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80206014 00202F74  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80206018 00202F78  7C 7E 1B 78 */	mr r30, r3
/* 8020601C 00202F7C  83 ED 33 8C */	lwz r31, __AID_Callback@sda21(r13)
/* 80206020 00202F80  4B FF 2F 5D */	bl OSDisableInterrupts
/* 80206024 00202F84  93 CD 33 8C */	stw r30, __AID_Callback@sda21(r13)
/* 80206028 00202F88  4B FF 2F 7D */	bl OSRestoreInterrupts
/* 8020602C 00202F8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80206030 00202F90  7F E3 FB 78 */	mr r3, r31
/* 80206034 00202F94  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80206038 00202F98  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8020603C 00202F9C  7C 08 03 A6 */	mtlr r0
/* 80206040 00202FA0  38 21 00 18 */	addi r1, r1, 0x18
/* 80206044 00202FA4  4E 80 00 20 */	blr 

.global AIInitDMA
AIInitDMA:
/* 80206048 00202FA8  7C 08 02 A6 */	mflr r0
/* 8020604C 00202FAC  90 01 00 04 */	stw r0, 4(r1)
/* 80206050 00202FB0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80206054 00202FB4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80206058 00202FB8  3B E4 00 00 */	addi r31, r4, 0
/* 8020605C 00202FBC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80206060 00202FC0  3B C3 00 00 */	addi r30, r3, 0
/* 80206064 00202FC4  4B FF 2F 19 */	bl OSDisableInterrupts
/* 80206068 00202FC8  3C 80 CC 00 */	lis r4, 0xCC005030@ha
/* 8020606C 00202FCC  A0 04 50 30 */	lhz r0, 0xCC005030@l(r4)
/* 80206070 00202FD0  38 A4 50 00 */	addi r5, r4, 0x5000
/* 80206074 00202FD4  38 C4 50 00 */	addi r6, r4, 0x5000
/* 80206078 00202FD8  38 E4 50 00 */	addi r7, r4, 0x5000
/* 8020607C 00202FDC  54 04 00 2A */	rlwinm r4, r0, 0, 0, 0x15
/* 80206080 00202FE0  57 C0 84 3E */	srwi r0, r30, 0x10
/* 80206084 00202FE4  7C 80 03 78 */	or r0, r4, r0
/* 80206088 00202FE8  B0 05 00 30 */	sth r0, 0x30(r5)
/* 8020608C 00202FEC  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80206090 00202FF0  A0 86 00 32 */	lhz r4, 0x32(r6)
/* 80206094 00202FF4  54 84 06 DE */	rlwinm r4, r4, 0, 0x1b, 0xf
/* 80206098 00202FF8  7C 80 03 78 */	or r0, r4, r0
/* 8020609C 00202FFC  B0 06 00 32 */	sth r0, 0x32(r6)
/* 802060A0 00203000  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 802060A4 00203004  A0 87 00 36 */	lhz r4, 0x36(r7)
/* 802060A8 00203008  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 802060AC 0020300C  7C 80 03 78 */	or r0, r4, r0
/* 802060B0 00203010  B0 07 00 36 */	sth r0, 0x36(r7)
/* 802060B4 00203014  4B FF 2E F1 */	bl OSRestoreInterrupts
/* 802060B8 00203018  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802060BC 0020301C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802060C0 00203020  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802060C4 00203024  7C 08 03 A6 */	mtlr r0
/* 802060C8 00203028  38 21 00 18 */	addi r1, r1, 0x18
/* 802060CC 0020302C  4E 80 00 20 */	blr 

.global AIStartDMA
AIStartDMA:
/* 802060D0 00203030  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 802060D4 00203034  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 802060D8 00203038  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 802060DC 0020303C  60 00 80 00 */	ori r0, r0, 0x8000
/* 802060E0 00203040  B0 03 00 36 */	sth r0, 0x36(r3)
/* 802060E4 00203044  4E 80 00 20 */	blr 

.global AIGetStreamSampleCount
AIGetStreamSampleCount:
/* 802060E8 00203048  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 802060EC 0020304C  38 63 6C 00 */	addi r3, r3, 0xCC006C00@l
/* 802060F0 00203050  80 63 00 08 */	lwz r3, 8(r3)
/* 802060F4 00203054  4E 80 00 20 */	blr 

.global AIResetStreamSampleCount
AIResetStreamSampleCount:
/* 802060F8 00203058  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 802060FC 0020305C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 80206100 00203060  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80206104 00203064  60 00 00 20 */	ori r0, r0, 0x20
/* 80206108 00203068  90 03 6C 00 */	stw r0, 0x6c00(r3)
/* 8020610C 0020306C  4E 80 00 20 */	blr 

.global AIGetStreamTrigger
AIGetStreamTrigger:
/* 80206110 00203070  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 80206114 00203074  38 63 6C 00 */	addi r3, r3, 0xCC006C00@l
/* 80206118 00203078  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8020611C 0020307C  4E 80 00 20 */	blr 

.global AISetStreamPlayState
AISetStreamPlayState:
/* 80206120 00203080  7C 08 02 A6 */	mflr r0
/* 80206124 00203084  90 01 00 04 */	stw r0, 4(r1)
/* 80206128 00203088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020612C 0020308C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80206130 00203090  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80206134 00203094  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80206138 00203098  7C 7D 1B 78 */	mr r29, r3
/* 8020613C 0020309C  48 00 00 BD */	bl AIGetStreamPlayState
/* 80206140 002030A0  7C 1D 18 40 */	cmplw r29, r3
/* 80206144 002030A4  41 82 00 98 */	beq lbl_802061DC
/* 80206148 002030A8  48 00 02 B1 */	bl AIGetStreamSampleRate
/* 8020614C 002030AC  28 03 00 00 */	cmplwi r3, 0
/* 80206150 002030B0  40 82 00 78 */	bne lbl_802061C8
/* 80206154 002030B4  28 1D 00 01 */	cmplwi r29, 1
/* 80206158 002030B8  40 82 00 70 */	bne lbl_802061C8
/* 8020615C 002030BC  48 00 02 F5 */	bl AIGetStreamVolRight
/* 80206160 002030C0  7C 7E 1B 78 */	mr r30, r3
/* 80206164 002030C4  48 00 02 C1 */	bl AIGetStreamVolLeft
/* 80206168 002030C8  3B A3 00 00 */	addi r29, r3, 0
/* 8020616C 002030CC  38 60 00 00 */	li r3, 0
/* 80206170 002030D0  48 00 02 C5 */	bl AISetStreamVolRight
/* 80206174 002030D4  38 60 00 00 */	li r3, 0
/* 80206178 002030D8  48 00 02 91 */	bl AISetStreamVolLeft
/* 8020617C 002030DC  4B FF 2E 01 */	bl OSDisableInterrupts
/* 80206180 002030E0  7C 7F 1B 78 */	mr r31, r3
/* 80206184 002030E4  48 00 05 A5 */	bl __AI_SRC_INIT
/* 80206188 002030E8  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8020618C 002030EC  80 04 6C 00 */	lwz r0, 0xCC006C00@l(r4)
/* 80206190 002030F0  38 7F 00 00 */	addi r3, r31, 0
/* 80206194 002030F4  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80206198 002030F8  60 00 00 20 */	ori r0, r0, 0x20
/* 8020619C 002030FC  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 802061A0 00203100  80 04 6C 00 */	lwz r0, 0x6c00(r4)
/* 802061A4 00203104  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802061A8 00203108  60 00 00 01 */	ori r0, r0, 1
/* 802061AC 0020310C  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 802061B0 00203110  4B FF 2D F5 */	bl OSRestoreInterrupts
/* 802061B4 00203114  7F C3 F3 78 */	mr r3, r30
/* 802061B8 00203118  48 00 02 51 */	bl AISetStreamVolLeft
/* 802061BC 0020311C  7F A3 EB 78 */	mr r3, r29
/* 802061C0 00203120  48 00 02 75 */	bl AISetStreamVolRight
/* 802061C4 00203124  48 00 00 18 */	b lbl_802061DC
lbl_802061C8:
/* 802061C8 00203128  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 802061CC 0020312C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 802061D0 00203130  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802061D4 00203134  7C 00 EB 78 */	or r0, r0, r29
/* 802061D8 00203138  90 03 6C 00 */	stw r0, 0x6c00(r3)
lbl_802061DC:
/* 802061DC 0020313C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802061E0 00203140  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802061E4 00203144  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802061E8 00203148  7C 08 03 A6 */	mtlr r0
/* 802061EC 0020314C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802061F0 00203150  38 21 00 20 */	addi r1, r1, 0x20
/* 802061F4 00203154  4E 80 00 20 */	blr 

.global AIGetStreamPlayState
AIGetStreamPlayState:
/* 802061F8 00203158  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 802061FC 0020315C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 80206200 00203160  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 80206204 00203164  4E 80 00 20 */	blr 

.global AISetDSPSampleRate
AISetDSPSampleRate:
/* 80206208 00203168  7C 08 02 A6 */	mflr r0
/* 8020620C 0020316C  90 01 00 04 */	stw r0, 4(r1)
/* 80206210 00203170  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80206214 00203174  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 80206218 00203178  7C 7A 1B 78 */	mr r26, r3
/* 8020621C 0020317C  48 00 00 CD */	bl AIGetDSPSampleRate
/* 80206220 00203180  7C 1A 18 40 */	cmplw r26, r3
/* 80206224 00203184  41 82 00 B0 */	beq lbl_802062D4
/* 80206228 00203188  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8020622C 0020318C  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 80206230 00203190  28 1A 00 00 */	cmplwi r26, 0
/* 80206234 00203194  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80206238 00203198  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8020623C 0020319C  40 82 00 98 */	bne lbl_802062D4
/* 80206240 002031A0  48 00 01 E5 */	bl AIGetStreamVolLeft
/* 80206244 002031A4  7C 7E 1B 78 */	mr r30, r3
/* 80206248 002031A8  48 00 02 09 */	bl AIGetStreamVolRight
/* 8020624C 002031AC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80206250 002031B0  3B A3 00 00 */	addi r29, r3, 0
/* 80206254 002031B4  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 80206258 002031B8  48 00 01 A1 */	bl AIGetStreamSampleRate
/* 8020625C 002031BC  3B 83 00 00 */	addi r28, r3, 0
/* 80206260 002031C0  38 60 00 00 */	li r3, 0
/* 80206264 002031C4  48 00 01 A5 */	bl AISetStreamVolLeft
/* 80206268 002031C8  38 60 00 00 */	li r3, 0
/* 8020626C 002031CC  48 00 01 C9 */	bl AISetStreamVolRight
/* 80206270 002031D0  4B FF 2D 0D */	bl OSDisableInterrupts
/* 80206274 002031D4  7C 7A 1B 78 */	mr r26, r3
/* 80206278 002031D8  48 00 04 B1 */	bl __AI_SRC_INIT
/* 8020627C 002031DC  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 80206280 002031E0  57 80 08 3C */	slwi r0, r28, 1
/* 80206284 002031E4  38 7A 00 00 */	addi r3, r26, 0
/* 80206288 002031E8  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 8020628C 002031EC  60 84 00 20 */	ori r4, r4, 0x20
/* 80206290 002031F0  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 80206294 002031F4  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 80206298 002031F8  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8020629C 002031FC  7C 80 03 78 */	or r0, r4, r0
/* 802062A0 00203200  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802062A4 00203204  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802062A8 00203208  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802062AC 0020320C  7C 00 DB 78 */	or r0, r0, r27
/* 802062B0 00203210  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802062B4 00203214  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802062B8 00203218  60 00 00 40 */	ori r0, r0, 0x40
/* 802062BC 0020321C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802062C0 00203220  4B FF 2C E5 */	bl OSRestoreInterrupts
/* 802062C4 00203224  7F C3 F3 78 */	mr r3, r30
/* 802062C8 00203228  48 00 01 41 */	bl AISetStreamVolLeft
/* 802062CC 0020322C  7F A3 EB 78 */	mr r3, r29
/* 802062D0 00203230  48 00 01 65 */	bl AISetStreamVolRight
lbl_802062D4:
/* 802062D4 00203234  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 802062D8 00203238  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802062DC 0020323C  38 21 00 28 */	addi r1, r1, 0x28
/* 802062E0 00203240  7C 08 03 A6 */	mtlr r0
/* 802062E4 00203244  4E 80 00 20 */	blr 

.global AIGetDSPSampleRate
AIGetDSPSampleRate:
/* 802062E8 00203248  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 802062EC 0020324C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 802062F0 00203250  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 802062F4 00203254  68 03 00 01 */	xori r3, r0, 1
/* 802062F8 00203258  4E 80 00 20 */	blr 

.global AISetStreamSampleRate
AISetStreamSampleRate:
/* 802062FC 0020325C  7C 08 02 A6 */	mflr r0
/* 80206300 00203260  28 03 00 01 */	cmplwi r3, 1
/* 80206304 00203264  90 01 00 04 */	stw r0, 4(r1)
/* 80206308 00203268  94 21 FF F8 */	stwu r1, -8(r1)
/* 8020630C 0020326C  40 82 00 08 */	bne lbl_80206314
/* 80206310 00203270  48 00 00 15 */	bl __AI_set_stream_sample_rate
lbl_80206314:
/* 80206314 00203274  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80206318 00203278  38 21 00 08 */	addi r1, r1, 8
/* 8020631C 0020327C  7C 08 03 A6 */	mtlr r0
/* 80206320 00203280  4E 80 00 20 */	blr 

.global __AI_set_stream_sample_rate
__AI_set_stream_sample_rate:
/* 80206324 00203284  7C 08 02 A6 */	mflr r0
/* 80206328 00203288  90 01 00 04 */	stw r0, 4(r1)
/* 8020632C 0020328C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80206330 00203290  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80206334 00203294  7C 79 1B 78 */	mr r25, r3
/* 80206338 00203298  48 00 00 C1 */	bl AIGetStreamSampleRate
/* 8020633C 0020329C  7C 19 18 40 */	cmplw r25, r3
/* 80206340 002032A0  41 82 00 A4 */	beq lbl_802063E4
/* 80206344 002032A4  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 80206348 002032A8  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8020634C 002032AC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80206350 002032B0  7C 1D 03 78 */	mr r29, r0
/* 80206354 002032B4  48 00 00 D1 */	bl AIGetStreamVolLeft
/* 80206358 002032B8  7C 7C 1B 78 */	mr r28, r3
/* 8020635C 002032BC  48 00 00 F5 */	bl AIGetStreamVolRight
/* 80206360 002032C0  3B 63 00 00 */	addi r27, r3, 0
/* 80206364 002032C4  38 60 00 00 */	li r3, 0
/* 80206368 002032C8  48 00 00 CD */	bl AISetStreamVolRight
/* 8020636C 002032CC  38 60 00 00 */	li r3, 0
/* 80206370 002032D0  48 00 00 99 */	bl AISetStreamVolLeft
/* 80206374 002032D4  80 7F 6C 00 */	lwz r3, 0x6c00(r31)
/* 80206378 002032D8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8020637C 002032DC  54 7A 06 72 */	rlwinm r26, r3, 0, 0x19, 0x19
/* 80206380 002032E0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80206384 002032E4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80206388 002032E8  4B FF 2B F5 */	bl OSDisableInterrupts
/* 8020638C 002032EC  7C 7E 1B 78 */	mr r30, r3
/* 80206390 002032F0  48 00 03 99 */	bl __AI_SRC_INIT
/* 80206394 002032F4  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 80206398 002032F8  57 20 08 3C */	slwi r0, r25, 1
/* 8020639C 002032FC  38 7E 00 00 */	addi r3, r30, 0
/* 802063A0 00203300  7C 84 D3 78 */	or r4, r4, r26
/* 802063A4 00203304  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 802063A8 00203308  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 802063AC 0020330C  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 802063B0 00203310  60 84 00 20 */	ori r4, r4, 0x20
/* 802063B4 00203314  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 802063B8 00203318  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 802063BC 0020331C  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 802063C0 00203320  7C 80 03 78 */	or r0, r4, r0
/* 802063C4 00203324  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802063C8 00203328  4B FF 2B DD */	bl OSRestoreInterrupts
/* 802063CC 0020332C  7F A3 EB 78 */	mr r3, r29
/* 802063D0 00203330  4B FF FD 51 */	bl AISetStreamPlayState
/* 802063D4 00203334  7F 83 E3 78 */	mr r3, r28
/* 802063D8 00203338  48 00 00 31 */	bl AISetStreamVolLeft
/* 802063DC 0020333C  7F 63 DB 78 */	mr r3, r27
/* 802063E0 00203340  48 00 00 55 */	bl AISetStreamVolRight
lbl_802063E4:
/* 802063E4 00203344  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 802063E8 00203348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802063EC 0020334C  38 21 00 30 */	addi r1, r1, 0x30
/* 802063F0 00203350  7C 08 03 A6 */	mtlr r0
/* 802063F4 00203354  4E 80 00 20 */	blr 

.global AIGetStreamSampleRate
AIGetStreamSampleRate:
/* 802063F8 00203358  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 802063FC 0020335C  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 80206400 00203360  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80206404 00203364  4E 80 00 20 */	blr 

.global AISetStreamVolLeft
AISetStreamVolLeft:
/* 80206408 00203368  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8020640C 0020336C  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 80206410 00203370  80 04 00 04 */	lwz r0, 4(r4)
/* 80206414 00203374  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80206418 00203378  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 8020641C 0020337C  90 04 00 04 */	stw r0, 4(r4)
/* 80206420 00203380  4E 80 00 20 */	blr 

.global AIGetStreamVolLeft
AIGetStreamVolLeft:
/* 80206424 00203384  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 80206428 00203388  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 8020642C 0020338C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80206430 00203390  4E 80 00 20 */	blr 

.global AISetStreamVolRight
AISetStreamVolRight:
/* 80206434 00203394  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 80206438 00203398  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 8020643C 0020339C  80 04 00 04 */	lwz r0, 4(r4)
/* 80206440 002033A0  54 00 06 1E */	rlwinm r0, r0, 0, 0x18, 0xf
/* 80206444 002033A4  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 80206448 002033A8  90 04 00 04 */	stw r0, 4(r4)
/* 8020644C 002033AC  4E 80 00 20 */	blr 

.global AIGetStreamVolRight
AIGetStreamVolRight:
/* 80206450 002033B0  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 80206454 002033B4  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 80206458 002033B8  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 8020645C 002033BC  4E 80 00 20 */	blr 

.global AIInit
AIInit:
/* 80206460 002033C0  7C 08 02 A6 */	mflr r0
/* 80206464 002033C4  90 01 00 04 */	stw r0, 4(r1)
/* 80206468 002033C8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8020646C 002033CC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80206470 002033D0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80206474 002033D4  3B C3 00 00 */	addi r30, r3, 0
/* 80206478 002033D8  80 0D 33 98 */	lwz r0, __AI_init_flag@sda21(r13)
/* 8020647C 002033DC  2C 00 00 01 */	cmpwi r0, 1
/* 80206480 002033E0  41 82 01 2C */	beq lbl_802065AC
/* 80206484 002033E4  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 80206488 002033E8  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8020648C 002033EC  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 80206490 002033F0  3C 80 00 01 */	lis r4, 0x0000A428@ha
/* 80206494 002033F4  54 00 F0 BE */	srwi r0, r0, 2
/* 80206498 002033F8  38 63 DE 83 */	addi r3, r3, 0x431BDE83@l
/* 8020649C 002033FC  7C 03 00 16 */	mulhwu r0, r3, r0
/* 802064A0 00203400  54 09 8B FE */	srwi r9, r0, 0xf
/* 802064A4 00203404  38 A4 A4 28 */	addi r5, r4, 0x0000A428@l
/* 802064A8 00203408  38 64 A4 10 */	addi r3, r4, -23536
/* 802064AC 0020340C  38 04 F6 18 */	addi r0, r4, -2536
/* 802064B0 00203410  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 802064B4 00203414  7C E9 29 D6 */	mullw r7, r9, r5
/* 802064B8 00203418  39 44 4D D3 */	addi r10, r4, 0x10624DD3@l
/* 802064BC 0020341C  7C A9 19 D6 */	mullw r5, r9, r3
/* 802064C0 00203420  7C 89 01 D6 */	mullw r4, r9, r0
/* 802064C4 00203424  1D 09 7B 24 */	mulli r8, r9, 0x7b24
/* 802064C8 00203428  1C 69 0B B8 */	mulli r3, r9, 0xbb8
/* 802064CC 0020342C  7D 0A 40 16 */	mulhwu r8, r10, r8
/* 802064D0 00203430  7C EA 38 16 */	mulhwu r7, r10, r7
/* 802064D4 00203434  7C AA 28 16 */	mulhwu r5, r10, r5
/* 802064D8 00203438  7C 8A 20 16 */	mulhwu r4, r10, r4
/* 802064DC 0020343C  7C 6A 18 16 */	mulhwu r3, r10, r3
/* 802064E0 00203440  55 08 BA 7E */	srwi r8, r8, 9
/* 802064E4 00203444  54 E7 BA 7E */	srwi r7, r7, 9
/* 802064E8 00203448  91 0D 33 A4 */	stw r8, bound_32KHz+4@sda21(r13)
/* 802064EC 0020344C  54 A5 BA 7E */	srwi r5, r5, 9
/* 802064F0 00203450  54 84 BA 7E */	srwi r4, r4, 9
/* 802064F4 00203454  90 ED 33 AC */	stw r7, bound_48KHz+4@sda21(r13)
/* 802064F8 00203458  3B E0 00 00 */	li r31, 0
/* 802064FC 0020345C  54 63 BA 7E */	srwi r3, r3, 9
/* 80206500 00203460  90 AD 33 B4 */	stw r5, min_wait+4@sda21(r13)
/* 80206504 00203464  3C C0 CC 00 */	lis r6, 0xCC006C00@ha
/* 80206508 00203468  90 6D 33 C4 */	stw r3, buffer+4@sda21(r13)
/* 8020650C 0020346C  38 60 00 01 */	li r3, 1
/* 80206510 00203470  80 06 6C 00 */	lwz r0, 0xCC006C00@l(r6)
/* 80206514 00203474  90 8D 33 BC */	stw r4, max_wait+4@sda21(r13)
/* 80206518 00203478  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8020651C 0020347C  60 00 00 20 */	ori r0, r0, 0x20
/* 80206520 00203480  93 ED 33 A0 */	stw r31, bound_32KHz@sda21(r13)
/* 80206524 00203484  93 ED 33 A8 */	stw r31, bound_48KHz@sda21(r13)
/* 80206528 00203488  93 ED 33 B0 */	stw r31, min_wait@sda21(r13)
/* 8020652C 0020348C  93 ED 33 B8 */	stw r31, max_wait@sda21(r13)
/* 80206530 00203490  93 ED 33 C0 */	stw r31, buffer@sda21(r13)
/* 80206534 00203494  80 A6 6C 04 */	lwz r5, 0x6c04(r6)
/* 80206538 00203498  90 06 6C 00 */	stw r0, 0x6c00(r6)
/* 8020653C 0020349C  54 A0 06 1E */	rlwinm r0, r5, 0, 0x18, 0xf
/* 80206540 002034A0  60 00 00 00 */	nop 
/* 80206544 002034A4  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 80206548 002034A8  80 06 6C 04 */	lwz r0, 0x6c04(r6)
/* 8020654C 002034AC  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80206550 002034B0  60 00 00 00 */	nop 
/* 80206554 002034B4  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 80206558 002034B8  93 E6 6C 0C */	stw r31, 0x6c0c(r6)
/* 8020655C 002034BC  4B FF FD C9 */	bl __AI_set_stream_sample_rate
/* 80206560 002034C0  38 60 00 00 */	li r3, 0
/* 80206564 002034C4  4B FF FC A5 */	bl AISetDSPSampleRate
/* 80206568 002034C8  3C 60 80 20 */	lis r3, __AIDHandler@ha
/* 8020656C 002034CC  93 ED 33 88 */	stw r31, __AIS_Callback@sda21(r13)
/* 80206570 002034D0  38 83 66 40 */	addi r4, r3, __AIDHandler@l
/* 80206574 002034D4  93 ED 33 8C */	stw r31, __AID_Callback@sda21(r13)
/* 80206578 002034D8  38 60 00 05 */	li r3, 5
/* 8020657C 002034DC  93 CD 33 90 */	stw r30, __CallbackStack@sda21(r13)
/* 80206580 002034E0  4B FF 2A 49 */	bl __OSSetInterruptHandler
/* 80206584 002034E4  3C 60 04 00 */	lis r3, 0x400
/* 80206588 002034E8  4B FF 2E 1D */	bl __OSUnmaskInterrupts
/* 8020658C 002034EC  3C 60 80 20 */	lis r3, __AISHandler@ha
/* 80206590 002034F0  38 83 65 C4 */	addi r4, r3, __AISHandler@l
/* 80206594 002034F4  38 60 00 08 */	li r3, 8
/* 80206598 002034F8  4B FF 2A 31 */	bl __OSSetInterruptHandler
/* 8020659C 002034FC  3C 60 00 80 */	lis r3, 0x80
/* 802065A0 00203500  4B FF 2E 05 */	bl __OSUnmaskInterrupts
/* 802065A4 00203504  38 00 00 01 */	li r0, 1
/* 802065A8 00203508  90 0D 33 98 */	stw r0, __AI_init_flag@sda21(r13)
lbl_802065AC:
/* 802065AC 0020350C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802065B0 00203510  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802065B4 00203514  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802065B8 00203518  7C 08 03 A6 */	mtlr r0
/* 802065BC 0020351C  38 21 00 18 */	addi r1, r1, 0x18
/* 802065C0 00203520  4E 80 00 20 */	blr 

.global __AISHandler
__AISHandler:
/* 802065C4 00203524  7C 08 02 A6 */	mflr r0
/* 802065C8 00203528  90 01 00 04 */	stw r0, 4(r1)
/* 802065CC 0020352C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 802065D0 00203530  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 802065D4 00203534  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 802065D8 00203538  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 802065DC 0020353C  38 61 00 10 */	addi r3, r1, 0x10
/* 802065E0 00203540  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 802065E4 00203544  60 00 00 08 */	ori r0, r0, 8
/* 802065E8 00203548  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802065EC 0020354C  3B C4 00 00 */	addi r30, r4, 0
/* 802065F0 00203550  4B FF 0E 4D */	bl OSClearContext
/* 802065F4 00203554  38 61 00 10 */	addi r3, r1, 0x10
/* 802065F8 00203558  4B FF 0C 7D */	bl OSSetCurrentContext
/* 802065FC 0020355C  81 8D 33 88 */	lwz r12, __AIS_Callback@sda21(r13)
/* 80206600 00203560  28 0C 00 00 */	cmplwi r12, 0
/* 80206604 00203564  41 82 00 14 */	beq lbl_80206618
/* 80206608 00203568  38 7F 6C 00 */	addi r3, r31, 0x6c00
/* 8020660C 0020356C  7D 88 03 A6 */	mtlr r12
/* 80206610 00203570  80 63 00 08 */	lwz r3, 8(r3)
/* 80206614 00203574  4E 80 00 21 */	blrl 
lbl_80206618:
/* 80206618 00203578  38 61 00 10 */	addi r3, r1, 0x10
/* 8020661C 0020357C  4B FF 0E 21 */	bl OSClearContext
/* 80206620 00203580  7F C3 F3 78 */	mr r3, r30
/* 80206624 00203584  4B FF 0C 51 */	bl OSSetCurrentContext
/* 80206628 00203588  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8020662C 0020358C  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80206630 00203590  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 80206634 00203594  7C 08 03 A6 */	mtlr r0
/* 80206638 00203598  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8020663C 0020359C  4E 80 00 20 */	blr 

.global __AIDHandler
__AIDHandler:
/* 80206640 002035A0  7C 08 02 A6 */	mflr r0
/* 80206644 002035A4  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 80206648 002035A8  90 01 00 04 */	stw r0, 4(r1)
/* 8020664C 002035AC  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 80206650 002035B0  38 00 FF 5F */	li r0, -161
/* 80206654 002035B4  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80206658 002035B8  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8020665C 002035BC  3B E4 00 00 */	addi r31, r4, 0
/* 80206660 002035C0  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 80206664 002035C4  7C A0 00 38 */	and r0, r5, r0
/* 80206668 002035C8  60 00 00 08 */	ori r0, r0, 8
/* 8020666C 002035CC  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80206670 002035D0  38 61 00 10 */	addi r3, r1, 0x10
/* 80206674 002035D4  4B FF 0D C9 */	bl OSClearContext
/* 80206678 002035D8  38 61 00 10 */	addi r3, r1, 0x10
/* 8020667C 002035DC  4B FF 0B F9 */	bl OSSetCurrentContext
/* 80206680 002035E0  80 6D 33 8C */	lwz r3, __AID_Callback@sda21(r13)
/* 80206684 002035E4  28 03 00 00 */	cmplwi r3, 0
/* 80206688 002035E8  41 82 00 24 */	beq lbl_802066AC
/* 8020668C 002035EC  80 0D 33 90 */	lwz r0, __CallbackStack@sda21(r13)
/* 80206690 002035F0  28 00 00 00 */	cmplwi r0, 0
/* 80206694 002035F4  41 82 00 0C */	beq lbl_802066A0
/* 80206698 002035F8  48 00 00 39 */	bl __AICallbackStackSwitch
/* 8020669C 002035FC  48 00 00 10 */	b lbl_802066AC
lbl_802066A0:
/* 802066A0 00203600  39 83 00 00 */	addi r12, r3, 0
/* 802066A4 00203604  7D 88 03 A6 */	mtlr r12
/* 802066A8 00203608  4E 80 00 21 */	blrl 
lbl_802066AC:
/* 802066AC 0020360C  38 61 00 10 */	addi r3, r1, 0x10
/* 802066B0 00203610  4B FF 0D 8D */	bl OSClearContext
/* 802066B4 00203614  7F E3 FB 78 */	mr r3, r31
/* 802066B8 00203618  4B FF 0B BD */	bl OSSetCurrentContext
/* 802066BC 0020361C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 802066C0 00203620  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 802066C4 00203624  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 802066C8 00203628  7C 08 03 A6 */	mtlr r0
/* 802066CC 0020362C  4E 80 00 20 */	blr 

.global __AICallbackStackSwitch
__AICallbackStackSwitch:
/* 802066D0 00203630  7C 08 02 A6 */	mflr r0
/* 802066D4 00203634  90 01 00 04 */	stw r0, 4(r1)
/* 802066D8 00203638  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802066DC 0020363C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802066E0 00203640  7C 7F 1B 78 */	mr r31, r3
/* 802066E4 00203644  3C A0 80 3F */	lis r5, __OldStack@ha
/* 802066E8 00203648  38 A5 80 B4 */	addi r5, r5, __OldStack@l
/* 802066EC 0020364C  90 25 00 00 */	stw r1, 0(r5)
/* 802066F0 00203650  3C A0 80 3F */	lis r5, __CallbackStack@ha
/* 802066F4 00203654  38 A5 80 B0 */	addi r5, r5, __CallbackStack@l
/* 802066F8 00203658  80 25 00 00 */	lwz r1, 0(r5)
/* 802066FC 0020365C  38 21 FF F8 */	addi r1, r1, -8
/* 80206700 00203660  7F E8 03 A6 */	mtlr r31
/* 80206704 00203664  4E 80 00 21 */	blrl 
/* 80206708 00203668  3C A0 80 3F */	lis r5, __OldStack@ha
/* 8020670C 0020366C  38 A5 80 B4 */	addi r5, r5, __OldStack@l
/* 80206710 00203670  80 25 00 00 */	lwz r1, 0(r5)
/* 80206714 00203674  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80206718 00203678  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8020671C 0020367C  38 21 00 18 */	addi r1, r1, 0x18
/* 80206720 00203680  7C 08 03 A6 */	mtlr r0
/* 80206724 00203684  4E 80 00 20 */	blr 

.global __AI_SRC_INIT
__AI_SRC_INIT:
/* 80206728 00203688  7C 08 02 A6 */	mflr r0
/* 8020672C 0020368C  90 01 00 04 */	stw r0, 4(r1)
/* 80206730 00203690  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80206734 00203694  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80206738 00203698  38 80 00 00 */	li r4, 0
/* 8020673C 0020369C  38 60 00 00 */	li r3, 0
/* 80206740 002036A0  38 00 00 00 */	li r0, 0
/* 80206744 002036A4  3B 80 00 00 */	li r28, 0
/* 80206748 002036A8  3B A0 00 00 */	li r29, 0
/* 8020674C 002036AC  48 00 00 04 */	b lbl_80206750
lbl_80206750:
/* 80206750 002036B0  3F E0 CC 00 */	lis r31, 0xcc00
/* 80206754 002036B4  48 00 00 04 */	b lbl_80206758
lbl_80206758:
/* 80206758 002036B8  48 00 01 64 */	b lbl_802068BC
lbl_8020675C:
/* 8020675C 002036BC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80206760 002036C0  3B DF 6C 00 */	addi r30, r31, 0x6c00
/* 80206764 002036C4  3B DE 00 08 */	addi r30, r30, 8
/* 80206768 002036C8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8020676C 002036CC  60 00 00 20 */	ori r0, r0, 0x20
/* 80206770 002036D0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80206774 002036D4  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80206778 002036D8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8020677C 002036DC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80206780 002036E0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80206784 002036E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80206788 002036E8  60 00 00 01 */	ori r0, r0, 1
/* 8020678C 002036EC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80206790 002036F0  80 7E 00 00 */	lwz r3, 0(r30)
/* 80206794 002036F4  48 00 00 04 */	b lbl_80206798
lbl_80206798:
/* 80206798 002036F8  48 00 00 04 */	b lbl_8020679C
lbl_8020679C:
/* 8020679C 002036FC  80 1E 00 00 */	lwz r0, 0(r30)
/* 802067A0 00203700  7C 03 00 40 */	cmplw r3, r0
/* 802067A4 00203704  41 82 FF F8 */	beq lbl_8020679C
/* 802067A8 00203708  4B FF 6B F9 */	bl OSGetTime
/* 802067AC 0020370C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802067B0 00203710  7C 9A 23 78 */	mr r26, r4
/* 802067B4 00203714  7C 7B 1B 78 */	mr r27, r3
/* 802067B8 00203718  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802067BC 0020371C  60 00 00 02 */	ori r0, r0, 2
/* 802067C0 00203720  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802067C4 00203724  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802067C8 00203728  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802067CC 0020372C  60 00 00 01 */	ori r0, r0, 1
/* 802067D0 00203730  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802067D4 00203734  80 7E 00 00 */	lwz r3, 0(r30)
/* 802067D8 00203738  48 00 00 04 */	b lbl_802067DC
lbl_802067DC:
/* 802067DC 0020373C  48 00 00 04 */	b lbl_802067E0
lbl_802067E0:
/* 802067E0 00203740  80 1E 00 00 */	lwz r0, 0(r30)
/* 802067E4 00203744  7C 03 00 40 */	cmplw r3, r0
/* 802067E8 00203748  41 82 FF F8 */	beq lbl_802067E0
/* 802067EC 0020374C  4B FF 6B B5 */	bl OSGetTime
/* 802067F0 00203750  7D 1A 20 10 */	subfc r8, r26, r4
/* 802067F4 00203754  81 8D 33 A4 */	lwz r12, bound_32KHz+4@sda21(r13)
/* 802067F8 00203758  80 BF 6C 00 */	lwz r5, 0x6c00(r31)
/* 802067FC 0020375C  7C FB 19 10 */	subfe r7, r27, r3
/* 80206800 00203760  81 4D 33 C4 */	lwz r10, buffer+4@sda21(r13)
/* 80206804 00203764  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80206808 00203768  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 8020680C 0020376C  81 6D 33 A0 */	lwz r11, bound_32KHz@sda21(r13)
/* 80206810 00203770  7C CA 60 10 */	subfc r6, r10, r12
/* 80206814 00203774  81 2D 33 C0 */	lwz r9, buffer@sda21(r13)
/* 80206818 00203778  90 BF 6C 00 */	stw r5, 0x6c00(r31)
/* 8020681C 0020377C  7C 09 59 10 */	subfe r0, r9, r11
/* 80206820 00203780  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80206824 00203784  7C 06 40 10 */	subfc r0, r6, r8
/* 80206828 00203788  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8020682C 0020378C  7C A5 39 10 */	subfe r5, r5, r7
/* 80206830 00203790  7C A7 39 10 */	subfe r5, r7, r7
/* 80206834 00203794  7C A5 00 D0 */	neg r5, r5
/* 80206838 00203798  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8020683C 0020379C  2C 05 00 00 */	cmpwi r5, 0
/* 80206840 002037A0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80206844 002037A4  41 82 00 14 */	beq lbl_80206858
/* 80206848 002037A8  83 AD 33 B0 */	lwz r29, min_wait@sda21(r13)
/* 8020684C 002037AC  38 00 00 01 */	li r0, 1
/* 80206850 002037B0  83 8D 33 B4 */	lwz r28, min_wait+4@sda21(r13)
/* 80206854 002037B4  48 00 00 68 */	b lbl_802068BC
lbl_80206858:
/* 80206858 002037B8  7C CC 50 14 */	addc r6, r12, r10
/* 8020685C 002037BC  7C 0B 49 14 */	adde r0, r11, r9
/* 80206860 002037C0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80206864 002037C4  7C 06 40 10 */	subfc r0, r6, r8
/* 80206868 002037C8  7C A5 39 10 */	subfe r5, r5, r7
/* 8020686C 002037CC  7C A7 39 10 */	subfe r5, r7, r7
/* 80206870 002037D0  7C A5 00 D0 */	neg r5, r5
/* 80206874 002037D4  2C 05 00 00 */	cmpwi r5, 0
/* 80206878 002037D8  40 82 00 40 */	bne lbl_802068B8
/* 8020687C 002037DC  80 AD 33 AC */	lwz r5, bound_48KHz+4@sda21(r13)
/* 80206880 002037E0  80 0D 33 A8 */	lwz r0, bound_48KHz@sda21(r13)
/* 80206884 002037E4  7C CA 28 10 */	subfc r6, r10, r5
/* 80206888 002037E8  7C 09 01 10 */	subfe r0, r9, r0
/* 8020688C 002037EC  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80206890 002037F0  7C 06 40 10 */	subfc r0, r6, r8
/* 80206894 002037F4  7C A5 39 10 */	subfe r5, r5, r7
/* 80206898 002037F8  7C A7 39 10 */	subfe r5, r7, r7
/* 8020689C 002037FC  7C A5 00 D0 */	neg r5, r5
/* 802068A0 00203800  2C 05 00 00 */	cmpwi r5, 0
/* 802068A4 00203804  41 82 00 14 */	beq lbl_802068B8
/* 802068A8 00203808  83 AD 33 B8 */	lwz r29, max_wait@sda21(r13)
/* 802068AC 0020380C  38 00 00 01 */	li r0, 1
/* 802068B0 00203810  83 8D 33 BC */	lwz r28, max_wait+4@sda21(r13)
/* 802068B4 00203814  48 00 00 08 */	b lbl_802068BC
lbl_802068B8:
/* 802068B8 00203818  38 00 00 00 */	li r0, 0
lbl_802068BC:
/* 802068BC 0020381C  28 00 00 00 */	cmplwi r0, 0
/* 802068C0 00203820  41 82 FE 9C */	beq lbl_8020675C
/* 802068C4 00203824  7F 64 E0 14 */	addc r27, r4, r28
/* 802068C8 00203828  7F 43 E9 14 */	adde r26, r3, r29
/* 802068CC 0020382C  48 00 00 04 */	b lbl_802068D0
lbl_802068D0:
/* 802068D0 00203830  48 00 00 04 */	b lbl_802068D4
lbl_802068D4:
/* 802068D4 00203834  4B FF 6A CD */	bl OSGetTime
/* 802068D8 00203838  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 802068DC 0020383C  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 802068E0 00203840  7C 1B 20 10 */	subfc r0, r27, r4
/* 802068E4 00203844  7C 63 29 10 */	subfe r3, r3, r5
/* 802068E8 00203848  7C 65 29 10 */	subfe r3, r5, r5
/* 802068EC 0020384C  7C 63 00 D0 */	neg r3, r3
/* 802068F0 00203850  2C 03 00 00 */	cmpwi r3, 0
/* 802068F4 00203854  40 82 FF E0 */	bne lbl_802068D4
/* 802068F8 00203858  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802068FC 0020385C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80206900 00203860  38 21 00 30 */	addi r1, r1, 0x30
/* 80206904 00203864  7C 08 03 A6 */	mtlr r0
/* 80206908 00203868  4E 80 00 20 */	blr 

.section .sbss, "wa"
.balign 0x8
__AIS_Callback:
	.skip 0x4
__AID_Callback:
	.skip 0x4
__CallbackStack:
	.skip 0x4
__OldStack:
	.skip 0x4
__AI_init_flag:
	.skip 0x4
.balign 8
bound_32KHz:
	.skip 0x8
bound_48KHz:
	.skip 0x8
min_wait:
	.skip 0x8
max_wait:
	.skip 0x8
buffer:
	.skip 0x8
