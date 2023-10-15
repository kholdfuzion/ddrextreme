.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C6690
/* B6E90 800C6690 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B6E94 800C6694 1800BFAF */  sw         $ra, 0x18($sp)
/* B6E98 800C6698 1400B1AF */  sw         $s1, 0x14($sp)
/* B6E9C 800C669C 4226030C */  jal        FUN_800c9908
/* B6EA0 800C66A0 1000B0AF */   sw        $s0, 0x10($sp)
/* B6EA4 800C66A4 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B6EA8 800C66A8 1874438C */  lw         $v1, %lo(D_801F7418)($v0)
/* B6EAC 800C66AC 18745024 */  addiu      $s0, $v0, 0x7418
/* B6EB0 800C66B0 04006010 */  beqz       $v1, .L800C66C4
/* B6EB4 800C66B4 080000AE */   sw        $zero, 8($s0)
/* B6EB8 800C66B8 7043058E */  lw         $a1, 0x4370($s0)
/* B6EBC 800C66BC FF28030C */  jal        FUN_800ca3fc
/* B6EC0 800C66C0 68430426 */   addiu     $a0, $s0, 0x4368
.L800C66C4:
/* B6EC4 800C66C4 68431026 */  addiu      $s0, $s0, 0x4368
/* B6EC8 800C66C8 FFFF1124 */  addiu      $s1, $zero, -1
.L800C66CC:
/* B6ECC 800C66CC 0C29030C */  jal        FUN_800ca430
/* B6ED0 800C66D0 21200002 */   addu      $a0, $s0, $zero
/* B6ED4 800C66D4 04004010 */  beqz       $v0, .L800C66E8
/* B6ED8 800C66D8 21180000 */   addu      $v1, $zero, $zero
/* B6EDC 800C66DC 000040AC */  sw         $zero, ($v0)
/* B6EE0 800C66E0 B3190308 */  j          .L800C66CC
/* B6EE4 800C66E4 080051AC */   sw        $s1, 8($v0)
.L800C66E8:
/* B6EE8 800C66E8 C4FD0426 */  addiu      $a0, $s0, -0x23c
.L800C66EC:
/* B6EEC 800C66EC 0000828C */  lw         $v0, ($a0)
/* B6EF0 800C66F0 00000000 */  nop
/* B6EF4 800C66F4 02004010 */  beqz       $v0, .L800C6700
/* B6EF8 800C66F8 00000000 */   nop
/* B6EFC 800C66FC 000080AC */  sw         $zero, ($a0)
.L800C6700:
/* B6F00 800C6700 01006324 */  addiu      $v1, $v1, 1
/* B6F04 800C6704 02006228 */  slti       $v0, $v1, 2
/* B6F08 800C6708 F8FF4014 */  bnez       $v0, .L800C66EC
/* B6F0C 800C670C C8008424 */   addiu     $a0, $a0, 0xc8
/* B6F10 800C6710 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B6F14 800C6714 187440AC */  sw         $zero, %lo(D_801F7418)($v0)
/* B6F18 800C6718 18744224 */  addiu      $v0, $v0, 0x7418
/* B6F1C 800C671C 040040AC */  sw         $zero, 4($v0)
/* B6F20 800C6720 1800BF8F */  lw         $ra, 0x18($sp)
/* B6F24 800C6724 1400B18F */  lw         $s1, 0x14($sp)
/* B6F28 800C6728 1000B08F */  lw         $s0, 0x10($sp)
/* B6F2C 800C672C 0800E003 */  jr         $ra
/* B6F30 800C6730 2000BD27 */   addiu     $sp, $sp, 0x20
