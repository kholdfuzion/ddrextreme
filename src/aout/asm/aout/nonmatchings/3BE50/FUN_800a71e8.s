.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a71e8
/* 979E8 800A71E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 979EC 800A71EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 979F0 800A71F0 21808000 */  addu       $s0, $a0, $zero
/* 979F4 800A71F4 01000226 */  addiu      $v0, $s0, 1
/* 979F8 800A71F8 0200422C */  sltiu      $v0, $v0, 2
/* 979FC 800A71FC 03004010 */  beqz       $v0, .L800A720C
/* 97A00 800A7200 1400BFAF */   sw        $ra, 0x14($sp)
/* 97A04 800A7204 949A020C */  jal        FUN_800a6a50
/* 97A08 800A7208 03000424 */   addiu     $a0, $zero, 3
.L800A720C:
/* 97A0C 800A720C 01000224 */  addiu      $v0, $zero, 1
/* 97A10 800A7210 03000212 */  beq        $s0, $v0, .L800A7220
/* 97A14 800A7214 FFFF0224 */   addiu     $v0, $zero, -1
/* 97A18 800A7218 04000216 */  bne        $s0, $v0, .L800A722C
/* 97A1C 800A721C 01000226 */   addiu     $v0, $s0, 1
.L800A7220:
/* 97A20 800A7220 949A020C */  jal        FUN_800a6a50
/* 97A24 800A7224 07000424 */   addiu     $a0, $zero, 7
/* 97A28 800A7228 01000226 */  addiu      $v0, $s0, 1
.L800A722C:
/* 97A2C 800A722C 0200422C */  sltiu      $v0, $v0, 2
/* 97A30 800A7230 04004010 */  beqz       $v0, .L800A7244
/* 97A34 800A7234 01000224 */   addiu     $v0, $zero, 1
/* 97A38 800A7238 949A020C */  jal        FUN_800a6a50
/* 97A3C 800A723C 01000424 */   addiu     $a0, $zero, 1
/* 97A40 800A7240 01000224 */  addiu      $v0, $zero, 1
.L800A7244:
/* 97A44 800A7244 03000212 */  beq        $s0, $v0, .L800A7254
/* 97A48 800A7248 FFFF0224 */   addiu     $v0, $zero, -1
/* 97A4C 800A724C 03000216 */  bne        $s0, $v0, .L800A725C
/* 97A50 800A7250 00000000 */   nop
.L800A7254:
/* 97A54 800A7254 949A020C */  jal        FUN_800a6a50
/* 97A58 800A7258 05000424 */   addiu     $a0, $zero, 5
.L800A725C:
/* 97A5C 800A725C 1400BF8F */  lw         $ra, 0x14($sp)
/* 97A60 800A7260 1000B08F */  lw         $s0, 0x10($sp)
/* 97A64 800A7264 0800E003 */  jr         $ra
/* 97A68 800A7268 1800BD27 */   addiu     $sp, $sp, 0x18
