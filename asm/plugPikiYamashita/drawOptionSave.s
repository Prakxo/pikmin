.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__Q23zen14DrawOptionSaveFv
__ct__Q23zen14DrawOptionSaveFv:
/* 801F5500 001F2460  7C 08 02 A6 */	mflr r0
/* 801F5504 001F2464  90 01 00 04 */	stw r0, 4(r1)
/* 801F5508 001F2468  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801F550C 001F246C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801F5510 001F2470  3B E3 00 00 */	addi r31, r3, 0
/* 801F5514 001F2474  38 7F 00 04 */	addi r3, r31, 4
/* 801F5518 001F2478  4B FF D1 45 */	bl __ct__Q23zen11DrawSaveMesFv
/* 801F551C 001F247C  38 7F 00 50 */	addi r3, r31, 0x50
/* 801F5520 001F2480  4B F9 7B 2D */	bl __ct__Q23zen14ogScrMemChkMgrFv
/* 801F5524 001F2484  38 7F 00 00 */	addi r3, r31, 0
/* 801F5528 001F2488  38 80 00 00 */	li r4, 0
/* 801F552C 001F248C  38 A0 00 00 */	li r5, 0
/* 801F5530 001F2490  48 00 02 F5 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F5534 001F2494  7F E3 FB 78 */	mr r3, r31
/* 801F5538 001F2498  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801F553C 001F249C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801F5540 001F24A0  38 21 00 18 */	addi r1, r1, 0x18
/* 801F5544 001F24A4  7C 08 03 A6 */	mtlr r0
/* 801F5548 001F24A8  4E 80 00 20 */	blr 

