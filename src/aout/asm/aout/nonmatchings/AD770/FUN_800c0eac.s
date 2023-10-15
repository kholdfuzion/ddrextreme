.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0eac
/* B16AC 800C0EAC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B16B0 800C0EB0 1800BFAF */  sw         $ra, 0x18($sp)
/* B16B4 800C0EB4 E302030C */  jal        FUN_800c0b8c
/* B16B8 800C0EB8 1000A427 */   addiu     $a0, $sp, 0x10
/* B16BC 800C0EBC 21184000 */  addu       $v1, $v0, $zero
/* B16C0 800C0EC0 FEFF0224 */  addiu      $v0, $zero, -2
/* B16C4 800C0EC4 04006210 */  beq        $v1, $v0, .L800C0ED8
/* B16C8 800C0EC8 00000000 */   nop
/* B16CC 800C0ECC 02006014 */  bnez       $v1, .L800C0ED8
/* B16D0 800C0ED0 FFFF0224 */   addiu     $v0, $zero, -1
/* B16D4 800C0ED4 21100000 */  addu       $v0, $zero, $zero
.L800C0ED8:
/* B16D8 800C0ED8 1800BF8F */  lw         $ra, 0x18($sp)
/* B16DC 800C0EDC 00000000 */  nop
/* B16E0 800C0EE0 0800E003 */  jr         $ra
/* B16E4 800C0EE4 2000BD27 */   addiu     $sp, $sp, 0x20
