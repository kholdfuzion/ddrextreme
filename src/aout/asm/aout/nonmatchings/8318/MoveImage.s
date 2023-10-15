.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel MoveImage
/* 8ECC 800186CC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8ED0 800186D0 1000B0AF */  sw         $s0, 0x10($sp)
/* 8ED4 800186D4 21808000 */  addu       $s0, $a0, $zero
/* 8ED8 800186D8 1800B2AF */  sw         $s2, 0x18($sp)
/* 8EDC 800186DC 2190A000 */  addu       $s2, $a1, $zero
/* 8EE0 800186E0 1400B1AF */  sw         $s1, 0x14($sp)
/* 8EE4 800186E4 2188C000 */  addu       $s1, $a2, $zero
/* 8EE8 800186E8 0180043C */  lui        $a0, %hi(D_800101E4)
/* 8EEC 800186EC E4018424 */  addiu      $a0, $a0, %lo(D_800101E4)
/* 8EF0 800186F0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 8EF4 800186F4 F260000C */  jal        SYS_OBJ_3E4
/* 8EF8 800186F8 21280002 */   addu      $a1, $s0, $zero
/* 8EFC 800186FC 04000286 */  lh         $v0, 4($s0)
/* 8F00 80018700 00000000 */  nop
/* 8F04 80018704 19004010 */  beqz       $v0, SYS_OBJ_788
/* 8F08 80018708 FFFF0224 */   addiu     $v0, $zero, -1
/* 8F0C 8001870C 06000286 */  lh         $v0, 6($s0)
/* 8F10 80018710 00000000 */  nop
/* 8F14 80018714 03004014 */  bnez       $v0, .L80018724
/* 8F18 80018718 00141100 */   sll       $v0, $s1, 0x10
/* 8F1C 8001871C DB610008 */  j          SYS_OBJ_788
/* 8F20 80018720 FFFF0224 */   addiu     $v0, $zero, -1
.L80018724:
/* 8F24 80018724 0D80033C */  lui        $v1, %hi(D_800D2C38)
/* 8F28 80018728 382C6324 */  addiu      $v1, $v1, %lo(D_800D2C38)
/* 8F2C 8001872C FFFF4432 */  andi       $a0, $s2, 0xffff
/* 8F30 80018730 25104400 */  or         $v0, $v0, $a0
/* 8F34 80018734 0000058E */  lw         $a1, ($s0)
/* 8F38 80018738 0D80073C */  lui        $a3, %hi(D_800D2B90)
/* 8F3C 8001873C 902BE78C */  lw         $a3, %lo(D_800D2B90)($a3)
/* 8F40 80018740 14000624 */  addiu      $a2, $zero, 0x14
/* 8F44 80018744 040062AC */  sw         $v0, 4($v1)
/* 8F48 80018748 000065AC */  sw         $a1, ($v1)
/* 8F4C 8001874C 0400028E */  lw         $v0, 4($s0)
/* 8F50 80018750 F8FF6524 */  addiu      $a1, $v1, -8
/* 8F54 80018754 080062AC */  sw         $v0, 8($v1)
/* 8F58 80018758 1800E48C */  lw         $a0, 0x18($a3)
/* 8F5C 8001875C 0800E28C */  lw         $v0, 8($a3)
/* 8F60 80018760 00000000 */  nop
/* 8F64 80018764 09F84000 */  jalr       $v0
/* 8F68 80018768 21380000 */   addu      $a3, $zero, $zero
