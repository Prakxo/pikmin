.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__15TaiSerialActionFii
__ct__15TaiSerialActionFii:
/* 80126E04 00123D64  7C 08 02 A6 */	mflr r0
/* 80126E08 00123D68  3C C0 80 2C */	lis r6, __vt__9TaiAction@ha
/* 80126E0C 00123D6C  90 01 00 04 */	stw r0, 4(r1)
/* 80126E10 00123D70  38 06 66 20 */	addi r0, r6, __vt__9TaiAction@l
/* 80126E14 00123D74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80126E18 00123D78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80126E1C 00123D7C  3B E3 00 00 */	addi r31, r3, 0
/* 80126E20 00123D80  90 03 00 04 */	stw r0, 4(r3)
/* 80126E24 00123D84  3C 60 80 2C */	lis r3, __vt__15TaiSerialAction@ha
/* 80126E28 00123D88  38 03 66 04 */	addi r0, r3, __vt__15TaiSerialAction@l
/* 80126E2C 00123D8C  90 9F 00 00 */	stw r4, 0(r31)
/* 80126E30 00123D90  90 1F 00 04 */	stw r0, 4(r31)
/* 80126E34 00123D94  90 BF 00 08 */	stw r5, 8(r31)
/* 80126E38 00123D98  80 1F 00 08 */	lwz r0, 8(r31)
/* 80126E3C 00123D9C  54 03 10 3A */	slwi r3, r0, 2
/* 80126E40 00123DA0  4B F2 01 C5 */	bl alloc__6SystemFUl
/* 80126E44 00123DA4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80126E48 00123DA8  7F E3 FB 78 */	mr r3, r31
/* 80126E4C 00123DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80126E50 00123DB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80126E54 00123DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80126E58 00123DB8  7C 08 03 A6 */	mtlr r0
/* 80126E5C 00123DBC  4E 80 00 20 */	blr 

.global start__15TaiSerialActionFR4Teki
start__15TaiSerialActionFR4Teki:
/* 80126E60 00123DC0  7C 08 02 A6 */	mflr r0
/* 80126E64 00123DC4  90 01 00 04 */	stw r0, 4(r1)
/* 80126E68 00123DC8  38 00 00 00 */	li r0, 0
/* 80126E6C 00123DCC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80126E70 00123DD0  90 04 03 34 */	stw r0, 0x334(r4)
/* 80126E74 00123DD4  80 04 03 34 */	lwz r0, 0x334(r4)
/* 80126E78 00123DD8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80126E7C 00123DDC  54 00 10 3A */	slwi r0, r0, 2
/* 80126E80 00123DE0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80126E84 00123DE4  81 83 00 04 */	lwz r12, 4(r3)
/* 80126E88 00123DE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80126E8C 00123DEC  7D 88 03 A6 */	mtlr r12
/* 80126E90 00123DF0  4E 80 00 21 */	blrl 
/* 80126E94 00123DF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80126E98 00123DF8  38 21 00 08 */	addi r1, r1, 8
/* 80126E9C 00123DFC  7C 08 03 A6 */	mtlr r0
/* 80126EA0 00123E00  4E 80 00 20 */	blr 

.global start__9TaiActionFR4Teki
start__9TaiActionFR4Teki:
/* 80126EA4 00123E04  4E 80 00 20 */	blr 

.global finish__15TaiSerialActionFR4Teki
finish__15TaiSerialActionFR4Teki:
/* 80126EA8 00123E08  7C 08 02 A6 */	mflr r0
/* 80126EAC 00123E0C  90 01 00 04 */	stw r0, 4(r1)
/* 80126EB0 00123E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80126EB4 00123E14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80126EB8 00123E18  3B E0 00 00 */	li r31, 0
/* 80126EBC 00123E1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80126EC0 00123E20  3B C0 00 00 */	li r30, 0
/* 80126EC4 00123E24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80126EC8 00123E28  3B A4 00 00 */	addi r29, r4, 0
/* 80126ECC 00123E2C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80126ED0 00123E30  3B 83 00 00 */	addi r28, r3, 0
/* 80126ED4 00123E34  48 00 00 28 */	b .L_80126EFC
.L_80126ED8:
/* 80126ED8 00123E38  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80126EDC 00123E3C  7F A4 EB 78 */	mr r4, r29
/* 80126EE0 00123E40  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80126EE4 00123E44  81 83 00 04 */	lwz r12, 4(r3)
/* 80126EE8 00123E48  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80126EEC 00123E4C  7D 88 03 A6 */	mtlr r12
/* 80126EF0 00123E50  4E 80 00 21 */	blrl 
/* 80126EF4 00123E54  3B FF 00 04 */	addi r31, r31, 4
/* 80126EF8 00123E58  3B DE 00 01 */	addi r30, r30, 1
.L_80126EFC:
/* 80126EFC 00123E5C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80126F00 00123E60  7C 1E 00 00 */	cmpw r30, r0
/* 80126F04 00123E64  41 80 FF D4 */	blt .L_80126ED8
/* 80126F08 00123E68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80126F0C 00123E6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80126F10 00123E70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80126F14 00123E74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80126F18 00123E78  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80126F1C 00123E7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80126F20 00123E80  7C 08 03 A6 */	mtlr r0
/* 80126F24 00123E84  4E 80 00 20 */	blr 