.global update__Q23zen14DrawOptionSaveFP10Controller
update__Q23zen14DrawOptionSaveFP10Controller:
/* 801F554C 001F24AC  7C 08 02 A6 */	mflr r0
/* 801F5550 001F24B0  90 01 00 04 */	stw r0, 4(r1)
/* 801F5554 001F24B4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801F5558 001F24B8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801F555C 001F24BC  3B E4 00 00 */	addi r31, r4, 0
/* 801F5560 001F24C0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801F5564 001F24C4  3B C0 00 00 */	li r30, 0
/* 801F5568 001F24C8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 801F556C 001F24CC  7C 7D 1B 78 */	mr r29, r3
/* 801F5570 001F24D0  80 03 00 00 */	lwz r0, 0(r3)
/* 801F5574 001F24D4  28 00 00 09 */	cmplwi r0, 9
/* 801F5578 001F24D8  41 81 01 3C */	bgt .L_801F56B4
/* 801F557C 001F24DC  3C 60 80 2E */	lis r3, lbl_802E7258@ha
/* 801F5580 001F24E0  38 63 72 58 */	addi r3, r3, lbl_802E7258@l
/* 801F5584 001F24E4  54 00 10 3A */	slwi r0, r0, 2
/* 801F5588 001F24E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 801F558C 001F24EC  7C 09 03 A6 */	mtctr r0
/* 801F5590 001F24F0  4E 80 04 20 */	bctr 
.L_801F5594:
/* 801F5594 001F24F4  38 7D 00 04 */	addi r3, r29, 4
/* 801F5598 001F24F8  38 9F 00 00 */	addi r4, r31, 0
/* 801F559C 001F24FC  4B FF D4 E9 */	bl update__Q23zen11DrawSaveMesFP10Controller
/* 801F55A0 001F2500  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F55A4 001F2504  41 82 01 10 */	beq .L_801F56B4
/* 801F55A8 001F2508  80 1D 00 04 */	lwz r0, 4(r29)
/* 801F55AC 001F250C  2C 00 00 06 */	cmpwi r0, 6
/* 801F55B0 001F2510  41 82 00 28 */	beq .L_801F55D8
/* 801F55B4 001F2514  40 80 01 00 */	bge .L_801F56B4
/* 801F55B8 001F2518  2C 00 00 03 */	cmpwi r0, 3
/* 801F55BC 001F251C  41 82 00 08 */	beq .L_801F55C4
/* 801F55C0 001F2520  48 00 00 F4 */	b .L_801F56B4
.L_801F55C4:
/* 801F55C4 001F2524  38 7D 00 00 */	addi r3, r29, 0
/* 801F55C8 001F2528  38 BF 00 00 */	addi r5, r31, 0
/* 801F55CC 001F252C  38 80 00 02 */	li r4, 2
/* 801F55D0 001F2530  48 00 02 55 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F55D4 001F2534  48 00 00 E0 */	b .L_801F56B4
.L_801F55D8:
/* 801F55D8 001F2538  38 7D 00 00 */	addi r3, r29, 0
/* 801F55DC 001F253C  38 80 00 08 */	li r4, 8
/* 801F55E0 001F2540  38 A0 00 00 */	li r5, 0
/* 801F55E4 001F2544  48 00 02 41 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F55E8 001F2548  48 00 00 CC */	b .L_801F56B4
.L_801F55EC:
/* 801F55EC 001F254C  38 7D 00 00 */	addi r3, r29, 0
/* 801F55F0 001F2550  38 9F 00 00 */	addi r4, r31, 0
/* 801F55F4 001F2554  48 00 01 4D */	bl modeCardCheck__Q23zen14DrawOptionSaveFP10Controller
/* 801F55F8 001F2558  48 00 00 BC */	b .L_801F56B4
.L_801F55FC:
/* 801F55FC 001F255C  3C 60 80 3A */	lis r3, gameflow@ha
/* 801F5600 001F2560  38 63 D7 B8 */	addi r3, r3, gameflow@l
/* 801F5604 001F2564  3B E3 00 24 */	addi r31, r3, 0x24
/* 801F5608 001F2568  38 7F 00 00 */	addi r3, r31, 0
/* 801F560C 001F256C  4B E7 ED 89 */	bl saveOptions__10MemoryCardFv
/* 801F5610 001F2570  7F E3 FB 78 */	mr r3, r31
/* 801F5614 001F2574  4B E8 14 15 */	bl didSaveFail__10MemoryCardFv
/* 801F5618 001F2578  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F561C 001F257C  41 82 00 18 */	beq .L_801F5634
/* 801F5620 001F2580  38 7D 00 00 */	addi r3, r29, 0
/* 801F5624 001F2584  38 80 00 04 */	li r4, 4
/* 801F5628 001F2588  38 A0 00 00 */	li r5, 0
/* 801F562C 001F258C  48 00 01 F9 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F5630 001F2590  48 00 00 84 */	b .L_801F56B4
.L_801F5634:
/* 801F5634 001F2594  38 7D 00 00 */	addi r3, r29, 0
/* 801F5638 001F2598  38 80 00 05 */	li r4, 5
/* 801F563C 001F259C  38 A0 00 00 */	li r5, 0
/* 801F5640 001F25A0  48 00 01 E5 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F5644 001F25A4  48 00 00 70 */	b .L_801F56B4
.L_801F5648:
/* 801F5648 001F25A8  38 7D 00 04 */	addi r3, r29, 4
/* 801F564C 001F25AC  38 9F 00 00 */	addi r4, r31, 0
/* 801F5650 001F25B0  4B FF D4 35 */	bl update__Q23zen11DrawSaveMesFP10Controller
/* 801F5654 001F25B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F5658 001F25B8  41 82 00 5C */	beq .L_801F56B4
/* 801F565C 001F25BC  80 1D 00 04 */	lwz r0, 4(r29)
/* 801F5660 001F25C0  2C 00 00 08 */	cmpwi r0, 8
/* 801F5664 001F25C4  40 82 00 50 */	bne .L_801F56B4
/* 801F5668 001F25C8  38 7D 00 00 */	addi r3, r29, 0
/* 801F566C 001F25CC  38 80 00 06 */	li r4, 6
/* 801F5670 001F25D0  38 A0 00 00 */	li r5, 0
/* 801F5674 001F25D4  48 00 01 B1 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F5678 001F25D8  48 00 00 3C */	b .L_801F56B4
.L_801F567C:
/* 801F567C 001F25DC  38 7D 00 04 */	addi r3, r29, 4
/* 801F5680 001F25E0  38 9F 00 00 */	addi r4, r31, 0
/* 801F5684 001F25E4  4B FF D4 01 */	bl update__Q23zen11DrawSaveMesFP10Controller
/* 801F5688 001F25E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F568C 001F25EC  41 82 00 28 */	beq .L_801F56B4
/* 801F5690 001F25F0  80 1D 00 04 */	lwz r0, 4(r29)
/* 801F5694 001F25F4  2C 00 00 08 */	cmpwi r0, 8
/* 801F5698 001F25F8  40 82 00 1C */	bne .L_801F56B4
/* 801F569C 001F25FC  38 7D 00 00 */	addi r3, r29, 0
/* 801F56A0 001F2600  38 80 00 07 */	li r4, 7
/* 801F56A4 001F2604  38 A0 00 00 */	li r5, 0
/* 801F56A8 001F2608  48 00 01 7D */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F56AC 001F260C  48 00 00 08 */	b .L_801F56B4
.L_801F56B0:
/* 801F56B0 001F2610  3B C0 00 01 */	li r30, 1
.L_801F56B4:
/* 801F56B4 001F2614  7F C3 F3 78 */	mr r3, r30
/* 801F56B8 001F2618  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801F56BC 001F261C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801F56C0 001F2620  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801F56C4 001F2624  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 801F56C8 001F2628  38 21 00 28 */	addi r1, r1, 0x28
/* 801F56CC 001F262C  7C 08 03 A6 */	mtlr r0
/* 801F56D0 001F2630  4E 80 00 20 */	blr 

