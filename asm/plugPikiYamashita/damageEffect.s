.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__Q23zen12DamageEffectFv
__ct__Q23zen12DamageEffectFv:
/* 801F14F4 001EE454  C0 02 C2 18 */	lfs f0, lbl_803EC418@sda21(r2)
/* 801F14F8 001EE458  D0 03 00 00 */	stfs f0, 0(r3)
/* 801F14FC 001EE45C  4E 80 00 20 */	blr 

.global update__Q23zen12DamageEffectFv
update__Q23zen12DamageEffectFv:
/* 801F1500 001EE460  7C 08 02 A6 */	mflr r0
/* 801F1504 001EE464  3C 80 80 3A */	lis r4, gameflow@ha
/* 801F1508 001EE468  90 01 00 04 */	stw r0, 4(r1)
/* 801F150C 001EE46C  38 84 D7 B8 */	addi r4, r4, gameflow@l
/* 801F1510 001EE470  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F1514 001EE474  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F1518 001EE478  3B E3 00 00 */	addi r31, r3, 0
/* 801F151C 001EE47C  80 04 03 38 */	lwz r0, 0x338(r4)
/* 801F1520 001EE480  2C 00 00 00 */	cmpwi r0, 0
/* 801F1524 001EE484  40 82 00 6C */	bne .L_801F1590
/* 801F1528 001EE488  80 6D 31 20 */	lwz r3, naviMgr@sda21(r13)
/* 801F152C 001EE48C  28 03 00 00 */	cmplwi r3, 0
/* 801F1530 001EE490  41 82 00 10 */	beq .L_801F1540
/* 801F1534 001EE494  38 80 00 00 */	li r4, 0
/* 801F1538 001EE498  4B F2 5F 01 */	bl getNavi__7NaviMgrFi
/* 801F153C 001EE49C  7C 65 1B 78 */	mr r5, r3
.L_801F1540:
/* 801F1540 001EE4A0  7C A3 2B 78 */	mr r3, r5
/* 801F1544 001EE4A4  4B F0 ED 85 */	bl orimaDamaged__4NaviFv
/* 801F1548 001EE4A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F154C 001EE4AC  41 82 00 1C */	beq .L_801F1568
/* 801F1550 001EE4B0  C0 22 C2 18 */	lfs f1, lbl_803EC418@sda21(r2)
/* 801F1554 001EE4B4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801F1558 001EE4B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801F155C 001EE4BC  40 82 00 0C */	bne .L_801F1568
/* 801F1560 001EE4C0  C0 02 C2 1C */	lfs f0, lbl_803EC41C@sda21(r2)
/* 801F1564 001EE4C4  D0 1F 00 00 */	stfs f0, 0(r31)
.L_801F1568:
/* 801F1568 001EE4C8  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 801F156C 001EE4CC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 801F1570 001EE4D0  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 801F1574 001EE4D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801F1578 001EE4D8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801F157C 001EE4DC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 801F1580 001EE4E0  C0 02 C2 18 */	lfs f0, lbl_803EC418@sda21(r2)
/* 801F1584 001EE4E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F1588 001EE4E8  40 80 00 08 */	bge .L_801F1590
/* 801F158C 001EE4EC  D0 1F 00 00 */	stfs f0, 0(r31)
.L_801F1590:
/* 801F1590 001EE4F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F1594 001EE4F4  38 60 00 00 */	li r3, 0
/* 801F1598 001EE4F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F159C 001EE4FC  38 21 00 20 */	addi r1, r1, 0x20
/* 801F15A0 001EE500  7C 08 03 A6 */	mtlr r0
/* 801F15A4 001EE504  4E 80 00 20 */	blr 