.global finish__9TaiActionFR4Teki
finish__9TaiActionFR4Teki:
/* 80126F28 00123E88  4E 80 00 20 */	blr 

.global act__15TaiSerialActionFR4Teki
act__15TaiSerialActionFR4Teki:
/* 80126F2C 00123E8C  7C 08 02 A6 */	mflr r0
/* 80126F30 00123E90  90 01 00 04 */	stw r0, 4(r1)
/* 80126F34 00123E94  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80126F38 00123E98  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80126F3C 00123E9C  3B E4 00 00 */	addi r31, r4, 0
/* 80126F40 00123EA0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80126F44 00123EA4  3B C3 00 00 */	addi r30, r3, 0
/* 80126F48 00123EA8  80 04 03 34 */	lwz r0, 0x334(r4)
/* 80126F4C 00123EAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80126F50 00123EB0  54 00 10 3A */	slwi r0, r0, 2
/* 80126F54 00123EB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80126F58 00123EB8  81 83 00 04 */	lwz r12, 4(r3)
/* 80126F5C 00123EBC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80126F60 00123EC0  7D 88 03 A6 */	mtlr r12
/* 80126F64 00123EC4  4E 80 00 21 */	blrl 
/* 80126F68 00123EC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80126F6C 00123ECC  41 82 00 4C */	beq .L_80126FB8
/* 80126F70 00123ED0  80 7E 00 08 */	lwz r3, 8(r30)
/* 80126F74 00123ED4  80 9F 03 34 */	lwz r4, 0x334(r31)
/* 80126F78 00123ED8  38 03 FF FF */	addi r0, r3, -1
/* 80126F7C 00123EDC  7C 04 00 00 */	cmpw r4, r0
/* 80126F80 00123EE0  40 82 00 0C */	bne .L_80126F8C
/* 80126F84 00123EE4  38 60 00 01 */	li r3, 1
/* 80126F88 00123EE8  48 00 00 34 */	b .L_80126FBC
.L_80126F8C:
/* 80126F8C 00123EEC  38 04 00 01 */	addi r0, r4, 1
/* 80126F90 00123EF0  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80126F94 00123EF4  7F E4 FB 78 */	mr r4, r31
/* 80126F98 00123EF8  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80126F9C 00123EFC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80126FA0 00123F00  54 00 10 3A */	slwi r0, r0, 2
/* 80126FA4 00123F04  7C 63 00 2E */	lwzx r3, r3, r0
/* 80126FA8 00123F08  81 83 00 04 */	lwz r12, 4(r3)
/* 80126FAC 00123F0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80126FB0 00123F10  7D 88 03 A6 */	mtlr r12
/* 80126FB4 00123F14  4E 80 00 21 */	blrl 
.L_80126FB8:
/* 80126FB8 00123F18  38 60 00 00 */	li r3, 0
.L_80126FBC:
/* 80126FBC 00123F1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80126FC0 00123F20  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80126FC4 00123F24  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80126FC8 00123F28  38 21 00 18 */	addi r1, r1, 0x18
/* 80126FCC 00123F2C  7C 08 03 A6 */	mtlr r0
/* 80126FD0 00123F30  4E 80 00 20 */	blr 

.global act__9TaiActionFR4Teki
act__9TaiActionFR4Teki:
/* 80126FD4 00123F34  38 60 00 00 */	li r3, 0
/* 80126FD8 00123F38  4E 80 00 20 */	blr 

