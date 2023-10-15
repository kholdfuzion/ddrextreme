.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a726c
/* 97A6C 800A726C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97A70 800A7270 1000B0AF */  sw         $s0, 0x10($sp)
/* 97A74 800A7274 21808000 */  addu       $s0, $a0, $zero
/* 97A78 800A7278 01000226 */  addiu      $v0, $s0, 1
/* 97A7C 800A727C 0200422C */  sltiu      $v0, $v0, 2
/* 97A80 800A7280 09004010 */  beqz       $v0, .L800A72A8
/* 97A84 800A7284 1400BFAF */   sw        $ra, 0x14($sp)
/* 97A88 800A7288 949A020C */  jal        FUN_800a6a50
/* 97A8C 800A728C 21200000 */   addu      $a0, $zero, $zero
/* 97A90 800A7290 949A020C */  jal        FUN_800a6a50
/* 97A94 800A7294 01000424 */   addiu     $a0, $zero, 1
/* 97A98 800A7298 949A020C */  jal        FUN_800a6a50
/* 97A9C 800A729C 02000424 */   addiu     $a0, $zero, 2
/* 97AA0 800A72A0 949A020C */  jal        FUN_800a6a50
/* 97AA4 800A72A4 03000424 */   addiu     $a0, $zero, 3
.L800A72A8:
/* 97AA8 800A72A8 01000224 */  addiu      $v0, $zero, 1
/* 97AAC 800A72AC 03000212 */  beq        $s0, $v0, .L800A72BC
/* 97AB0 800A72B0 FFFF0224 */   addiu     $v0, $zero, -1
/* 97AB4 800A72B4 09000216 */  bne        $s0, $v0, .L800A72DC
/* 97AB8 800A72B8 00000000 */   nop
.L800A72BC:
/* 97ABC 800A72BC 949A020C */  jal        FUN_800a6a50
/* 97AC0 800A72C0 04000424 */   addiu     $a0, $zero, 4
/* 97AC4 800A72C4 949A020C */  jal        FUN_800a6a50
/* 97AC8 800A72C8 05000424 */   addiu     $a0, $zero, 5
/* 97ACC 800A72CC 949A020C */  jal        FUN_800a6a50
/* 97AD0 800A72D0 06000424 */   addiu     $a0, $zero, 6
/* 97AD4 800A72D4 949A020C */  jal        FUN_800a6a50
/* 97AD8 800A72D8 07000424 */   addiu     $a0, $zero, 7
.L800A72DC:
/* 97ADC 800A72DC 1400BF8F */  lw         $ra, 0x14($sp)
/* 97AE0 800A72E0 1000B08F */  lw         $s0, 0x10($sp)
/* 97AE4 800A72E4 0800E003 */  jr         $ra
/* 97AE8 800A72E8 1800BD27 */   addiu     $sp, $sp, 0x18
