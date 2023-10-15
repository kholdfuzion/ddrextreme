.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80069650
/* 59E50 80069650 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 59E54 80069654 0180043C */  lui        $a0, %hi(D_800146A0)
/* 59E58 80069658 1000BFAF */  sw         $ra, 0x10($sp)
/* 59E5C 8006965C 7878000C */  jal        getgameloopmode_8001e1e0
/* 59E60 80069660 A0468424 */   addiu     $a0, $a0, %lo(D_800146A0)
/* 59E64 80069664 1380033C */  lui        $v1, %hi(D_801280E0)
/* 59E68 80069668 E0806324 */  addiu      $v1, $v1, %lo(D_801280E0)
/* 59E6C 8006966C 21104300 */  addu       $v0, $v0, $v1
/* 59E70 80069670 1A80053C */  lui        $a1, 0x801a
/* 59E74 80069674 1380033C */  lui        $v1, %hi(D_801282E0)
/* 59E78 80069678 E0826324 */  addiu      $v1, $v1, %lo(D_801282E0)
/* 59E7C 8006967C 00004490 */  lbu        $a0, ($v0)
/* 59E80 80069680 1000BF8F */  lw         $ra, 0x10($sp)
/* 59E84 80069684 C0100400 */  sll        $v0, $a0, 3
/* 59E88 80069688 23104400 */  subu       $v0, $v0, $a0
/* 59E8C 8006968C 80100200 */  sll        $v0, $v0, 2
/* 59E90 80069690 21104300 */  addu       $v0, $v0, $v1
/* 59E94 80069694 E827A2AC */  sw         $v0, 0x27e8($a1)
/* 59E98 80069698 0800E003 */  jr         $ra
/* 59E9C 8006969C 1800BD27 */   addiu     $sp, $sp, 0x18
