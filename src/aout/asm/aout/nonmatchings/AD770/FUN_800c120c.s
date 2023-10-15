.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c120c
/* B1A0C 800C120C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B1A10 800C1210 1800BFAF */  sw         $ra, 0x18($sp)
/* B1A14 800C1214 3CFE020C */  jal        FUN_800bf8f0
/* B1A18 800C1218 00000000 */   nop
/* B1A1C 800C121C E302030C */  jal        FUN_800c0b8c
/* B1A20 800C1220 1000A427 */   addiu     $a0, $sp, 0x10
/* B1A24 800C1224 21184000 */  addu       $v1, $v0, $zero
/* B1A28 800C1228 FEFF0224 */  addiu      $v0, $zero, -2
/* B1A2C 800C122C 04006210 */  beq        $v1, $v0, .L800C1240
/* B1A30 800C1230 00000000 */   nop
/* B1A34 800C1234 02006014 */  bnez       $v1, .L800C1240
/* B1A38 800C1238 FFFF0224 */   addiu     $v0, $zero, -1
/* B1A3C 800C123C 21100000 */  addu       $v0, $zero, $zero
.L800C1240:
/* B1A40 800C1240 1800BF8F */  lw         $ra, 0x18($sp)
/* B1A44 800C1244 00000000 */  nop
/* B1A48 800C1248 0800E003 */  jr         $ra
/* B1A4C 800C124C 2000BD27 */   addiu     $sp, $sp, 0x20
