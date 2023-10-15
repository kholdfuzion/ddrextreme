.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80043bdc
/* 343DC 80043BDC 0000828C */  lw         $v0, ($a0)
/* 343E0 80043BE0 00000000 */  nop
/* 343E4 80043BE4 000045A0 */  sb         $a1, ($v0)
/* 343E8 80043BE8 01004224 */  addiu      $v0, $v0, 1
/* 343EC 80043BEC 0800E003 */  jr         $ra
/* 343F0 80043BF0 000082AC */   sw        $v0, ($a0)
