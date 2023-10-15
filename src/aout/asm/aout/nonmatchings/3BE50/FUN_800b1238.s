.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1238
/* A1A38 800B1238 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1A3C 800B123C 1800BFAF */  sw         $ra, 0x18($sp)
/* A1A40 800B1240 21200000 */  addu       $a0, $zero, $zero
/* A1A44 800B1244 08000524 */  addiu      $a1, $zero, 8
/* A1A48 800B1248 1000A627 */  addiu      $a2, $sp, 0x10
/* A1A4C 800B124C 21FD020C */  jal        FUN_800bf484
/* A1A50 800B1250 21380000 */   addu      $a3, $zero, $zero
/* A1A54 800B1254 24004014 */  bnez       $v0, .L800B12E8
/* A1A58 800B1258 FFFF0224 */   addiu     $v0, $zero, -1
/* A1A5C 800B125C 1400A28F */  lw         $v0, 0x14($sp)
/* A1A60 800B1260 00000000 */  nop
/* A1A64 800B1264 20004014 */  bnez       $v0, .L800B12E8
/* A1A68 800B1268 01000224 */   addiu     $v0, $zero, 1
/* A1A6C 800B126C 21200000 */  addu       $a0, $zero, $zero
/* A1A70 800B1270 01000524 */  addiu      $a1, $zero, 1
/* A1A74 800B1274 21300000 */  addu       $a2, $zero, $zero
/* A1A78 800B1278 21FD020C */  jal        FUN_800bf484
/* A1A7C 800B127C 21380000 */   addu      $a3, $zero, $zero
/* A1A80 800B1280 19004014 */  bnez       $v0, .L800B12E8
/* A1A84 800B1284 FFFF0224 */   addiu     $v0, $zero, -1
/* A1A88 800B1288 21200000 */  addu       $a0, $zero, $zero
/* A1A8C 800B128C 21280000 */  addu       $a1, $zero, $zero
/* A1A90 800B1290 21300000 */  addu       $a2, $zero, $zero
/* A1A94 800B1294 21FD020C */  jal        FUN_800bf484
/* A1A98 800B1298 21380000 */   addu      $a3, $zero, $zero
/* A1A9C 800B129C 12004014 */  bnez       $v0, .L800B12E8
/* A1AA0 800B12A0 FFFF0224 */   addiu     $v0, $zero, -1
/* A1AA4 800B12A4 21200000 */  addu       $a0, $zero, $zero
/* A1AA8 800B12A8 02000524 */  addiu      $a1, $zero, 2
/* A1AAC 800B12AC 21300000 */  addu       $a2, $zero, $zero
/* A1AB0 800B12B0 21FD020C */  jal        FUN_800bf484
/* A1AB4 800B12B4 21380000 */   addu      $a3, $zero, $zero
/* A1AB8 800B12B8 0A004014 */  bnez       $v0, .L800B12E4
/* A1ABC 800B12BC 21200000 */   addu      $a0, $zero, $zero
/* A1AC0 800B12C0 15000524 */  addiu      $a1, $zero, 0x15
/* A1AC4 800B12C4 21300000 */  addu       $a2, $zero, $zero
/* A1AC8 800B12C8 21FD020C */  jal        FUN_800bf484
/* A1ACC 800B12CC 21380000 */   addu      $a3, $zero, $zero
/* A1AD0 800B12D0 21184000 */  addu       $v1, $v0, $zero
/* A1AD4 800B12D4 04006014 */  bnez       $v1, .L800B12E8
/* A1AD8 800B12D8 FFFF0224 */   addiu     $v0, $zero, -1
/* A1ADC 800B12DC BAC40208 */  j          .L800B12E8
/* A1AE0 800B12E0 02000224 */   addiu     $v0, $zero, 2
.L800B12E4:
/* A1AE4 800B12E4 FFFF0224 */  addiu      $v0, $zero, -1
.L800B12E8:
/* A1AE8 800B12E8 1800BF8F */  lw         $ra, 0x18($sp)
/* A1AEC 800B12EC 00000000 */  nop
/* A1AF0 800B12F0 0800E003 */  jr         $ra
/* A1AF4 800B12F4 2000BD27 */   addiu     $sp, $sp, 0x20
