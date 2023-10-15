.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abe3c
/* 9C63C 800ABE3C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9C640 800ABE40 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 9C644 800ABE44 1800B2AF */  sw         $s2, 0x18($sp)
/* 9C648 800ABE48 1400B1AF */  sw         $s1, 0x14($sp)
/* 9C64C 800ABE4C 7CF8020C */  jal        FUN_800be1f0
/* 9C650 800ABE50 1000B0AF */   sw        $s0, 0x10($sp)
/* 9C654 800ABE54 02001124 */  addiu      $s1, $zero, 2
/* 9C658 800ABE58 99AF0208 */  j          .L800ABE64
/* 9C65C 800ABE5C 21904000 */   addu      $s2, $v0, $zero
.L800ABE60:
/* 9C660 800ABE60 21880002 */  addu       $s1, $s0, $zero
.L800ABE64:
/* 9C664 800ABE64 0900201A */  blez       $s1, .L800ABE8C
/* 9C668 800ABE68 FFFF2326 */   addiu     $v1, $s1, -1
/* 9C66C 800ABE6C 07107200 */  srav       $v0, $s2, $v1
/* 9C670 800ABE70 01004230 */  andi       $v0, $v0, 1
/* 9C674 800ABE74 FAFF4010 */  beqz       $v0, .L800ABE60
/* 9C678 800ABE78 21806000 */   addu      $s0, $v1, $zero
/* 9C67C 800ABE7C 1EAF020C */  jal        FUN_800abc78
/* 9C680 800ABE80 21202002 */   addu      $a0, $s1, $zero
/* 9C684 800ABE84 F6FF4014 */  bnez       $v0, .L800ABE60
/* 9C688 800ABE88 00000000 */   nop
.L800ABE8C:
/* 9C68C 800ABE8C 21102002 */  addu       $v0, $s1, $zero
/* 9C690 800ABE90 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9C694 800ABE94 1800B28F */  lw         $s2, 0x18($sp)
/* 9C698 800ABE98 1400B18F */  lw         $s1, 0x14($sp)
/* 9C69C 800ABE9C 1000B08F */  lw         $s0, 0x10($sp)
/* 9C6A0 800ABEA0 0800E003 */  jr         $ra
/* 9C6A4 800ABEA4 2000BD27 */   addiu     $sp, $sp, 0x20
