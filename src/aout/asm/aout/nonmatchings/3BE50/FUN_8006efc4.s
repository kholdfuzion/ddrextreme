.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006efc4
/* 5F7C4 8006EFC4 1B80023C */  lui        $v0, %hi(D_801AF990)
/* 5F7C8 8006EFC8 90F94224 */  addiu      $v0, $v0, %lo(D_801AF990)
/* 5F7CC 8006EFCC 80200400 */  sll        $a0, $a0, 2
/* 5F7D0 8006EFD0 21208200 */  addu       $a0, $a0, $v0
/* 5F7D4 8006EFD4 0800E003 */  jr         $ra
/* 5F7D8 8006EFD8 000085AC */   sw        $a1, ($a0)