.global actByEvent__15TaiSerialActionFR9TekiEvent
actByEvent__15TaiSerialActionFR9TekiEvent:
/* 80126FDC 00123F3C  7C 08 02 A6 */	mflr r0
/* 80126FE0 00123F40  90 01 00 04 */	stw r0, 4(r1)
/* 80126FE4 00123F44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80126FE8 00123F48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80126FEC 00123F4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80126FF0 00123F50  7C 9E 23 78 */	mr r30, r4
/* 80126FF4 00123F54  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80126FF8 00123F58  7C 7D 1B 78 */	mr r29, r3
/* 80126FFC 00123F5C  83 E4 00 04 */	lwz r31, 4(r4)
/* 80127000 00123F60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80127004 00123F64  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80127008 00123F68  54 00 10 3A */	slwi r0, r0, 2
/* 8012700C 00123F6C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80127010 00123F70  81 83 00 04 */	lwz r12, 4(r3)
/* 80127014 00123F74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80127018 00123F78  7D 88 03 A6 */	mtlr r12
/* 8012701C 00123F7C  4E 80 00 21 */	blrl 
/* 80127020 00123F80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80127024 00123F84  41 82 00 4C */	beq .L_80127070
/* 80127028 00123F88  80 7D 00 08 */	lwz r3, 8(r29)
/* 8012702C 00123F8C  80 9F 03 34 */	lwz r4, 0x334(r31)
/* 80127030 00123F90  38 03 FF FF */	addi r0, r3, -1
/* 80127034 00123F94  7C 04 00 00 */	cmpw r4, r0
/* 80127038 00123F98  40 82 00 0C */	bne .L_80127044
/* 8012703C 00123F9C  38 60 00 01 */	li r3, 1
/* 80127040 00123FA0  48 00 00 34 */	b .L_80127074
.L_80127044:
/* 80127044 00123FA4  38 04 00 01 */	addi r0, r4, 1
/* 80127048 00123FA8  90 1F 03 34 */	stw r0, 0x334(r31)
/* 8012704C 00123FAC  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80127050 00123FB0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80127054 00123FB4  54 00 10 3A */	slwi r0, r0, 2
/* 80127058 00123FB8  80 9E 00 04 */	lwz r4, 4(r30)
/* 8012705C 00123FBC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80127060 00123FC0  81 83 00 04 */	lwz r12, 4(r3)
/* 80127064 00123FC4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80127068 00123FC8  7D 88 03 A6 */	mtlr r12
/* 8012706C 00123FCC  4E 80 00 21 */	blrl 
.L_80127070:
/* 80127070 00123FD0  38 60 00 00 */	li r3, 0
.L_80127074:
/* 80127074 00123FD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80127078 00123FD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012707C 00123FDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80127080 00123FE0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80127084 00123FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80127088 00123FE8  7C 08 03 A6 */	mtlr r0
/* 8012708C 00123FEC  4E 80 00 20 */	blr 

.global actByEvent__9TaiActionFR9TekiEvent
actByEvent__9TaiActionFR9TekiEvent:
/* 80127090 00123FF0  38 60 00 00 */	li r3, 0
/* 80127094 00123FF4  4E 80 00 20 */	blr 

.global __ct__8TaiStateFi
__ct__8TaiStateFi:
/* 80127098 00123FF8  7C 08 02 A6 */	mflr r0
/* 8012709C 00123FFC  3C A0 80 2C */	lis r5, __vt__8TaiState@ha
/* 801270A0 00124000  90 01 00 04 */	stw r0, 4(r1)
/* 801270A4 00124004  38 05 65 C4 */	addi r0, r5, __vt__8TaiState@l
/* 801270A8 00124008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801270AC 0012400C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801270B0 00124010  3B E3 00 00 */	addi r31, r3, 0
/* 801270B4 00124014  90 03 00 00 */	stw r0, 0(r3)
/* 801270B8 00124018  90 83 00 04 */	stw r4, 4(r3)
/* 801270BC 0012401C  80 03 00 04 */	lwz r0, 4(r3)
/* 801270C0 00124020  54 03 10 3A */	slwi r3, r0, 2
/* 801270C4 00124024  4B F1 FF 41 */	bl alloc__6SystemFUl
/* 801270C8 00124028  90 7F 00 08 */	stw r3, 8(r31)
/* 801270CC 0012402C  7F E3 FB 78 */	mr r3, r31
/* 801270D0 00124030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801270D4 00124034  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801270D8 00124038  38 21 00 20 */	addi r1, r1, 0x20
/* 801270DC 0012403C  7C 08 03 A6 */	mtlr r0
/* 801270E0 00124040  4E 80 00 20 */	blr 

.global start__8TaiStateFR4Teki
start__8TaiStateFR4Teki:
/* 801270E4 00124044  7C 08 02 A6 */	mflr r0
/* 801270E8 00124048  90 01 00 04 */	stw r0, 4(r1)
/* 801270EC 0012404C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801270F0 00124050  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801270F4 00124054  3B E0 00 00 */	li r31, 0
/* 801270F8 00124058  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801270FC 0012405C  3B C0 00 00 */	li r30, 0
/* 80127100 00124060  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80127104 00124064  3B A4 00 00 */	addi r29, r4, 0
/* 80127108 00124068  93 81 00 10 */	stw r28, 0x10(r1)
/* 8012710C 0012406C  3B 83 00 00 */	addi r28, r3, 0
/* 80127110 00124070  48 00 00 28 */	b .L_80127138
.L_80127114:
/* 80127114 00124074  80 7C 00 08 */	lwz r3, 8(r28)
/* 80127118 00124078  7F A4 EB 78 */	mr r4, r29
/* 8012711C 0012407C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80127120 00124080  81 83 00 04 */	lwz r12, 4(r3)
/* 80127124 00124084  81 8C 00 08 */	lwz r12, 8(r12)
/* 80127128 00124088  7D 88 03 A6 */	mtlr r12
/* 8012712C 0012408C  4E 80 00 21 */	blrl 
/* 80127130 00124090  3B FF 00 04 */	addi r31, r31, 4
/* 80127134 00124094  3B DE 00 01 */	addi r30, r30, 1
.L_80127138:
/* 80127138 00124098  80 1C 00 04 */	lwz r0, 4(r28)
/* 8012713C 0012409C  7C 1E 00 00 */	cmpw r30, r0
/* 80127140 001240A0  41 80 FF D4 */	blt .L_80127114
/* 80127144 001240A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80127148 001240A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012714C 001240AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80127150 001240B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80127154 001240B4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80127158 001240B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8012715C 001240BC  7C 08 03 A6 */	mtlr r0
/* 80127160 001240C0  4E 80 00 20 */	blr 

