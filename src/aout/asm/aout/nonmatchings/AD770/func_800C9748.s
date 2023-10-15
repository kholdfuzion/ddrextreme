.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C9748
/* B9F48 800C9748 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* B9F4C 800C974C 4C00B1AF */  sw         $s1, 0x4c($sp)
/* B9F50 800C9750 FFFF1124 */  addiu      $s1, $zero, -1
/* B9F54 800C9754 1000A427 */  addiu      $a0, $sp, 0x10
/* B9F58 800C9758 01000524 */  addiu      $a1, $zero, 1
/* B9F5C 800C975C 5000BFAF */  sw         $ra, 0x50($sp)
/* B9F60 800C9760 E828030C */  jal        FUN_800ca3a0
/* B9F64 800C9764 4800B0AF */   sw        $s0, 0x48($sp)
/* B9F68 800C9768 FEFF1024 */  addiu      $s0, $zero, -2
.L800C976C:
/* B9F6C 800C976C EE09030C */  jal        FUN_800c27b8
/* B9F70 800C9770 1000A427 */   addiu     $a0, $sp, 0x10
/* B9F74 800C9774 21184000 */  addu       $v1, $v0, $zero
/* B9F78 800C9778 FCFF7010 */  beq        $v1, $s0, .L800C976C
/* B9F7C 800C977C 01000224 */   addiu     $v0, $zero, 1
/* B9F80 800C9780 07006214 */  bne        $v1, $v0, .L800C97A0
/* B9F84 800C9784 21102002 */   addu      $v0, $s1, $zero
/* B9F88 800C9788 2C00A28F */  lw         $v0, 0x2c($sp)
/* B9F8C 800C978C 00000000 */  nop
/* B9F90 800C9790 00004290 */  lbu        $v0, ($v0)
/* B9F94 800C9794 00000000 */  nop
/* B9F98 800C9798 7F005130 */  andi       $s1, $v0, 0x7f
/* B9F9C 800C979C 21102002 */  addu       $v0, $s1, $zero
.L800C97A0:
/* B9FA0 800C97A0 5000BF8F */  lw         $ra, 0x50($sp)
/* B9FA4 800C97A4 4C00B18F */  lw         $s1, 0x4c($sp)
/* B9FA8 800C97A8 4800B08F */  lw         $s0, 0x48($sp)
/* B9FAC 800C97AC 0800E003 */  jr         $ra
/* B9FB0 800C97B0 5800BD27 */   addiu     $sp, $sp, 0x58
