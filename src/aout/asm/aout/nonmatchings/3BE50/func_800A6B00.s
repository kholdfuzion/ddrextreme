.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A6B00
/* 97300 800A6B00 1B80063C */  lui        $a2, %hi(D_801B2EC0)
/* 97304 800A6B04 0180053C */  lui        $a1, %hi(D_80016B20)
/* 97308 800A6B08 206BA524 */  addiu      $a1, $a1, %lo(D_80016B20)
/* 9730C 800A6B0C C0200400 */  sll        $a0, $a0, 3
/* 97310 800A6B10 21108500 */  addu       $v0, $a0, $a1
/* 97314 800A6B14 C02EC624 */  addiu      $a2, $a2, %lo(D_801B2EC0)
/* 97318 800A6B18 2128A400 */  addu       $a1, $a1, $a0
/* 9731C 800A6B1C 0000438C */  lw         $v1, ($v0)
/* 97320 800A6B20 0400A48C */  lw         $a0, 4($a1)
/* 97324 800A6B24 80180300 */  sll        $v1, $v1, 2
/* 97328 800A6B28 21186600 */  addu       $v1, $v1, $a2
/* 9732C 800A6B2C 0000628C */  lw         $v0, ($v1)
/* 97330 800A6B30 00000000 */  nop
/* 97334 800A6B34 24104400 */  and        $v0, $v0, $a0
/* 97338 800A6B38 26104400 */  xor        $v0, $v0, $a0
/* 9733C 800A6B3C 0800E003 */  jr         $ra
/* 97340 800A6B40 0100422C */   sltiu     $v0, $v0, 1
