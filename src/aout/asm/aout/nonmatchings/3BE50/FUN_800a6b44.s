.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6b44
/* 97344 800A6B44 1B80023C */  lui        $v0, %hi(D_801B2EC0)
/* 97348 800A6B48 C02E4224 */  addiu      $v0, $v0, %lo(D_801B2EC0)
/* 9734C 800A6B4C 80200400 */  sll        $a0, $a0, 2
/* 97350 800A6B50 21208200 */  addu       $a0, $a0, $v0
/* 97354 800A6B54 0800E003 */  jr         $ra
/* 97358 800A6B58 000085AC */   sw        $a1, ($a0)
