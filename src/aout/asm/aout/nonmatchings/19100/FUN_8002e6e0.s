.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e6e0
/* 1EEE0 8002E6E0 1580023C */  lui        $v0, %hi(D_8014DEF8)
/* 1EEE4 8002E6E4 F8DE4224 */  addiu      $v0, $v0, %lo(D_8014DEF8)
/* 1EEE8 8002E6E8 80200400 */  sll        $a0, $a0, 2
/* 1EEEC 8002E6EC 21208200 */  addu       $a0, $a0, $v0
/* 1EEF0 8002E6F0 0000828C */  lw         $v0, ($a0)
/* 1EEF4 8002E6F4 0800E003 */  jr         $ra
/* 1EEF8 8002E6F8 00000000 */   nop
