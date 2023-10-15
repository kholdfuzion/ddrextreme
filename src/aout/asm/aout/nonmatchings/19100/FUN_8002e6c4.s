.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e6c4
/* 1EEC4 8002E6C4 1580023C */  lui        $v0, %hi(D_8014DEC0)
/* 1EEC8 8002E6C8 C0DE4224 */  addiu      $v0, $v0, %lo(D_8014DEC0)
/* 1EECC 8002E6CC 80200400 */  sll        $a0, $a0, 2
/* 1EED0 8002E6D0 21208200 */  addu       $a0, $a0, $v0
/* 1EED4 8002E6D4 0000828C */  lw         $v0, ($a0)
/* 1EED8 8002E6D8 0800E003 */  jr         $ra
/* 1EEDC 8002E6DC 00000000 */   nop
