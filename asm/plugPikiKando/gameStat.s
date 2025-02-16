.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.fn init__8GameStatFv, global
/* 801124B8 0010F418  3C 60 80 3D */	lis r3, deadPikis__8GameStat@ha
/* 801124BC 0010F41C  38 63 1E 58 */	addi r3, r3, deadPikis__8GameStat@l
/* 801124C0 0010F420  38 00 00 00 */	li r0, 0
/* 801124C4 0010F424  90 03 00 08 */	stw r0, 8(r3)
/* 801124C8 0010F428  90 03 00 04 */	stw r0, 4(r3)
/* 801124CC 0010F42C  90 03 00 00 */	stw r0, 0(r3)
/* 801124D0 0010F430  90 03 00 14 */	stw r0, 0x14(r3)
/* 801124D4 0010F434  90 03 00 10 */	stw r0, 0x10(r3)
/* 801124D8 0010F438  90 03 00 0C */	stw r0, 0xc(r3)
/* 801124DC 0010F43C  90 0D 30 F8 */	stw r0, killTekis__8GameStat@sda21(r13)
/* 801124E0 0010F440  90 0D 30 FC */	stw r0, getPellets__8GameStat@sda21(r13)
/* 801124E4 0010F444  90 03 00 20 */	stw r0, 0x20(r3)
/* 801124E8 0010F448  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801124EC 0010F44C  90 03 00 18 */	stw r0, 0x18(r3)
/* 801124F0 0010F450  90 03 00 2C */	stw r0, 0x2c(r3)
/* 801124F4 0010F454  90 03 00 28 */	stw r0, 0x28(r3)
/* 801124F8 0010F458  90 03 00 24 */	stw r0, 0x24(r3)
/* 801124FC 0010F45C  90 03 00 38 */	stw r0, 0x38(r3)
/* 80112500 0010F460  90 03 00 34 */	stw r0, 0x34(r3)
/* 80112504 0010F464  90 03 00 30 */	stw r0, 0x30(r3)
/* 80112508 0010F468  90 03 00 44 */	stw r0, 0x44(r3)
/* 8011250C 0010F46C  90 03 00 40 */	stw r0, 0x40(r3)
/* 80112510 0010F470  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80112514 0010F474  90 03 00 50 */	stw r0, 0x50(r3)
/* 80112518 0010F478  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8011251C 0010F47C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80112520 0010F480  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80112524 0010F484  90 03 00 58 */	stw r0, 0x58(r3)
/* 80112528 0010F488  90 03 00 54 */	stw r0, 0x54(r3)
/* 8011252C 0010F48C  90 03 00 68 */	stw r0, 0x68(r3)
/* 80112530 0010F490  90 03 00 64 */	stw r0, 0x64(r3)
/* 80112534 0010F494  90 03 00 60 */	stw r0, 0x60(r3)
/* 80112538 0010F498  90 03 00 74 */	stw r0, 0x74(r3)
/* 8011253C 0010F49C  90 03 00 70 */	stw r0, 0x70(r3)
/* 80112540 0010F4A0  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80112544 0010F4A4  90 03 00 80 */	stw r0, 0x80(r3)
/* 80112548 0010F4A8  90 03 00 7C */	stw r0, 0x7c(r3)
/* 8011254C 0010F4AC  90 03 00 78 */	stw r0, 0x78(r3)
/* 80112550 0010F4B0  90 0D 31 04 */	stw r0, maxPikis__8GameStat@sda21(r13)
/* 80112554 0010F4B4  90 0D 31 00 */	stw r0, minPikis__8GameStat@sda21(r13)
/* 80112558 0010F4B8  98 0D 31 08 */	stb r0, orimaDead__8GameStat@sda21(r13)
/* 8011255C 0010F4BC  4E 80 00 20 */	blr 
.endfn init__8GameStatFv

