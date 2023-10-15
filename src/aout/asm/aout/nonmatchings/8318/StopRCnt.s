.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel StopRCnt
/* 8708 80017F08 FFFF8430 */  andi       $a0, $a0, 0xffff
/* 870C 80017F0C 80200400 */  sll        $a0, $a0, 2
/* 8710 80017F10 0D80053C */  lui        $a1, %hi(D_800D2B28)
/* 8714 80017F14 282BA58C */  lw         $a1, %lo(D_800D2B28)($a1)
/* 8718 80017F18 0D80023C */  lui        $v0, %hi(D_800D2B30)
/* 871C 80017F1C 21104400 */  addu       $v0, $v0, $a0
/* 8720 80017F20 302B428C */  lw         $v0, %lo(D_800D2B30)($v0)
/* 8724 80017F24 0400A38C */  lw         $v1, 4($a1)
/* 8728 80017F28 27100200 */  nor        $v0, $zero, $v0
/* 872C 80017F2C 24186200 */  and        $v1, $v1, $v0
/* 8730 80017F30 01000224 */  addiu      $v0, $zero, 1
/* 8734 80017F34 0800E003 */  jr         $ra
/* 8738 80017F38 0400A3AC */   sw        $v1, 4($a1)
