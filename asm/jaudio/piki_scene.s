.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.balign 32, 0
.global Jac_Delete_CurrentBgmWave
Jac_Delete_CurrentBgmWave:
/* 80019760 000166C0  7C 08 02 A6 */	mflr r0
/* 80019764 000166C4  38 60 00 00 */	li r3, 0
/* 80019768 000166C8  90 01 00 04 */	stw r0, 4(r1)
/* 8001976C 000166CC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80019770 000166D0  4B FF F4 11 */	bl Jac_StopBgm
/* 80019774 000166D4  38 60 00 01 */	li r3, 1
/* 80019778 000166D8  4B FF F4 09 */	bl Jac_StopBgm
/* 8001977C 000166DC  80 6D 2D 08 */	lwz r3, current_bgm@sda21(r13)
/* 80019780 000166E0  38 80 00 00 */	li r4, 0
/* 80019784 000166E4  4B FF 30 5D */	bl WaveScene_Close__FUlUl
/* 80019788 000166E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001978C 000166EC  38 21 00 08 */	addi r1, r1, 8
/* 80019790 000166F0  7C 08 03 A6 */	mtlr r0
/* 80019794 000166F4  4E 80 00 20 */	blr 

.balign 32, 0
__Loaded__FUl: #static
/* 800197A0 00016700  7C 08 02 A6 */	mflr r0
/* 800197A4 00016704  90 01 00 04 */	stw r0, 4(r1)
/* 800197A8 00016708  3C 00 00 01 */	lis r0, 1
/* 800197AC 0001670C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800197B0 00016710  90 61 00 08 */	stw r3, 8(r1)
/* 800197B4 00016714  80 61 00 08 */	lwz r3, 8(r1)
/* 800197B8 00016718  54 64 00 1E */	rlwinm r4, r3, 0, 0, 0xf
/* 800197BC 0001671C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 800197C0 00016720  7C 04 00 00 */	cmpw r4, r0
/* 800197C4 00016724  90 61 00 08 */	stw r3, 8(r1)
/* 800197C8 00016728  41 82 00 3C */	beq .L_80019804
/* 800197CC 0001672C  40 80 00 10 */	bge .L_800197DC
/* 800197D0 00016730  2C 04 00 00 */	cmpwi r4, 0
/* 800197D4 00016734  41 82 00 24 */	beq .L_800197F8
/* 800197D8 00016738  48 00 00 4C */	b .L_80019824
.L_800197DC:
/* 800197DC 0001673C  3C 00 00 02 */	lis r0, 2
/* 800197E0 00016740  7C 04 00 00 */	cmpw r4, r0
/* 800197E4 00016744  41 82 00 08 */	beq .L_800197EC
/* 800197E8 00016748  48 00 00 3C */	b .L_80019824
.L_800197EC:
/* 800197EC 0001674C  38 00 00 01 */	li r0, 1
/* 800197F0 00016750  90 0D 2D 14 */	stw r0, first_load@sda21(r13)
/* 800197F4 00016754  48 00 00 30 */	b .L_80019824
.L_800197F8:
/* 800197F8 00016758  38 00 00 00 */	li r0, 0
/* 800197FC 0001675C  90 0D 2D 10 */	stw r0, now_loading@sda21(r13)
/* 80019800 00016760  48 00 00 24 */	b .L_80019824
.L_80019804:
/* 80019804 00016764  80 6D 2D 08 */	lwz r3, current_bgm@sda21(r13)
/* 80019808 00016768  80 01 00 08 */	lwz r0, 8(r1)
/* 8001980C 0001676C  7C 03 00 40 */	cmplw r3, r0
/* 80019810 00016770  40 82 00 14 */	bne .L_80019824
/* 80019814 00016774  4B FF 41 CD */	bl Collect_AramMotherHeap__Fv
/* 80019818 00016778  38 60 00 00 */	li r3, 0
/* 8001981C 0001677C  80 8D 2D 08 */	lwz r4, current_bgm@sda21(r13)
/* 80019820 00016780  4B FF F4 61 */	bl Jac_PlayBgm
.L_80019824:
/* 80019824 00016784  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80019828 00016788  38 21 00 18 */	addi r1, r1, 0x18
/* 8001982C 0001678C  7C 08 03 A6 */	mtlr r0
/* 80019830 00016790  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_GetCurrentScene
Jac_GetCurrentScene:
/* 80019840 000167A0  80 6D 80 E0 */	lwz r3, current_scene@sda21(r13)
/* 80019844 000167A4  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_TellChgMode
Jac_TellChgMode:
/* 80019860 000167C0  80 6D 2D 18 */	lwz r3, chgmode@sda21(r13)
/* 80019864 000167C4  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_SceneSetup
Jac_SceneSetup:
/* 80019880 000167E0  7C 08 02 A6 */	mflr r0
/* 80019884 000167E4  3C A0 80 22 */	lis r5, tbl_scene_to_bgm@ha
/* 80019888 000167E8  90 01 00 04 */	stw r0, 4(r1)
/* 8001988C 000167EC  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80019890 000167F0  BF 21 00 2C */	stmw r25, 0x2c(r1)
/* 80019894 000167F4  3B E5 62 48 */	addi r31, r5, tbl_scene_to_bgm@l
/* 80019898 000167F8  88 0D 2D 20 */	lbz r0, init$90@sda21(r13)
/* 8001989C 000167FC  90 61 00 08 */	stw r3, 8(r1)
/* 800198A0 00016800  7C 00 07 75 */	extsb. r0, r0
/* 800198A4 00016804  90 81 00 0C */	stw r4, 0xc(r1)
/* 800198A8 00016808  40 82 00 10 */	bne .L_800198B8
/* 800198AC 0001680C  38 00 00 01 */	li r0, 1
/* 800198B0 00016810  90 0D 2D 1C */	stw r0, first$89@sda21(r13)
/* 800198B4 00016814  98 0D 2D 20 */	stb r0, init$90@sda21(r13)
.L_800198B8:
/* 800198B8 00016818  3B 60 00 00 */	li r27, 0
/* 800198BC 0001681C  38 60 00 00 */	li r3, 0
/* 800198C0 00016820  4B FF D1 01 */	bl Jac_SetProcessStatus
/* 800198C4 00016824  80 0D 2D 14 */	lwz r0, first_load@sda21(r13)
/* 800198C8 00016828  2C 00 00 00 */	cmpwi r0, 0
/* 800198CC 0001682C  40 82 00 28 */	bne .L_800198F4
/* 800198D0 00016830  80 61 00 08 */	lwz r3, 8(r1)
/* 800198D4 00016834  48 00 00 14 */	b .L_800198E8
.L_800198D8:
/* 800198D8 00016838  28 03 00 01 */	cmplwi r3, 1
/* 800198DC 0001683C  41 82 00 18 */	beq .L_800198F4
/* 800198E0 00016840  28 03 00 00 */	cmplwi r3, 0
/* 800198E4 00016844  41 82 00 10 */	beq .L_800198F4
.L_800198E8:
/* 800198E8 00016848  80 0D 2D 14 */	lwz r0, first_load@sda21(r13)
/* 800198EC 0001684C  2C 00 00 00 */	cmpwi r0, 0
/* 800198F0 00016850  41 82 FF E8 */	beq .L_800198D8
.L_800198F4:
/* 800198F4 00016854  83 C1 00 08 */	lwz r30, 8(r1)
/* 800198F8 00016858  28 1E 00 0A */	cmplwi r30, 0xa
/* 800198FC 0001685C  40 82 00 0C */	bne .L_80019908
/* 80019900 00016860  38 00 00 01 */	li r0, 1
/* 80019904 00016864  90 0D 2D 18 */	stw r0, chgmode@sda21(r13)
.L_80019908:
/* 80019908 00016868  28 1E 00 03 */	cmplwi r30, 3
/* 8001990C 0001686C  40 82 00 1C */	bne .L_80019928
/* 80019910 00016870  38 60 00 0D */	li r3, 0xd
/* 80019914 00016874  38 80 00 00 */	li r4, 0
/* 80019918 00016878  4B FF 2E C9 */	bl WaveScene_Close__FUlUl
/* 8001991C 0001687C  48 00 07 C5 */	bl Jac_DemoSceneInit
/* 80019920 00016880  38 00 00 00 */	li r0, 0
/* 80019924 00016884  90 0D 2D 18 */	stw r0, chgmode@sda21(r13)
.L_80019928:
/* 80019928 00016888  28 1E 00 01 */	cmplwi r30, 1
/* 8001992C 0001688C  40 82 00 0C */	bne .L_80019938
/* 80019930 00016890  38 00 00 00 */	li r0, 0
/* 80019934 00016894  90 0D 2D 18 */	stw r0, chgmode@sda21(r13)
.L_80019938:
/* 80019938 00016898  80 0D 80 E0 */	lwz r0, current_scene@sda21(r13)
/* 8001993C 0001689C  28 00 00 05 */	cmplwi r0, 5
/* 80019940 000168A0  41 82 00 0C */	beq .L_8001994C
/* 80019944 000168A4  28 1E 00 05 */	cmplwi r30, 5
/* 80019948 000168A8  40 82 00 24 */	bne .L_8001996C
.L_8001994C:
/* 8001994C 000168AC  4B FF E6 F5 */	bl Jac_InitAllEvent
/* 80019950 000168B0  38 60 00 00 */	li r3, 0
/* 80019954 000168B4  4B FF ED ED */	bl Jac_Piki_Number
/* 80019958 000168B8  4B FF EE 69 */	bl Jac_UpdatePikiGaya__Fv
/* 8001995C 000168BC  38 60 00 08 */	li r3, 8
/* 80019960 000168C0  4B FF ED 21 */	bl Jac_StopOrimaSe
/* 80019964 000168C4  48 00 18 9D */	bl Jac_FinishPartsFindDemo
/* 80019968 000168C8  48 00 14 39 */	bl Jac_FinishDemo
.L_8001996C:
/* 8001996C 000168CC  38 60 00 0F */	li r3, 0xf
/* 80019970 000168D0  4B FF D2 31 */	bl Jac_PlaySystemSe
/* 80019974 000168D4  38 60 00 07 */	li r3, 7
/* 80019978 000168D8  4B FF D2 29 */	bl Jac_PlaySystemSe
/* 8001997C 000168DC  38 60 00 10 */	li r3, 0x10
/* 80019980 000168E0  4B FF D5 C1 */	bl Jac_StopSystemSe
/* 80019984 000168E4  38 60 00 21 */	li r3, 0x21
/* 80019988 000168E8  4B FF D5 B9 */	bl Jac_StopSystemSe
/* 8001998C 000168EC  38 60 00 23 */	li r3, 0x23
/* 80019990 000168F0  4B FF D5 B1 */	bl Jac_StopSystemSe
/* 80019994 000168F4  4B FF EC AD */	bl Jac_UnPauseOrimaSe__Fv
/* 80019998 000168F8  80 0D 80 E0 */	lwz r0, current_scene@sda21(r13)
/* 8001999C 000168FC  28 00 00 06 */	cmplwi r0, 6
/* 800199A0 00016900  40 82 00 08 */	bne .L_800199A8
/* 800199A4 00016904  48 00 11 FD */	bl Jac_DemoBGMForceStop__Fv
.L_800199A8:
/* 800199A8 00016908  80 6D 80 E0 */	lwz r3, current_scene@sda21(r13)
/* 800199AC 0001690C  3C 03 00 01 */	addis r0, r3, 1
/* 800199B0 00016910  28 00 FF FF */	cmplwi r0, 0xffff
/* 800199B4 00016914  40 82 00 0C */	bne .L_800199C0
/* 800199B8 00016918  38 60 00 00 */	li r3, 0
/* 800199BC 0001691C  48 00 00 0C */	b .L_800199C8
.L_800199C0:
/* 800199C0 00016920  54 60 10 3A */	slwi r0, r3, 2
/* 800199C4 00016924  7C 7F 00 2E */	lwzx r3, r31, r0
.L_800199C8:
/* 800199C8 00016928  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 800199CC 0001692C  28 1E 00 06 */	cmplwi r30, 6
/* 800199D0 00016930  93 CD 80 E0 */	stw r30, current_scene@sda21(r13)
/* 800199D4 00016934  57 C0 10 3A */	slwi r0, r30, 2
/* 800199D8 00016938  93 AD 80 E4 */	stw r29, current_stage@sda21(r13)
/* 800199DC 0001693C  7F 9F 00 2E */	lwzx r28, r31, r0
/* 800199E0 00016940  40 82 00 20 */	bne .L_80019A00
/* 800199E4 00016944  80 0D 2D 18 */	lwz r0, chgmode@sda21(r13)
/* 800199E8 00016948  2C 00 00 00 */	cmpwi r0, 0
/* 800199EC 0001694C  41 82 00 08 */	beq .L_800199F4
/* 800199F0 00016950  3B 80 00 14 */	li r28, 0x14
.L_800199F4:
/* 800199F4 00016954  28 1D 00 01 */	cmplwi r29, 1
/* 800199F8 00016958  40 82 00 08 */	bne .L_80019A00
/* 800199FC 0001695C  3B 80 00 15 */	li r28, 0x15
.L_80019A00:
/* 80019A00 00016960  80 0D 2D 08 */	lwz r0, current_bgm@sda21(r13)
/* 80019A04 00016964  7C 00 E0 40 */	cmplw r0, r28
/* 80019A08 00016968  41 82 00 70 */	beq .L_80019A78
/* 80019A0C 0001696C  3B 40 00 01 */	li r26, 1
/* 80019A10 00016970  38 60 00 00 */	li r3, 0
/* 80019A14 00016974  4B FF F1 6D */	bl Jac_StopBgm
/* 80019A18 00016978  38 60 00 01 */	li r3, 1
/* 80019A1C 0001697C  4B FF F1 65 */	bl Jac_StopBgm
/* 80019A20 00016980  28 1C 00 01 */	cmplwi r28, 1
/* 80019A24 00016984  3B 20 00 00 */	li r25, 0
/* 80019A28 00016988  40 82 00 20 */	bne .L_80019A48
/* 80019A2C 0001698C  57 A0 10 3A */	slwi r0, r29, 2
/* 80019A30 00016990  80 8D 2D 08 */	lwz r4, current_bgm@sda21(r13)
/* 80019A34 00016994  7C 7F 02 14 */	add r3, r31, r0
/* 80019A38 00016998  80 03 00 70 */	lwz r0, 0x70(r3)
/* 80019A3C 0001699C  7C 04 00 40 */	cmplw r4, r0
/* 80019A40 000169A0  40 82 00 08 */	bne .L_80019A48
/* 80019A44 000169A4  3B 40 00 00 */	li r26, 0
.L_80019A48:
/* 80019A48 000169A8  80 6D 2D 08 */	lwz r3, current_bgm@sda21(r13)
/* 80019A4C 000169AC  28 03 00 00 */	cmplwi r3, 0
/* 80019A50 000169B0  40 82 00 08 */	bne .L_80019A58
/* 80019A54 000169B4  3B 40 00 00 */	li r26, 0
.L_80019A58:
/* 80019A58 000169B8  28 1C 00 00 */	cmplwi r28, 0
/* 80019A5C 000169BC  40 82 00 08 */	bne .L_80019A64
/* 80019A60 000169C0  3B 40 00 00 */	li r26, 0
.L_80019A64:
/* 80019A64 000169C4  2C 1A 00 00 */	cmpwi r26, 0
/* 80019A68 000169C8  41 82 00 24 */	beq .L_80019A8C
/* 80019A6C 000169CC  38 80 00 00 */	li r4, 0
/* 80019A70 000169D0  4B FF 2D 71 */	bl WaveScene_Close__FUlUl
/* 80019A74 000169D4  48 00 00 18 */	b .L_80019A8C
.L_80019A78:
/* 80019A78 000169D8  7C 1C 18 40 */	cmplw r28, r3
/* 80019A7C 000169DC  40 82 00 0C */	bne .L_80019A88
/* 80019A80 000169E0  3B 20 00 01 */	li r25, 1
/* 80019A84 000169E4  48 00 00 08 */	b .L_80019A8C
.L_80019A88:
/* 80019A88 000169E8  3B 20 00 00 */	li r25, 0
.L_80019A8C:
/* 80019A8C 000169EC  2C 1C 00 01 */	cmpwi r28, 1
/* 80019A90 000169F0  3B 40 00 00 */	li r26, 0
/* 80019A94 000169F4  41 82 00 14 */	beq .L_80019AA8
/* 80019A98 000169F8  40 80 00 38 */	bge .L_80019AD0
/* 80019A9C 000169FC  2C 1C 00 00 */	cmpwi r28, 0
/* 80019AA0 00016A00  40 80 00 A4 */	bge .L_80019B44
/* 80019AA4 00016A04  48 00 00 2C */	b .L_80019AD0
.L_80019AA8:
/* 80019AA8 00016A08  57 A0 10 3A */	slwi r0, r29, 2
/* 80019AAC 00016A0C  28 1D 00 00 */	cmplwi r29, 0
/* 80019AB0 00016A10  7C 7F 02 14 */	add r3, r31, r0
/* 80019AB4 00016A14  83 83 00 70 */	lwz r28, 0x70(r3)
/* 80019AB8 00016A18  41 82 00 08 */	beq .L_80019AC0
/* 80019ABC 00016A1C  3B 40 00 01 */	li r26, 1
.L_80019AC0:
/* 80019AC0 00016A20  3C 60 00 02 */	lis r3, 2
/* 80019AC4 00016A24  4B FF 6B 9D */	bl Jam_GetTrackHandle
/* 80019AC8 00016A28  38 80 00 01 */	li r4, 1
/* 80019ACC 00016A2C  4B FF 7A 15 */	bl Jam_PauseTrack
.L_80019AD0:
/* 80019AD0 00016A30  2C 19 00 01 */	cmpwi r25, 1
/* 80019AD4 00016A34  41 82 00 70 */	beq .L_80019B44
/* 80019AD8 00016A38  80 0D 2D 0C */	lwz r0, current_ready@sda21(r13)
/* 80019ADC 00016A3C  7C 00 E0 40 */	cmplw r0, r28
/* 80019AE0 00016A40  41 82 00 48 */	beq .L_80019B28
/* 80019AE4 00016A44  7F 83 E3 78 */	mr r3, r28
/* 80019AE8 00016A48  4B FF F0 F9 */	bl Jac_ReadyBgm
/* 80019AEC 00016A4C  4B FF 3E F5 */	bl Collect_AramMotherHeap__Fv
/* 80019AF0 00016A50  38 7C 00 00 */	addi r3, r28, 0
/* 80019AF4 00016A54  38 80 00 00 */	li r4, 0
/* 80019AF8 00016A58  4B FF 2B E9 */	bl WaveScene_Set__FUlUl
/* 80019AFC 00016A5C  2C 1A 00 00 */	cmpwi r26, 0
/* 80019B00 00016A60  93 8D 2D 0C */	stw r28, current_ready@sda21(r13)
/* 80019B04 00016A64  40 82 00 1C */	bne .L_80019B20
/* 80019B08 00016A68  3C 80 80 02 */	lis r4, __Loaded__FUl@ha
/* 80019B0C 00016A6C  3C 7C 00 01 */	addis r3, r28, 1
/* 80019B10 00016A70  38 A4 97 A0 */	addi r5, r4, __Loaded__FUl@l
/* 80019B14 00016A74  38 80 00 00 */	li r4, 0
/* 80019B18 00016A78  4B FE E4 69 */	bl DVDT_CheckPass__FUlPUlPFUl_v
/* 80019B1C 00016A7C  48 00 00 28 */	b .L_80019B44
.L_80019B20:
/* 80019B20 00016A80  3B 60 00 01 */	li r27, 1
/* 80019B24 00016A84  48 00 00 20 */	b .L_80019B44
.L_80019B28:
/* 80019B28 00016A88  80 0D 2D 10 */	lwz r0, now_loading@sda21(r13)
/* 80019B2C 00016A8C  28 00 00 00 */	cmplwi r0, 0
/* 80019B30 00016A90  40 82 FF F8 */	bne .L_80019B28
/* 80019B34 00016A94  4B FF 3E AD */	bl Collect_AramMotherHeap__Fv
/* 80019B38 00016A98  38 60 00 00 */	li r3, 0
/* 80019B3C 00016A9C  38 9C 00 00 */	addi r4, r28, 0
/* 80019B40 00016AA0  4B FF F1 41 */	bl Jac_PlayBgm
.L_80019B44:
/* 80019B44 00016AA4  28 1C 00 00 */	cmplwi r28, 0
/* 80019B48 00016AA8  41 82 00 08 */	beq .L_80019B50
/* 80019B4C 00016AAC  93 8D 2D 08 */	stw r28, current_bgm@sda21(r13)
.L_80019B50:
/* 80019B50 00016AB0  2C 1A 00 00 */	cmpwi r26, 0
/* 80019B54 00016AB4  41 82 00 74 */	beq .L_80019BC8
/* 80019B58 00016AB8  28 1D 00 04 */	cmplwi r29, 4
/* 80019B5C 00016ABC  40 82 00 2C */	bne .L_80019B88
/* 80019B60 00016AC0  38 60 00 0B */	li r3, 0xb
/* 80019B64 00016AC4  38 80 00 00 */	li r4, 0
/* 80019B68 00016AC8  4B FF 2C 79 */	bl WaveScene_Close__FUlUl
/* 80019B6C 00016ACC  38 60 00 10 */	li r3, 0x10
/* 80019B70 00016AD0  38 80 00 00 */	li r4, 0
/* 80019B74 00016AD4  4B FF 2B 6D */	bl WaveScene_Set__FUlUl
/* 80019B78 00016AD8  38 60 00 01 */	li r3, 1
/* 80019B7C 00016ADC  38 80 00 10 */	li r4, 0x10
/* 80019B80 00016AE0  4B FF F1 01 */	bl Jac_PlayBgm
/* 80019B84 00016AE4  48 00 00 28 */	b .L_80019BAC
.L_80019B88:
/* 80019B88 00016AE8  38 60 00 10 */	li r3, 0x10
/* 80019B8C 00016AEC  38 80 00 00 */	li r4, 0
/* 80019B90 00016AF0  4B FF 2C 51 */	bl WaveScene_Close__FUlUl
/* 80019B94 00016AF4  38 60 00 0B */	li r3, 0xb
/* 80019B98 00016AF8  38 80 00 00 */	li r4, 0
/* 80019B9C 00016AFC  4B FF 2B 45 */	bl WaveScene_Set__FUlUl
/* 80019BA0 00016B00  38 60 00 01 */	li r3, 1
/* 80019BA4 00016B04  38 80 00 0B */	li r4, 0xb
/* 80019BA8 00016B08  4B FF F0 D9 */	bl Jac_PlayBgm
.L_80019BAC:
/* 80019BAC 00016B0C  2C 1B 00 00 */	cmpwi r27, 0
/* 80019BB0 00016B10  41 82 00 18 */	beq .L_80019BC8
/* 80019BB4 00016B14  3C 80 80 02 */	lis r4, __Loaded__FUl@ha
/* 80019BB8 00016B18  3C 7C 00 01 */	addis r3, r28, 1
/* 80019BBC 00016B1C  38 A4 97 A0 */	addi r5, r4, __Loaded__FUl@l
/* 80019BC0 00016B20  38 80 00 00 */	li r4, 0
/* 80019BC4 00016B24  4B FE E3 BD */	bl DVDT_CheckPass__FUlPUlPFUl_v
.L_80019BC8:
/* 80019BC8 00016B28  80 0D 80 E0 */	lwz r0, current_scene@sda21(r13)
/* 80019BCC 00016B2C  28 00 00 01 */	cmplwi r0, 1
/* 80019BD0 00016B30  40 82 00 74 */	bne .L_80019C44
/* 80019BD4 00016B34  80 0D 2D 1C */	lwz r0, first$89@sda21(r13)
/* 80019BD8 00016B38  2C 00 00 01 */	cmpwi r0, 1
/* 80019BDC 00016B3C  40 82 00 68 */	bne .L_80019C44
/* 80019BE0 00016B40  38 00 00 00 */	li r0, 0
/* 80019BE4 00016B44  38 60 00 00 */	li r3, 0
/* 80019BE8 00016B48  90 0D 2D 1C */	stw r0, first$89@sda21(r13)
/* 80019BEC 00016B4C  38 80 00 01 */	li r4, 1
/* 80019BF0 00016B50  4B FF 2B 31 */	bl WaveScene_Load__FUlUl
/* 80019BF4 00016B54  38 60 00 00 */	li r3, 0
/* 80019BF8 00016B58  38 80 00 02 */	li r4, 2
/* 80019BFC 00016B5C  4B FF 2B 25 */	bl WaveScene_Load__FUlUl
/* 80019C00 00016B60  38 60 00 00 */	li r3, 0
/* 80019C04 00016B64  38 80 00 03 */	li r4, 3
/* 80019C08 00016B68  4B FF 2B 19 */	bl WaveScene_Load__FUlUl
/* 80019C0C 00016B6C  38 60 00 0E */	li r3, 0xe
/* 80019C10 00016B70  38 80 00 00 */	li r4, 0
/* 80019C14 00016B74  4B FF 2A CD */	bl WaveScene_Set__FUlUl
/* 80019C18 00016B78  38 60 00 0F */	li r3, 0xf
/* 80019C1C 00016B7C  38 80 00 00 */	li r4, 0
/* 80019C20 00016B80  4B FF 2A C1 */	bl WaveScene_Set__FUlUl
/* 80019C24 00016B84  38 60 00 02 */	li r3, 2
/* 80019C28 00016B88  38 80 00 00 */	li r4, 0
/* 80019C2C 00016B8C  4B FF 2A B5 */	bl WaveScene_Set__FUlUl
/* 80019C30 00016B90  3C 80 80 02 */	lis r4, __Loaded__FUl@ha
/* 80019C34 00016B94  3C 60 00 02 */	lis r3, 2
/* 80019C38 00016B98  38 A4 97 A0 */	addi r5, r4, __Loaded__FUl@l
/* 80019C3C 00016B9C  38 80 00 00 */	li r4, 0
/* 80019C40 00016BA0  4B FE E3 41 */	bl DVDT_CheckPass__FUlPUlPFUl_v
.L_80019C44:
/* 80019C44 00016BA4  28 1E 00 00 */	cmplwi r30, 0
/* 80019C48 00016BA8  40 82 00 78 */	bne .L_80019CC0
.L_80019C4C:
/* 80019C4C 00016BAC  4B FF D5 55 */	bl Jac_CheckBootOk
/* 80019C50 00016BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80019C54 00016BB4  41 82 FF F8 */	beq .L_80019C4C
/* 80019C58 00016BB8  48 1E 37 61 */	bl OSGetTick
/* 80019C5C 00016BBC  54 64 F0 BE */	srwi r4, r3, 2
/* 80019C60 00016BC0  54 60 F6 FE */	rlwinm r0, r3, 0x1e, 0x1b, 0x1f
/* 80019C64 00016BC4  28 00 00 1F */	cmplwi r0, 0x1f
/* 80019C68 00016BC8  40 82 00 30 */	bne .L_80019C98
/* 80019C6C 00016BCC  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 80019C70 00016BD0  28 00 00 3F */	cmplwi r0, 0x3f
/* 80019C74 00016BD4  40 82 00 14 */	bne .L_80019C88
/* 80019C78 00016BD8  3C 60 00 01 */	lis r3, 0x00008015@ha
/* 80019C7C 00016BDC  38 63 80 15 */	addi r3, r3, 0x00008015@l
/* 80019C80 00016BE0  4B FF E7 21 */	bl Jac_PlayOrimaSe
/* 80019C84 00016BE4  48 00 00 3C */	b .L_80019CC0
.L_80019C88:
/* 80019C88 00016BE8  3C 60 00 01 */	lis r3, 0x00008016@ha
/* 80019C8C 00016BEC  38 63 80 16 */	addi r3, r3, 0x00008016@l
/* 80019C90 00016BF0  4B FF E7 11 */	bl Jac_PlayOrimaSe
/* 80019C94 00016BF4  48 00 00 2C */	b .L_80019CC0
.L_80019C98:
/* 80019C98 00016BF8  54 80 06 7E */	clrlwi r0, r4, 0x19
/* 80019C9C 00016BFC  28 00 00 7E */	cmplwi r0, 0x7e
/* 80019CA0 00016C00  40 82 00 14 */	bne .L_80019CB4
/* 80019CA4 00016C04  3C 60 00 01 */	lis r3, 0x00008017@ha
/* 80019CA8 00016C08  38 63 80 17 */	addi r3, r3, 0x00008017@l
/* 80019CAC 00016C0C  4B FF E6 F5 */	bl Jac_PlayOrimaSe
/* 80019CB0 00016C10  48 00 00 10 */	b .L_80019CC0
.L_80019CB4:
/* 80019CB4 00016C14  3C 60 00 01 */	lis r3, 0x0000800C@ha
/* 80019CB8 00016C18  38 63 80 0C */	addi r3, r3, 0x0000800C@l
/* 80019CBC 00016C1C  4B FF E6 E5 */	bl Jac_PlayOrimaSe
.L_80019CC0:
/* 80019CC0 00016C20  38 60 00 01 */	li r3, 1
/* 80019CC4 00016C24  4B FF CC FD */	bl Jac_SetProcessStatus
/* 80019CC8 00016C28  BB 21 00 2C */	lmw r25, 0x2c(r1)
/* 80019CCC 00016C2C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80019CD0 00016C30  38 21 00 48 */	addi r1, r1, 0x48
/* 80019CD4 00016C34  7C 08 03 A6 */	mtlr r0
/* 80019CD8 00016C38  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_SceneExit
Jac_SceneExit:
/* 80019CE0 00016C40  7C 08 02 A6 */	mflr r0
/* 80019CE4 00016C44  90 01 00 04 */	stw r0, 4(r1)
/* 80019CE8 00016C48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80019CEC 00016C4C  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 80019CF0 00016C50  3B 83 00 00 */	addi r28, r3, 0
/* 80019CF4 00016C54  3C 60 80 22 */	lis r3, tbl_scene_to_bgm@ha
/* 80019CF8 00016C58  3B A4 00 00 */	addi r29, r4, 0
/* 80019CFC 00016C5C  3B E3 62 48 */	addi r31, r3, tbl_scene_to_bgm@l
/* 80019D00 00016C60  80 0D 80 E0 */	lwz r0, current_scene@sda21(r13)
/* 80019D04 00016C64  7C 00 E0 40 */	cmplw r0, r28
/* 80019D08 00016C68  41 82 00 C0 */	beq .L_80019DC8
/* 80019D0C 00016C6C  38 60 00 02 */	li r3, 2
/* 80019D10 00016C70  4B FF CC B1 */	bl Jac_SetProcessStatus
/* 80019D14 00016C74  80 0D 80 E0 */	lwz r0, current_scene@sda21(r13)
/* 80019D18 00016C78  38 60 00 00 */	li r3, 0
/* 80019D1C 00016C7C  54 00 10 3A */	slwi r0, r0, 2
/* 80019D20 00016C80  7C 9F 02 14 */	add r4, r31, r0
/* 80019D24 00016C84  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80019D28 00016C88  90 01 00 18 */	stw r0, 0x18(r1)
/* 80019D2C 00016C8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80019D30 00016C90  7F C4 F3 78 */	mr r4, r30
/* 80019D34 00016C94  4B FF EE 0D */	bl Jac_FadeOutBgm
/* 80019D38 00016C98  38 60 00 01 */	li r3, 1
/* 80019D3C 00016C9C  38 9E 00 00 */	addi r4, r30, 0
/* 80019D40 00016CA0  4B FF EE 01 */	bl Jac_FadeOutBgm
/* 80019D44 00016CA4  57 80 10 3A */	slwi r0, r28, 2
/* 80019D48 00016CA8  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80019D4C 00016CAC  2C 00 00 01 */	cmpwi r0, 1
/* 80019D50 00016CB0  7C 1E 03 78 */	mr r30, r0
/* 80019D54 00016CB4  41 82 00 14 */	beq .L_80019D68
/* 80019D58 00016CB8  40 80 00 1C */	bge .L_80019D74
/* 80019D5C 00016CBC  2C 00 00 00 */	cmpwi r0, 0
/* 80019D60 00016CC0  40 80 00 60 */	bge .L_80019DC0
/* 80019D64 00016CC4  48 00 00 10 */	b .L_80019D74
.L_80019D68:
/* 80019D68 00016CC8  57 A0 10 3A */	slwi r0, r29, 2
/* 80019D6C 00016CCC  7C 7F 02 14 */	add r3, r31, r0
/* 80019D70 00016CD0  83 C3 00 70 */	lwz r30, 0x70(r3)
.L_80019D74:
/* 80019D74 00016CD4  80 0D 2D 10 */	lwz r0, now_loading@sda21(r13)
/* 80019D78 00016CD8  28 00 00 00 */	cmplwi r0, 0
/* 80019D7C 00016CDC  41 82 00 10 */	beq .L_80019D8C
.L_80019D80:
/* 80019D80 00016CE0  80 0D 2D 10 */	lwz r0, now_loading@sda21(r13)
/* 80019D84 00016CE4  28 00 00 00 */	cmplwi r0, 0
/* 80019D88 00016CE8  40 82 FF F8 */	bne .L_80019D80
.L_80019D8C:
/* 80019D8C 00016CEC  38 7E 00 00 */	addi r3, r30, 0
/* 80019D90 00016CF0  38 80 00 00 */	li r4, 0
/* 80019D94 00016CF4  4B FF 29 4D */	bl WaveScene_Set__FUlUl
/* 80019D98 00016CF8  7F C3 F3 78 */	mr r3, r30
/* 80019D9C 00016CFC  4B FF EE 45 */	bl Jac_ReadyBgm
/* 80019DA0 00016D00  3C 80 80 02 */	lis r4, __Loaded__FUl@ha
/* 80019DA4 00016D04  38 7E 00 00 */	addi r3, r30, 0
/* 80019DA8 00016D08  38 A4 97 A0 */	addi r5, r4, __Loaded__FUl@l
/* 80019DAC 00016D0C  38 80 00 00 */	li r4, 0
/* 80019DB0 00016D10  4B FE E1 D1 */	bl DVDT_CheckPass__FUlPUlPFUl_v
/* 80019DB4 00016D14  38 00 00 01 */	li r0, 1
/* 80019DB8 00016D18  93 CD 2D 0C */	stw r30, current_ready@sda21(r13)
/* 80019DBC 00016D1C  90 0D 2D 10 */	stw r0, now_loading@sda21(r13)
.L_80019DC0:
/* 80019DC0 00016D20  38 60 00 03 */	li r3, 3
/* 80019DC4 00016D24  4B FF CB FD */	bl Jac_SetProcessStatus
.L_80019DC8:
/* 80019DC8 00016D28  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 80019DCC 00016D2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80019DD0 00016D30  38 21 00 30 */	addi r1, r1, 0x30
/* 80019DD4 00016D34  7C 08 03 A6 */	mtlr r0
/* 80019DD8 00016D38  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_SetStreamLevel
Jac_SetStreamLevel:
/* 80019DE0 00016D40  B0 6D 80 EC */	sth r3, stream_level@sda21(r13)
/* 80019DE4 00016D44  B0 8D 80 EE */	sth r4, stream_se_level@sda21(r13)
/* 80019DE8 00016D48  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_UpdateStreamLevel
Jac_UpdateStreamLevel:
/* 80019E00 00016D60  7C 08 02 A6 */	mflr r0
/* 80019E04 00016D64  38 60 00 00 */	li r3, 0
/* 80019E08 00016D68  90 01 00 04 */	stw r0, 4(r1)
/* 80019E0C 00016D6C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80019E10 00016D70  48 00 3B 51 */	bl StreamCheckAudioFormat
/* 80019E14 00016D74  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80019E18 00016D78  28 00 00 05 */	cmplwi r0, 5
/* 80019E1C 00016D7C  40 82 00 28 */	bne .L_80019E44
/* 80019E20 00016D80  38 60 00 00 */	li r3, 0
/* 80019E24 00016D84  38 80 7F FF */	li r4, 0x7fff
/* 80019E28 00016D88  38 A0 7F FF */	li r5, 0x7fff
/* 80019E2C 00016D8C  48 00 38 D5 */	bl StreamChgVolume
/* 80019E30 00016D90  A0 8D 80 EC */	lhz r4, stream_level@sda21(r13)
/* 80019E34 00016D94  38 60 00 00 */	li r3, 0
/* 80019E38 00016D98  A0 AD 80 EE */	lhz r5, stream_se_level@sda21(r13)
/* 80019E3C 00016D9C  48 00 39 05 */	bl StreamChgMixLevel
/* 80019E40 00016DA0  48 00 00 14 */	b .L_80019E54
.L_80019E44:
/* 80019E44 00016DA4  A0 8D 80 EC */	lhz r4, stream_level@sda21(r13)
/* 80019E48 00016DA8  38 60 00 00 */	li r3, 0
/* 80019E4C 00016DAC  38 A4 00 00 */	addi r5, r4, 0
/* 80019E50 00016DB0  48 00 38 B1 */	bl StreamChgVolume
.L_80019E54:
/* 80019E54 00016DB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80019E58 00016DB8  38 21 00 08 */	addi r1, r1, 8
/* 80019E5C 00016DBC  7C 08 03 A6 */	mtlr r0
/* 80019E60 00016DC0  4E 80 00 20 */	blr 