.global finish__8TaiStateFR4Teki
finish__8TaiStateFR4Teki:
/* 80127164 001240C4  7C 08 02 A6 */	mflr r0
/* 80127168 001240C8  90 01 00 04 */	stw r0, 4(r1)
/* 8012716C 001240CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80127170 001240D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80127174 001240D4  3B E0 00 00 */	li r31, 0
/* 80127178 001240D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8012717C 001240DC  3B C0 00 00 */	li r30, 0
/* 80127180 001240E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80127184 001240E4  3B A4 00 00 */	addi r29, r4, 0
/* 80127188 001240E8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8012718C 001240EC  3B 83 00 00 */	addi r28, r3, 0
/* 80127190 001240F0  48 00 00 28 */	b .L_801271B8
.L_80127194:
/* 80127194 001240F4  80 7C 00 08 */	lwz r3, 8(r28)
/* 80127198 001240F8  7F A4 EB 78 */	mr r4, r29
/* 8012719C 001240FC  7C 63 F8 2E */	lwzx r3, r3, r31
/* 801271A0 00124100  81 83 00 04 */	lwz r12, 4(r3)
/* 801271A4 00124104  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801271A8 00124108  7D 88 03 A6 */	mtlr r12
/* 801271AC 0012410C  4E 80 00 21 */	blrl 
/* 801271B0 00124110  3B FF 00 04 */	addi r31, r31, 4
/* 801271B4 00124114  3B DE 00 01 */	addi r30, r30, 1
.L_801271B8:
/* 801271B8 00124118  80 1C 00 04 */	lwz r0, 4(r28)
/* 801271BC 0012411C  7C 1E 00 00 */	cmpw r30, r0
/* 801271C0 00124120  41 80 FF D4 */	blt .L_80127194
/* 801271C4 00124124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801271C8 00124128  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801271CC 0012412C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801271D0 00124130  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801271D4 00124134  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801271D8 00124138  38 21 00 20 */	addi r1, r1, 0x20
/* 801271DC 0012413C  7C 08 03 A6 */	mtlr r0
/* 801271E0 00124140  4E 80 00 20 */	blr 

.global act__8TaiStateFR4Teki
act__8TaiStateFR4Teki:
/* 801271E4 00124144  7C 08 02 A6 */	mflr r0
/* 801271E8 00124148  90 01 00 04 */	stw r0, 4(r1)
/* 801271EC 0012414C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801271F0 00124150  93 E1 00 34 */	stw r31, 0x34(r1)
/* 801271F4 00124154  3B E0 00 00 */	li r31, 0
/* 801271F8 00124158  93 C1 00 30 */	stw r30, 0x30(r1)
/* 801271FC 0012415C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80127200 00124160  93 81 00 28 */	stw r28, 0x28(r1)
/* 80127204 00124164  3B 83 00 00 */	addi r28, r3, 0
/* 80127208 00124168  90 81 00 0C */	stw r4, 0xc(r1)
/* 8012720C 0012416C  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 80127210 00124170  93 E1 00 20 */	stw r31, 0x20(r1)
/* 80127214 00124174  48 00 00 88 */	b .L_8012729C
.L_80127218:
/* 80127218 00124178  80 7C 00 08 */	lwz r3, 8(r28)
/* 8012721C 0012417C  7F C4 F3 78 */	mr r4, r30
/* 80127220 00124180  7F A3 F8 2E */	lwzx r29, r3, r31
/* 80127224 00124184  7F A3 EB 78 */	mr r3, r29
/* 80127228 00124188  81 9D 00 04 */	lwz r12, 4(r29)
/* 8012722C 0012418C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80127230 00124190  7D 88 03 A6 */	mtlr r12
/* 80127234 00124194  4E 80 00 21 */	blrl 
/* 80127238 00124198  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012723C 0012419C  41 82 00 50 */	beq .L_8012728C
/* 80127240 001241A0  7F A3 EB 78 */	mr r3, r29
/* 80127244 001241A4  81 9D 00 04 */	lwz r12, 4(r29)
/* 80127248 001241A8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8012724C 001241AC  7D 88 03 A6 */	mtlr r12
/* 80127250 001241B0  4E 80 00 21 */	blrl 
/* 80127254 001241B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80127258 001241B8  41 82 00 34 */	beq .L_8012728C
/* 8012725C 001241BC  80 1D 00 00 */	lwz r0, 0(r29)
/* 80127260 001241C0  38 7E 03 24 */	addi r3, r30, 0x324
/* 80127264 001241C4  80 9E 03 24 */	lwz r4, 0x324(r30)
/* 80127268 001241C8  2C 00 FF FE */	cmpwi r0, -2
/* 8012726C 001241CC  40 82 00 10 */	bne .L_8012727C
/* 80127270 001241D0  80 1E 03 30 */	lwz r0, 0x330(r30)
/* 80127274 001241D4  90 03 00 00 */	stw r0, 0(r3)
/* 80127278 001241D8  48 00 00 08 */	b .L_80127280
.L_8012727C:
/* 8012727C 001241DC  90 03 00 00 */	stw r0, 0(r3)
.L_80127280:
/* 80127280 001241E0  90 9E 03 30 */	stw r4, 0x330(r30)
/* 80127284 001241E4  38 60 00 01 */	li r3, 1
/* 80127288 001241E8  48 00 00 28 */	b .L_801272B0
.L_8012728C:
/* 8012728C 001241EC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80127290 001241F0  3B FF 00 04 */	addi r31, r31, 4
/* 80127294 001241F4  38 03 00 01 */	addi r0, r3, 1
/* 80127298 001241F8  90 01 00 20 */	stw r0, 0x20(r1)
.L_8012729C:
/* 8012729C 001241FC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801272A0 00124200  80 1C 00 04 */	lwz r0, 4(r28)
/* 801272A4 00124204  7C 03 00 00 */	cmpw r3, r0
/* 801272A8 00124208  41 80 FF 70 */	blt .L_80127218
/* 801272AC 0012420C  38 60 00 00 */	li r3, 0
.L_801272B0:
/* 801272B0 00124210  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801272B4 00124214  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 801272B8 00124218  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 801272BC 0012421C  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 801272C0 00124220  83 81 00 28 */	lwz r28, 0x28(r1)
/* 801272C4 00124224  38 21 00 38 */	addi r1, r1, 0x38
/* 801272C8 00124228  7C 08 03 A6 */	mtlr r0
/* 801272CC 0012422C  4E 80 00 20 */	blr 

