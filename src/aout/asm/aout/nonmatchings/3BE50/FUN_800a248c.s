.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a248c
/* 92C8C 800A248C FFFF8224 */  addiu      $v0, $a0, -1
/* 92C90 800A2490 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92C94 800A2494 03004014 */  bnez       $v0, .L800A24A4
/* 92C98 800A2498 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 92C9C 800A249C 0800E003 */  jr         $ra
/* 92CA0 800A24A0 21100000 */   addu      $v0, $zero, $zero
.L800A24A4:
/* 92CA4 800A24A4 882B458C */  lw         $a1, %lo(D_801B2B88)($v0)
/* 92CA8 800A24A8 80180400 */  sll        $v1, $a0, 2
/* 92CAC 800A24AC 2118A300 */  addu       $v1, $a1, $v1
/* 92CB0 800A24B0 0400628C */  lw         $v0, 4($v1)
/* 92CB4 800A24B4 00000000 */  nop
/* 92CB8 800A24B8 03004010 */  beqz       $v0, .L800A24C8
/* 92CBC 800A24BC 01000224 */   addiu     $v0, $zero, 1
/* 92CC0 800A24C0 0800E003 */  jr         $ra
/* 92CC4 800A24C4 0000A4AC */   sw        $a0, ($a1)
.L800A24C8:
/* 92CC8 800A24C8 0800E003 */  jr         $ra
/* 92CCC 800A24CC 21100000 */   addu      $v0, $zero, $zero
