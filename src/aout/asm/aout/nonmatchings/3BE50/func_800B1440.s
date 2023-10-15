.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B1440
/* A1C40 800B1440 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A1C44 800B1444 1000BFAF */  sw         $ra, 0x10($sp)
/* A1C48 800B1448 21200000 */  addu       $a0, $zero, $zero
/* A1C4C 800B144C 06000524 */  addiu      $a1, $zero, 6
/* A1C50 800B1450 21300000 */  addu       $a2, $zero, $zero
/* A1C54 800B1454 21FD020C */  jal        FUN_800bf484
/* A1C58 800B1458 21380000 */   addu      $a3, $zero, $zero
/* A1C5C 800B145C 21184000 */  addu       $v1, $v0, $zero
/* A1C60 800B1460 02006010 */  beqz       $v1, .L800B146C
/* A1C64 800B1464 21100000 */   addu      $v0, $zero, $zero
/* A1C68 800B1468 FFFF0224 */  addiu      $v0, $zero, -1
.L800B146C:
/* A1C6C 800B146C 1000BF8F */  lw         $ra, 0x10($sp)
/* A1C70 800B1470 00000000 */  nop
/* A1C74 800B1474 0800E003 */  jr         $ra
/* A1C78 800B1478 1800BD27 */   addiu     $sp, $sp, 0x18
