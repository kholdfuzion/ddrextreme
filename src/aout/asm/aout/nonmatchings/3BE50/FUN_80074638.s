.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80074638
/* 64E38 80074638 1B80033C */  lui        $v1, %hi(D_801B0C98)
/* 64E3C 8007463C 980C6624 */  addiu      $a2, $v1, %lo(D_801B0C98)
/* 64E40 80074640 80100400 */  sll        $v0, $a0, 2
/* 64E44 80074644 21104400 */  addu       $v0, $v0, $a0
/* 64E48 80074648 80280200 */  sll        $a1, $v0, 2
/* 64E4C 8007464C 0C00C324 */  addiu      $v1, $a2, 0xc
/* 64E50 80074650 2120A300 */  addu       $a0, $a1, $v1
/* 64E54 80074654 0000838C */  lw         $v1, ($a0)
/* 64E58 80074658 03000224 */  addiu      $v0, $zero, 3
/* 64E5C 8007465C 04006214 */  bne        $v1, $v0, .L80074670
/* 64E60 80074660 01000224 */   addiu     $v0, $zero, 1
/* 64E64 80074664 000082AC */  sw         $v0, ($a0)
/* 64E68 80074668 0800E003 */  jr         $ra
/* 64E6C 8007466C 21100000 */   addu      $v0, $zero, $zero
.L80074670:
/* 64E70 80074670 03006010 */  beqz       $v1, .L80074680
/* 64E74 80074674 21100000 */   addu      $v0, $zero, $zero
/* 64E78 80074678 0800E003 */  jr         $ra
/* 64E7C 8007467C FFFF0224 */   addiu     $v0, $zero, -1
.L80074680:
/* 64E80 80074680 01000324 */  addiu      $v1, $zero, 1
/* 64E84 80074684 000083AC */  sw         $v1, ($a0)
/* 64E88 80074688 2120A600 */  addu       $a0, $a1, $a2
/* 64E8C 8007468C 2118C500 */  addu       $v1, $a2, $a1
/* 64E90 80074690 000080AC */  sw         $zero, ($a0)
/* 64E94 80074694 0800E003 */  jr         $ra
/* 64E98 80074698 080060AC */   sw        $zero, 8($v1)
