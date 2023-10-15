.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a27cc
/* 92FCC 800A27CC FFFF8224 */  addiu      $v0, $a0, -1
/* 92FD0 800A27D0 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92FD4 800A27D4 08004010 */  beqz       $v0, .L800A27F8
/* 92FD8 800A27D8 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 92FDC 800A27DC 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 92FE0 800A27E0 80200400 */  sll        $a0, $a0, 2
/* 92FE4 800A27E4 21186400 */  addu       $v1, $v1, $a0
/* 92FE8 800A27E8 0400628C */  lw         $v0, 4($v1)
/* 92FEC 800A27EC 00000000 */  nop
/* 92FF0 800A27F0 03004014 */  bnez       $v0, .L800A2800
/* 92FF4 800A27F4 00000000 */   nop
.L800A27F8:
/* 92FF8 800A27F8 0800E003 */  jr         $ra
/* 92FFC 800A27FC 21100000 */   addu      $v0, $zero, $zero
.L800A2800:
/* 93000 800A2800 0000428C */  lw         $v0, ($v0)
/* 93004 800A2804 0800E003 */  jr         $ra
/* 93008 800A2808 00000000 */   nop
