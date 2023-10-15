.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001cc18
/* D418 8001CC18 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D41C 8001CC1C 1000BFAF */  sw         $ra, 0x10($sp)
/* D420 8001CC20 6D7F000C */  jal        FUN_8001fdb4
/* D424 8001CC24 04008424 */   addiu     $a0, $a0, 4
/* D428 8001CC28 C87A000C */  jal        FUN_8001eb20
/* D42C 8001CC2C 00000000 */   nop
/* D430 8001CC30 0F80033C */  lui        $v1, %hi(D_800EFFA8)
/* D434 8001CC34 A8FF628C */  lw         $v0, %lo(D_800EFFA8)($v1)
/* D438 8001CC38 00000000 */  nop
/* D43C 8001CC3C 1A004494 */  lhu        $a0, 0x1a($v0)
/* D440 8001CC40 00000000 */  nop
/* D444 8001CC44 00048430 */  andi       $a0, $a0, 0x400
/* D448 8001CC48 02008014 */  bnez       $a0, .L8001CC54
/* D44C 8001CC4C 21100000 */   addu      $v0, $zero, $zero
/* D450 8001CC50 03000224 */  addiu      $v0, $zero, 3
.L8001CC54:
/* D454 8001CC54 1000BF8F */  lw         $ra, 0x10($sp)
/* D458 8001CC58 00000000 */  nop
/* D45C 8001CC5C 0800E003 */  jr         $ra
/* D460 8001CC60 1800BD27 */   addiu     $sp, $sp, 0x18