.global draw__Q23zen14DrawOptionSaveFR8Graphics
draw__Q23zen14DrawOptionSaveFR8Graphics:
/* 801F56D4 001F2634  7C 08 02 A6 */	mflr r0
/* 801F56D8 001F2638  90 01 00 04 */	stw r0, 4(r1)
/* 801F56DC 001F263C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801F56E0 001F2640  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801F56E4 001F2644  3B E4 00 00 */	addi r31, r4, 0
/* 801F56E8 001F2648  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801F56EC 001F264C  7C 7E 1B 78 */	mr r30, r3
/* 801F56F0 001F2650  80 03 00 00 */	lwz r0, 0(r3)
/* 801F56F4 001F2654  28 00 00 00 */	cmplwi r0, 0
/* 801F56F8 001F2658  41 82 00 30 */	beq .L_801F5728
/* 801F56FC 001F265C  28 00 00 08 */	cmplwi r0, 8
/* 801F5700 001F2660  41 82 00 28 */	beq .L_801F5728
/* 801F5704 001F2664  38 7E 00 04 */	addi r3, r30, 4
/* 801F5708 001F2668  38 9F 00 00 */	addi r4, r31, 0
/* 801F570C 001F266C  4B FF DC 1D */	bl draw__Q23zen11DrawSaveMesFR8Graphics
/* 801F5710 001F2670  80 1E 00 00 */	lwz r0, 0(r30)
/* 801F5714 001F2674  28 00 00 02 */	cmplwi r0, 2
/* 801F5718 001F2678  40 82 00 10 */	bne .L_801F5728
/* 801F571C 001F267C  38 7E 00 50 */	addi r3, r30, 0x50
/* 801F5720 001F2680  38 9F 00 00 */	addi r4, r31, 0
/* 801F5724 001F2684  4B F9 98 7D */	bl draw__Q23zen14ogScrMemChkMgrFR8Graphics
.L_801F5728:
/* 801F5728 001F2688  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801F572C 001F268C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801F5730 001F2690  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801F5734 001F2694  38 21 00 18 */	addi r1, r1, 0x18
/* 801F5738 001F2698  7C 08 03 A6 */	mtlr r0
/* 801F573C 001F269C  4E 80 00 20 */	blr 

