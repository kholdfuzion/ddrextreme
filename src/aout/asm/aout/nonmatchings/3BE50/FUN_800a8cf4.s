.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8cf4
/* 994F4 800A8CF4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 994F8 800A8CF8 1000B0AF */  sw         $s0, 0x10($sp)
/* 994FC 800A8CFC 21808000 */  addu       $s0, $a0, $zero
/* 99500 800A8D00 1800B2AF */  sw         $s2, 0x18($sp)
/* 99504 800A8D04 2190A000 */  addu       $s2, $a1, $zero
/* 99508 800A8D08 1400B1AF */  sw         $s1, 0x14($sp)
/* 9950C 800A8D0C 2188C000 */  addu       $s1, $a2, $zero
/* 99510 800A8D10 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 99514 800A8D14 1E000012 */  beqz       $s0, .L800A8D90
/* 99518 800A8D18 21100000 */   addu      $v0, $zero, $zero
/* 9951C 800A8D1C 2400028E */  lw         $v0, 0x24($s0)
/* 99520 800A8D20 0040033C */  lui        $v1, 0x4000
/* 99524 800A8D24 24104300 */  and        $v0, $v0, $v1
/* 99528 800A8D28 0D004010 */  beqz       $v0, .L800A8D60
/* 9952C 800A8D2C 04000224 */   addiu     $v0, $zero, 4
/* 99530 800A8D30 F8E9020C */  jal        FUN_800ba7e0
/* 99534 800A8D34 00000000 */   nop
/* 99538 800A8D38 09004014 */  bnez       $v0, .L800A8D60
/* 9953C 800A8D3C 04000224 */   addiu     $v0, $zero, 4
/* 99540 800A8D40 03000224 */  addiu      $v0, $zero, 3
/* 99544 800A8D44 05002216 */  bne        $s1, $v0, .L800A8D5C
/* 99548 800A8D48 0F80023C */   lui       $v0, %hi(D_800F0048)
/* 9954C 800A8D4C 48004480 */  lb         $a0, %lo(D_800F0048)($v0)
/* 99550 800A8D50 01000324 */  addiu      $v1, $zero, 1
/* 99554 800A8D54 0E008314 */  bne        $a0, $v1, .L800A8D90
/* 99558 800A8D58 21100000 */   addu      $v0, $zero, $zero
.L800A8D5C:
/* 9955C 800A8D5C 04000224 */  addiu      $v0, $zero, 4
.L800A8D60:
/* 99560 800A8D60 0A002212 */  beq        $s1, $v0, .L800A8D8C
/* 99564 800A8D64 80101200 */   sll       $v0, $s2, 2
/* 99568 800A8D68 21100202 */  addu       $v0, $s0, $v0
/* 9956C 800A8D6C 1C00438C */  lw         $v1, 0x1c($v0)
/* 99570 800A8D70 80201100 */  sll        $a0, $s1, 2
/* 99574 800A8D74 06188300 */  srlv       $v1, $v1, $a0
/* 99578 800A8D78 0F006330 */  andi       $v1, $v1, 0xf
/* 9957C 800A8D7C 80100300 */  sll        $v0, $v1, 2
/* 99580 800A8D80 21104300 */  addu       $v0, $v0, $v1
/* 99584 800A8D84 64A30208 */  j          .L800A8D90
/* 99588 800A8D88 40100200 */   sll       $v0, $v0, 1
.L800A8D8C:
/* 9958C 800A8D8C 0A000224 */  addiu      $v0, $zero, 0xa
.L800A8D90:
/* 99590 800A8D90 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 99594 800A8D94 1800B28F */  lw         $s2, 0x18($sp)
/* 99598 800A8D98 1400B18F */  lw         $s1, 0x14($sp)
/* 9959C 800A8D9C 1000B08F */  lw         $s0, 0x10($sp)
/* 995A0 800A8DA0 0800E003 */  jr         $ra
/* 995A4 800A8DA4 2000BD27 */   addiu     $sp, $sp, 0x20
