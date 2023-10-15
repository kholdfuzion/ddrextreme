.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e6fc
/* 1EEFC 8002E6FC 1580023C */  lui        $v0, %hi(D_8014DEF8)
/* 1EF00 8002E700 F8DE4224 */  addiu      $v0, $v0, %lo(D_8014DEF8)
/* 1EF04 8002E704 80200400 */  sll        $a0, $a0, 2
/* 1EF08 8002E708 21208200 */  addu       $a0, $a0, $v0
/* 1EF0C 8002E70C 0000838C */  lw         $v1, ($a0)
/* 1EF10 8002E710 00000000 */  nop
/* 1EF14 8002E714 23186500 */  subu       $v1, $v1, $a1
/* 1EF18 8002E718 0800E003 */  jr         $ra
/* 1EF1C 8002E71C 000083AC */   sw        $v1, ($a0)
