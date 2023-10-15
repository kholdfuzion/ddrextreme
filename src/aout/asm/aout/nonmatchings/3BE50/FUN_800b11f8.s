.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b11f8
/* A19F8 800B11F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A19FC 800B11FC 1000A4AF */  sw         $a0, 0x10($sp)
/* A1A00 800B1200 21200000 */  addu       $a0, $zero, $zero
/* A1A04 800B1204 0A000524 */  addiu      $a1, $zero, 0xa
/* A1A08 800B1208 1000A627 */  addiu      $a2, $sp, 0x10
/* A1A0C 800B120C 1800BFAF */  sw         $ra, 0x18($sp)
/* A1A10 800B1210 21FD020C */  jal        FUN_800bf484
/* A1A14 800B1214 21380000 */   addu      $a3, $zero, $zero
/* A1A18 800B1218 21184000 */  addu       $v1, $v0, $zero
/* A1A1C 800B121C 02006010 */  beqz       $v1, .L800B1228
/* A1A20 800B1220 21100000 */   addu      $v0, $zero, $zero
/* A1A24 800B1224 FFFF0224 */  addiu      $v0, $zero, -1
.L800B1228:
/* A1A28 800B1228 1800BF8F */  lw         $ra, 0x18($sp)
/* A1A2C 800B122C 00000000 */  nop
/* A1A30 800B1230 0800E003 */  jr         $ra
/* A1A34 800B1234 2000BD27 */   addiu     $sp, $sp, 0x20
