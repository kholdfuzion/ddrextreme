.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A6D94
/* 97594 800A6D94 1B80023C */  lui        $v0, %hi(D_801B2EC0)
/* 97598 800A6D98 C02E4224 */  addiu      $v0, $v0, %lo(D_801B2EC0)
/* 9759C 800A6D9C 80200400 */  sll        $a0, $a0, 2
/* 975A0 800A6DA0 21208200 */  addu       $a0, $a0, $v0
/* 975A4 800A6DA4 0000828C */  lw         $v0, ($a0)
/* 975A8 800A6DA8 0800E003 */  jr         $ra
/* 975AC 800A6DAC 00000000 */   nop
