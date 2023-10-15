.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800ABCD4
/* 9C4D4 800ABCD4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9C4D8 800ABCD8 0180023C */  lui        $v0, %hi(D_80016DB4)
/* 9C4DC 800ABCDC 1400B1AF */  sw         $s1, 0x14($sp)
/* 9C4E0 800ABCE0 B46D5124 */  addiu      $s1, $v0, %lo(D_80016DB4)
/* 9C4E4 800ABCE4 1000B0AF */  sw         $s0, 0x10($sp)
/* 9C4E8 800ABCE8 2380103C */  lui        $s0, 0x8023
/* 9C4EC 800ABCEC 00801036 */  ori        $s0, $s0, 0x8000
/* 9C4F0 800ABCF0 1800B2AF */  sw         $s2, 0x18($sp)
/* 9C4F4 800ABCF4 21908000 */  addu       $s2, $a0, $zero
/* 9C4F8 800ABCF8 DF000524 */  addiu      $a1, $zero, 0xdf
/* 9C4FC 800ABCFC 2380063C */  lui        $a2, 0x8023
/* 9C500 800ABD00 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 9C504 800ABD04 8ED5000C */  jal        FUN_80035638
/* 9C508 800ABD08 0080C634 */   ori       $a2, $a2, 0x8000
/* 9C50C 800ABD0C 11004014 */  bnez       $v0, .L800ABD54
/* 9C510 800ABD10 FFFF0224 */   addiu     $v0, $zero, -1
/* 9C514 800ABD14 0F000324 */  addiu      $v1, $zero, 0xf
.L800ABD18:
/* 9C518 800ABD18 00002292 */  lbu        $v0, ($s1)
/* 9C51C 800ABD1C 01003126 */  addiu      $s1, $s1, 1
/* 9C520 800ABD20 FFFF6324 */  addiu      $v1, $v1, -1
/* 9C524 800ABD24 000002A2 */  sb         $v0, ($s0)
/* 9C528 800ABD28 FBFF6104 */  bgez       $v1, .L800ABD18
/* 9C52C 800ABD2C 01001026 */   addiu     $s0, $s0, 1
/* 9C530 800ABD30 21204002 */  addu       $a0, $s2, $zero
/* 9C534 800ABD34 DF000524 */  addiu      $a1, $zero, 0xdf
/* 9C538 800ABD38 2380063C */  lui        $a2, 0x8023
/* 9C53C 800ABD3C 65D4000C */  jal        FUN_80035194
/* 9C540 800ABD40 0080C634 */   ori       $a2, $a2, 0x8000
/* 9C544 800ABD44 21184000 */  addu       $v1, $v0, $zero
/* 9C548 800ABD48 02006014 */  bnez       $v1, .L800ABD54
/* 9C54C 800ABD4C FFFF0224 */   addiu     $v0, $zero, -1
/* 9C550 800ABD50 21100000 */  addu       $v0, $zero, $zero
.L800ABD54:
/* 9C554 800ABD54 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9C558 800ABD58 1800B28F */  lw         $s2, 0x18($sp)
/* 9C55C 800ABD5C 1400B18F */  lw         $s1, 0x14($sp)
/* 9C560 800ABD60 1000B08F */  lw         $s0, 0x10($sp)
/* 9C564 800ABD64 0800E003 */  jr         $ra
/* 9C568 800ABD68 2000BD27 */   addiu     $sp, $sp, 0x20
