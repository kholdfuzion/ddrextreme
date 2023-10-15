.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abbe0
/* 9C3E0 800ABBE0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9C3E4 800ABBE4 1000BFAF */  sw         $ra, 0x10($sp)
/* 9C3E8 800ABBE8 9019030C */  jal        FUN_800c6640
/* 9C3EC 800ABBEC 00000000 */   nop
/* 9C3F0 800ABBF0 03004014 */  bnez       $v0, .L800ABC00
/* 9C3F4 800ABBF4 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 9C3F8 800ABBF8 08AF0208 */  j          .L800ABC20
/* 9C3FC 800ABBFC 21100000 */   addu      $v0, $zero, $zero
.L800ABC00:
/* 9C400 800ABC00 28004484 */  lh         $a0, %lo(D_800F0028)($v0)
/* 9C404 800ABC04 2A000324 */  addiu      $v1, $zero, 0x2a
/* 9C408 800ABC08 04008310 */  beq        $a0, $v1, .L800ABC1C
/* 9C40C 800ABC0C 1580033C */   lui       $v1, %hi(D_8014BA8C)
/* 9C410 800ABC10 8CBA6284 */  lh         $v0, %lo(D_8014BA8C)($v1)
/* 9C414 800ABC14 08AF0208 */  j          .L800ABC20
/* 9C418 800ABC18 2B100200 */   sltu      $v0, $zero, $v0
.L800ABC1C:
/* 9C41C 800ABC1C 01000224 */  addiu      $v0, $zero, 1
.L800ABC20:
/* 9C420 800ABC20 1000BF8F */  lw         $ra, 0x10($sp)
/* 9C424 800ABC24 00000000 */  nop
/* 9C428 800ABC28 0800E003 */  jr         $ra
/* 9C42C 800ABC2C 1800BD27 */   addiu     $sp, $sp, 0x18