.global hasNextState__9TaiActionFv
hasNextState__9TaiActionFv:
/* 801272D0 00124230  80 03 00 00 */	lwz r0, 0(r3)
/* 801272D4 00124234  38 60 00 01 */	li r3, 1
/* 801272D8 00124238  2C 00 00 00 */	cmpwi r0, 0
/* 801272DC 0012423C  4C 80 00 20 */	bgelr 
/* 801272E0 00124240  2C 00 FF FE */	cmpwi r0, -2
/* 801272E4 00124244  4D 82 00 20 */	beqlr 
/* 801272E8 00124248  38 60 00 00 */	li r3, 0
/* 801272EC 0012424C  4E 80 00 20 */	blr 

.global eventPerformed__8TaiStateFR9TekiEvent
eventPerformed__8TaiStateFR9TekiEvent:
/* 801272F0 00124250  7C 08 02 A6 */	mflr r0
/* 801272F4 00124254  90 01 00 04 */	stw r0, 4(r1)
/* 801272F8 00124258  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801272FC 0012425C  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80127300 00124260  3B E0 00 00 */	li r31, 0
/* 80127304 00124264  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80127308 00124268  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 8012730C 0012426C  3B A4 00 00 */	addi r29, r4, 0
/* 80127310 00124270  93 81 00 28 */	stw r28, 0x28(r1)
/* 80127314 00124274  3B 83 00 00 */	addi r28, r3, 0
/* 80127318 00124278  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8012731C 0012427C  48 00 00 94 */	b .L_801273B0
.L_80127320:
/* 80127320 00124280  80 7C 00 08 */	lwz r3, 8(r28)
/* 80127324 00124284  7F A4 EB 78 */	mr r4, r29
/* 80127328 00124288  7F C3 F8 2E */	lwzx r30, r3, r31
/* 8012732C 0012428C  7F C3 F3 78 */	mr r3, r30
/* 80127330 00124290  81 9E 00 04 */	lwz r12, 4(r30)
/* 80127334 00124294  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80127338 00124298  7D 88 03 A6 */	mtlr r12
/* 8012733C 0012429C  4E 80 00 21 */	blrl 
/* 80127340 001242A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80127344 001242A4  41 82 00 5C */	beq .L_801273A0
/* 80127348 001242A8  7F C3 F3 78 */	mr r3, r30
/* 8012734C 001242AC  81 9E 00 04 */	lwz r12, 4(r30)
/* 80127350 001242B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80127354 001242B4  7D 88 03 A6 */	mtlr r12
/* 80127358 001242B8  4E 80 00 21 */	blrl 
/* 8012735C 001242BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80127360 001242C0  41 82 00 40 */	beq .L_801273A0
/* 80127364 001242C4  80 7D 00 04 */	lwz r3, 4(r29)
/* 80127368 001242C8  90 61 00 20 */	stw r3, 0x20(r1)
/* 8012736C 001242CC  38 83 03 24 */	addi r4, r3, 0x324
/* 80127370 001242D0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80127374 001242D4  80 A3 03 24 */	lwz r5, 0x324(r3)
/* 80127378 001242D8  2C 00 FF FE */	cmpwi r0, -2
/* 8012737C 001242DC  40 82 00 10 */	bne .L_8012738C
/* 80127380 001242E0  80 03 03 30 */	lwz r0, 0x330(r3)
/* 80127384 001242E4  90 04 00 00 */	stw r0, 0(r4)
/* 80127388 001242E8  48 00 00 08 */	b .L_80127390
.L_8012738C:
/* 8012738C 001242EC  90 04 00 00 */	stw r0, 0(r4)
.L_80127390:
/* 80127390 001242F0  80 9D 00 04 */	lwz r4, 4(r29)
/* 80127394 001242F4  38 60 00 01 */	li r3, 1
/* 80127398 001242F8  90 A4 03 30 */	stw r5, 0x330(r4)
/* 8012739C 001242FC  48 00 00 28 */	b .L_801273C4
.L_801273A0:
/* 801273A0 00124300  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801273A4 00124304  3B FF 00 04 */	addi r31, r31, 4
/* 801273A8 00124308  38 03 00 01 */	addi r0, r3, 1
/* 801273AC 0012430C  90 01 00 24 */	stw r0, 0x24(r1)
.L_801273B0:
/* 801273B0 00124310  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801273B4 00124314  80 1C 00 04 */	lwz r0, 4(r28)
/* 801273B8 00124318  7C 03 00 00 */	cmpw r3, r0
/* 801273BC 0012431C  41 80 FF 64 */	blt .L_80127320
/* 801273C0 00124320  38 60 00 00 */	li r3, 0
.L_801273C4:
/* 801273C4 00124324  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801273C8 00124328  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 801273CC 0012432C  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 801273D0 00124330  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 801273D4 00124334  83 81 00 28 */	lwz r28, 0x28(r1)
/* 801273D8 00124338  38 21 00 38 */	addi r1, r1, 0x38
/* 801273DC 0012433C  7C 08 03 A6 */	mtlr r0
/* 801273E0 00124340  4E 80 00 20 */	blr 

