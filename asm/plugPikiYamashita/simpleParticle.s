.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global update__Q23zen17simplePtclManagerFf
update__Q23zen17simplePtclManagerFf:
/* 801A226C 0019F1CC  7C 08 02 A6 */	mflr r0
/* 801A2270 0019F1D0  90 01 00 04 */	stw r0, 4(r1)
/* 801A2274 0019F1D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801A2278 0019F1D8  DB E1 00 68 */	stfd f31, 0x68(r1)
/* 801A227C 0019F1DC  FF E0 08 90 */	fmr f31, f1
/* 801A2280 0019F1E0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801A2284 0019F1E4  DB A1 00 58 */	stfd f29, 0x58(r1)
/* 801A2288 0019F1E8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801A228C 0019F1EC  DB 61 00 48 */	stfd f27, 0x48(r1)
/* 801A2290 0019F1F0  BF 61 00 34 */	stmw r27, 0x34(r1)
/* 801A2294 0019F1F4  7C 7D 1B 78 */	mr r29, r3
/* 801A2298 0019F1F8  3F 80 43 30 */	lis r28, 0x4330
/* 801A229C 0019F1FC  80 63 00 00 */	lwz r3, 0(r3)
/* 801A22A0 0019F200  C3 62 B4 08 */	lfs f27, lbl_803EB608@sda21(r2)
/* 801A22A4 0019F204  80 63 00 08 */	lwz r3, 8(r3)
/* 801A22A8 0019F208  CB 82 B4 18 */	lfd f28, lbl_803EB618@sda21(r2)
/* 801A22AC 0019F20C  C3 A2 B4 0C */	lfs f29, lbl_803EB60C@sda21(r2)
/* 801A22B0 0019F210  C3 C2 B4 10 */	lfs f30, lbl_803EB610@sda21(r2)
/* 801A22B4 0019F214  48 00 01 64 */	b lbl_801A2418
lbl_801A22B8:
/* 801A22B8 0019F218  7C 7E 1B 78 */	mr r30, r3
/* 801A22BC 0019F21C  83 E3 00 08 */	lwz r31, 8(r3)
/* 801A22C0 0019F220  A8 63 00 2E */	lha r3, 0x2e(r3)
/* 801A22C4 0019F224  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 801A22C8 0019F228  38 63 00 01 */	addi r3, r3, 1
/* 801A22CC 0019F22C  7C 03 00 00 */	cmpw r3, r0
/* 801A22D0 0019F230  40 82 00 38 */	bne lbl_801A2308
/* 801A22D4 0019F234  7F C3 F3 78 */	mr r3, r30
/* 801A22D8 0019F238  83 7D 00 10 */	lwz r27, 0x10(r29)
/* 801A22DC 0019F23C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A22E0 0019F240  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A22E4 0019F244  7D 88 03 A6 */	mtlr r12
/* 801A22E8 0019F248  4E 80 00 21 */	blrl 
/* 801A22EC 0019F24C  80 7B 00 00 */	lwz r3, 0(r27)
/* 801A22F0 0019F250  7F C4 F3 78 */	mr r4, r30
/* 801A22F4 0019F254  81 83 00 00 */	lwz r12, 0(r3)
/* 801A22F8 0019F258  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A22FC 0019F25C  7D 88 03 A6 */	mtlr r12
/* 801A2300 0019F260  4E 80 00 21 */	blrl 
/* 801A2304 0019F264  48 00 01 10 */	b lbl_801A2414
lbl_801A2308:
/* 801A2308 0019F268  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 801A230C 0019F26C  28 03 00 00 */	cmplwi r3, 0
/* 801A2310 0019F270  41 82 00 1C */	beq lbl_801A232C
/* 801A2314 0019F274  81 83 00 00 */	lwz r12, 0(r3)
/* 801A2318 0019F278  7F C4 F3 78 */	mr r4, r30
/* 801A231C 0019F27C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A2320 0019F280  7D 88 03 A6 */	mtlr r12
/* 801A2324 0019F284  4E 80 00 21 */	blrl 
/* 801A2328 0019F288  48 00 00 B0 */	b lbl_801A23D8
lbl_801A232C:
/* 801A232C 0019F28C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 801A2330 0019F290  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801A2334 0019F294  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2338 0019F298  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 801A233C 0019F29C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 801A2340 0019F2A0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 801A2344 0019F2A4  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2348 0019F2A8  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 801A234C 0019F2AC  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 801A2350 0019F2B0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 801A2354 0019F2B4  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2358 0019F2B8  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 801A235C 0019F2BC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 801A2360 0019F2C0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 801A2364 0019F2C4  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2368 0019F2C8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 801A236C 0019F2CC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 801A2370 0019F2D0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 801A2374 0019F2D4  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2378 0019F2D8  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 801A237C 0019F2DC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 801A2380 0019F2E0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 801A2384 0019F2E4  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2388 0019F2E8  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 801A238C 0019F2EC  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 801A2390 0019F2F0  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 801A2394 0019F2F4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801A2398 0019F2F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A239C 0019F2FC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801A23A0 0019F300  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A23A4 0019F304  93 81 00 28 */	stw r28, 0x28(r1)
/* 801A23A8 0019F308  93 81 00 20 */	stw r28, 0x20(r1)
/* 801A23AC 0019F30C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 801A23B0 0019F310  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801A23B4 0019F314  EC 21 E0 28 */	fsubs f1, f1, f28
/* 801A23B8 0019F318  EC 00 E0 28 */	fsubs f0, f0, f28
/* 801A23BC 0019F31C  EC 01 00 24 */	fdivs f0, f1, f0
/* 801A23C0 0019F320  EC 1B 00 28 */	fsubs f0, f27, f0
/* 801A23C4 0019F324  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 801A23C8 0019F328  A0 7E 00 58 */	lhz r3, 0x58(r30)
/* 801A23CC 0019F32C  A8 1E 00 5A */	lha r0, 0x5a(r30)
/* 801A23D0 0019F330  7C 03 02 14 */	add r0, r3, r0
/* 801A23D4 0019F334  B0 1E 00 58 */	sth r0, 0x58(r30)
lbl_801A23D8:
/* 801A23D8 0019F338  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 801A23DC 0019F33C  EC 00 F8 2A */	fadds f0, f0, f31
/* 801A23E0 0019F340  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 801A23E4 0019F344  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 801A23E8 0019F348  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 801A23EC 0019F34C  4C 41 13 82 */	cror 2, 1, 2
/* 801A23F0 0019F350  40 82 00 0C */	bne lbl_801A23FC
/* 801A23F4 0019F354  EC 1E 00 2A */	fadds f0, f30, f0
/* 801A23F8 0019F358  48 00 00 08 */	b lbl_801A2400
lbl_801A23FC:
/* 801A23FC 0019F35C  EC 00 F0 28 */	fsubs f0, f0, f30
lbl_801A2400:
/* 801A2400 0019F360  FC 00 00 1E */	fctiwz f0, f0
/* 801A2404 0019F364  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A2408 0019F368  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A240C 0019F36C  7C 00 07 34 */	extsh r0, r0
/* 801A2410 0019F370  B0 1E 00 2E */	sth r0, 0x2e(r30)
lbl_801A2414:
/* 801A2414 0019F374  7F E3 FB 78 */	mr r3, r31
lbl_801A2418:
/* 801A2418 0019F378  80 1D 00 00 */	lwz r0, 0(r29)
/* 801A241C 0019F37C  7C 03 00 40 */	cmplw r3, r0
/* 801A2420 0019F380  40 82 FE 98 */	bne lbl_801A22B8
/* 801A2424 0019F384  BB 61 00 34 */	lmw r27, 0x34(r1)
/* 801A2428 0019F388  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801A242C 0019F38C  CB E1 00 68 */	lfd f31, 0x68(r1)
/* 801A2430 0019F390  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801A2434 0019F394  CB A1 00 58 */	lfd f29, 0x58(r1)
/* 801A2438 0019F398  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 801A243C 0019F39C  CB 61 00 48 */	lfd f27, 0x48(r1)
/* 801A2440 0019F3A0  38 21 00 70 */	addi r1, r1, 0x70
/* 801A2444 0019F3A4  7C 08 03 A6 */	mtlr r0
/* 801A2448 0019F3A8  4E 80 00 20 */	blr 

