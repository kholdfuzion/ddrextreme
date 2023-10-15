.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80055940
/* 46140 80055940 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 46144 80055944 1000BFAF */  sw         $ra, 0x10($sp)
/* 46148 80055948 D20B010C */  jal        FUN_80042f48
/* 4614C 8005594C 00000000 */   nop
/* 46150 80055950 2B000424 */  addiu      $a0, $zero, 0x2b
/* 46154 80055954 FFFF0524 */  addiu      $a1, $zero, -1
/* 46158 80055958 8876000C */  jal        FUN_8001da20
/* 4615C 8005595C FFFF0624 */   addiu     $a2, $zero, -1
/* 46160 80055960 29000424 */  addiu      $a0, $zero, 0x29
/* 46164 80055964 FFFF0524 */  addiu      $a1, $zero, -1
/* 46168 80055968 8876000C */  jal        FUN_8001da20
/* 4616C 8005596C FFFF0624 */   addiu     $a2, $zero, -1
/* 46170 80055970 9358020C */  jal        FUN_8009624c
/* 46174 80055974 00000000 */   nop
/* 46178 80055978 ED58020C */  jal        FUN_800963b4
/* 4617C 8005597C 00000000 */   nop
/* 46180 80055980 0359020C */  jal        FUN_8009640c
/* 46184 80055984 21200000 */   addu      $a0, $zero, $zero
/* 46188 80055988 7D4F010C */  jal        FUN_80053df4
/* 4618C 8005598C 00000000 */   nop
/* 46190 80055990 1000BF8F */  lw         $ra, 0x10($sp)
/* 46194 80055994 00000000 */  nop
/* 46198 80055998 0800E003 */  jr         $ra
/* 4619C 8005599C 1800BD27 */   addiu     $sp, $sp, 0x18
