.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a7024
/* 97824 800A7024 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97828 800A7028 1000B0AF */  sw         $s0, 0x10($sp)
/* 9782C 800A702C 21808000 */  addu       $s0, $a0, $zero
/* 97830 800A7030 01000226 */  addiu      $v0, $s0, 1
/* 97834 800A7034 0200422C */  sltiu      $v0, $v0, 2
/* 97838 800A7038 03004010 */  beqz       $v0, .L800A7048
/* 9783C 800A703C 1400BFAF */   sw        $ra, 0x14($sp)
/* 97840 800A7040 949A020C */  jal        FUN_800a6a50
/* 97844 800A7044 21200000 */   addu      $a0, $zero, $zero
.L800A7048:
/* 97848 800A7048 01000224 */  addiu      $v0, $zero, 1
/* 9784C 800A704C 03000212 */  beq        $s0, $v0, .L800A705C
/* 97850 800A7050 FFFF0224 */   addiu     $v0, $zero, -1
/* 97854 800A7054 03000216 */  bne        $s0, $v0, .L800A7064
/* 97858 800A7058 00000000 */   nop
.L800A705C:
/* 9785C 800A705C 949A020C */  jal        FUN_800a6a50
/* 97860 800A7060 04000424 */   addiu     $a0, $zero, 4
.L800A7064:
/* 97864 800A7064 1400BF8F */  lw         $ra, 0x14($sp)
/* 97868 800A7068 1000B08F */  lw         $s0, 0x10($sp)
/* 9786C 800A706C 0800E003 */  jr         $ra
/* 97870 800A7070 1800BD27 */   addiu     $sp, $sp, 0x18
