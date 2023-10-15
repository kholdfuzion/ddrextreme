.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6ac0
/* 972C0 800A6AC0 1B80033C */  lui        $v1, %hi(D_801B2EC0)
/* 972C4 800A6AC4 0180053C */  lui        $a1, %hi(D_80016B20)
/* 972C8 800A6AC8 206BA524 */  addiu      $a1, $a1, %lo(D_80016B20)
/* 972CC 800A6ACC C0200400 */  sll        $a0, $a0, 3
/* 972D0 800A6AD0 21108500 */  addu       $v0, $a0, $a1
/* 972D4 800A6AD4 C02E6324 */  addiu      $v1, $v1, %lo(D_801B2EC0)
/* 972D8 800A6AD8 2128A400 */  addu       $a1, $a1, $a0
/* 972DC 800A6ADC 0000468C */  lw         $a2, ($v0)
/* 972E0 800A6AE0 0400A28C */  lw         $v0, 4($a1)
/* 972E4 800A6AE4 80300600 */  sll        $a2, $a2, 2
/* 972E8 800A6AE8 2130C300 */  addu       $a2, $a2, $v1
/* 972EC 800A6AEC 0000C38C */  lw         $v1, ($a2)
/* 972F0 800A6AF0 27100200 */  nor        $v0, $zero, $v0
/* 972F4 800A6AF4 24186200 */  and        $v1, $v1, $v0
/* 972F8 800A6AF8 0800E003 */  jr         $ra
/* 972FC 800A6AFC 0000C3AC */   sw        $v1, ($a2)
