.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a1c6c
/* 9246C 800A1C6C 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 92470 800A1C70 21200000 */  addu       $a0, $zero, $zero
/* 92474 800A1C74 FFFF0524 */  addiu      $a1, $zero, -1
/* 92478 800A1C78 08000624 */  addiu      $a2, $zero, 8
/* 9247C 800A1C7C 1000A727 */  addiu      $a3, $sp, 0x10
/* 92480 800A1C80 8400BFAF */  sw         $ra, 0x84($sp)
/* 92484 800A1C84 8000BEAF */  sw         $fp, 0x80($sp)
/* 92488 800A1C88 7C00B7AF */  sw         $s7, 0x7c($sp)
/* 9248C 800A1C8C 7800B6AF */  sw         $s6, 0x78($sp)
/* 92490 800A1C90 7400B5AF */  sw         $s5, 0x74($sp)
/* 92494 800A1C94 7000B4AF */  sw         $s4, 0x70($sp)
/* 92498 800A1C98 6C00B3AF */  sw         $s3, 0x6c($sp)
/* 9249C 800A1C9C 6800B2AF */  sw         $s2, 0x68($sp)
/* 924A0 800A1CA0 6400B1AF */  sw         $s1, 0x64($sp)
/* 924A4 800A1CA4 02A0020C */  jal        FUN_800a8008
/* 924A8 800A1CA8 6000B0AF */   sw        $s0, 0x60($sp)
/* 924AC 800A1CAC 01000424 */  addiu      $a0, $zero, 1
/* 924B0 800A1CB0 FFFF0524 */  addiu      $a1, $zero, -1
/* 924B4 800A1CB4 04000624 */  addiu      $a2, $zero, 4
/* 924B8 800A1CB8 2000B327 */  addiu      $s3, $sp, 0x20
/* 924BC 800A1CBC 02A0020C */  jal        FUN_800a8008
/* 924C0 800A1CC0 21386002 */   addu      $a3, $s3, $zero
/* 924C4 800A1CC4 02000424 */  addiu      $a0, $zero, 2
/* 924C8 800A1CC8 FFFF0524 */  addiu      $a1, $zero, -1
/* 924CC 800A1CCC 04000624 */  addiu      $a2, $zero, 4
/* 924D0 800A1CD0 2800B227 */  addiu      $s2, $sp, 0x28
/* 924D4 800A1CD4 02A0020C */  jal        FUN_800a8008
/* 924D8 800A1CD8 21384002 */   addu      $a3, $s2, $zero
/* 924DC 800A1CDC 21200000 */  addu       $a0, $zero, $zero
/* 924E0 800A1CE0 14000524 */  addiu      $a1, $zero, 0x14
/* 924E4 800A1CE4 3000B127 */  addiu      $s1, $sp, 0x30
/* 924E8 800A1CE8 CDA0020C */  jal        FUN_800a8334
/* 924EC 800A1CEC 21302002 */   addu      $a2, $s1, $zero
/* 924F0 800A1CF0 01000424 */  addiu      $a0, $zero, 1
/* 924F4 800A1CF4 04000524 */  addiu      $a1, $zero, 4
/* 924F8 800A1CF8 5800B027 */  addiu      $s0, $sp, 0x58
/* 924FC 800A1CFC CDA0020C */  jal        FUN_800a8334
/* 92500 800A1D00 21300002 */   addu      $a2, $s0, $zero
/* 92504 800A1D04 20000624 */  addiu      $a2, $zero, 0x20
/* 92508 800A1D08 21F06002 */  addu       $fp, $s3, $zero
/* 9250C 800A1D0C 21B84002 */  addu       $s7, $s2, $zero
/* 92510 800A1D10 21A02002 */  addu       $s4, $s1, $zero
/* 92514 800A1D14 21B00002 */  addu       $s6, $s0, $zero
/* 92518 800A1D18 1B80153C */  lui        $s5, %hi(D_801B2B88)
.L800A1D1C:
/* 9251C 800A1D1C 882BA28E */  lw         $v0, %lo(D_801B2B88)($s5)
/* 92520 800A1D20 80180600 */  sll        $v1, $a2, 2
/* 92524 800A1D24 21104300 */  addu       $v0, $v0, $v1
/* 92528 800A1D28 0400458C */  lw         $a1, 4($v0)
/* 9252C 800A1D2C 00000000 */  nop
/* 92530 800A1D30 9400A010 */  beqz       $a1, .L800A1F84
/* 92534 800A1D34 0100D324 */   addiu     $s3, $a2, 1
/* 92538 800A1D38 0000A38C */  lw         $v1, ($a1)
/* 9253C 800A1D3C 04000224 */  addiu      $v0, $zero, 4
/* 92540 800A1D40 90006214 */  bne        $v1, $v0, .L800A1F84
/* 92544 800A1D44 00000000 */   nop
/* 92548 800A1D48 0E00A294 */  lhu        $v0, 0xe($a1)
/* 9254C 800A1D4C 00000000 */  nop
/* 92550 800A1D50 FEFF4224 */  addiu      $v0, $v0, -2
/* 92554 800A1D54 00140200 */  sll        $v0, $v0, 0x10
/* 92558 800A1D58 03240200 */  sra        $a0, $v0, 0x10
/* 9255C 800A1D5C 0B00832C */  sltiu      $v1, $a0, 0xb
/* 92560 800A1D60 88006010 */  beqz       $v1, .L800A1F84
/* 92564 800A1D64 0180023C */   lui       $v0, %hi(D_800169D8)
/* 92568 800A1D68 D8694224 */  addiu      $v0, $v0, %lo(D_800169D8)
/* 9256C 800A1D6C 80180400 */  sll        $v1, $a0, 2
/* 92570 800A1D70 21186200 */  addu       $v1, $v1, $v0
/* 92574 800A1D74 0000648C */  lw         $a0, ($v1)
/* 92578 800A1D78 00000000 */  nop
/* 9257C 800A1D7C 08008000 */  jr         $a0
/* 92580 800A1D80 00000000 */   nop
/* 92584 800A1D84 0100D324 */  addiu      $s3, $a2, 1
/* 92588 800A1D88 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 9258C 800A1D8C 2188C003 */  addu       $s1, $fp, $zero
/* 92590 800A1D90 03001024 */  addiu      $s0, $zero, 3
.L800A1D94:
/* 92594 800A1D94 00002486 */  lh         $a0, ($s1)
/* 92598 800A1D98 02003126 */  addiu      $s1, $s1, 2
/* 9259C 800A1D9C 1BA2020C */  jal        FUN_800a886c
/* 925A0 800A1DA0 FFFF1026 */   addiu     $s0, $s0, -1
/* 925A4 800A1DA4 000042AE */  sw         $v0, ($s2)
/* 925A8 800A1DA8 FAFF0106 */  bgez       $s0, .L800A1D94
/* 925AC 800A1DAC 0C005226 */   addiu     $s2, $s2, 0xc
/* 925B0 800A1DB0 E2870208 */  j          .L800A1F88
/* 925B4 800A1DB4 21306002 */   addu      $a2, $s3, $zero
/* 925B8 800A1DB8 0100D324 */  addiu      $s3, $a2, 1
/* 925BC 800A1DBC 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 925C0 800A1DC0 2188E002 */  addu       $s1, $s7, $zero
/* 925C4 800A1DC4 03001024 */  addiu      $s0, $zero, 3
.L800A1DC8:
/* 925C8 800A1DC8 00002486 */  lh         $a0, ($s1)
/* 925CC 800A1DCC 02003126 */  addiu      $s1, $s1, 2
/* 925D0 800A1DD0 1BA2020C */  jal        FUN_800a886c
/* 925D4 800A1DD4 FFFF1026 */   addiu     $s0, $s0, -1
/* 925D8 800A1DD8 000042AE */  sw         $v0, ($s2)
/* 925DC 800A1DDC FAFF0106 */  bgez       $s0, .L800A1DC8
/* 925E0 800A1DE0 0C005226 */   addiu     $s2, $s2, 0xc
/* 925E4 800A1DE4 E2870208 */  j          .L800A1F88
/* 925E8 800A1DE8 21306002 */   addu      $a2, $s3, $zero
/* 925EC 800A1DEC 0100D324 */  addiu      $s3, $a2, 1
/* 925F0 800A1DF0 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 925F4 800A1DF4 1000B127 */  addiu      $s1, $sp, 0x10
/* 925F8 800A1DF8 03001024 */  addiu      $s0, $zero, 3
.L800A1DFC:
/* 925FC 800A1DFC 00002486 */  lh         $a0, ($s1)
/* 92600 800A1E00 02003126 */  addiu      $s1, $s1, 2
/* 92604 800A1E04 1BA2020C */  jal        FUN_800a886c
/* 92608 800A1E08 FFFF1026 */   addiu     $s0, $s0, -1
/* 9260C 800A1E0C 000042AE */  sw         $v0, ($s2)
/* 92610 800A1E10 FAFF0106 */  bgez       $s0, .L800A1DFC
/* 92614 800A1E14 0C005226 */   addiu     $s2, $s2, 0xc
/* 92618 800A1E18 E2870208 */  j          .L800A1F88
/* 9261C 800A1E1C 21306002 */   addu      $a2, $s3, $zero
/* 92620 800A1E20 0100D324 */  addiu      $s3, $a2, 1
/* 92624 800A1E24 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 92628 800A1E28 1800B127 */  addiu      $s1, $sp, 0x18
/* 9262C 800A1E2C 03001024 */  addiu      $s0, $zero, 3
.L800A1E30:
/* 92630 800A1E30 00002486 */  lh         $a0, ($s1)
/* 92634 800A1E34 02003126 */  addiu      $s1, $s1, 2
/* 92638 800A1E38 1BA2020C */  jal        FUN_800a886c
/* 9263C 800A1E3C FFFF1026 */   addiu     $s0, $s0, -1
/* 92640 800A1E40 000042AE */  sw         $v0, ($s2)
/* 92644 800A1E44 FAFF0106 */  bgez       $s0, .L800A1E30
/* 92648 800A1E48 0C005226 */   addiu     $s2, $s2, 0xc
/* 9264C 800A1E4C E2870208 */  j          .L800A1F88
/* 92650 800A1E50 21306002 */   addu      $a2, $s3, $zero
/* 92654 800A1E54 0100D324 */  addiu      $s3, $a2, 1
/* 92658 800A1E58 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 9265C 800A1E5C 21888002 */  addu       $s1, $s4, $zero
/* 92660 800A1E60 03001024 */  addiu      $s0, $zero, 3
.L800A1E64:
/* 92664 800A1E64 00002486 */  lh         $a0, ($s1)
/* 92668 800A1E68 02003126 */  addiu      $s1, $s1, 2
/* 9266C 800A1E6C 1BA2020C */  jal        FUN_800a886c
/* 92670 800A1E70 FFFF1026 */   addiu     $s0, $s0, -1
/* 92674 800A1E74 000042AE */  sw         $v0, ($s2)
/* 92678 800A1E78 FAFF0106 */  bgez       $s0, .L800A1E64
/* 9267C 800A1E7C 0C005226 */   addiu     $s2, $s2, 0xc
/* 92680 800A1E80 E2870208 */  j          .L800A1F88
/* 92684 800A1E84 21306002 */   addu      $a2, $s3, $zero
/* 92688 800A1E88 0100D324 */  addiu      $s3, $a2, 1
/* 9268C 800A1E8C 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 92690 800A1E90 08009126 */  addiu      $s1, $s4, 8
/* 92694 800A1E94 03001024 */  addiu      $s0, $zero, 3
.L800A1E98:
/* 92698 800A1E98 00002486 */  lh         $a0, ($s1)
/* 9269C 800A1E9C 02003126 */  addiu      $s1, $s1, 2
/* 926A0 800A1EA0 1BA2020C */  jal        FUN_800a886c
/* 926A4 800A1EA4 FFFF1026 */   addiu     $s0, $s0, -1
/* 926A8 800A1EA8 000042AE */  sw         $v0, ($s2)
/* 926AC 800A1EAC FAFF0106 */  bgez       $s0, .L800A1E98
/* 926B0 800A1EB0 0C005226 */   addiu     $s2, $s2, 0xc
/* 926B4 800A1EB4 E2870208 */  j          .L800A1F88
/* 926B8 800A1EB8 21306002 */   addu      $a2, $s3, $zero
/* 926BC 800A1EBC 0100D324 */  addiu      $s3, $a2, 1
/* 926C0 800A1EC0 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 926C4 800A1EC4 10009126 */  addiu      $s1, $s4, 0x10
/* 926C8 800A1EC8 03001024 */  addiu      $s0, $zero, 3
.L800A1ECC:
/* 926CC 800A1ECC 00002486 */  lh         $a0, ($s1)
/* 926D0 800A1ED0 02003126 */  addiu      $s1, $s1, 2
/* 926D4 800A1ED4 1BA2020C */  jal        FUN_800a886c
/* 926D8 800A1ED8 FFFF1026 */   addiu     $s0, $s0, -1
/* 926DC 800A1EDC 000042AE */  sw         $v0, ($s2)
/* 926E0 800A1EE0 FAFF0106 */  bgez       $s0, .L800A1ECC
/* 926E4 800A1EE4 0C005226 */   addiu     $s2, $s2, 0xc
/* 926E8 800A1EE8 E2870208 */  j          .L800A1F88
/* 926EC 800A1EEC 21306002 */   addu      $a2, $s3, $zero
/* 926F0 800A1EF0 0100D324 */  addiu      $s3, $a2, 1
/* 926F4 800A1EF4 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 926F8 800A1EF8 18009126 */  addiu      $s1, $s4, 0x18
/* 926FC 800A1EFC 03001024 */  addiu      $s0, $zero, 3
.L800A1F00:
/* 92700 800A1F00 00002486 */  lh         $a0, ($s1)
/* 92704 800A1F04 02003126 */  addiu      $s1, $s1, 2
/* 92708 800A1F08 1BA2020C */  jal        FUN_800a886c
/* 9270C 800A1F0C FFFF1026 */   addiu     $s0, $s0, -1
/* 92710 800A1F10 000042AE */  sw         $v0, ($s2)
/* 92714 800A1F14 FAFF0106 */  bgez       $s0, .L800A1F00
/* 92718 800A1F18 0C005226 */   addiu     $s2, $s2, 0xc
/* 9271C 800A1F1C E2870208 */  j          .L800A1F88
/* 92720 800A1F20 21306002 */   addu      $a2, $s3, $zero
/* 92724 800A1F24 0100D324 */  addiu      $s3, $a2, 1
/* 92728 800A1F28 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 9272C 800A1F2C 20009126 */  addiu      $s1, $s4, 0x20
/* 92730 800A1F30 03001024 */  addiu      $s0, $zero, 3
.L800A1F34:
/* 92734 800A1F34 00002486 */  lh         $a0, ($s1)
/* 92738 800A1F38 02003126 */  addiu      $s1, $s1, 2
/* 9273C 800A1F3C 1BA2020C */  jal        FUN_800a886c
/* 92740 800A1F40 FFFF1026 */   addiu     $s0, $s0, -1
/* 92744 800A1F44 000042AE */  sw         $v0, ($s2)
/* 92748 800A1F48 FAFF0106 */  bgez       $s0, .L800A1F34
/* 9274C 800A1F4C 0C005226 */   addiu     $s2, $s2, 0xc
/* 92750 800A1F50 E2870208 */  j          .L800A1F88
/* 92754 800A1F54 21306002 */   addu      $a2, $s3, $zero
/* 92758 800A1F58 0100D324 */  addiu      $s3, $a2, 1
/* 9275C 800A1F5C 1C00B224 */  addiu      $s2, $a1, 0x1c
/* 92760 800A1F60 2188C002 */  addu       $s1, $s6, $zero
/* 92764 800A1F64 03001024 */  addiu      $s0, $zero, 3
.L800A1F68:
/* 92768 800A1F68 00002486 */  lh         $a0, ($s1)
/* 9276C 800A1F6C 02003126 */  addiu      $s1, $s1, 2
/* 92770 800A1F70 1BA2020C */  jal        FUN_800a886c
/* 92774 800A1F74 FFFF1026 */   addiu     $s0, $s0, -1
/* 92778 800A1F78 000042AE */  sw         $v0, ($s2)
/* 9277C 800A1F7C FAFF0106 */  bgez       $s0, .L800A1F68
/* 92780 800A1F80 0C005226 */   addiu     $s2, $s2, 0xc
.L800A1F84:
/* 92784 800A1F84 21306002 */  addu       $a2, $s3, $zero
.L800A1F88:
/* 92788 800A1F88 4000C228 */  slti       $v0, $a2, 0x40
/* 9278C 800A1F8C 63FF4014 */  bnez       $v0, .L800A1D1C
/* 92790 800A1F90 00000000 */   nop
/* 92794 800A1F94 8400BF8F */  lw         $ra, 0x84($sp)
/* 92798 800A1F98 8000BE8F */  lw         $fp, 0x80($sp)
/* 9279C 800A1F9C 7C00B78F */  lw         $s7, 0x7c($sp)
/* 927A0 800A1FA0 7800B68F */  lw         $s6, 0x78($sp)
/* 927A4 800A1FA4 7400B58F */  lw         $s5, 0x74($sp)
/* 927A8 800A1FA8 7000B48F */  lw         $s4, 0x70($sp)
/* 927AC 800A1FAC 6C00B38F */  lw         $s3, 0x6c($sp)
/* 927B0 800A1FB0 6800B28F */  lw         $s2, 0x68($sp)
/* 927B4 800A1FB4 6400B18F */  lw         $s1, 0x64($sp)
/* 927B8 800A1FB8 6000B08F */  lw         $s0, 0x60($sp)
/* 927BC 800A1FBC 0800E003 */  jr         $ra
/* 927C0 800A1FC0 8800BD27 */   addiu     $sp, $sp, 0x88
