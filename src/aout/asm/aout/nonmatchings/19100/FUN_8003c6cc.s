.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c6cc
/* 2CECC 8003C6CC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2CED0 8003C6D0 2400B1AF */  sw         $s1, 0x24($sp)
/* 2CED4 8003C6D4 21880000 */  addu       $s1, $zero, $zero
/* 2CED8 8003C6D8 1580023C */  lui        $v0, %hi(D_80156E38)
/* 2CEDC 8003C6DC 386E4224 */  addiu      $v0, $v0, %lo(D_80156E38)
/* 2CEE0 8003C6E0 00FE0324 */  addiu      $v1, $zero, -0x200
/* 2CEE4 8003C6E4 00FF0524 */  addiu      $a1, $zero, -0x100
/* 2CEE8 8003C6E8 2C00BFAF */  sw         $ra, 0x2c($sp)
/* 2CEEC 8003C6EC 2800B2AF */  sw         $s2, 0x28($sp)
/* 2CEF0 8003C6F0 2000B0AF */  sw         $s0, 0x20($sp)
/* 2CEF4 8003C6F4 440043AC */  sw         $v1, 0x44($v0)
/* 2CEF8 8003C6F8 00010324 */  addiu      $v1, $zero, 0x100
/* 2CEFC 8003C6FC 00020424 */  addiu      $a0, $zero, 0x200
/* 2CF00 8003C700 400045AC */  sw         $a1, 0x40($v0)
/* 2CF04 8003C704 480043AC */  sw         $v1, 0x48($v0)
/* 2CF08 8003C708 900044AC */  sw         $a0, 0x90($v0)
/* 2CF0C 8003C70C 8C0045AC */  sw         $a1, 0x8c($v0)
/* 2CF10 8003C710 940045AC */  sw         $a1, 0x94($v0)
/* 2CF14 8003C714 21800000 */  addu       $s0, $zero, $zero
.L8003C718:
/* 2CF18 8003C718 01003226 */  addiu      $s2, $s1, 1
/* 2CF1C 8003C71C 1000A427 */  addiu      $a0, $sp, 0x10
.L8003C720:
/* 2CF20 8003C720 21280002 */  addu       $a1, $s0, $zero
/* 2CF24 8003C724 41F0000C */  jal        FUN_8003c104
/* 2CF28 8003C728 21302002 */   addu      $a2, $s1, $zero
/* 2CF2C 8003C72C 1000A427 */  addiu      $a0, $sp, 0x10
/* 2CF30 8003C730 21280002 */  addu       $a1, $s0, $zero
/* 2CF34 8003C734 DDF1000C */  jal        FUN_8003c774
/* 2CF38 8003C738 21302002 */   addu      $a2, $s1, $zero
/* 2CF3C 8003C73C 01001026 */  addiu      $s0, $s0, 1
/* 2CF40 8003C740 0800022A */  slti       $v0, $s0, 8
/* 2CF44 8003C744 F6FF4014 */  bnez       $v0, .L8003C720
/* 2CF48 8003C748 1000A427 */   addiu     $a0, $sp, 0x10
/* 2CF4C 8003C74C 21884002 */  addu       $s1, $s2, $zero
/* 2CF50 8003C750 0200222A */  slti       $v0, $s1, 2
/* 2CF54 8003C754 F0FF4014 */  bnez       $v0, .L8003C718
/* 2CF58 8003C758 21800000 */   addu      $s0, $zero, $zero
/* 2CF5C 8003C75C 2C00BF8F */  lw         $ra, 0x2c($sp)
/* 2CF60 8003C760 2800B28F */  lw         $s2, 0x28($sp)
/* 2CF64 8003C764 2400B18F */  lw         $s1, 0x24($sp)
/* 2CF68 8003C768 2000B08F */  lw         $s0, 0x20($sp)
/* 2CF6C 8003C76C 0800E003 */  jr         $ra
/* 2CF70 8003C770 3000BD27 */   addiu     $sp, $sp, 0x30
