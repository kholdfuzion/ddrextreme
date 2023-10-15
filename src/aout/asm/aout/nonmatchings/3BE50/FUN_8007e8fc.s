.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e8fc
/* 6F0FC 8007E8FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6F100 8007E900 1800B2AF */  sw         $s2, 0x18($sp)
/* 6F104 8007E904 21908000 */  addu       $s2, $a0, $zero
/* 6F108 8007E908 1400B1AF */  sw         $s1, 0x14($sp)
/* 6F10C 8007E90C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6F110 8007E910 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 6F114 8007E914 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 6F118 8007E918 1000B0AF */  sw         $s0, 0x10($sp)
/* 6F11C 8007E91C 3C006280 */  lb         $v0, 0x3c($v1)
/* 6F120 8007E920 02000524 */  addiu      $a1, $zero, 2
/* 6F124 8007E924 1B004510 */  beq        $v0, $a1, .L8007E994
/* 6F128 8007E928 21880000 */   addu      $s1, $zero, $zero
/* 6F12C 8007E92C 04000424 */  addiu      $a0, $zero, 4
/* 6F130 8007E930 18004410 */  beq        $v0, $a0, .L8007E994
/* 6F134 8007E934 0100023C */   lui       $v0, 1
/* 6F138 8007E938 21306200 */  addu       $a2, $v1, $v0
/* 6F13C 8007E93C B842C280 */  lb         $v0, 0x42b8($a2)
/* 6F140 8007E940 00000000 */  nop
/* 6F144 8007E944 11004510 */  beq        $v0, $a1, .L8007E98C
/* 6F148 8007E948 00000000 */   nop
/* 6F14C 8007E94C 0F004410 */  beq        $v0, $a0, .L8007E98C
/* 6F150 8007E950 00000000 */   nop
/* 6F154 8007E954 8A006290 */  lbu        $v0, 0x8a($v1)
/* 6F158 8007E958 07000324 */  addiu      $v1, $zero, 7
/* 6F15C 8007E95C 03004310 */  beq        $v0, $v1, .L8007E96C
/* 6F160 8007E960 00000000 */   nop
/* 6F164 8007E964 0C004014 */  bnez       $v0, .L8007E998
/* 6F168 8007E968 21280000 */   addu      $a1, $zero, $zero
.L8007E96C:
/* 6F16C 8007E96C 0643C290 */  lbu        $v0, 0x4306($a2)
/* 6F170 8007E970 00000000 */  nop
/* 6F174 8007E974 08004310 */  beq        $v0, $v1, .L8007E998
/* 6F178 8007E978 FFFF0524 */   addiu     $a1, $zero, -1
/* 6F17C 8007E97C 06004014 */  bnez       $v0, .L8007E998
/* 6F180 8007E980 21280000 */   addu      $a1, $zero, $zero
/* 6F184 8007E984 66FA0108 */  j          .L8007E998
/* 6F188 8007E988 FFFF0524 */   addiu     $a1, $zero, -1
.L8007E98C:
/* 6F18C 8007E98C 66FA0108 */  j          .L8007E998
/* 6F190 8007E990 01000524 */   addiu     $a1, $zero, 1
.L8007E994:
/* 6F194 8007E994 21280000 */  addu       $a1, $zero, $zero
.L8007E998:
/* 6F198 8007E998 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 6F19C 8007E99C 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6F1A0 8007E9A0 80100500 */  sll        $v0, $a1, 2
/* 6F1A4 8007E9A4 21104500 */  addu       $v0, $v0, $a1
/* 6F1A8 8007E9A8 C0190200 */  sll        $v1, $v0, 7
/* 6F1AC 8007E9AC 21104300 */  addu       $v0, $v0, $v1
/* 6F1B0 8007E9B0 40110200 */  sll        $v0, $v0, 5
/* 6F1B4 8007E9B4 23104500 */  subu       $v0, $v0, $a1
/* 6F1B8 8007E9B8 80100200 */  sll        $v0, $v0, 2
/* 6F1BC 8007E9BC 21104400 */  addu       $v0, $v0, $a0
/* 6F1C0 8007E9C0 8A004390 */  lbu        $v1, 0x8a($v0)
/* 6F1C4 8007E9C4 01000224 */  addiu      $v0, $zero, 1
/* 6F1C8 8007E9C8 07006210 */  beq        $v1, $v0, .L8007E9E8
/* 6F1CC 8007E9CC 05000224 */   addiu     $v0, $zero, 5
/* 6F1D0 8007E9D0 05006210 */  beq        $v1, $v0, .L8007E9E8
/* 6F1D4 8007E9D4 02000224 */   addiu     $v0, $zero, 2
/* 6F1D8 8007E9D8 04006214 */  bne        $v1, $v0, .L8007E9EC
/* 6F1DC 8007E9DC 01001024 */   addiu     $s0, $zero, 1
/* 6F1E0 8007E9E0 7BFA0108 */  j          .L8007E9EC
/* 6F1E4 8007E9E4 21804000 */   addu      $s0, $v0, $zero
.L8007E9E8:
/* 6F1E8 8007E9E8 21800000 */  addu       $s0, $zero, $zero
.L8007E9EC:
/* 6F1EC 8007E9EC FFFF0224 */  addiu      $v0, $zero, -1
.L8007E9F0:
/* 6F1F0 8007E9F0 21204002 */  addu       $a0, $s2, $zero
/* 6F1F4 8007E9F4 21280002 */  addu       $a1, $s0, $zero
/* 6F1F8 8007E9F8 13AE020C */  jal        FUN_800ab84c
/* 6F1FC 8007E9FC 21304000 */   addu      $a2, $v0, $zero
/* 6F200 8007EA00 03004004 */  bltz       $v0, .L8007EA10
/* 6F204 8007EA04 00000000 */   nop
/* 6F208 8007EA08 7CFA0108 */  j          .L8007E9F0
/* 6F20C 8007EA0C 01003126 */   addiu     $s1, $s1, 1
.L8007EA10:
/* 6F210 8007EA10 21102002 */  addu       $v0, $s1, $zero
/* 6F214 8007EA14 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 6F218 8007EA18 1800B28F */  lw         $s2, 0x18($sp)
/* 6F21C 8007EA1C 1400B18F */  lw         $s1, 0x14($sp)
/* 6F220 8007EA20 1000B08F */  lw         $s0, 0x10($sp)
/* 6F224 8007EA24 0800E003 */  jr         $ra
/* 6F228 8007EA28 2000BD27 */   addiu     $sp, $sp, 0x20
