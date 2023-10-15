.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0de0
/* B15E0 800C0DE0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B15E4 800C0DE4 1000BFAF */  sw         $ra, 0x10($sp)
/* B15E8 800C0DE8 05FE020C */  jal        FUN_800bf814
/* B15EC 800C0DEC 00000000 */   nop
/* B15F0 800C0DF0 03004014 */  bnez       $v0, .L800C0E00
/* B15F4 800C0DF4 1F80023C */   lui       $v0, %hi(D_801F7098)
/* B15F8 800C0DF8 86030308 */  j          .L800C0E18
/* B15FC 800C0DFC FFFF0224 */   addiu     $v0, $zero, -1
.L800C0E00:
/* B1600 800C0E00 98704324 */  addiu      $v1, $v0, %lo(D_801F7098)
/* B1604 800C0E04 98704490 */  lbu        $a0, 0x7098($v0)
/* B1608 800C0E08 02006690 */  lbu        $a2, 2($v1)
/* B160C 800C0E0C 0203030C */  jal        FUN_800c0c08
/* B1610 800C0E10 21280000 */   addu      $a1, $zero, $zero
/* B1614 800C0E14 21100000 */  addu       $v0, $zero, $zero
.L800C0E18:
/* B1618 800C0E18 1000BF8F */  lw         $ra, 0x10($sp)
/* B161C 800C0E1C 00000000 */  nop
/* B1620 800C0E20 0800E003 */  jr         $ra
/* B1624 800C0E24 1800BD27 */   addiu     $sp, $sp, 0x18
