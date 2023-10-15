.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a1a4
/* 3A9A4 8004A1A4 1780023C */  lui        $v0, %hi(D_8016EB40)
/* 3A9A8 8004A1A8 40EB4224 */  addiu      $v0, $v0, %lo(D_8016EB40)
/* 3A9AC 8004A1AC 80200400 */  sll        $a0, $a0, 2
/* 3A9B0 8004A1B0 21188200 */  addu       $v1, $a0, $v0
/* 3A9B4 8004A1B4 21104400 */  addu       $v0, $v0, $a0
/* 3A9B8 8004A1B8 000065A4 */  sh         $a1, ($v1)
/* 3A9BC 8004A1BC 020040A4 */  sh         $zero, 2($v0)
/* 3A9C0 8004A1C0 0800E003 */  jr         $ra
/* 3A9C4 8004A1C4 21100000 */   addu      $v0, $zero, $zero