.global __ct__11TaiStrategyFii
__ct__11TaiStrategyFii:
/* 801273E4 00124344  7C 08 02 A6 */	mflr r0
/* 801273E8 00124348  90 01 00 04 */	stw r0, 4(r1)
/* 801273EC 0012434C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801273F0 00124350  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801273F4 00124354  3B E5 00 00 */	addi r31, r5, 0
/* 801273F8 00124358  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801273FC 0012435C  3B C4 00 00 */	addi r30, r4, 0
/* 80127400 00124360  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80127404 00124364  3B A3 00 00 */	addi r29, r3, 0
/* 80127408 00124368  48 02 5D 9D */	bl __ct__12TekiStrategyFv
/* 8012740C 0012436C  3C 60 80 2C */	lis r3, __vt__11TaiStrategy@ha
/* 80127410 00124370  38 03 65 90 */	addi r0, r3, __vt__11TaiStrategy@l
/* 80127414 00124374  90 1D 00 00 */	stw r0, 0(r29)
/* 80127418 00124378  38 7D 00 00 */	addi r3, r29, 0
/* 8012741C 0012437C  38 9E 00 00 */	addi r4, r30, 0
/* 80127420 00124380  38 BF 00 00 */	addi r5, r31, 0
/* 80127424 00124384  48 00 00 25 */	bl init__11TaiStrategyFii
/* 80127428 00124388  7F A3 EB 78 */	mr r3, r29
/* 8012742C 0012438C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80127430 00124390  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80127434 00124394  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80127438 00124398  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8012743C 0012439C  38 21 00 28 */	addi r1, r1, 0x28
/* 80127440 001243A0  7C 08 03 A6 */	mtlr r0
/* 80127444 001243A4  4E 80 00 20 */	blr 

.global init__11TaiStrategyFii
init__11TaiStrategyFii:
/* 80127448 001243A8  7C 08 02 A6 */	mflr r0
/* 8012744C 001243AC  90 01 00 04 */	stw r0, 4(r1)
/* 80127450 001243B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80127454 001243B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80127458 001243B8  7C BF 2B 78 */	mr r31, r5
/* 8012745C 001243BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80127460 001243C0  7C 7E 1B 78 */	mr r30, r3
/* 80127464 001243C4  90 83 00 04 */	stw r4, 4(r3)
/* 80127468 001243C8  80 03 00 04 */	lwz r0, 4(r3)
/* 8012746C 001243CC  54 03 10 3A */	slwi r3, r0, 2
/* 80127470 001243D0  4B F1 FB 95 */	bl alloc__6SystemFUl
/* 80127474 001243D4  90 7E 00 08 */	stw r3, 8(r30)
/* 80127478 001243D8  93 FE 00 0C */	stw r31, 0xc(r30)
/* 8012747C 001243DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80127480 001243E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80127484 001243E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80127488 001243E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8012748C 001243EC  7C 08 03 A6 */	mtlr r0
/* 80127490 001243F0  4E 80 00 20 */	blr 

