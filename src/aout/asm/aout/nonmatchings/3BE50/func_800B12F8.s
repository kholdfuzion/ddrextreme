.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B12F8
/* A1AF8 800B12F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1AFC 800B12FC 1800BFAF */  sw         $ra, 0x18($sp)
/* A1B00 800B1300 21200000 */  addu       $a0, $zero, $zero
/* A1B04 800B1304 08000524 */  addiu      $a1, $zero, 8
/* A1B08 800B1308 1000A627 */  addiu      $a2, $sp, 0x10
/* A1B0C 800B130C 21FD020C */  jal        FUN_800bf484
/* A1B10 800B1310 21380000 */   addu      $a3, $zero, $zero
/* A1B14 800B1314 0F004014 */  bnez       $v0, .L800B1354
/* A1B18 800B1318 FFFF0224 */   addiu     $v0, $zero, -1
/* A1B1C 800B131C 1400A28F */  lw         $v0, 0x14($sp)
/* A1B20 800B1320 00000000 */  nop
/* A1B24 800B1324 0A004014 */  bnez       $v0, .L800B1350
/* A1B28 800B1328 21200000 */   addu      $a0, $zero, $zero
/* A1B2C 800B132C 02000524 */  addiu      $a1, $zero, 2
/* A1B30 800B1330 21300000 */  addu       $a2, $zero, $zero
/* A1B34 800B1334 21FD020C */  jal        FUN_800bf484
/* A1B38 800B1338 21380000 */   addu      $a3, $zero, $zero
/* A1B3C 800B133C 21184000 */  addu       $v1, $v0, $zero
/* A1B40 800B1340 04006014 */  bnez       $v1, .L800B1354
/* A1B44 800B1344 FFFF0224 */   addiu     $v0, $zero, -1
/* A1B48 800B1348 D5C40208 */  j          .L800B1354
/* A1B4C 800B134C 02000224 */   addiu     $v0, $zero, 2
.L800B1350:
/* A1B50 800B1350 01000224 */  addiu      $v0, $zero, 1
.L800B1354:
/* A1B54 800B1354 1800BF8F */  lw         $ra, 0x18($sp)
/* A1B58 800B1358 00000000 */  nop
/* A1B5C 800B135C 0800E003 */  jr         $ra
/* A1B60 800B1360 2000BD27 */   addiu     $sp, $sp, 0x20