.global modeCardCheck__Q23zen14DrawOptionSaveFP10Controller
modeCardCheck__Q23zen14DrawOptionSaveFP10Controller:
/* 801F5740 001F26A0  7C 08 02 A6 */	mflr r0
/* 801F5744 001F26A4  28 04 00 00 */	cmplwi r4, 0
/* 801F5748 001F26A8  90 01 00 04 */	stw r0, 4(r1)
/* 801F574C 001F26AC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801F5750 001F26B0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801F5754 001F26B4  3B E3 00 00 */	addi r31, r3, 0
/* 801F5758 001F26B8  41 82 00 68 */	beq .L_801F57C0
/* 801F575C 001F26BC  38 7F 00 50 */	addi r3, r31, 0x50
/* 801F5760 001F26C0  4B F9 89 7D */	bl update__Q23zen14ogScrMemChkMgrFP10Controller
/* 801F5764 001F26C4  2C 03 00 14 */	cmpwi r3, 0x14
/* 801F5768 001F26C8  41 82 00 34 */	beq .L_801F579C
/* 801F576C 001F26CC  40 80 00 10 */	bge .L_801F577C
/* 801F5770 001F26D0  2C 03 00 13 */	cmpwi r3, 0x13
/* 801F5774 001F26D4  40 80 00 14 */	bge .L_801F5788
/* 801F5778 001F26D8  48 00 00 48 */	b .L_801F57C0
.L_801F577C:
/* 801F577C 001F26DC  2C 03 00 16 */	cmpwi r3, 0x16
/* 801F5780 001F26E0  40 80 00 40 */	bge .L_801F57C0
/* 801F5784 001F26E4  48 00 00 2C */	b .L_801F57B0
.L_801F5788:
/* 801F5788 001F26E8  38 7F 00 00 */	addi r3, r31, 0
/* 801F578C 001F26EC  38 80 00 07 */	li r4, 7
/* 801F5790 001F26F0  38 A0 00 00 */	li r5, 0
/* 801F5794 001F26F4  48 00 00 91 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F5798 001F26F8  48 00 00 28 */	b .L_801F57C0
.L_801F579C:
/* 801F579C 001F26FC  38 7F 00 00 */	addi r3, r31, 0
/* 801F57A0 001F2700  38 80 00 09 */	li r4, 9
/* 801F57A4 001F2704  38 A0 00 00 */	li r5, 0
/* 801F57A8 001F2708  48 00 00 7D */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F57AC 001F270C  48 00 00 14 */	b .L_801F57C0
.L_801F57B0:
/* 801F57B0 001F2710  38 7F 00 00 */	addi r3, r31, 0
/* 801F57B4 001F2714  38 80 00 03 */	li r4, 3
/* 801F57B8 001F2718  38 A0 00 00 */	li r5, 0
/* 801F57BC 001F271C  48 00 00 69 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
.L_801F57C0:
/* 801F57C0 001F2720  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801F57C4 001F2724  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801F57C8 001F2728  38 21 00 18 */	addi r1, r1, 0x18
/* 801F57CC 001F272C  7C 08 03 A6 */	mtlr r0
/* 801F57D0 001F2730  4E 80 00 20 */	blr 

.global init__Q23zen14DrawOptionSaveFv
init__Q23zen14DrawOptionSaveFv:
/* 801F57D4 001F2734  7C 08 02 A6 */	mflr r0
/* 801F57D8 001F2738  38 80 00 00 */	li r4, 0
/* 801F57DC 001F273C  90 01 00 04 */	stw r0, 4(r1)
/* 801F57E0 001F2740  38 A0 00 00 */	li r5, 0
/* 801F57E4 001F2744  94 21 FF F8 */	stwu r1, -8(r1)
/* 801F57E8 001F2748  48 00 00 3D */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F57EC 001F274C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F57F0 001F2750  38 21 00 08 */	addi r1, r1, 8
/* 801F57F4 001F2754  7C 08 03 A6 */	mtlr r0
/* 801F57F8 001F2758  4E 80 00 20 */	blr 