.global draw__Q23zen17simplePtclManagerFR8Graphics
draw__Q23zen17simplePtclManagerFR8Graphics:
/* 801A244C 0019F3AC  7C 08 02 A6 */	mflr r0
/* 801A2450 0019F3B0  38 A0 00 00 */	li r5, 0
/* 801A2454 0019F3B4  90 01 00 04 */	stw r0, 4(r1)
/* 801A2458 0019F3B8  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 801A245C 0019F3BC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801A2460 0019F3C0  DB C1 00 78 */	stfd f30, 0x78(r1)
/* 801A2464 0019F3C4  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 801A2468 0019F3C8  DB 81 00 68 */	stfd f28, 0x68(r1)
/* 801A246C 0019F3CC  BF 01 00 48 */	stmw r24, 0x48(r1)
/* 801A2470 0019F3D0  3B A4 00 00 */	addi r29, r4, 0
/* 801A2474 0019F3D4  3B 83 00 00 */	addi r28, r3, 0
/* 801A2478 0019F3D8  38 7D 00 00 */	addi r3, r29, 0
/* 801A247C 0019F3DC  38 80 00 00 */	li r4, 0
/* 801A2480 0019F3E0  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A2484 0019F3E4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801A2488 0019F3E8  7D 88 03 A6 */	mtlr r12
/* 801A248C 0019F3EC  4E 80 00 21 */	blrl 
/* 801A2490 0019F3F0  38 03 00 00 */	addi r0, r3, 0
/* 801A2494 0019F3F4  38 7D 00 00 */	addi r3, r29, 0
/* 801A2498 0019F3F8  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A249C 0019F3FC  7C 1F 03 78 */	mr r31, r0
/* 801A24A0 0019F400  38 80 00 01 */	li r4, 1
/* 801A24A4 0019F404  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801A24A8 0019F408  7D 88 03 A6 */	mtlr r12
/* 801A24AC 0019F40C  4E 80 00 21 */	blrl 
/* 801A24B0 0019F410  38 03 00 00 */	addi r0, r3, 0
/* 801A24B4 0019F414  38 7D 00 00 */	addi r3, r29, 0
/* 801A24B8 0019F418  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A24BC 0019F41C  7C 1E 03 78 */	mr r30, r0
/* 801A24C0 0019F420  38 80 00 00 */	li r4, 0
/* 801A24C4 0019F424  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A24C8 0019F428  7D 88 03 A6 */	mtlr r12
/* 801A24CC 0019F42C  4E 80 00 21 */	blrl 
/* 801A24D0 0019F430  7F A3 EB 78 */	mr r3, r29
/* 801A24D4 0019F434  80 9D 02 E4 */	lwz r4, 0x2e4(r29)
/* 801A24D8 0019F438  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A24DC 0019F43C  38 A0 00 00 */	li r5, 0
/* 801A24E0 0019F440  38 84 01 E0 */	addi r4, r4, 0x1e0
/* 801A24E4 0019F444  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 801A24E8 0019F448  7D 88 03 A6 */	mtlr r12
/* 801A24EC 0019F44C  4E 80 00 21 */	blrl 
/* 801A24F0 0019F450  7F A3 EB 78 */	mr r3, r29
/* 801A24F4 0019F454  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A24F8 0019F458  38 80 00 00 */	li r4, 0
/* 801A24FC 0019F45C  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 801A2500 0019F460  7D 88 03 A6 */	mtlr r12
/* 801A2504 0019F464  4E 80 00 21 */	blrl 
/* 801A2508 0019F468  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A250C 0019F46C  41 82 01 5C */	beq lbl_801A2668
/* 801A2510 0019F470  80 7C 00 00 */	lwz r3, 0(r28)
/* 801A2514 0019F474  3B 41 00 30 */	addi r26, r1, 0x30
/* 801A2518 0019F478  CB E2 B4 28 */	lfd f31, lbl_803EB628@sda21(r2)
/* 801A251C 0019F47C  3F 60 43 30 */	lis r27, 0x4330
/* 801A2520 0019F480  83 23 00 08 */	lwz r25, 8(r3)
/* 801A2524 0019F484  C3 82 B4 0C */	lfs f28, lbl_803EB60C@sda21(r2)
/* 801A2528 0019F488  C3 A2 B4 10 */	lfs f29, lbl_803EB610@sda21(r2)
/* 801A252C 0019F48C  C3 C2 B4 20 */	lfs f30, lbl_803EB620@sda21(r2)
/* 801A2530 0019F490  48 00 01 2C */	b lbl_801A265C
lbl_801A2534:
/* 801A2534 0019F494  7F A3 EB 78 */	mr r3, r29
/* 801A2538 0019F498  83 19 00 08 */	lwz r24, 8(r25)
/* 801A253C 0019F49C  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A2540 0019F4A0  38 A0 00 00 */	li r5, 0
/* 801A2544 0019F4A4  80 99 00 78 */	lwz r4, 0x78(r25)
/* 801A2548 0019F4A8  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 801A254C 0019F4AC  7D 88 03 A6 */	mtlr r12
/* 801A2550 0019F4B0  4E 80 00 21 */	blrl 
/* 801A2554 0019F4B4  7F A3 EB 78 */	mr r3, r29
/* 801A2558 0019F4B8  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A255C 0019F4BC  38 80 00 54 */	li r4, 0x54
/* 801A2560 0019F4C0  38 A0 00 0B */	li r5, 0xb
/* 801A2564 0019F4C4  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 801A2568 0019F4C8  38 C0 00 02 */	li r6, 2
/* 801A256C 0019F4CC  7D 88 03 A6 */	mtlr r12
/* 801A2570 0019F4D0  4E 80 00 21 */	blrl 
/* 801A2574 0019F4D4  88 19 00 2B */	lbz r0, 0x2b(r25)
/* 801A2578 0019F4D8  C0 19 00 54 */	lfs f0, 0x54(r25)
/* 801A257C 0019F4DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A2580 0019F4E0  93 61 00 40 */	stw r27, 0x40(r1)
/* 801A2584 0019F4E4  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 801A2588 0019F4E8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 801A258C 0019F4EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A2590 0019F4F0  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 801A2594 0019F4F4  4C 41 13 82 */	cror 2, 1, 2
/* 801A2598 0019F4F8  40 82 00 0C */	bne lbl_801A25A4
/* 801A259C 0019F4FC  EC 1D 00 2A */	fadds f0, f29, f0
/* 801A25A0 0019F500  48 00 00 08 */	b lbl_801A25A8
lbl_801A25A4:
/* 801A25A4 0019F504  EC 00 E8 28 */	fsubs f0, f0, f29
lbl_801A25A8:
/* 801A25A8 0019F508  88 F9 00 2A */	lbz r7, 0x2a(r25)
/* 801A25AC 0019F50C  FC 00 00 1E */	fctiwz f0, f0
/* 801A25B0 0019F510  88 D9 00 29 */	lbz r6, 0x29(r25)
/* 801A25B4 0019F514  7F A3 EB 78 */	mr r3, r29
/* 801A25B8 0019F518  88 19 00 28 */	lbz r0, 0x28(r25)
/* 801A25BC 0019F51C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801A25C0 0019F520  38 81 00 3C */	addi r4, r1, 0x3c
/* 801A25C4 0019F524  98 01 00 3C */	stb r0, 0x3c(r1)
/* 801A25C8 0019F528  38 B9 00 68 */	addi r5, r25, 0x68
/* 801A25CC 0019F52C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A25D0 0019F530  98 C1 00 3D */	stb r6, 0x3d(r1)
/* 801A25D4 0019F534  98 E1 00 3E */	stb r7, 0x3e(r1)
/* 801A25D8 0019F538  98 01 00 3F */	stb r0, 0x3f(r1)
/* 801A25DC 0019F53C  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A25E0 0019F540  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 801A25E4 0019F544  7D 88 03 A6 */	mtlr r12
/* 801A25E8 0019F548  4E 80 00 21 */	blrl 
/* 801A25EC 0019F54C  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 801A25F0 0019F550  7F A3 EB 78 */	mr r3, r29
/* 801A25F4 0019F554  C0 19 00 18 */	lfs f0, 0x18(r25)
/* 801A25F8 0019F558  7F 45 D3 78 */	mr r5, r26
/* 801A25FC 0019F55C  C0 99 00 14 */	lfs f4, 0x14(r25)
/* 801A2600 0019F560  C0 79 00 20 */	lfs f3, 0x20(r25)
/* 801A2604 0019F564  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2608 0019F568  C0 59 00 10 */	lfs f2, 0x10(r25)
/* 801A260C 0019F56C  C0 39 00 1C */	lfs f1, 0x1c(r25)
/* 801A2610 0019F570  EC 64 18 2A */	fadds f3, f4, f3
/* 801A2614 0019F574  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A2618 0019F578  EC 22 08 2A */	fadds f1, f2, f1
/* 801A261C 0019F57C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801A2620 0019F580  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801A2624 0019F584  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801A2628 0019F588  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 801A262C 0019F58C  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A2630 0019F590  C0 39 00 24 */	lfs f1, 0x24(r25)
/* 801A2634 0019F594  C0 19 00 50 */	lfs f0, 0x50(r25)
/* 801A2638 0019F598  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 801A263C 0019F59C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A2640 0019F5A0  A0 19 00 58 */	lhz r0, 0x58(r25)
/* 801A2644 0019F5A4  7D 88 03 A6 */	mtlr r12
/* 801A2648 0019F5A8  80 9D 02 E4 */	lwz r4, 0x2e4(r29)
/* 801A264C 0019F5AC  7C C0 00 D0 */	neg r6, r0
/* 801A2650 0019F5B0  EC 3E 00 32 */	fmuls f1, f30, f0
/* 801A2654 0019F5B4  4E 80 00 21 */	blrl 
/* 801A2658 0019F5B8  7F 19 C3 78 */	mr r25, r24
lbl_801A265C:
/* 801A265C 0019F5BC  80 1C 00 00 */	lwz r0, 0(r28)
/* 801A2660 0019F5C0  7C 19 00 40 */	cmplw r25, r0
/* 801A2664 0019F5C4  40 82 FE D0 */	bne lbl_801A2534
lbl_801A2668:
/* 801A2668 0019F5C8  7F A3 EB 78 */	mr r3, r29
/* 801A266C 0019F5CC  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A2670 0019F5D0  38 80 00 01 */	li r4, 1
/* 801A2674 0019F5D4  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A2678 0019F5D8  7D 88 03 A6 */	mtlr r12
/* 801A267C 0019F5DC  4E 80 00 21 */	blrl 
/* 801A2680 0019F5E0  7F A3 EB 78 */	mr r3, r29
/* 801A2684 0019F5E4  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A2688 0019F5E8  7F C4 F3 78 */	mr r4, r30
/* 801A268C 0019F5EC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801A2690 0019F5F0  7D 88 03 A6 */	mtlr r12
/* 801A2694 0019F5F4  4E 80 00 21 */	blrl 
/* 801A2698 0019F5F8  7F A3 EB 78 */	mr r3, r29
/* 801A269C 0019F5FC  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 801A26A0 0019F600  38 9F 00 00 */	addi r4, r31, 0
/* 801A26A4 0019F604  38 A0 00 00 */	li r5, 0
/* 801A26A8 0019F608  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801A26AC 0019F60C  7D 88 03 A6 */	mtlr r12
/* 801A26B0 0019F610  4E 80 00 21 */	blrl 
/* 801A26B4 0019F614  BB 01 00 48 */	lmw r24, 0x48(r1)
/* 801A26B8 0019F618  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 801A26BC 0019F61C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801A26C0 0019F620  CB C1 00 78 */	lfd f30, 0x78(r1)
/* 801A26C4 0019F624  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 801A26C8 0019F628  CB 81 00 68 */	lfd f28, 0x68(r1)
/* 801A26CC 0019F62C  38 21 00 88 */	addi r1, r1, 0x88
/* 801A26D0 0019F630  7C 08 03 A6 */	mtlr r0
/* 801A26D4 0019F634  4E 80 00 20 */	blr 

