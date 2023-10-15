.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e760
/* 1EF60 8002E760 1580023C */  lui        $v0, %hi(D_8014CCB8)
/* 1EF64 8002E764 B8CC4224 */  addiu      $v0, $v0, %lo(D_8014CCB8)
/* 1EF68 8002E768 80200400 */  sll        $a0, $a0, 2
/* 1EF6C 8002E76C 21208200 */  addu       $a0, $a0, $v0
/* 1EF70 8002E770 0000828C */  lw         $v0, ($a0)
/* 1EF74 8002E774 0800E003 */  jr         $ra
/* 1EF78 8002E778 00000000 */   nop
