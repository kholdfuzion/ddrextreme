.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cc08
/* 1D408 8002CC08 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1D40C 8002CC0C 1000B0AF */  sw         $s0, 0x10($sp)
/* 1D410 8002CC10 21808000 */  addu       $s0, $a0, $zero
/* 1D414 8002CC14 21200000 */  addu       $a0, $zero, $zero
/* 1D418 8002CC18 1400BFAF */  sw         $ra, 0x14($sp)
/* 1D41C 8002CC1C 4C0000AE */  sw         $zero, 0x4c($s0)
/* 1D420 8002CC20 A5E9020C */  jal        FUN_800ba694
/* 1D424 8002CC24 500000AE */   sw        $zero, 0x50($s0)
/* 1D428 8002CC28 AFE9020C */  jal        FUN_800ba6bc
/* 1D42C 8002CC2C 580002AE */   sw        $v0, 0x58($s0)
/* 1D430 8002CC30 03004018 */  blez       $v0, .L8002CC40
/* 1D434 8002CC34 00000000 */   nop
/* 1D438 8002CC38 11B30008 */  j          .L8002CC44
/* 1D43C 8002CC3C 540002AE */   sw        $v0, 0x54($s0)
.L8002CC40:
/* 1D440 8002CC40 540000AE */  sw         $zero, 0x54($s0)
.L8002CC44:
/* 1D444 8002CC44 2DB3000C */  jal        FUN_8002ccb4
/* 1D448 8002CC48 04000424 */   addiu     $a0, $zero, 4
/* 1D44C 8002CC4C 1400BF8F */  lw         $ra, 0x14($sp)
/* 1D450 8002CC50 1000B08F */  lw         $s0, 0x10($sp)
/* 1D454 8002CC54 01000224 */  addiu      $v0, $zero, 1
/* 1D458 8002CC58 0800E003 */  jr         $ra
/* 1D45C 8002CC5C 1800BD27 */   addiu     $sp, $sp, 0x18
