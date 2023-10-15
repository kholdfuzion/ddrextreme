.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027DBC
/* 185BC 80027DBC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 185C0 80027DC0 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 185C4 80027DC4 0F80033C */  lui        $v1, 0x800f
/* 185C8 80027DC8 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 185CC 80027DCC 13000224 */  addiu      $v0, $zero, 0x13
/* 185D0 80027DD0 08008424 */  addiu      $a0, $a0, 8
/* 185D4 80027DD4 1000BFAF */  sw         $ra, 0x10($sp)
/* 185D8 80027DD8 D574020C */  jal        FUN_8009d354
/* 185DC 80027DDC 280062A4 */   sh        $v0, 0x28($v1)
/* 185E0 80027DE0 1000BF8F */  lw         $ra, 0x10($sp)
/* 185E4 80027DE4 00000000 */  nop
/* 185E8 80027DE8 0800E003 */  jr         $ra
/* 185EC 80027DEC 1800BD27 */   addiu     $sp, $sp, 0x18
