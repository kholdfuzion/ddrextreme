.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e77c
/* 1EF7C 8002E77C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1EF80 8002E780 0E80023C */  lui        $v0, %hi(D_800D8DB0)
/* 1EF84 8002E784 B08D4224 */  addiu      $v0, $v0, %lo(D_800D8DB0)
/* 1EF88 8002E788 80200400 */  sll        $a0, $a0, 2
/* 1EF8C 8002E78C 21208200 */  addu       $a0, $a0, $v0
/* 1EF90 8002E790 FFFF0524 */  addiu      $a1, $zero, -1
/* 1EF94 8002E794 1000BFAF */  sw         $ra, 0x10($sp)
/* 1EF98 8002E798 0000848C */  lw         $a0, ($a0)
/* 1EF9C 8002E79C 58AA000C */  jal        error_8002a960
/* 1EFA0 8002E7A0 21300000 */   addu      $a2, $zero, $zero
/* 1EFA4 8002E7A4 1000BF8F */  lw         $ra, 0x10($sp)
/* 1EFA8 8002E7A8 00000000 */  nop
/* 1EFAC 8002E7AC 0800E003 */  jr         $ra
/* 1EFB0 8002E7B0 1800BD27 */   addiu     $sp, $sp, 0x18
