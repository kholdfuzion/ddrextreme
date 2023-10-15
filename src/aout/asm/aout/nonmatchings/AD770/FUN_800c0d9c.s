.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0d9c
/* B159C 800C0D9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B15A0 800C0DA0 1000BFAF */  sw         $ra, 0x10($sp)
/* B15A4 800C0DA4 05FE020C */  jal        FUN_800bf814
/* B15A8 800C0DA8 00000000 */   nop
/* B15AC 800C0DAC 08004014 */  bnez       $v0, .L800C0DD0
/* B15B0 800C0DB0 FFFF0224 */   addiu     $v0, $zero, -1
/* B15B4 800C0DB4 1F80023C */  lui        $v0, %hi(D_801F7098)
/* B15B8 800C0DB8 98704324 */  addiu      $v1, $v0, %lo(D_801F7098)
/* B15BC 800C0DBC 98704490 */  lbu        $a0, 0x7098($v0)
/* B15C0 800C0DC0 02006690 */  lbu        $a2, 2($v1)
/* B15C4 800C0DC4 0203030C */  jal        FUN_800c0c08
/* B15C8 800C0DC8 01000524 */   addiu     $a1, $zero, 1
/* B15CC 800C0DCC 21100000 */  addu       $v0, $zero, $zero
.L800C0DD0:
/* B15D0 800C0DD0 1000BF8F */  lw         $ra, 0x10($sp)
/* B15D4 800C0DD4 00000000 */  nop
/* B15D8 800C0DD8 0800E003 */  jr         $ra
/* B15DC 800C0DDC 1800BD27 */   addiu     $sp, $sp, 0x18
