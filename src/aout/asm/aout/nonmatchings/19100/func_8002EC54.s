.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002EC54
/* 1F454 8002EC54 E8FEBD27 */  addiu      $sp, $sp, -0x118
/* 1F458 8002EC58 1001BFAF */  sw         $ra, 0x110($sp)
/* 1F45C 8002EC5C 0E80053C */  lui        $a1, %hi(D_800D8D6C)
/* 1F460 8002EC60 6C8DA524 */  addiu      $a1, $a1, %lo(D_800D8D6C)
/* 1F464 8002EC64 04000624 */  addiu      $a2, $zero, 4
/* 1F468 8002EC68 BAB4000C */  jal        FUN_8002d2e8
/* 1F46C 8002EC6C 1000A727 */   addiu     $a3, $sp, 0x10
/* 1F470 8002EC70 03004104 */  bgez       $v0, .L8002EC80
/* 1F474 8002EC74 00000000 */   nop
/* 1F478 8002EC78 DFB9000C */  jal        FUN_8002e77c
/* 1F47C 8002EC7C 0E000424 */   addiu     $a0, $zero, 0xe
.L8002EC80:
/* 1F480 8002EC80 1000A493 */  lbu        $a0, 0x10($sp)
/* 1F484 8002EC84 01000224 */  addiu      $v0, $zero, 1
/* 1F488 8002EC88 06008214 */  bne        $a0, $v0, .L8002ECA4
/* 1F48C 8002EC8C 00000000 */   nop
/* 1F490 8002EC90 1100A393 */  lbu        $v1, 0x11($sp)
/* 1F494 8002EC94 00000000 */  nop
/* 1F498 8002EC98 02006410 */  beq        $v1, $a0, .L8002ECA4
/* 1F49C 8002EC9C 21100000 */   addu      $v0, $zero, $zero
/* 1F4A0 8002ECA0 01000224 */  addiu      $v0, $zero, 1
.L8002ECA4:
/* 1F4A4 8002ECA4 1001BF8F */  lw         $ra, 0x110($sp)
/* 1F4A8 8002ECA8 00000000 */  nop
/* 1F4AC 8002ECAC 0800E003 */  jr         $ra
/* 1F4B0 8002ECB0 1801BD27 */   addiu     $sp, $sp, 0x118
