.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a280c
/* 9300C 800A280C 1B80023C */  lui        $v0, %hi(D_801B2B88)
/* 93010 800A2810 882B458C */  lw         $a1, %lo(D_801B2B88)($v0)
/* 93014 800A2814 00000000 */  nop
/* 93018 800A2818 0000A38C */  lw         $v1, ($a1)
/* 9301C 800A281C 00000000 */  nop
/* 93020 800A2820 FFFF6224 */  addiu      $v0, $v1, -1
/* 93024 800A2824 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 93028 800A2828 06004010 */  beqz       $v0, .L800A2844
/* 9302C 800A282C 80100300 */   sll       $v0, $v1, 2
/* 93030 800A2830 2110A200 */  addu       $v0, $a1, $v0
/* 93034 800A2834 0400458C */  lw         $a1, 4($v0)
/* 93038 800A2838 00000000 */  nop
/* 9303C 800A283C 0300A014 */  bnez       $a1, .L800A284C
/* 93040 800A2840 00000000 */   nop
.L800A2844:
/* 93044 800A2844 0800E003 */  jr         $ra
/* 93048 800A2848 21100000 */   addu      $v0, $zero, $zero
.L800A284C:
/* 9304C 800A284C 0000A28C */  lw         $v0, ($a1)
/* 93050 800A2850 00000000 */  nop
/* 93054 800A2854 2B108200 */  sltu       $v0, $a0, $v0
/* 93058 800A2858 FAFF4010 */  beqz       $v0, .L800A2844
/* 9305C 800A285C 40180400 */   sll       $v1, $a0, 1
/* 93060 800A2860 21186400 */  addu       $v1, $v1, $a0
/* 93064 800A2864 80180300 */  sll        $v1, $v1, 2
/* 93068 800A2868 2118A300 */  addu       $v1, $a1, $v1
/* 9306C 800A286C 23006290 */  lbu        $v0, 0x23($v1)
/* 93070 800A2870 0800E003 */  jr         $ra
/* 93074 800A2874 00000000 */   nop
