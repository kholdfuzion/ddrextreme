.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A2558
/* 92D58 800A2558 FFFF8224 */  addiu      $v0, $a0, -1
/* 92D5C 800A255C 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92D60 800A2560 03004014 */  bnez       $v0, .L800A2570
/* 92D64 800A2564 1B80033C */   lui       $v1, %hi(D_801B2B88)
/* 92D68 800A2568 0800E003 */  jr         $ra
/* 92D6C 800A256C 21100000 */   addu      $v0, $zero, $zero
.L800A2570:
/* 92D70 800A2570 882B628C */  lw         $v0, %lo(D_801B2B88)($v1)
/* 92D74 800A2574 80200400 */  sll        $a0, $a0, 2
/* 92D78 800A2578 21104400 */  addu       $v0, $v0, $a0
/* 92D7C 800A257C 0400438C */  lw         $v1, 4($v0)
/* 92D80 800A2580 00000000 */  nop
/* 92D84 800A2584 1800648C */  lw         $a0, 0x18($v1)
/* 92D88 800A2588 00000000 */  nop
/* 92D8C 800A258C 02008010 */  beqz       $a0, .L800A2598
/* 92D90 800A2590 21100000 */   addu      $v0, $zero, $zero
/* 92D94 800A2594 21108000 */  addu       $v0, $a0, $zero
.L800A2598:
/* 92D98 800A2598 0800E003 */  jr         $ra
/* 92D9C 800A259C 00000000 */   nop
