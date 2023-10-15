.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002caf4
/* 1D2F4 8002CAF4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1D2F8 8002CAF8 21280000 */  addu       $a1, $zero, $zero
/* 1D2FC 8002CAFC 60008624 */  addiu      $a2, $a0, 0x60
/* 1D300 8002CB00 1000BFAF */  sw         $ra, 0x10($sp)
/* 1D304 8002CB04 5E0080A4 */  sh         $zero, 0x5e($a0)
/* 1D308 8002CB08 5C0080A4 */  sh         $zero, 0x5c($a0)
/* 1D30C 8002CB0C 0100A424 */  addiu      $a0, $a1, 1
.L8002CB10:
/* 1D310 8002CB10 02000324 */  addiu      $v1, $zero, 2
/* 1D314 8002CB14 40100500 */  sll        $v0, $a1, 1
/* 1D318 8002CB18 21104500 */  addu       $v0, $v0, $a1
/* 1D31C 8002CB1C 40100200 */  sll        $v0, $v0, 1
/* 1D320 8002CB20 21104600 */  addu       $v0, $v0, $a2
/* 1D324 8002CB24 04004224 */  addiu      $v0, $v0, 4
.L8002CB28:
/* 1D328 8002CB28 000040A4 */  sh         $zero, ($v0)
/* 1D32C 8002CB2C FFFF6324 */  addiu      $v1, $v1, -1
/* 1D330 8002CB30 FDFF6104 */  bgez       $v1, .L8002CB28
/* 1D334 8002CB34 FEFF4224 */   addiu     $v0, $v0, -2
/* 1D338 8002CB38 21288000 */  addu       $a1, $a0, $zero
/* 1D33C 8002CB3C 0001A228 */  slti       $v0, $a1, 0x100
/* 1D340 8002CB40 F3FF4014 */  bnez       $v0, .L8002CB10
/* 1D344 8002CB44 0100A424 */   addiu     $a0, $a1, 1
/* 1D348 8002CB48 2DB3000C */  jal        FUN_8002ccb4
/* 1D34C 8002CB4C 01000424 */   addiu     $a0, $zero, 1
/* 1D350 8002CB50 1000BF8F */  lw         $ra, 0x10($sp)
/* 1D354 8002CB54 01000224 */  addiu      $v0, $zero, 1
/* 1D358 8002CB58 0800E003 */  jr         $ra
/* 1D35C 8002CB5C 1800BD27 */   addiu     $sp, $sp, 0x18