.balign 32, 0
MovieSync__FUll: #static
/* 80019E80 00016DE0  7C 08 02 A6 */	mflr r0
/* 80019E84 00016DE4  90 01 00 04 */	stw r0, 4(r1)
/* 80019E88 00016DE8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80019E8C 00016DEC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80019E90 00016DF0  7C 9F 23 78 */	mr r31, r4
/* 80019E94 00016DF4  4B FF FF 6D */	bl Jac_UpdateStreamLevel
/* 80019E98 00016DF8  2C 1F FF FF */	cmpwi r31, -1
/* 80019E9C 00016DFC  40 82 00 1C */	bne .L_80019EB8
/* 80019EA0 00016E00  38 60 00 01 */	li r3, 1
/* 80019EA4 00016E04  38 00 00 00 */	li r0, 0
/* 80019EA8 00016E08  90 6D 2D 28 */	stw r3, stop_ready@sda21(r13)
/* 80019EAC 00016E0C  38 60 00 00 */	li r3, 0
/* 80019EB0 00016E10  90 0D 2D 24 */	stw r0, stop_flag@sda21(r13)
/* 80019EB4 00016E14  48 00 00 34 */	b .L_80019EE8
.L_80019EB8:
/* 80019EB8 00016E18  80 0D 2D 24 */	lwz r0, stop_flag@sda21(r13)
/* 80019EBC 00016E1C  28 00 00 00 */	cmplwi r0, 0
/* 80019EC0 00016E20  41 82 00 14 */	beq .L_80019ED4
/* 80019EC4 00016E24  38 00 00 00 */	li r0, 0
/* 80019EC8 00016E28  38 60 FF FF */	li r3, -1
/* 80019ECC 00016E2C  90 0D 2D 24 */	stw r0, stop_flag@sda21(r13)
/* 80019ED0 00016E30  48 00 00 18 */	b .L_80019EE8
.L_80019ED4:
/* 80019ED4 00016E34  2C 1F 00 00 */	cmpwi r31, 0
/* 80019ED8 00016E38  40 82 00 0C */	bne .L_80019EE4
/* 80019EDC 00016E3C  38 00 00 01 */	li r0, 1
/* 80019EE0 00016E40  90 0D 2D 28 */	stw r0, stop_ready@sda21(r13)
.L_80019EE4:
/* 80019EE4 00016E44  38 60 00 00 */	li r3, 0
.L_80019EE8:
/* 80019EE8 00016E48  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80019EEC 00016E4C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80019EF0 00016E50  38 21 00 18 */	addi r1, r1, 0x18
/* 80019EF4 00016E54  7C 08 03 A6 */	mtlr r0
/* 80019EF8 00016E58  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_InitStreamSystem
Jac_InitStreamSystem:
/* 80019F00 00016E60  7C 08 02 A6 */	mflr r0
/* 80019F04 00016E64  3C 60 80 02 */	lis r3, MovieSync__FUll@ha
/* 80019F08 00016E68  90 01 00 04 */	stw r0, 4(r1)
/* 80019F0C 00016E6C  38 63 9E 80 */	addi r3, r3, MovieSync__FUll@l
/* 80019F10 00016E70  94 21 FF F8 */	stwu r1, -8(r1)
/* 80019F14 00016E74  48 00 2E 0D */	bl RegisterStreamCallback
/* 80019F18 00016E78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80019F1C 00016E7C  38 21 00 08 */	addi r1, r1, 8
/* 80019F20 00016E80  7C 08 03 A6 */	mtlr r0
/* 80019F24 00016E84  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_StopDemoSound__FUl
Jac_StopDemoSound__FUl:
/* 80019F40 00016EA0  7C 08 02 A6 */	mflr r0
/* 80019F44 00016EA4  38 83 00 00 */	addi r4, r3, 0
/* 80019F48 00016EA8  90 01 00 04 */	stw r0, 4(r1)
/* 80019F4C 00016EAC  38 60 00 00 */	li r3, 0
/* 80019F50 00016EB0  94 21 FF F8 */	stwu r1, -8(r1)
/* 80019F54 00016EB4  48 00 34 8D */	bl StreamSyncCheckBusy
/* 80019F58 00016EB8  2C 03 00 01 */	cmpwi r3, 1
/* 80019F5C 00016EBC  40 82 00 0C */	bne .L_80019F68
/* 80019F60 00016EC0  38 00 00 01 */	li r0, 1
/* 80019F64 00016EC4  90 0D 2D 24 */	stw r0, stop_flag@sda21(r13)
.L_80019F68:
/* 80019F68 00016EC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80019F6C 00016ECC  38 21 00 08 */	addi r1, r1, 8
/* 80019F70 00016ED0  7C 08 03 A6 */	mtlr r0
/* 80019F74 00016ED4  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_PrepareDemoSound__FUl
Jac_PrepareDemoSound__FUl:
/* 80019F80 00016EE0  7C 08 02 A6 */	mflr r0
/* 80019F84 00016EE4  90 01 00 04 */	stw r0, 4(r1)
/* 80019F88 00016EE8  94 21 FF 98 */	stwu r1, -0x68(r1)
/* 80019F8C 00016EEC  93 E1 00 64 */	stw r31, 0x64(r1)
/* 80019F90 00016EF0  90 61 00 08 */	stw r3, 8(r1)
/* 80019F94 00016EF4  38 60 00 00 */	li r3, 0
/* 80019F98 00016EF8  83 E1 00 08 */	lwz r31, 8(r1)
/* 80019F9C 00016EFC  7F E4 FB 78 */	mr r4, r31
/* 80019FA0 00016F00  48 00 34 41 */	bl StreamSyncCheckBusy
/* 80019FA4 00016F04  2C 03 00 01 */	cmpwi r3, 1
/* 80019FA8 00016F08  40 82 00 20 */	bne .L_80019FC8
/* 80019FAC 00016F0C  38 00 00 00 */	li r0, 0
/* 80019FB0 00016F10  38 7F 00 00 */	addi r3, r31, 0
/* 80019FB4 00016F14  90 0D 2D 28 */	stw r0, stop_ready@sda21(r13)
/* 80019FB8 00016F18  4B FF FF 89 */	bl Jac_StopDemoSound__FUl
.L_80019FBC:
/* 80019FBC 00016F1C  80 0D 2D 28 */	lwz r0, stop_ready@sda21(r13)
/* 80019FC0 00016F20  28 00 00 00 */	cmplwi r0, 0
/* 80019FC4 00016F24  41 82 FF F8 */	beq .L_80019FBC
.L_80019FC8:
/* 80019FC8 00016F28  3C 60 80 22 */	lis r3, filelist@ha
/* 80019FCC 00016F2C  57 E4 28 34 */	slwi r4, r31, 5
/* 80019FD0 00016F30  38 03 62 CC */	addi r0, r3, filelist@l
/* 80019FD4 00016F34  38 61 00 1C */	addi r3, r1, 0x1c
/* 80019FD8 00016F38  7C 80 22 14 */	add r4, r0, r4
/* 80019FDC 00016F3C  4B FE D5 65 */	bl DVDT_ExtendPath__FPcPc
/* 80019FE0 00016F40  38 9F 00 00 */	addi r4, r31, 0
/* 80019FE4 00016F44  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80019FE8 00016F48  38 60 00 00 */	li r3, 0
/* 80019FEC 00016F4C  38 C0 00 01 */	li r6, 1
/* 80019FF0 00016F50  38 E0 00 00 */	li r7, 0
/* 80019FF4 00016F54  39 00 00 00 */	li r8, 0
/* 80019FF8 00016F58  48 00 21 49 */	bl StreamAudio_Start
/* 80019FFC 00016F5C  4B FF FE 05 */	bl Jac_UpdateStreamLevel
/* 8001A000 00016F60  93 ED 80 E8 */	stw r31, current_prepare@sda21(r13)
/* 8001A004 00016F64  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8001A008 00016F68  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 8001A00C 00016F6C  38 21 00 68 */	addi r1, r1, 0x68
/* 8001A010 00016F70  7C 08 03 A6 */	mtlr r0
/* 8001A014 00016F74  4E 80 00 20 */	blr 