.fn update__8GameStatFv, global
/* 80112560 0010F4C0  3C 60 80 3D */	lis r3, deadPikis__8GameStat@ha
/* 80112564 0010F4C4  38 A3 1E 58 */	addi r5, r3, deadPikis__8GameStat@l
/* 80112568 0010F4C8  80 05 00 24 */	lwz r0, 0x24(r5)
/* 8011256C 0010F4CC  80 65 00 3C */	lwz r3, 0x3c(r5)
/* 80112570 0010F4D0  80 85 00 30 */	lwz r4, 0x30(r5)
/* 80112574 0010F4D4  7C 00 1A 14 */	add r0, r0, r3
/* 80112578 0010F4D8  80 65 00 18 */	lwz r3, 0x18(r5)
/* 8011257C 0010F4DC  7C 00 22 14 */	add r0, r0, r4
/* 80112580 0010F4E0  7C 03 02 14 */	add r0, r3, r0
/* 80112584 0010F4E4  90 05 00 6C */	stw r0, 0x6c(r5)
/* 80112588 0010F4E8  80 65 00 40 */	lwz r3, 0x40(r5)
/* 8011258C 0010F4EC  80 05 00 28 */	lwz r0, 0x28(r5)
/* 80112590 0010F4F0  80 85 00 34 */	lwz r4, 0x34(r5)
/* 80112594 0010F4F4  7C 00 1A 14 */	add r0, r0, r3
/* 80112598 0010F4F8  80 65 00 1C */	lwz r3, 0x1c(r5)
/* 8011259C 0010F4FC  7C 00 22 14 */	add r0, r0, r4
/* 801125A0 0010F500  7C 03 02 14 */	add r0, r3, r0
/* 801125A4 0010F504  90 05 00 70 */	stw r0, 0x70(r5)
/* 801125A8 0010F508  80 65 00 44 */	lwz r3, 0x44(r5)
/* 801125AC 0010F50C  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 801125B0 0010F510  80 85 00 38 */	lwz r4, 0x38(r5)
/* 801125B4 0010F514  7C 00 1A 14 */	add r0, r0, r3
/* 801125B8 0010F518  80 65 00 20 */	lwz r3, 0x20(r5)
/* 801125BC 0010F51C  7C 00 22 14 */	add r0, r0, r4
/* 801125C0 0010F520  7C 03 02 14 */	add r0, r3, r0
/* 801125C4 0010F524  90 05 00 74 */	stw r0, 0x74(r5)
/* 801125C8 0010F528  38 85 00 80 */	addi r4, r5, 0x80
/* 801125CC 0010F52C  80 65 00 6C */	lwz r3, 0x6c(r5)
/* 801125D0 0010F530  80 05 00 48 */	lwz r0, 0x48(r5)
/* 801125D4 0010F534  7C 03 02 14 */	add r0, r3, r0
/* 801125D8 0010F538  90 05 00 78 */	stw r0, 0x78(r5)
/* 801125DC 0010F53C  80 65 00 70 */	lwz r3, 0x70(r5)
/* 801125E0 0010F540  80 05 00 4C */	lwz r0, 0x4c(r5)
/* 801125E4 0010F544  7C 03 02 14 */	add r0, r3, r0
/* 801125E8 0010F548  90 05 00 7C */	stw r0, 0x7c(r5)
/* 801125EC 0010F54C  80 65 00 74 */	lwz r3, 0x74(r5)
/* 801125F0 0010F550  80 05 00 50 */	lwz r0, 0x50(r5)
/* 801125F4 0010F554  7C 03 02 14 */	add r0, r3, r0
/* 801125F8 0010F558  90 05 00 80 */	stw r0, 0x80(r5)
/* 801125FC 0010F55C  80 84 00 00 */	lwz r4, 0(r4)
/* 80112600 0010F560  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 80112604 0010F564  80 65 00 78 */	lwz r3, 0x78(r5)
/* 80112608 0010F568  7C 80 22 14 */	add r4, r0, r4
/* 8011260C 0010F56C  80 0D 31 04 */	lwz r0, maxPikis__8GameStat@sda21(r13)
/* 80112610 0010F570  7C 83 22 14 */	add r4, r3, r4
/* 80112614 0010F574  7C 04 00 00 */	cmpw r4, r0
/* 80112618 0010F578  4C 81 00 20 */	blelr 
/* 8011261C 0010F57C  90 8D 31 04 */	stw r4, maxPikis__8GameStat@sda21(r13)
/* 80112620 0010F580  4E 80 00 20 */	blr 
.endfn update__8GameStatFv

