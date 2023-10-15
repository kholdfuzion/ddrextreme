.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c5e8
/* 2CDE8 8003C5E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2CDEC 8003C5EC 2400B1AF */  sw         $s1, 0x24($sp)
/* 2CDF0 8003C5F0 21880000 */  addu       $s1, $zero, $zero
/* 2CDF4 8003C5F4 1580023C */  lui        $v0, %hi(D_80156E38)
/* 2CDF8 8003C5F8 386E4224 */  addiu      $v0, $v0, %lo(D_80156E38)
/* 2CDFC 8003C5FC 2C00BFAF */  sw         $ra, 0x2c($sp)
/* 2CE00 8003C600 2800B2AF */  sw         $s2, 0x28($sp)
/* 2CE04 8003C604 2000B0AF */  sw         $s0, 0x20($sp)
/* 2CE08 8003C608 9000438C */  lw         $v1, 0x90($v0)
/* 2CE0C 8003C60C 4400448C */  lw         $a0, 0x44($v0)
/* 2CE10 8003C610 16006324 */  addiu      $v1, $v1, 0x16
/* 2CE14 8003C614 EAFF8424 */  addiu      $a0, $a0, -0x16
/* 2CE18 8003C618 900043AC */  sw         $v1, 0x90($v0)
/* 2CE1C 8003C61C 440044AC */  sw         $a0, 0x44($v0)
/* 2CE20 8003C620 21800000 */  addu       $s0, $zero, $zero
.L8003C624:
/* 2CE24 8003C624 01003226 */  addiu      $s2, $s1, 1
/* 2CE28 8003C628 1000A427 */  addiu      $a0, $sp, 0x10
.L8003C62C:
/* 2CE2C 8003C62C 21280002 */  addu       $a1, $s0, $zero
/* 2CE30 8003C630 41F0000C */  jal        FUN_8003c104
/* 2CE34 8003C634 21302002 */   addu      $a2, $s1, $zero
/* 2CE38 8003C638 1000A427 */  addiu      $a0, $sp, 0x10
/* 2CE3C 8003C63C 21280002 */  addu       $a1, $s0, $zero
/* 2CE40 8003C640 DDF1000C */  jal        FUN_8003c774
/* 2CE44 8003C644 21302002 */   addu      $a2, $s1, $zero
/* 2CE48 8003C648 01001026 */  addiu      $s0, $s0, 1
/* 2CE4C 8003C64C 0800022A */  slti       $v0, $s0, 8
/* 2CE50 8003C650 F6FF4014 */  bnez       $v0, .L8003C62C
/* 2CE54 8003C654 1000A427 */   addiu     $a0, $sp, 0x10
/* 2CE58 8003C658 21884002 */  addu       $s1, $s2, $zero
/* 2CE5C 8003C65C 0200222A */  slti       $v0, $s1, 2
/* 2CE60 8003C660 F0FF4014 */  bnez       $v0, .L8003C624
/* 2CE64 8003C664 21800000 */   addu      $s0, $zero, $zero
/* 2CE68 8003C668 01000424 */  addiu      $a0, $zero, 1
/* 2CE6C 8003C66C FA56010C */  jal        FUN_80055be8
/* 2CE70 8003C670 0F000524 */   addiu     $a1, $zero, 0xf
/* 2CE74 8003C674 01000424 */  addiu      $a0, $zero, 1
/* 2CE78 8003C678 376C010C */  jal        FUN_8005b0dc
/* 2CE7C 8003C67C FD000524 */   addiu     $a1, $zero, 0xfd
/* 2CE80 8003C680 01000424 */  addiu      $a0, $zero, 1
/* 2CE84 8003C684 21280000 */  addu       $a1, $zero, $zero
/* 2CE88 8003C688 E8EF000C */  jal        FUN_8003bfa0
/* 2CE8C 8003C68C 1F000624 */   addiu     $a2, $zero, 0x1f
/* 2CE90 8003C690 01000424 */  addiu      $a0, $zero, 1
/* 2CE94 8003C694 21284000 */  addu       $a1, $v0, $zero
/* 2CE98 8003C698 E8EF000C */  jal        FUN_8003bfa0
/* 2CE9C 8003C69C 1E000624 */   addiu     $a2, $zero, 0x1e
/* 2CEA0 8003C6A0 01000424 */  addiu      $a0, $zero, 1
/* 2CEA4 8003C6A4 1D6B010C */  jal        FUN_8005ac74
/* 2CEA8 8003C6A8 21284000 */   addu      $a1, $v0, $zero
/* 2CEAC 8003C6AC 9157010C */  jal        FUN_80055e44
/* 2CEB0 8003C6B0 01000424 */   addiu     $a0, $zero, 1
/* 2CEB4 8003C6B4 2C00BF8F */  lw         $ra, 0x2c($sp)
/* 2CEB8 8003C6B8 2800B28F */  lw         $s2, 0x28($sp)
/* 2CEBC 8003C6BC 2400B18F */  lw         $s1, 0x24($sp)
/* 2CEC0 8003C6C0 2000B08F */  lw         $s0, 0x20($sp)
/* 2CEC4 8003C6C4 0800E003 */  jr         $ra
/* 2CEC8 8003C6C8 3000BD27 */   addiu     $sp, $sp, 0x30