.balign 32, 0
.global Jac_StartDemoSound__FUl
Jac_StartDemoSound__FUl:
/* 8001A020 00016F80  7C 08 02 A6 */	mflr r0
/* 8001A024 00016F84  90 01 00 04 */	stw r0, 4(r1)
/* 8001A028 00016F88  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8001A02C 00016F8C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8001A030 00016F90  3B E3 00 00 */	addi r31, r3, 0
/* 8001A034 00016F94  80 0D 80 E8 */	lwz r0, current_prepare@sda21(r13)
/* 8001A038 00016F98  7C 00 F8 40 */	cmplw r0, r31
/* 8001A03C 00016F9C  41 82 00 34 */	beq .L_8001A070
/* 8001A040 00016FA0  38 60 00 00 */	li r3, 0
/* 8001A044 00016FA4  38 9F 00 00 */	addi r4, r31, 0
/* 8001A048 00016FA8  48 00 33 99 */	bl StreamSyncCheckBusy
/* 8001A04C 00016FAC  2C 03 00 01 */	cmpwi r3, 1
/* 8001A050 00016FB0  40 82 00 20 */	bne .L_8001A070
/* 8001A054 00016FB4  38 00 00 00 */	li r0, 0
/* 8001A058 00016FB8  38 7F 00 00 */	addi r3, r31, 0
/* 8001A05C 00016FBC  90 0D 2D 28 */	stw r0, stop_ready@sda21(r13)
/* 8001A060 00016FC0  4B FF FE E1 */	bl Jac_StopDemoSound__FUl
.L_8001A064:
/* 8001A064 00016FC4  80 0D 2D 28 */	lwz r0, stop_ready@sda21(r13)
/* 8001A068 00016FC8  28 00 00 00 */	cmplwi r0, 0
/* 8001A06C 00016FCC  41 82 FF F8 */	beq .L_8001A064
.L_8001A070:
/* 8001A070 00016FD0  38 00 FF FF */	li r0, -1
/* 8001A074 00016FD4  38 9F 00 00 */	addi r4, r31, 0
/* 8001A078 00016FD8  90 0D 80 E8 */	stw r0, current_prepare@sda21(r13)
/* 8001A07C 00016FDC  38 60 00 00 */	li r3, 0
/* 8001A080 00016FE0  48 00 33 01 */	bl StreamSyncCheckReadyID
/* 8001A084 00016FE4  2C 03 00 00 */	cmpwi r3, 0
/* 8001A088 00016FE8  40 82 00 0C */	bne .L_8001A094
/* 8001A08C 00016FEC  7F E3 FB 78 */	mr r3, r31
/* 8001A090 00016FF0  4B FF FE F1 */	bl Jac_PrepareDemoSound__FUl
.L_8001A094:
/* 8001A094 00016FF4  A0 8D 80 EC */	lhz r4, stream_level@sda21(r13)
/* 8001A098 00016FF8  38 60 00 00 */	li r3, 0
/* 8001A09C 00016FFC  C0 22 81 E0 */	lfs f1, lbl_803E83E0@sda21(r2)
/* 8001A0A0 00017000  7C 85 23 78 */	mr r5, r4
/* 8001A0A4 00017004  48 00 33 9D */	bl StreamSyncPlayAudio
/* 8001A0A8 00017008  2C 03 00 01 */	cmpwi r3, 1
/* 8001A0AC 0001700C  40 82 FF E8 */	bne .L_8001A094
/* 8001A0B0 00017010  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001A0B4 00017014  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8001A0B8 00017018  38 21 00 18 */	addi r1, r1, 0x18
/* 8001A0BC 0001701C  7C 08 03 A6 */	mtlr r0
/* 8001A0C0 00017020  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
tbl_scene_to_bgm:
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000012
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000013
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
tbl_scene_to_fadetime:
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0000000F
	.4byte 0x00000078
	.4byte 0x0000000A
	.4byte 0x00000019
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
tbl_stage_to_bgm:
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0x00000011
.balign 4
.global filelist
filelist:
	.asciz "piki.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "o_dead.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "d_end1.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "gyoku.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "d_end3.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "fanf5.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "badend0.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "badend1.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "opening.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "happyend1.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "compend1.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "compend0.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "badend2.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
	.asciz "onion.stx"
.balign 4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
header:
	.4byte 0x00640C62
	.4byte 0x0058EE80
	.4byte 0xBB800004
	.4byte 0x0010001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
current_scene:
	.4byte 0xFFFFFFFF
current_stage:
	.4byte 0xFFFFFFFF
current_prepare:
	.4byte 0xFFFFFFFF
stream_level:
	.2byte 0x1F40
stream_se_level:
	.2byte 0x1F40

.section .sbss, "wa"
.balign 8
current_bgm:
	.skip 4
current_ready:
	.skip 4
now_loading:
	.skip 4
first_load:
	.skip 4
chgmode:
	.skip 4
first$89:
	.skip 4
init$90:
	.skip 1
.balign 4
stop_flag:
	.skip 4
stop_ready:
	.skip 4

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803E83E0:
	.float 1.0
