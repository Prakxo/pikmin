.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global doKill__4PikiFv
doKill__4PikiFv:
/* 800CD950 000CA8B0  7C 08 02 A6 */	mflr r0
/* 800CD954 000CA8B4  90 01 00 04 */	stw r0, 4(r1)
/* 800CD958 000CA8B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800CD95C 000CA8BC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800CD960 000CA8C0  7C 7F 1B 78 */	mr r31, r3
/* 800CD964 000CA8C4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800CD968 000CA8C8  93 A1 00 64 */	stw r29, 0x64(r1)
/* 800CD96C 000CA8CC  83 C3 02 D0 */	lwz r30, 0x2d0(r3)
/* 800CD970 000CA8D0  28 1E 00 00 */	cmplwi r30, 0
/* 800CD974 000CA8D4  41 82 00 28 */	beq .L_800CD99C
/* 800CD978 000CA8D8  3C 80 74 65 */	lis r4, 0x74657374@ha
/* 800CD97C 000CA8DC  80 6D 30 2C */	lwz r3, routeMgr@sda21(r13)
/* 800CD980 000CA8E0  38 84 73 74 */	addi r4, r4, 0x74657374@l
/* 800CD984 000CA8E4  4B FD 26 8D */	bl getPathFinder__8RouteMgrFUl
/* 800CD988 000CA8E8  7F C4 F3 78 */	mr r4, r30
/* 800CD98C 000CA8EC  4B FD 1D A9 */	bl releaseHandle__10PathFinderFUl
/* 800CD990 000CA8F0  38 00 00 00 */	li r0, 0
/* 800CD994 000CA8F4  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 800CD998 000CA8F8  98 1F 02 D4 */	stb r0, 0x2d4(r31)
.L_800CD99C:
/* 800CD99C 000CA8FC  3B C0 00 00 */	li r30, 0
/* 800CD9A0 000CA900  93 DF 03 38 */	stw r30, 0x338(r31)
/* 800CD9A4 000CA904  88 1F 04 24 */	lbz r0, 0x424(r31)
/* 800CD9A8 000CA908  28 00 00 00 */	cmplwi r0, 0
/* 800CD9AC 000CA90C  41 82 00 10 */	beq .L_800CD9BC
/* 800CD9B0 000CA910  80 7F 04 28 */	lwz r3, 0x428(r31)
/* 800CD9B4 000CA914  48 04 6B 61 */	bl kill__15PermanentEffectFv
/* 800CD9B8 000CA918  9B DF 04 24 */	stb r30, 0x424(r31)
.L_800CD9BC:
/* 800CD9BC 000CA91C  80 7F 04 2C */	lwz r3, 0x42c(r31)
/* 800CD9C0 000CA920  81 83 00 00 */	lwz r12, 0(r3)
/* 800CD9C4 000CA924  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800CD9C8 000CA928  7D 88 03 A6 */	mtlr r12
/* 800CD9CC 000CA92C  4E 80 00 21 */	blrl 
/* 800CD9D0 000CA930  80 7F 04 30 */	lwz r3, 0x430(r31)
/* 800CD9D4 000CA934  81 83 00 00 */	lwz r12, 0(r3)
/* 800CD9D8 000CA938  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800CD9DC 000CA93C  7D 88 03 A6 */	mtlr r12
/* 800CD9E0 000CA940  4E 80 00 21 */	blrl 
/* 800CD9E4 000CA944  80 7F 04 34 */	lwz r3, 0x434(r31)
/* 800CD9E8 000CA948  81 83 00 00 */	lwz r12, 0(r3)
/* 800CD9EC 000CA94C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800CD9F0 000CA950  7D 88 03 A6 */	mtlr r12
/* 800CD9F4 000CA954  4E 80 00 21 */	blrl 
/* 800CD9F8 000CA958  80 0D 30 40 */	lwz r0, pikiUpdateMgr@sda21(r13)
/* 800CD9FC 000CA95C  28 00 00 00 */	cmplwi r0, 0
/* 800CDA00 000CA960  41 82 00 0C */	beq .L_800CDA0C
/* 800CDA04 000CA964  38 7F 04 0C */	addi r3, r31, 0x40c
/* 800CDA08 000CA968  4B FD 7A CD */	bl exit__13UpdateContextFv
.L_800CDA0C:
/* 800CDA0C 000CA96C  80 0D 30 48 */	lwz r0, pikiLookUpdateMgr@sda21(r13)
/* 800CDA10 000CA970  28 00 00 00 */	cmplwi r0, 0
/* 800CDA14 000CA974  41 82 00 0C */	beq .L_800CDA20
/* 800CDA18 000CA978  38 7F 04 18 */	addi r3, r31, 0x418
/* 800CDA1C 000CA97C  4B FD 7A B9 */	bl exit__13UpdateContextFv
.L_800CDA20:
/* 800CDA20 000CA980  80 0D 30 4C */	lwz r0, pikiOptUpdateMgr@sda21(r13)
/* 800CDA24 000CA984  28 00 00 00 */	cmplwi r0, 0
/* 800CDA28 000CA988  41 82 00 0C */	beq .L_800CDA34
/* 800CDA2C 000CA98C  38 7F 01 74 */	addi r3, r31, 0x174
/* 800CDA30 000CA990  4B FD 7A A5 */	bl exit__13UpdateContextFv
.L_800CDA34:
/* 800CDA34 000CA994  7F E3 FB 78 */	mr r3, r31
/* 800CDA38 000CA998  4B FF AB 1D */	bl getState__4PikiFv
/* 800CDA3C 000CA99C  80 8D 2F 6C */	lwz r4, playerState@sda21(r13)
/* 800CDA40 000CA9A0  88 04 01 B5 */	lbz r0, 0x1b5(r4)
/* 800CDA44 000CA9A4  28 00 00 00 */	cmplwi r0, 0
/* 800CDA48 000CA9A8  40 82 01 7C */	bne .L_800CDBC4
/* 800CDA4C 000CA9AC  2C 03 00 08 */	cmpwi r3, 8
/* 800CDA50 000CA9B0  41 82 01 74 */	beq .L_800CDBC4
/* 800CDA54 000CA9B4  80 1F 05 20 */	lwz r0, 0x520(r31)
/* 800CDA58 000CA9B8  2C 00 00 02 */	cmpwi r0, 2
/* 800CDA5C 000CA9BC  40 82 01 68 */	bne .L_800CDBC4
/* 800CDA60 000CA9C0  A0 1F 04 FC */	lhz r0, 0x4fc(r31)
/* 800CDA64 000CA9C4  28 00 00 0B */	cmplwi r0, 0xb
/* 800CDA68 000CA9C8  41 82 01 5C */	beq .L_800CDBC4
/* 800CDA6C 000CA9CC  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 800CDA70 000CA9D0  28 00 00 00 */	cmplwi r0, 0
/* 800CDA74 000CA9D4  40 82 01 50 */	bne .L_800CDBC4
/* 800CDA78 000CA9D8  80 6D 2F 00 */	lwz r3, mapMgr@sda21(r13)
/* 800CDA7C 000CA9DC  38 80 00 01 */	li r4, 1
/* 800CDA80 000CA9E0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 800CDA84 000CA9E4  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 800CDA88 000CA9E8  4B F9 A7 51 */	bl getCurrTri__6MapMgrFffb
/* 800CDA8C 000CA9EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800CDA90 000CA9F0  41 82 01 34 */	beq .L_800CDBC4
/* 800CDA94 000CA9F4  7F C3 F3 78 */	mr r3, r30
/* 800CDA98 000CA9F8  48 04 86 11 */	bl isBald__7MapCodeFP11CollTriInfo
/* 800CDA9C 000CA9FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CDAA0 000CAA00  40 82 01 24 */	bne .L_800CDBC4
/* 800CDAA4 000CAA04  38 7F 00 94 */	addi r3, r31, 0x94
/* 800CDAA8 000CAA08  4B FF 8A B1 */	bl isSafeMePos__4PikiFR8Vector3f
/* 800CDAAC 000CAA0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CDAB0 000CAA10  41 82 01 14 */	beq .L_800CDBC4
/* 800CDAB4 000CAA14  7F C3 F3 78 */	mr r3, r30
/* 800CDAB8 000CAA18  48 04 85 C9 */	bl getAttribute__7MapCodeFP11CollTriInfo
/* 800CDABC 000CAA1C  2C 03 00 05 */	cmpwi r3, 5
/* 800CDAC0 000CAA20  41 82 01 04 */	beq .L_800CDBC4
/* 800CDAC4 000CAA24  80 6D 30 68 */	lwz r3, pikiMgr@sda21(r13)
/* 800CDAC8 000CAA28  80 63 00 68 */	lwz r3, 0x68(r3)
/* 800CDACC 000CAA2C  3B C3 03 F8 */	addi r30, r3, 0x3f8
/* 800CDAD0 000CAA30  48 14 A5 A1 */	bl rand
/* 800CDAD4 000CAA34  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800CDAD8 000CAA38  C8 82 96 68 */	lfd f4, lbl_803E9868@sda21(r2)
/* 800CDADC 000CAA3C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 800CDAE0 000CAA40  3C 00 43 30 */	lis r0, 0x4330
/* 800CDAE4 000CAA44  C0 42 96 64 */	lfs f2, lbl_803E9864@sda21(r2)
/* 800CDAE8 000CAA48  90 01 00 58 */	stw r0, 0x58(r1)
/* 800CDAEC 000CAA4C  C0 22 96 60 */	lfs f1, lbl_803E9860@sda21(r2)
/* 800CDAF0 000CAA50  C8 61 00 58 */	lfd f3, 0x58(r1)
/* 800CDAF4 000CAA54  C0 1E 00 00 */	lfs f0, 0(r30)
/* 800CDAF8 000CAA58  EC 63 20 28 */	fsubs f3, f3, f4
/* 800CDAFC 000CAA5C  EC 43 10 24 */	fdivs f2, f3, f2
/* 800CDB00 000CAA60  EC 21 00 B2 */	fmuls f1, f1, f2
/* 800CDB04 000CAA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CDB08 000CAA68  4C 41 13 82 */	cror 2, 1, 2
/* 800CDB0C 000CAA6C  40 82 00 B8 */	bne .L_800CDBC4
/* 800CDB10 000CAA70  80 6D 30 AC */	lwz r3, itemMgr@sda21(r13)
/* 800CDB14 000CAA74  38 80 00 0F */	li r4, 0xf
/* 800CDB18 000CAA78  81 83 00 00 */	lwz r12, 0(r3)
/* 800CDB1C 000CAA7C  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 800CDB20 000CAA80  7D 88 03 A6 */	mtlr r12
/* 800CDB24 000CAA84  4E 80 00 21 */	blrl 
/* 800CDB28 000CAA88  7C 7E 1B 79 */	or. r30, r3, r3
/* 800CDB2C 000CAA8C  41 82 00 98 */	beq .L_800CDBC4
/* 800CDB30 000CAA90  3C 60 80 3A */	lis r3, flowCont@ha
/* 800CDB34 000CAA94  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 800CDB38 000CAA98  38 63 DB 20 */	addi r3, r3, flowCont@l
/* 800CDB3C 000CAA9C  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 800CDB40 000CAAA0  38 80 00 01 */	li r4, 1
/* 800CDB44 000CAAA4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800CDB48 000CAAA8  3B A3 00 2C */	addi r29, r3, 0x2c
/* 800CDB4C 000CAAAC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 800CDB50 000CAAB0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800CDB54 000CAAB4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 800CDB58 000CAAB8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800CDB5C 000CAABC  80 6D 2F 00 */	lwz r3, mapMgr@sda21(r13)
/* 800CDB60 000CAAC0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 800CDB64 000CAAC4  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 800CDB68 000CAAC8  4B F9 A3 9D */	bl getMinY__6MapMgrFffb
/* 800CDB6C 000CAACC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 800CDB70 000CAAD0  38 7E 00 00 */	addi r3, r30, 0
/* 800CDB74 000CAAD4  38 81 00 4C */	addi r4, r1, 0x4c
/* 800CDB78 000CAAD8  81 9E 00 00 */	lwz r12, 0(r30)
/* 800CDB7C 000CAADC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800CDB80 000CAAE0  7D 88 03 A6 */	mtlr r12
/* 800CDB84 000CAAE4  4E 80 00 21 */	blrl 
/* 800CDB88 000CAAE8  7F C3 F3 78 */	mr r3, r30
/* 800CDB8C 000CAAEC  A0 9F 05 10 */	lhz r4, 0x510(r31)
/* 800CDB90 000CAAF0  48 01 EF 11 */	bl setColor__12PikiHeadItemFi
/* 800CDB94 000CAAF4  7F A3 EB 78 */	mr r3, r29
/* 800CDB98 000CAAF8  81 9D 00 00 */	lwz r12, 0(r29)
/* 800CDB9C 000CAAFC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800CDBA0 000CAB00  7D 88 03 A6 */	mtlr r12
/* 800CDBA4 000CAB04  4E 80 00 21 */	blrl 
/* 800CDBA8 000CAB08  28 03 00 00 */	cmplwi r3, 0
/* 800CDBAC 000CAB0C  41 82 00 0C */	beq .L_800CDBB8
/* 800CDBB0 000CAB10  7F C4 F3 78 */	mr r4, r30
/* 800CDBB4 000CAB14  4B FF 7C E1 */	bl store__7BaseInfFP8Creature
.L_800CDBB8:
/* 800CDBB8 000CAB18  38 7E 00 00 */	addi r3, r30, 0
/* 800CDBBC 000CAB1C  38 80 00 00 */	li r4, 0
/* 800CDBC0 000CAB20  4B FB D1 21 */	bl kill__8CreatureFb
.L_800CDBC4:
/* 800CDBC4 000CAB24  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 800CDBC8 000CAB28  28 00 00 00 */	cmplwi r0, 0
/* 800CDBCC 000CAB2C  40 82 00 64 */	bne .L_800CDC30
/* 800CDBD0 000CAB30  80 6D 2F 00 */	lwz r3, mapMgr@sda21(r13)
/* 800CDBD4 000CAB34  38 80 00 01 */	li r4, 1
/* 800CDBD8 000CAB38  C0 3F 04 4C */	lfs f1, 0x44c(r31)
/* 800CDBDC 000CAB3C  C0 5F 04 54 */	lfs f2, 0x454(r31)
/* 800CDBE0 000CAB40  4B F9 A4 89 */	bl getMaxY__6MapMgrFffb
/* 800CDBE4 000CAB44  80 6D 31 80 */	lwz r3, effectMgr@sda21(r13)
/* 800CDBE8 000CAB48  38 BF 04 4C */	addi r5, r31, 0x44c
/* 800CDBEC 000CAB4C  38 80 00 26 */	li r4, 0x26
/* 800CDBF0 000CAB50  38 C0 00 00 */	li r6, 0
/* 800CDBF4 000CAB54  38 E0 00 00 */	li r7, 0
/* 800CDBF8 000CAB58  48 0C EF 41 */	bl "create__9EffectMgrFQ29EffectMgr12effTypeTableR8Vector3fPQ23zen37CallBack1<PQ23zen17particleGenerator>PQ23zen58CallBack2<PQ23zen17particleGenerator,PQ23zen11particleMdl>"
/* 800CDBFC 000CAB5C  80 6D 30 38 */	lwz r3, seSystem@sda21(r13)
/* 800CDC00 000CAB60  38 DF 00 94 */	addi r6, r31, 0x94
/* 800CDC04 000CAB64  38 80 00 01 */	li r4, 1
/* 800CDC08 000CAB68  38 A0 00 33 */	li r5, 0x33
/* 800CDC0C 000CAB6C  4B FD 68 29 */	bl playSoundDirect__8SeSystemFiiR8Vector3f
/* 800CDC10 000CAB70  A0 9F 05 10 */	lhz r4, 0x510(r31)
/* 800CDC14 000CAB74  3C 60 80 3D */	lis r3, deadPikis__8GameStat@ha
/* 800CDC18 000CAB78  38 03 1E 58 */	addi r0, r3, deadPikis__8GameStat@l
/* 800CDC1C 000CAB7C  54 83 10 3A */	slwi r3, r4, 2
/* 800CDC20 000CAB80  7C 80 1A 14 */	add r4, r0, r3
/* 800CDC24 000CAB84  80 64 00 00 */	lwz r3, 0(r4)
/* 800CDC28 000CAB88  38 03 00 01 */	addi r0, r3, 1
/* 800CDC2C 000CAB8C  90 04 00 00 */	stw r0, 0(r4)
.L_800CDC30:
/* 800CDC30 000CAB90  80 7F 04 F8 */	lwz r3, 0x4f8(r31)
/* 800CDC34 000CAB94  28 03 00 00 */	cmplwi r3, 0
/* 800CDC38 000CAB98  41 82 00 0C */	beq .L_800CDC44
/* 800CDC3C 000CAB9C  38 80 00 00 */	li r4, 0
/* 800CDC40 000CABA0  4B FF 77 05 */	bl abandon__9TopActionFPQ23zen17particleGenerator
.L_800CDC44:
/* 800CDC44 000CABA4  A0 9F 05 10 */	lhz r4, 0x510(r31)
/* 800CDC48 000CABA8  3C 60 80 3D */	lis r3, workPikis__8GameStat@ha
/* 800CDC4C 000CABAC  38 03 1E 88 */	addi r0, r3, workPikis__8GameStat@l
/* 800CDC50 000CABB0  54 83 10 3A */	slwi r3, r4, 2
/* 800CDC54 000CABB4  7C 80 1A 14 */	add r4, r0, r3
/* 800CDC58 000CABB8  80 64 00 00 */	lwz r3, 0(r4)
/* 800CDC5C 000CABBC  38 03 FF FF */	addi r0, r3, -1
/* 800CDC60 000CABC0  90 04 00 00 */	stw r0, 0(r4)
/* 800CDC64 000CABC4  48 04 48 FD */	bl update__8GameStatFv
/* 800CDC68 000CABC8  80 7F 04 90 */	lwz r3, 0x490(r31)
/* 800CDC6C 000CABCC  38 9F 00 00 */	addi r4, r31, 0
/* 800CDC70 000CABD0  38 A0 00 07 */	li r5, 7
/* 800CDC74 000CABD4  81 83 00 00 */	lwz r12, 0(r3)
/* 800CDC78 000CABD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800CDC7C 000CABDC  7D 88 03 A6 */	mtlr r12
/* 800CDC80 000CABE0  4E 80 00 21 */	blrl 
/* 800CDC84 000CABE4  38 00 00 00 */	li r0, 0
/* 800CDC88 000CABE8  90 1F 05 00 */	stw r0, 0x500(r31)
/* 800CDC8C 000CABEC  7F E4 FB 78 */	mr r4, r31
/* 800CDC90 000CABF0  80 AD 30 68 */	lwz r5, pikiMgr@sda21(r13)
/* 800CDC94 000CABF4  80 65 00 60 */	lwz r3, 0x60(r5)
/* 800CDC98 000CABF8  38 03 00 01 */	addi r0, r3, 1
/* 800CDC9C 000CABFC  90 05 00 60 */	stw r0, 0x60(r5)
/* 800CDCA0 000CAC00  80 6D 30 68 */	lwz r3, pikiMgr@sda21(r13)
/* 800CDCA4 000CAC04  81 83 00 00 */	lwz r12, 0(r3)
/* 800CDCA8 000CAC08  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 800CDCAC 000CAC0C  7D 88 03 A6 */	mtlr r12
/* 800CDCB0 000CAC10  4E 80 00 21 */	blrl 
/* 800CDCB4 000CAC14  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800CDCB8 000CAC18  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800CDCBC 000CAC1C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800CDCC0 000CAC20  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 800CDCC4 000CAC24  38 21 00 70 */	addi r1, r1, 0x70
/* 800CDCC8 000CAC28  7C 08 03 A6 */	mtlr r0
/* 800CDCCC 000CAC2C  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803E9860:
	.float 1.0
lbl_803E9864:
	.float 32767.0
lbl_803E9868:
	.4byte 0x43300000
	.4byte 0x80000000
