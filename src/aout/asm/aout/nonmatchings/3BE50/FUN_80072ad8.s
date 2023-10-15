.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80072ad8
/* 632D8 80072AD8 1B80023C */  lui        $v0, %hi(D_801AFBF4)
/* 632DC 80072ADC F4FB428C */  lw         $v0, %lo(D_801AFBF4)($v0)
/* 632E0 80072AE0 00000000 */  nop
/* 632E4 80072AE4 B8004384 */  lh         $v1, 0xb8($v0)
/* 632E8 80072AE8 00000000 */  nop
/* 632EC 80072AEC 03006014 */  bnez       $v1, .L80072AFC
/* 632F0 80072AF0 00000000 */   nop
/* 632F4 80072AF4 0800E003 */  jr         $ra
/* 632F8 80072AF8 FFFF0224 */   addiu     $v0, $zero, -1
.L80072AFC:
/* 632FC 80072AFC 03008104 */  bgez       $a0, .L80072B0C
/* 63300 80072B00 00000000 */   nop
/* 63304 80072B04 0800E003 */  jr         $ra
/* 63308 80072B08 21100000 */   addu      $v0, $zero, $zero
.L80072B0C:
/* 6330C 80072B0C C20044A4 */  sh         $a0, 0xc2($v0)
/* 63310 80072B10 00140400 */  sll        $v0, $a0, 0x10
/* 63314 80072B14 0800E003 */  jr         $ra
/* 63318 80072B18 03140200 */   sra       $v0, $v0, 0x10
