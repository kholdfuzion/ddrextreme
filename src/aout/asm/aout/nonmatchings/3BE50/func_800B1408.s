.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B1408
/* A1C08 800B1408 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1C0C 800B140C 1800BFAF */  sw         $ra, 0x18($sp)
/* A1C10 800B1410 21200000 */  addu       $a0, $zero, $zero
/* A1C14 800B1414 05000524 */  addiu      $a1, $zero, 5
/* A1C18 800B1418 1000A627 */  addiu      $a2, $sp, 0x10
/* A1C1C 800B141C 21FD020C */  jal        FUN_800bf484
/* A1C20 800B1420 21380000 */   addu      $a3, $zero, $zero
/* A1C24 800B1424 02004014 */  bnez       $v0, .L800B1430
/* A1C28 800B1428 FFFF0224 */   addiu     $v0, $zero, -1
/* A1C2C 800B142C 1400A297 */  lhu        $v0, 0x14($sp)
.L800B1430:
/* A1C30 800B1430 1800BF8F */  lw         $ra, 0x18($sp)
/* A1C34 800B1434 00000000 */  nop
/* A1C38 800B1438 0800E003 */  jr         $ra
/* A1C3C 800B143C 2000BD27 */   addiu     $sp, $sp, 0x20