.global start__11TaiStrategyFR4Teki
start__11TaiStrategyFR4Teki:
/* 80127494 001243F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80127498 001243F8  38 00 00 01 */	li r0, 1
/* 8012749C 001243FC  90 64 03 24 */	stw r3, 0x324(r4)
/* 801274A0 00124400  98 04 03 28 */	stb r0, 0x328(r4)
/* 801274A4 00124404  4E 80 00 20 */	blr 

.global act__11TaiStrategyFR4Teki
act__11TaiStrategyFR4Teki:
/* 801274A8 00124408  7C 08 02 A6 */	mflr r0
/* 801274AC 0012440C  90 01 00 04 */	stw r0, 4(r1)
/* 801274B0 00124410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801274B4 00124414  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801274B8 00124418  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801274BC 0012441C  7C 9E 23 78 */	mr r30, r4
/* 801274C0 00124420  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801274C4 00124424  3B A3 00 00 */	addi r29, r3, 0
/* 801274C8 00124428  88 04 03 28 */	lbz r0, 0x328(r4)
/* 801274CC 0012442C  28 00 00 00 */	cmplwi r0, 0
/* 801274D0 00124430  41 82 00 30 */	beq .L_80127500
/* 801274D4 00124434  80 1E 03 24 */	lwz r0, 0x324(r30)
/* 801274D8 00124438  7F C4 F3 78 */	mr r4, r30
/* 801274DC 0012443C  80 7D 00 08 */	lwz r3, 8(r29)
/* 801274E0 00124440  54 00 10 3A */	slwi r0, r0, 2
/* 801274E4 00124444  7C 63 00 2E */	lwzx r3, r3, r0
/* 801274E8 00124448  81 83 00 00 */	lwz r12, 0(r3)
/* 801274EC 0012444C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801274F0 00124450  7D 88 03 A6 */	mtlr r12
/* 801274F4 00124454  4E 80 00 21 */	blrl 
/* 801274F8 00124458  38 00 00 00 */	li r0, 0
/* 801274FC 0012445C  98 1E 03 28 */	stb r0, 0x328(r30)
.L_80127500:
/* 80127500 00124460  80 1E 03 24 */	lwz r0, 0x324(r30)
/* 80127504 00124464  7F C4 F3 78 */	mr r4, r30
/* 80127508 00124468  80 7D 00 08 */	lwz r3, 8(r29)
/* 8012750C 0012446C  54 00 10 3A */	slwi r0, r0, 2
/* 80127510 00124470  83 FE 03 24 */	lwz r31, 0x324(r30)
/* 80127514 00124474  7C 63 00 2E */	lwzx r3, r3, r0
/* 80127518 00124478  81 83 00 00 */	lwz r12, 0(r3)
/* 8012751C 0012447C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80127520 00124480  7D 88 03 A6 */	mtlr r12
/* 80127524 00124484  4E 80 00 21 */	blrl 
/* 80127528 00124488  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012752C 0012448C  41 82 00 2C */	beq .L_80127558
/* 80127530 00124490  80 7D 00 08 */	lwz r3, 8(r29)
/* 80127534 00124494  57 E0 10 3A */	slwi r0, r31, 2
/* 80127538 00124498  38 9E 00 00 */	addi r4, r30, 0
/* 8012753C 0012449C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80127540 001244A0  81 83 00 00 */	lwz r12, 0(r3)
/* 80127544 001244A4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80127548 001244A8  7D 88 03 A6 */	mtlr r12
/* 8012754C 001244AC  4E 80 00 21 */	blrl 
/* 80127550 001244B0  38 00 00 01 */	li r0, 1
/* 80127554 001244B4  98 1E 03 28 */	stb r0, 0x328(r30)
.L_80127558:
/* 80127558 001244B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012755C 001244BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80127560 001244C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80127564 001244C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80127568 001244C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8012756C 001244CC  7C 08 03 A6 */	mtlr r0
/* 80127570 001244D0  4E 80 00 20 */	blr 

