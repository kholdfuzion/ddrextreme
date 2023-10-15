.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A97B0
/* 99FB0 800A97B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 99FB4 800A97B4 FFFF0224 */  addiu      $v0, $zero, -1
/* 99FB8 800A97B8 0A008210 */  beq        $a0, $v0, .L800A97E4
/* 99FBC 800A97BC 1000BFAF */   sw        $ra, 0x10($sp)
/* 99FC0 800A97C0 61C1020C */  jal        FUN_800b0584
/* 99FC4 800A97C4 FFFF8430 */   andi      $a0, $a0, 0xffff
/* 99FC8 800A97C8 06004014 */  bnez       $v0, .L800A97E4
/* 99FCC 800A97CC 0F80043C */   lui       $a0, %hi(D_800EC6E8)
/* 99FD0 800A97D0 E8C6838C */  lw         $v1, %lo(D_800EC6E8)($a0)
/* 99FD4 800A97D4 02000224 */  addiu      $v0, $zero, 2
/* 99FD8 800A97D8 02006214 */  bne        $v1, $v0, .L800A97E4
/* 99FDC 800A97DC 04000224 */   addiu     $v0, $zero, 4
/* 99FE0 800A97E0 E8C682AC */  sw         $v0, -0x3918($a0)
.L800A97E4:
/* 99FE4 800A97E4 1000BF8F */  lw         $ra, 0x10($sp)
/* 99FE8 800A97E8 00000000 */  nop
/* 99FEC 800A97EC 0800E003 */  jr         $ra
/* 99FF0 800A97F0 1800BD27 */   addiu     $sp, $sp, 0x18
