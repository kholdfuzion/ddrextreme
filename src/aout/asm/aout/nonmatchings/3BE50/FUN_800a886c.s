.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a886c
/* 9906C 800A886C F900822C */  sltiu      $v0, $a0, 0xf9
/* 99070 800A8870 07004010 */  beqz       $v0, .L800A8890
/* 99074 800A8874 1C80023C */   lui       $v0, %hi(D_801BF788)
/* 99078 800A8878 88F74224 */  addiu      $v0, $v0, %lo(D_801BF788)
/* 9907C 800A887C 80180400 */  sll        $v1, $a0, 2
/* 99080 800A8880 21186200 */  addu       $v1, $v1, $v0
/* 99084 800A8884 0000628C */  lw         $v0, ($v1)
/* 99088 800A8888 0800E003 */  jr         $ra
/* 9908C 800A888C 00000000 */   nop
.L800A8890:
/* 99090 800A8890 0800E003 */  jr         $ra
/* 99094 800A8894 21100000 */   addu      $v0, $zero, $zero