.fn dump__8GameStatFv, global
/* 80112624 0010F584  4E 80 00 20 */	blr 
.endfn dump__8GameStatFv

.fn __sinit_gameStat_cpp, local
/* 80112628 0010F588  3C 60 80 3D */	lis r3, deadPikis__8GameStat@ha
/* 8011262C 0010F58C  38 63 1E 58 */	addi r3, r3, deadPikis__8GameStat@l
/* 80112630 0010F590  38 00 00 00 */	li r0, 0
/* 80112634 0010F594  90 03 00 08 */	stw r0, 8(r3)
/* 80112638 0010F598  90 03 00 04 */	stw r0, 4(r3)
/* 8011263C 0010F59C  90 03 00 00 */	stw r0, 0(r3)
/* 80112640 0010F5A0  90 03 00 14 */	stw r0, 0x14(r3)
/* 80112644 0010F5A4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80112648 0010F5A8  90 03 00 0C */	stw r0, 0xc(r3)
/* 8011264C 0010F5AC  90 0D 30 F8 */	stw r0, killTekis__8GameStat@sda21(r13)
/* 80112650 0010F5B0  90 0D 30 FC */	stw r0, getPellets__8GameStat@sda21(r13)
/* 80112654 0010F5B4  90 03 00 20 */	stw r0, 0x20(r3)
/* 80112658 0010F5B8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8011265C 0010F5BC  90 03 00 18 */	stw r0, 0x18(r3)
/* 80112660 0010F5C0  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80112664 0010F5C4  90 03 00 28 */	stw r0, 0x28(r3)
/* 80112668 0010F5C8  90 03 00 24 */	stw r0, 0x24(r3)
/* 8011266C 0010F5CC  90 03 00 38 */	stw r0, 0x38(r3)
/* 80112670 0010F5D0  90 03 00 34 */	stw r0, 0x34(r3)
/* 80112674 0010F5D4  90 03 00 30 */	stw r0, 0x30(r3)
/* 80112678 0010F5D8  90 03 00 44 */	stw r0, 0x44(r3)
/* 8011267C 0010F5DC  90 03 00 40 */	stw r0, 0x40(r3)
/* 80112680 0010F5E0  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80112684 0010F5E4  90 03 00 50 */	stw r0, 0x50(r3)
/* 80112688 0010F5E8  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8011268C 0010F5EC  90 03 00 48 */	stw r0, 0x48(r3)
/* 80112690 0010F5F0  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80112694 0010F5F4  90 03 00 58 */	stw r0, 0x58(r3)
/* 80112698 0010F5F8  90 03 00 54 */	stw r0, 0x54(r3)
/* 8011269C 0010F5FC  90 03 00 68 */	stw r0, 0x68(r3)
/* 801126A0 0010F600  90 03 00 64 */	stw r0, 0x64(r3)
/* 801126A4 0010F604  90 03 00 60 */	stw r0, 0x60(r3)
/* 801126A8 0010F608  90 03 00 74 */	stw r0, 0x74(r3)
/* 801126AC 0010F60C  90 03 00 70 */	stw r0, 0x70(r3)
/* 801126B0 0010F610  90 03 00 6C */	stw r0, 0x6c(r3)
/* 801126B4 0010F614  90 03 00 80 */	stw r0, 0x80(r3)
/* 801126B8 0010F618  90 03 00 7C */	stw r0, 0x7c(r3)
/* 801126BC 0010F61C  90 03 00 78 */	stw r0, 0x78(r3)
/* 801126C0 0010F620  4E 80 00 20 */	blr 
.endfn __sinit_gameStat_cpp

.section .ctors, "wa"  # 0x80221F60 - 0x80221FC0
lbl_constructor:
	.4byte __sinit_gameStat_cpp

.section .sbss, "wa"
.balign 8
.obj killTekis__8GameStat, global
	.skip 0x4
.endobj killTekis__8GameStat
.obj getPellets__8GameStat, global
	.skip 0x4
.endobj getPellets__8GameStat
.obj minPikis__8GameStat, global
	.skip 0x4
.endobj minPikis__8GameStat
.obj maxPikis__8GameStat, global
	.skip 0x4
.endobj maxPikis__8GameStat
.obj orimaDead__8GameStat, global
	.skip 0x1
.endobj orimaDead__8GameStat
