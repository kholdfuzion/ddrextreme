.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002A878
/* 1B078 8002A878 1580023C */  lui        $v0, %hi(D_8014BA60)
/* 1B07C 8002A87C 60BA4384 */  lh         $v1, %lo(D_8014BA60)($v0)
/* 1B080 8002A880 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1B084 8002A884 1400BFAF */  sw         $ra, 0x14($sp)
/* 1B088 8002A888 1000B0AF */  sw         $s0, 0x10($sp)
/* 1B08C 8002A88C 12006014 */  bnez       $v1, .L8002A8D8
/* 1B090 8002A890 FFFF0224 */   addiu     $v0, $zero, -1
/* 1B094 8002A894 FFFF0224 */  addiu      $v0, $zero, -1
/* 1B098 8002A898 0C008214 */  bne        $a0, $v0, .L8002A8CC
/* 1B09C 8002A89C 21800000 */   addu      $s0, $zero, $zero
/* 1B0A0 8002A8A0 01A7000C */  jal        coin_partialcredits_80029c04
/* 1B0A4 8002A8A4 21200000 */   addu      $a0, $zero, $zero
/* 1B0A8 8002A8A8 05004014 */  bnez       $v0, .L8002A8C0
/* 1B0AC 8002A8AC 00000000 */   nop
/* 1B0B0 8002A8B0 01A7000C */  jal        coin_partialcredits_80029c04
/* 1B0B4 8002A8B4 01000424 */   addiu     $a0, $zero, 1
/* 1B0B8 8002A8B8 07004010 */  beqz       $v0, .L8002A8D8
/* 1B0BC 8002A8BC 21100002 */   addu      $v0, $s0, $zero
.L8002A8C0:
/* 1B0C0 8002A8C0 01001024 */  addiu      $s0, $zero, 1
/* 1B0C4 8002A8C4 36AA0008 */  j          .L8002A8D8
/* 1B0C8 8002A8C8 21100002 */   addu      $v0, $s0, $zero
.L8002A8CC:
/* 1B0CC 8002A8CC 01A7000C */  jal        coin_partialcredits_80029c04
/* 1B0D0 8002A8D0 00000000 */   nop
/* 1B0D4 8002A8D4 2B100200 */  sltu       $v0, $zero, $v0
.L8002A8D8:
/* 1B0D8 8002A8D8 1400BF8F */  lw         $ra, 0x14($sp)
/* 1B0DC 8002A8DC 1000B08F */  lw         $s0, 0x10($sp)
/* 1B0E0 8002A8E0 0800E003 */  jr         $ra
/* 1B0E4 8002A8E4 1800BD27 */   addiu     $sp, $sp, 0x18