.global forceFinish__Q23zen17simplePtclManagerFv
forceFinish__Q23zen17simplePtclManagerFv:
/* 801A26D8 0019F638  7C 08 02 A6 */	mflr r0
/* 801A26DC 0019F63C  90 01 00 04 */	stw r0, 4(r1)
/* 801A26E0 0019F640  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801A26E4 0019F644  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801A26E8 0019F648  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801A26EC 0019F64C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 801A26F0 0019F650  7C 7D 1B 78 */	mr r29, r3
/* 801A26F4 0019F654  48 00 00 34 */	b lbl_801A2728
lbl_801A26F8:
/* 801A26F8 0019F658  81 9E 00 00 */	lwz r12, 0(r30)
/* 801A26FC 0019F65C  7F C3 F3 78 */	mr r3, r30
/* 801A2700 0019F660  83 FD 00 10 */	lwz r31, 0x10(r29)
/* 801A2704 0019F664  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801A2708 0019F668  7D 88 03 A6 */	mtlr r12
/* 801A270C 0019F66C  4E 80 00 21 */	blrl 
/* 801A2710 0019F670  80 7F 00 00 */	lwz r3, 0(r31)
/* 801A2714 0019F674  7F C4 F3 78 */	mr r4, r30
/* 801A2718 0019F678  81 83 00 00 */	lwz r12, 0(r3)
/* 801A271C 0019F67C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A2720 0019F680  7D 88 03 A6 */	mtlr r12
/* 801A2724 0019F684  4E 80 00 21 */	blrl 
lbl_801A2728:
/* 801A2728 0019F688  80 7D 00 00 */	lwz r3, 0(r29)
/* 801A272C 0019F68C  83 C3 00 08 */	lwz r30, 8(r3)
/* 801A2730 0019F690  7C 03 F0 40 */	cmplw r3, r30
/* 801A2734 0019F694  40 82 FF C4 */	bne lbl_801A26F8
/* 801A2738 0019F698  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801A273C 0019F69C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801A2740 0019F6A0  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801A2744 0019F6A4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 801A2748 0019F6A8  38 21 00 28 */	addi r1, r1, 0x28
/* 801A274C 0019F6AC  7C 08 03 A6 */	mtlr r0
/* 801A2750 0019F6B0  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 0x8
lbl_803EB608:
	.4byte 0x3F800000
lbl_803EB60C:
	.4byte 0x00000000
lbl_803EB610:
	.4byte 0x3F000000
.balign 0x8
lbl_803EB618:
	.4byte 0x43300000
	.4byte 0x80000000
lbl_803EB620:
	.4byte 0x41C80000
.balign 0x8
lbl_803EB628:
	.4byte 0x43300000
	.4byte 0x00000000
