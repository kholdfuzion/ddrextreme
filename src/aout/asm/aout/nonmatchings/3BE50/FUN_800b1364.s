.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1364
/* A1B64 800B1364 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1B68 800B1368 1800BFAF */  sw         $ra, 0x18($sp)
/* A1B6C 800B136C 21200000 */  addu       $a0, $zero, $zero
/* A1B70 800B1370 08000524 */  addiu      $a1, $zero, 8
/* A1B74 800B1374 1000A627 */  addiu      $a2, $sp, 0x10
/* A1B78 800B1378 21FD020C */  jal        FUN_800bf484
/* A1B7C 800B137C 21380000 */   addu      $a3, $zero, $zero
/* A1B80 800B1380 0F004014 */  bnez       $v0, .L800B13C0
/* A1B84 800B1384 FFFF0224 */   addiu     $v0, $zero, -1
/* A1B88 800B1388 1400A28F */  lw         $v0, 0x14($sp)
/* A1B8C 800B138C 00000000 */  nop
/* A1B90 800B1390 0A004010 */  beqz       $v0, .L800B13BC
/* A1B94 800B1394 21200000 */   addu      $a0, $zero, $zero
/* A1B98 800B1398 03000524 */  addiu      $a1, $zero, 3
/* A1B9C 800B139C 21300000 */  addu       $a2, $zero, $zero
/* A1BA0 800B13A0 21FD020C */  jal        FUN_800bf484
/* A1BA4 800B13A4 21380000 */   addu      $a3, $zero, $zero
/* A1BA8 800B13A8 21184000 */  addu       $v1, $v0, $zero
/* A1BAC 800B13AC 04006014 */  bnez       $v1, .L800B13C0
/* A1BB0 800B13B0 FFFF0224 */   addiu     $v0, $zero, -1
/* A1BB4 800B13B4 F0C40208 */  j          .L800B13C0
/* A1BB8 800B13B8 03000224 */   addiu     $v0, $zero, 3
.L800B13BC:
/* A1BBC 800B13BC 01000224 */  addiu      $v0, $zero, 1
.L800B13C0:
/* A1BC0 800B13C0 1800BF8F */  lw         $ra, 0x18($sp)
/* A1BC4 800B13C4 00000000 */  nop
/* A1BC8 800B13C8 0800E003 */  jr         $ra
/* A1BCC 800B13CC 2000BD27 */   addiu     $sp, $sp, 0x20
