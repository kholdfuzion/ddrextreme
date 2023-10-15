.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2644
/* 92E44 800A2644 1B80023C */  lui        $v0, %hi(D_801B2B88)
/* 92E48 800A2648 882B448C */  lw         $a0, %lo(D_801B2B88)($v0)
/* 92E4C 800A264C 00000000 */  nop
/* 92E50 800A2650 0000838C */  lw         $v1, ($a0)
/* 92E54 800A2654 00000000 */  nop
/* 92E58 800A2658 FFFF6224 */  addiu      $v0, $v1, -1
/* 92E5C 800A265C 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92E60 800A2660 03004014 */  bnez       $v0, .L800A2670
/* 92E64 800A2664 80100300 */   sll       $v0, $v1, 2
/* 92E68 800A2668 0800E003 */  jr         $ra
/* 92E6C 800A266C 21100000 */   addu      $v0, $zero, $zero
.L800A2670:
/* 92E70 800A2670 21108200 */  addu       $v0, $a0, $v0
/* 92E74 800A2674 0400428C */  lw         $v0, 4($v0)
/* 92E78 800A2678 00000000 */  nop
/* 92E7C 800A267C 04004010 */  beqz       $v0, .L800A2690
/* 92E80 800A2680 00000000 */   nop
/* 92E84 800A2684 0C004284 */  lh         $v0, 0xc($v0)
/* 92E88 800A2688 0800E003 */  jr         $ra
/* 92E8C 800A268C 00000000 */   nop
.L800A2690:
/* 92E90 800A2690 0800E003 */  jr         $ra
/* 92E94 800A2694 21100000 */   addu      $v0, $zero, $zero
