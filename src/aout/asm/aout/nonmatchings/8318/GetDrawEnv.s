.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GetDrawEnv
/* 935C 80018B5C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9360 80018B60 1000B0AF */  sw         $s0, 0x10($sp)
/* 9364 80018B64 21808000 */  addu       $s0, $a0, $zero
/* 9368 80018B68 0D80053C */  lui        $a1, %hi(D_800D2BA8)
/* 936C 80018B6C A82BA524 */  addiu      $a1, $a1, %lo(D_800D2BA8)
/* 9370 80018B70 1400BFAF */  sw         $ra, 0x14($sp)
/* 9374 80018B74 BD6B000C */  jal        memcpy
/* 9378 80018B78 5C000624 */   addiu     $a2, $zero, 0x5c
/* 937C 80018B7C 21100002 */  addu       $v0, $s0, $zero
/* 9380 80018B80 1400BF8F */  lw         $ra, 0x14($sp)
/* 9384 80018B84 1000B08F */  lw         $s0, 0x10($sp)
/* 9388 80018B88 0800E003 */  jr         $ra
/* 938C 80018B8C 1800BD27 */   addiu     $sp, $sp, 0x18