.global draw__Q23zen12DamageEffectFR8Graphics
draw__Q23zen12DamageEffectFR8Graphics:
/* 801F15A8 001EE508  7C 08 02 A6 */	mflr r0
/* 801F15AC 001EE50C  90 01 00 04 */	stw r0, 4(r1)
/* 801F15B0 001EE510  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 801F15B4 001EE514  93 E1 00 94 */	stw r31, 0x94(r1)
/* 801F15B8 001EE518  7C 9F 23 78 */	mr r31, r4
/* 801F15BC 001EE51C  93 C1 00 90 */	stw r30, 0x90(r1)
/* 801F15C0 001EE520  7C 7E 1B 78 */	mr r30, r3
/* 801F15C4 001EE524  C0 02 C2 18 */	lfs f0, lbl_803EC418@sda21(r2)
/* 801F15C8 001EE528  C0 23 00 00 */	lfs f1, 0(r3)
/* 801F15CC 001EE52C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F15D0 001EE530  40 81 03 F0 */	ble .L_801F19C0
/* 801F15D4 001EE534  7F E3 FB 78 */	mr r3, r31
/* 801F15D8 001EE538  80 8D 2F 00 */	lwz r4, mapMgr@sda21(r13)
/* 801F15DC 001EE53C  81 9F 03 B4 */	lwz r12, 0x3b4(r31)
/* 801F15E0 001EE540  38 A0 00 00 */	li r5, 0
/* 801F15E4 001EE544  80 84 04 B8 */	lwz r4, 0x4b8(r4)
/* 801F15E8 001EE548  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 801F15EC 001EE54C  7D 88 03 A6 */	mtlr r12
/* 801F15F0 001EE550  4E 80 00 21 */	blrl 
/* 801F15F4 001EE554  38 60 00 00 */	li r3, 0
/* 801F15F8 001EE558  38 80 00 00 */	li r4, 0
/* 801F15FC 001EE55C  38 A0 00 01 */	li r5, 1
/* 801F1600 001EE560  38 C0 00 02 */	li r6, 2
/* 801F1604 001EE564  38 E0 00 03 */	li r7, 3
/* 801F1608 001EE568  48 02 20 49 */	bl GXSetTevSwapModeTable
/* 801F160C 001EE56C  38 60 00 01 */	li r3, 1
/* 801F1610 001EE570  38 80 00 00 */	li r4, 0
/* 801F1614 001EE574  38 A0 00 00 */	li r5, 0
/* 801F1618 001EE578  38 C0 00 00 */	li r6, 0
/* 801F161C 001EE57C  38 E0 00 03 */	li r7, 3
/* 801F1620 001EE580  48 02 20 31 */	bl GXSetTevSwapModeTable
/* 801F1624 001EE584  38 60 00 02 */	li r3, 2
/* 801F1628 001EE588  38 80 00 00 */	li r4, 0
/* 801F162C 001EE58C  38 A0 00 00 */	li r5, 0
/* 801F1630 001EE590  38 C0 00 00 */	li r6, 0
/* 801F1634 001EE594  38 E0 00 03 */	li r7, 3
/* 801F1638 001EE598  48 02 20 19 */	bl GXSetTevSwapModeTable
/* 801F163C 001EE59C  38 60 00 03 */	li r3, 3
/* 801F1640 001EE5A0  38 80 00 00 */	li r4, 0
/* 801F1644 001EE5A4  38 A0 00 00 */	li r5, 0
/* 801F1648 001EE5A8  38 C0 00 00 */	li r6, 0
/* 801F164C 001EE5AC  38 E0 00 03 */	li r7, 3
/* 801F1650 001EE5B0  48 02 20 01 */	bl GXSetTevSwapModeTable
/* 801F1654 001EE5B4  38 60 00 04 */	li r3, 4
/* 801F1658 001EE5B8  48 02 23 0D */	bl GXSetNumTevStages
/* 801F165C 001EE5BC  38 60 00 00 */	li r3, 0
/* 801F1660 001EE5C0  38 80 00 00 */	li r4, 0
/* 801F1664 001EE5C4  38 A0 00 00 */	li r5, 0
/* 801F1668 001EE5C8  38 C0 00 04 */	li r6, 4
/* 801F166C 001EE5CC  48 02 21 59 */	bl GXSetTevOrder
/* 801F1670 001EE5D0  38 60 00 01 */	li r3, 1
/* 801F1674 001EE5D4  38 80 00 00 */	li r4, 0
/* 801F1678 001EE5D8  38 A0 00 00 */	li r5, 0
/* 801F167C 001EE5DC  38 C0 00 04 */	li r6, 4
/* 801F1680 001EE5E0  48 02 21 45 */	bl GXSetTevOrder
/* 801F1684 001EE5E4  38 60 00 02 */	li r3, 2
/* 801F1688 001EE5E8  38 80 00 00 */	li r4, 0
/* 801F168C 001EE5EC  38 A0 00 00 */	li r5, 0
/* 801F1690 001EE5F0  38 C0 00 04 */	li r6, 4
/* 801F1694 001EE5F4  48 02 21 31 */	bl GXSetTevOrder
/* 801F1698 001EE5F8  38 60 00 03 */	li r3, 3
/* 801F169C 001EE5FC  38 80 00 00 */	li r4, 0
/* 801F16A0 001EE600  38 A0 00 00 */	li r5, 0
/* 801F16A4 001EE604  38 C0 00 04 */	li r6, 4
/* 801F16A8 001EE608  48 02 21 1D */	bl GXSetTevOrder
/* 801F16AC 001EE60C  38 60 00 00 */	li r3, 0
/* 801F16B0 001EE610  38 80 00 01 */	li r4, 1
/* 801F16B4 001EE614  38 A0 00 01 */	li r5, 1
/* 801F16B8 001EE618  48 02 1F 41 */	bl GXSetTevSwapMode
/* 801F16BC 001EE61C  38 60 00 00 */	li r3, 0
/* 801F16C0 001EE620  38 80 00 0F */	li r4, 0xf
/* 801F16C4 001EE624  38 A0 00 0F */	li r5, 0xf
/* 801F16C8 001EE628  38 C0 00 0F */	li r6, 0xf
/* 801F16CC 001EE62C  38 E0 00 08 */	li r7, 8
/* 801F16D0 001EE630  48 02 1A 71 */	bl GXSetTevColorIn
/* 801F16D4 001EE634  38 60 00 00 */	li r3, 0
/* 801F16D8 001EE638  38 80 00 07 */	li r4, 7
/* 801F16DC 001EE63C  38 A0 00 07 */	li r5, 7
/* 801F16E0 001EE640  38 C0 00 07 */	li r6, 7
/* 801F16E4 001EE644  38 E0 00 06 */	li r7, 6
/* 801F16E8 001EE648  48 02 1A D9 */	bl GXSetTevAlphaIn
/* 801F16EC 001EE64C  38 60 00 00 */	li r3, 0
/* 801F16F0 001EE650  38 80 00 00 */	li r4, 0
/* 801F16F4 001EE654  38 A0 00 00 */	li r5, 0
/* 801F16F8 001EE658  38 C0 00 00 */	li r6, 0
/* 801F16FC 001EE65C  38 E0 00 01 */	li r7, 1
/* 801F1700 001EE660  39 00 00 00 */	li r8, 0
/* 801F1704 001EE664  48 02 1B 41 */	bl GXSetTevColorOp
/* 801F1708 001EE668  38 60 00 00 */	li r3, 0
/* 801F170C 001EE66C  38 80 00 00 */	li r4, 0
/* 801F1710 001EE670  38 A0 00 00 */	li r5, 0
/* 801F1714 001EE674  38 C0 00 00 */	li r6, 0
/* 801F1718 001EE678  38 E0 00 01 */	li r7, 1
/* 801F171C 001EE67C  39 00 00 00 */	li r8, 0
/* 801F1720 001EE680  48 02 1B E5 */	bl GXSetTevAlphaOp
/* 801F1724 001EE684  38 60 00 01 */	li r3, 1
/* 801F1728 001EE688  38 80 00 02 */	li r4, 2
/* 801F172C 001EE68C  38 A0 00 02 */	li r5, 2
/* 801F1730 001EE690  48 02 1E C9 */	bl GXSetTevSwapMode
/* 801F1734 001EE694  38 60 00 01 */	li r3, 1
/* 801F1738 001EE698  38 80 00 00 */	li r4, 0
/* 801F173C 001EE69C  38 A0 00 0F */	li r5, 0xf
/* 801F1740 001EE6A0  38 C0 00 0F */	li r6, 0xf
/* 801F1744 001EE6A4  38 E0 00 08 */	li r7, 8
/* 801F1748 001EE6A8  48 02 19 F9 */	bl GXSetTevColorIn
/* 801F174C 001EE6AC  38 60 00 01 */	li r3, 1
/* 801F1750 001EE6B0  38 80 00 07 */	li r4, 7
/* 801F1754 001EE6B4  38 A0 00 07 */	li r5, 7
/* 801F1758 001EE6B8  38 C0 00 07 */	li r6, 7
/* 801F175C 001EE6BC  38 E0 00 06 */	li r7, 6
/* 801F1760 001EE6C0  48 02 1A 61 */	bl GXSetTevAlphaIn
/* 801F1764 001EE6C4  38 60 00 01 */	li r3, 1
/* 801F1768 001EE6C8  38 80 00 0E */	li r4, 0xe
/* 801F176C 001EE6CC  38 A0 00 00 */	li r5, 0
/* 801F1770 001EE6D0  38 C0 00 00 */	li r6, 0
/* 801F1774 001EE6D4  38 E0 00 01 */	li r7, 1
/* 801F1778 001EE6D8  39 00 00 00 */	li r8, 0
/* 801F177C 001EE6DC  48 02 1A C9 */	bl GXSetTevColorOp
/* 801F1780 001EE6E0  38 60 00 02 */	li r3, 2
/* 801F1784 001EE6E4  38 80 00 03 */	li r4, 3
/* 801F1788 001EE6E8  38 A0 00 03 */	li r5, 3
/* 801F178C 001EE6EC  48 02 1E 6D */	bl GXSetTevSwapMode
/* 801F1790 001EE6F0  38 60 00 02 */	li r3, 2
/* 801F1794 001EE6F4  38 80 00 00 */	li r4, 0
/* 801F1798 001EE6F8  38 A0 00 0F */	li r5, 0xf
/* 801F179C 001EE6FC  38 C0 00 0F */	li r6, 0xf
/* 801F17A0 001EE700  38 E0 00 08 */	li r7, 8
/* 801F17A4 001EE704  48 02 19 9D */	bl GXSetTevColorIn
/* 801F17A8 001EE708  38 60 00 02 */	li r3, 2
/* 801F17AC 001EE70C  38 80 00 07 */	li r4, 7
/* 801F17B0 001EE710  38 A0 00 07 */	li r5, 7
/* 801F17B4 001EE714  38 C0 00 07 */	li r6, 7
/* 801F17B8 001EE718  38 E0 00 06 */	li r7, 6
/* 801F17BC 001EE71C  48 02 1A 05 */	bl GXSetTevAlphaIn
/* 801F17C0 001EE720  38 60 00 02 */	li r3, 2
/* 801F17C4 001EE724  38 80 00 0E */	li r4, 0xe
/* 801F17C8 001EE728  38 A0 00 00 */	li r5, 0
/* 801F17CC 001EE72C  38 C0 00 00 */	li r6, 0
/* 801F17D0 001EE730  38 E0 00 01 */	li r7, 1
/* 801F17D4 001EE734  39 00 00 00 */	li r8, 0
/* 801F17D8 001EE738  48 02 1A 6D */	bl GXSetTevColorOp
/* 801F17DC 001EE73C  38 00 00 EB */	li r0, 0xeb
/* 801F17E0 001EE740  C0 42 C2 20 */	lfs f2, lbl_803EC420@sda21(r2)
/* 801F17E4 001EE744  98 01 00 40 */	stb r0, 0x40(r1)
/* 801F17E8 001EE748  38 00 00 7F */	li r0, 0x7f
/* 801F17EC 001EE74C  C0 02 C2 18 */	lfs f0, lbl_803EC418@sda21(r2)
/* 801F17F0 001EE750  98 01 00 41 */	stb r0, 0x41(r1)
/* 801F17F4 001EE754  98 01 00 42 */	stb r0, 0x42(r1)
/* 801F17F8 001EE758  C0 3E 00 00 */	lfs f1, 0(r30)
/* 801F17FC 001EE75C  EC 22 00 72 */	fmuls f1, f2, f1
/* 801F1800 001EE760  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F1804 001EE764  4C 41 13 82 */	cror 2, 1, 2
/* 801F1808 001EE768  40 82 00 10 */	bne .L_801F1818
/* 801F180C 001EE76C  C0 02 C2 24 */	lfs f0, lbl_803EC424@sda21(r2)
/* 801F1810 001EE770  EC 00 08 2A */	fadds f0, f0, f1
/* 801F1814 001EE774  48 00 00 0C */	b .L_801F1820
.L_801F1818:
/* 801F1818 001EE778  C0 02 C2 24 */	lfs f0, lbl_803EC424@sda21(r2)
/* 801F181C 001EE77C  EC 01 00 28 */	fsubs f0, f1, f0
.L_801F1820:
/* 801F1820 001EE780  FC 00 00 1E */	fctiwz f0, f0
/* 801F1824 001EE784  38 60 00 03 */	li r3, 3
/* 801F1828 001EE788  38 80 00 0C */	li r4, 0xc
/* 801F182C 001EE78C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 801F1830 001EE790  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 801F1834 001EE794  98 01 00 43 */	stb r0, 0x43(r1)
/* 801F1838 001EE798  48 02 1C E9 */	bl GXSetTevKColorSel
/* 801F183C 001EE79C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801F1840 001EE7A0  38 81 00 38 */	addi r4, r1, 0x38
/* 801F1844 001EE7A4  38 60 00 00 */	li r3, 0
/* 801F1848 001EE7A8  90 01 00 38 */	stw r0, 0x38(r1)
/* 801F184C 001EE7AC  48 02 1C 61 */	bl GXSetTevKColor
/* 801F1850 001EE7B0  38 60 00 03 */	li r3, 3
/* 801F1854 001EE7B4  38 80 00 0F */	li r4, 0xf
/* 801F1858 001EE7B8  38 A0 00 00 */	li r5, 0
/* 801F185C 001EE7BC  38 C0 00 0E */	li r6, 0xe
/* 801F1860 001EE7C0  38 E0 00 0F */	li r7, 0xf
/* 801F1864 001EE7C4  48 02 18 DD */	bl GXSetTevColorIn
/* 801F1868 001EE7C8  38 60 00 03 */	li r3, 3
/* 801F186C 001EE7CC  38 80 00 07 */	li r4, 7
/* 801F1870 001EE7D0  38 A0 00 07 */	li r5, 7
/* 801F1874 001EE7D4  38 C0 00 07 */	li r6, 7
/* 801F1878 001EE7D8  38 E0 00 06 */	li r7, 6
/* 801F187C 001EE7DC  48 02 19 45 */	bl GXSetTevAlphaIn
/* 801F1880 001EE7E0  38 60 00 03 */	li r3, 3
/* 801F1884 001EE7E4  38 80 00 00 */	li r4, 0
/* 801F1888 001EE7E8  38 A0 00 00 */	li r5, 0
/* 801F188C 001EE7EC  38 C0 00 00 */	li r6, 0
/* 801F1890 001EE7F0  38 E0 00 01 */	li r7, 1
/* 801F1894 001EE7F4  39 00 00 00 */	li r8, 0
/* 801F1898 001EE7F8  48 02 19 AD */	bl GXSetTevColorOp
/* 801F189C 001EE7FC  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 801F18A0 001EE800  3D 20 43 30 */	lis r9, 0x4330
/* 801F18A4 001EE804  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 801F18A8 001EE808  39 00 00 00 */	li r8, 0
/* 801F18AC 001EE80C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F18B0 001EE810  90 01 00 74 */	stw r0, 0x74(r1)
/* 801F18B4 001EE814  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801F18B8 001EE818  C8 62 C2 30 */	lfd f3, "@1228"@sda21(r2)
/* 801F18BC 001EE81C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801F18C0 001EE820  90 01 00 84 */	stw r0, 0x84(r1)
/* 801F18C4 001EE824  C0 82 C2 24 */	lfs f4, lbl_803EC424@sda21(r2)
/* 801F18C8 001EE828  38 81 00 28 */	addi r4, r1, 0x28
/* 801F18CC 001EE82C  91 21 00 70 */	stw r9, 0x70(r1)
/* 801F18D0 001EE830  7F E3 FB 78 */	mr r3, r31
/* 801F18D4 001EE834  C0 22 C2 28 */	lfs f1, lbl_803EC428@sda21(r2)
/* 801F18D8 001EE838  91 21 00 80 */	stw r9, 0x80(r1)
/* 801F18DC 001EE83C  38 C0 00 00 */	li r6, 0
/* 801F18E0 001EE840  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 801F18E4 001EE844  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 801F18E8 001EE848  EC 00 18 28 */	fsubs f0, f0, f3
/* 801F18EC 001EE84C  91 01 00 18 */	stw r8, 0x18(r1)
/* 801F18F0 001EE850  EC 42 18 28 */	fsubs f2, f2, f3
/* 801F18F4 001EE854  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801F18F8 001EE858  EC 04 00 32 */	fmuls f0, f4, f0
/* 801F18FC 001EE85C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801F1900 001EE860  FC 00 00 1E */	fctiwz f0, f0
/* 801F1904 001EE864  FC 40 10 1E */	fctiwz f2, f2
/* 801F1908 001EE868  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 801F190C 001EE86C  D8 41 00 78 */	stfd f2, 0x78(r1)
/* 801F1910 001EE870  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 801F1914 001EE874  80 E1 00 7C */	lwz r7, 0x7c(r1)
/* 801F1918 001EE878  90 01 00 20 */	stw r0, 0x20(r1)
/* 801F191C 001EE87C  90 E1 00 24 */	stw r7, 0x24(r1)
/* 801F1920 001EE880  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 801F1924 001EE884  80 FF 03 10 */	lwz r7, 0x310(r31)
/* 801F1928 001EE888  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F192C 001EE88C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801F1930 001EE890  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 801F1934 001EE894  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F1938 001EE898  91 21 00 50 */	stw r9, 0x50(r1)
/* 801F193C 001EE89C  91 21 00 60 */	stw r9, 0x60(r1)
/* 801F1940 001EE8A0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801F1944 001EE8A4  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 801F1948 001EE8A8  EC 00 18 28 */	fsubs f0, f0, f3
/* 801F194C 001EE8AC  91 01 00 28 */	stw r8, 0x28(r1)
/* 801F1950 001EE8B0  EC 42 18 28 */	fsubs f2, f2, f3
/* 801F1954 001EE8B4  91 01 00 2C */	stw r8, 0x2c(r1)
/* 801F1958 001EE8B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801F195C 001EE8BC  EC 22 00 72 */	fmuls f1, f2, f1
/* 801F1960 001EE8C0  FC 00 00 1E */	fctiwz f0, f0
/* 801F1964 001EE8C4  FC 20 08 1E */	fctiwz f1, f1
/* 801F1968 001EE8C8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 801F196C 001EE8CC  D8 21 00 58 */	stfd f1, 0x58(r1)
/* 801F1970 001EE8D0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801F1974 001EE8D4  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 801F1978 001EE8D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 801F197C 001EE8DC  90 E1 00 34 */	stw r7, 0x34(r1)
/* 801F1980 001EE8E0  81 9F 03 B4 */	lwz r12, 0x3b4(r31)
/* 801F1984 001EE8E4  81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 801F1988 001EE8E8  7D 88 03 A6 */	mtlr r12
/* 801F198C 001EE8EC  4E 80 00 21 */	blrl 
/* 801F1990 001EE8F0  38 60 00 00 */	li r3, 0
/* 801F1994 001EE8F4  38 80 00 00 */	li r4, 0
/* 801F1998 001EE8F8  38 A0 00 00 */	li r5, 0
/* 801F199C 001EE8FC  48 02 1C 5D */	bl GXSetTevSwapMode
/* 801F19A0 001EE900  38 60 00 01 */	li r3, 1
/* 801F19A4 001EE904  38 80 00 00 */	li r4, 0
/* 801F19A8 001EE908  38 A0 00 00 */	li r5, 0
/* 801F19AC 001EE90C  48 02 1C 4D */	bl GXSetTevSwapMode
/* 801F19B0 001EE910  38 60 00 02 */	li r3, 2
/* 801F19B4 001EE914  38 80 00 00 */	li r4, 0
/* 801F19B8 001EE918  38 A0 00 00 */	li r5, 0
/* 801F19BC 001EE91C  48 02 1C 3D */	bl GXSetTevSwapMode
.L_801F19C0:
/* 801F19C0 001EE920  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 801F19C4 001EE924  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 801F19C8 001EE928  83 C1 00 90 */	lwz r30, 0x90(r1)
/* 801F19CC 001EE92C  38 21 00 98 */	addi r1, r1, 0x98
/* 801F19D0 001EE930  7C 08 03 A6 */	mtlr r0
/* 801F19D4 001EE934  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
.global lbl_803EC418
lbl_803EC418:
	.4byte 0x00000000
.global lbl_803EC41C
lbl_803EC41C:
	.4byte 0x40000000
.global lbl_803EC420
lbl_803EC420:
	.4byte 0x42800000
.global lbl_803EC424
lbl_803EC424:
	.4byte 0x3F000000
.global lbl_803EC428
lbl_803EC428:
	.4byte 0x3F800000
	.4byte 0x00000000
.global "@1228"
"@1228":
	.4byte 0x43300000
	.4byte 0x80000000