.global eventPerformed__11TaiStrategyFR9TekiEvent
eventPerformed__11TaiStrategyFR9TekiEvent:
/* 80127574 001244D4  7C 08 02 A6 */	mflr r0
/* 80127578 001244D8  90 01 00 04 */	stw r0, 4(r1)
/* 8012757C 001244DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80127580 001244E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80127584 001244E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80127588 001244E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8012758C 001244EC  7C 7D 1B 78 */	mr r29, r3
/* 80127590 001244F0  83 E4 00 04 */	lwz r31, 4(r4)
/* 80127594 001244F4  80 63 00 08 */	lwz r3, 8(r3)
/* 80127598 001244F8  80 1F 03 24 */	lwz r0, 0x324(r31)
/* 8012759C 001244FC  83 DF 03 24 */	lwz r30, 0x324(r31)
/* 801275A0 00124500  54 00 10 3A */	slwi r0, r0, 2
/* 801275A4 00124504  7C 63 00 2E */	lwzx r3, r3, r0
/* 801275A8 00124508  81 83 00 00 */	lwz r12, 0(r3)
/* 801275AC 0012450C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801275B0 00124510  7D 88 03 A6 */	mtlr r12
/* 801275B4 00124514  4E 80 00 21 */	blrl 
/* 801275B8 00124518  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801275BC 0012451C  41 82 00 2C */	beq .L_801275E8
/* 801275C0 00124520  80 7D 00 08 */	lwz r3, 8(r29)
/* 801275C4 00124524  57 C0 10 3A */	slwi r0, r30, 2
/* 801275C8 00124528  38 9F 00 00 */	addi r4, r31, 0
/* 801275CC 0012452C  7C 63 00 2E */	lwzx r3, r3, r0
/* 801275D0 00124530  81 83 00 00 */	lwz r12, 0(r3)
/* 801275D4 00124534  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801275D8 00124538  7D 88 03 A6 */	mtlr r12
/* 801275DC 0012453C  4E 80 00 21 */	blrl 
/* 801275E0 00124540  38 00 00 01 */	li r0, 1
/* 801275E4 00124544  98 1F 03 28 */	stb r0, 0x328(r31)
.L_801275E8:
/* 801275E8 00124548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801275EC 0012454C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801275F0 00124550  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801275F4 00124554  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801275F8 00124558  38 21 00 20 */	addi r1, r1, 0x20
/* 801275FC 0012455C  7C 08 03 A6 */	mtlr r0
/* 80127600 00124560  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802C6568:
	.asciz "TaiStrategy"
.balign 4
lbl_802C6574:
	.asciz "TekiStrategy"
.balign 4
lbl_802C6584:
	.4byte __RTTI__12TekiStrategy
	.4byte 0
	.4byte 0
.global __vt__11TaiStrategy
__vt__11TaiStrategy:
	.4byte __RTTI__11TaiStrategy
	.4byte 0
	.4byte start__11TaiStrategyFR4Teki
	.4byte act__11TaiStrategyFR4Teki
	.4byte eventPerformed__11TaiStrategyFR9TekiEvent
	.4byte createEffect__12TekiStrategyFR4Tekii
	.4byte draw__12TekiStrategyFR4TekiR8Graphics
	.4byte drawDebugInfo__12TekiStrategyFR4TekiR8Graphics
	.4byte interact__12TekiStrategyFR4TekiR18TekiInteractionKey
	.4byte spawnCorpseParts__12TekiStrategyFR4Teki
.balign 4
lbl_802C65B8:
	.asciz "TaiState"
.balign 4
.global __vt__8TaiState
__vt__8TaiState:
	.4byte __RTTI__8TaiState
	.4byte 0
	.4byte start__8TaiStateFR4Teki
	.4byte finish__8TaiStateFR4Teki
	.4byte act__8TaiStateFR4Teki
	.4byte eventPerformed__8TaiStateFR9TekiEvent
.balign 4
lbl_802C65DC:
	.asciz "TaiSerialAction"
.balign 4
lbl_802C65EC:
	.asciz "TaiAction"
.balign 4
lbl_802C65F8:
	.4byte __RTTI__9TaiAction
	.4byte 0
	.4byte 0
.global __vt__15TaiSerialAction
__vt__15TaiSerialAction:
	.4byte __RTTI__15TaiSerialAction
	.4byte 0
	.4byte start__15TaiSerialActionFR4Teki
	.4byte finish__15TaiSerialActionFR4Teki
	.4byte act__15TaiSerialActionFR4Teki
	.4byte actByEvent__15TaiSerialActionFR9TekiEvent
	.4byte hasNextState__9TaiActionFv
.global __vt__9TaiAction
__vt__9TaiAction:
	.4byte __RTTI__9TaiAction
	.4byte 0
	.4byte start__9TaiActionFR4Teki
	.4byte finish__9TaiActionFR4Teki
	.4byte act__9TaiActionFR4Teki
	.4byte actByEvent__9TaiActionFR9TekiEvent
	.4byte hasNextState__9TaiActionFv

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
__RTTI__12TekiStrategy:
	.4byte lbl_802C6574
	.4byte 0
__RTTI__11TaiStrategy:
	.4byte lbl_802C6568
	.4byte lbl_802C6584
__RTTI__8TaiState:
	.4byte lbl_802C65B8
	.4byte 0
__RTTI__9TaiAction:
	.4byte lbl_802C65EC
	.4byte 0
__RTTI__15TaiSerialAction:
	.4byte lbl_802C65DC
	.4byte lbl_802C65F8