.global start__Q23zen14DrawOptionSaveFv
start__Q23zen14DrawOptionSaveFv:
/* 801F57FC 001F275C  7C 08 02 A6 */	mflr r0
/* 801F5800 001F2760  38 80 00 01 */	li r4, 1
/* 801F5804 001F2764  90 01 00 04 */	stw r0, 4(r1)
/* 801F5808 001F2768  38 A0 00 00 */	li r5, 0
/* 801F580C 001F276C  94 21 FF F8 */	stwu r1, -8(r1)
/* 801F5810 001F2770  48 00 00 15 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F5814 001F2774  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F5818 001F2778  38 21 00 08 */	addi r1, r1, 8
/* 801F581C 001F277C  7C 08 03 A6 */	mtlr r0
/* 801F5820 001F2780  4E 80 00 20 */	blr 

.global setMode__Q23zen14DrawOptionSaveFUlP10Controller
setMode__Q23zen14DrawOptionSaveFUlP10Controller:
/* 801F5824 001F2784  7C 08 02 A6 */	mflr r0
/* 801F5828 001F2788  90 01 00 04 */	stw r0, 4(r1)
/* 801F582C 001F278C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F5830 001F2790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F5834 001F2794  7C BF 2B 78 */	mr r31, r5
/* 801F5838 001F2798  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F583C 001F279C  7C 7E 1B 78 */	mr r30, r3
/* 801F5840 001F27A0  90 83 00 00 */	stw r4, 0(r3)
/* 801F5844 001F27A4  80 03 00 00 */	lwz r0, 0(r3)
/* 801F5848 001F27A8  28 00 00 09 */	cmplwi r0, 9
/* 801F584C 001F27AC  41 81 00 E0 */	bgt .L_801F592C
/* 801F5850 001F27B0  3C 60 80 2E */	lis r3, lbl_802E7280@ha
/* 801F5854 001F27B4  38 63 72 80 */	addi r3, r3, lbl_802E7280@l
/* 801F5858 001F27B8  54 00 10 3A */	slwi r0, r0, 2
/* 801F585C 001F27BC  7C 03 00 2E */	lwzx r0, r3, r0
/* 801F5860 001F27C0  7C 09 03 A6 */	mtctr r0
/* 801F5864 001F27C4  4E 80 04 20 */	bctr 
.L_801F5868:
/* 801F5868 001F27C8  38 7E 00 04 */	addi r3, r30, 4
/* 801F586C 001F27CC  4B FF D1 39 */	bl sleep__Q23zen11DrawSaveMesFv
/* 801F5870 001F27D0  48 00 00 BC */	b .L_801F592C
.L_801F5874:
/* 801F5874 001F27D4  38 7E 00 04 */	addi r3, r30, 4
/* 801F5878 001F27D8  4B FF D1 51 */	bl mesAppear__Q23zen11DrawSaveMesFv
/* 801F587C 001F27DC  48 00 00 B0 */	b .L_801F592C
.L_801F5880:
/* 801F5880 001F27E0  38 7E 00 50 */	addi r3, r30, 0x50
/* 801F5884 001F27E4  4B F9 84 A5 */	bl start__Q23zen14ogScrMemChkMgrFv
/* 801F5888 001F27E8  28 1F 00 00 */	cmplwi r31, 0
/* 801F588C 001F27EC  41 82 00 A0 */	beq .L_801F592C
/* 801F5890 001F27F0  38 7E 00 50 */	addi r3, r30, 0x50
/* 801F5894 001F27F4  38 9F 00 00 */	addi r4, r31, 0
/* 801F5898 001F27F8  4B F9 88 45 */	bl update__Q23zen14ogScrMemChkMgrFP10Controller
/* 801F589C 001F27FC  2C 03 00 14 */	cmpwi r3, 0x14
/* 801F58A0 001F2800  41 82 00 34 */	beq .L_801F58D4
/* 801F58A4 001F2804  40 80 00 10 */	bge .L_801F58B4
/* 801F58A8 001F2808  2C 03 00 13 */	cmpwi r3, 0x13
/* 801F58AC 001F280C  40 80 00 14 */	bge .L_801F58C0
/* 801F58B0 001F2810  48 00 00 7C */	b .L_801F592C
.L_801F58B4:
/* 801F58B4 001F2814  2C 03 00 16 */	cmpwi r3, 0x16
/* 801F58B8 001F2818  40 80 00 74 */	bge .L_801F592C
/* 801F58BC 001F281C  48 00 00 2C */	b .L_801F58E8
.L_801F58C0:
/* 801F58C0 001F2820  38 7E 00 00 */	addi r3, r30, 0
/* 801F58C4 001F2824  38 80 00 07 */	li r4, 7
/* 801F58C8 001F2828  38 A0 00 00 */	li r5, 0
/* 801F58CC 001F282C  4B FF FF 59 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F58D0 001F2830  48 00 00 5C */	b .L_801F592C
.L_801F58D4:
/* 801F58D4 001F2834  38 7E 00 00 */	addi r3, r30, 0
/* 801F58D8 001F2838  38 80 00 09 */	li r4, 9
/* 801F58DC 001F283C  38 A0 00 00 */	li r5, 0
/* 801F58E0 001F2840  4B FF FF 45 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F58E4 001F2844  48 00 00 48 */	b .L_801F592C
.L_801F58E8:
/* 801F58E8 001F2848  38 7E 00 00 */	addi r3, r30, 0
/* 801F58EC 001F284C  38 80 00 03 */	li r4, 3
/* 801F58F0 001F2850  38 A0 00 00 */	li r5, 0
/* 801F58F4 001F2854  4B FF FF 31 */	bl setMode__Q23zen14DrawOptionSaveFUlP10Controller
/* 801F58F8 001F2858  48 00 00 34 */	b .L_801F592C
.L_801F58FC:
/* 801F58FC 001F285C  38 60 01 28 */	li r3, 0x128
/* 801F5900 001F2860  4B EA FA 75 */	bl playSysSe__8SeSystemFi
/* 801F5904 001F2864  48 00 00 28 */	b .L_801F592C
.L_801F5908:
/* 801F5908 001F2868  38 60 01 2A */	li r3, 0x12a
/* 801F590C 001F286C  4B EA FA 69 */	bl playSysSe__8SeSystemFi
/* 801F5910 001F2870  38 7E 00 04 */	addi r3, r30, 4
/* 801F5914 001F2874  4B FF D1 4D */	bl saveError__Q23zen11DrawSaveMesFv
/* 801F5918 001F2878  48 00 00 14 */	b .L_801F592C
.L_801F591C:
/* 801F591C 001F287C  38 60 01 29 */	li r3, 0x129
/* 801F5920 001F2880  4B EA FA 55 */	bl playSysSe__8SeSystemFi
/* 801F5924 001F2884  38 7E 00 04 */	addi r3, r30, 4
/* 801F5928 001F2888  4B FF D0 F1 */	bl saveFinish__Q23zen11DrawSaveMesFv
.L_801F592C:
/* 801F592C 001F288C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F5930 001F2890  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F5934 001F2894  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F5938 001F2898  38 21 00 20 */	addi r1, r1, 0x20
/* 801F593C 001F289C  7C 08 03 A6 */	mtlr r0
/* 801F5940 001F28A0  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
.global lbl_802E7258
lbl_802E7258:
	.4byte .L_801F56B4
	.4byte .L_801F5594
	.4byte .L_801F55EC
	.4byte .L_801F55FC
	.4byte .L_801F567C
	.4byte .L_801F5648
	.4byte .L_801F56B0
	.4byte .L_801F56B0
	.4byte .L_801F56B0
	.4byte .L_801F56B0
.global lbl_802E7280
lbl_802E7280:
	.4byte .L_801F5868
	.4byte .L_801F5874
	.4byte .L_801F5880
	.4byte .L_801F58FC
	.4byte .L_801F5908
	.4byte .L_801F591C
	.4byte .L_801F592C
	.4byte .L_801F592C
	.4byte .L_801F592C
	.4byte .L_801F592C
