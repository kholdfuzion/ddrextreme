.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8fc0
/* 997C0 800A8FC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 997C4 800A8FC4 1000B0AF */  sw         $s0, 0x10($sp)
/* 997C8 800A8FC8 2180A000 */  addu       $s0, $a1, $zero
/* 997CC 800A8FCC 1400BFAF */  sw         $ra, 0x14($sp)
/* 997D0 800A8FD0 13008010 */  beqz       $a0, .L800A9020
/* 997D4 800A8FD4 21100000 */   addu      $v0, $zero, $zero
/* 997D8 800A8FD8 2400828C */  lw         $v0, 0x24($a0)
/* 997DC 800A8FDC 00000000 */  nop
/* 997E0 800A8FE0 01004230 */  andi       $v0, $v0, 1
/* 997E4 800A8FE4 03004010 */  beqz       $v0, .L800A8FF4
/* 997E8 800A8FE8 01000224 */   addiu     $v0, $zero, 1
.L800A8FEC:
/* 997EC 800A8FEC 08A40208 */  j          .L800A9020
/* 997F0 800A8FF0 21100000 */   addu      $v0, $zero, $zero
.L800A8FF4:
/* 997F4 800A8FF4 0A000212 */  beq        $s0, $v0, .L800A9020
/* 997F8 800A8FF8 00000000 */   nop
/* 997FC 800A8FFC 2BA4020C */  jal        FUN_800a90ac
/* 99800 800A9000 00000000 */   nop
/* 99804 800A9004 F9FF4014 */  bnez       $v0, .L800A8FEC
/* 99808 800A9008 00000000 */   nop
/* 9980C 800A900C 03000012 */  beqz       $s0, .L800A901C
/* 99810 800A9010 0200022E */   sltiu     $v0, $s0, 2
/* 99814 800A9014 08A40208 */  j          .L800A9020
/* 99818 800A9018 01004238 */   xori      $v0, $v0, 1
.L800A901C:
/* 9981C 800A901C 01000224 */  addiu      $v0, $zero, 1
.L800A9020:
/* 99820 800A9020 1400BF8F */  lw         $ra, 0x14($sp)
/* 99824 800A9024 1000B08F */  lw         $s0, 0x10($sp)
/* 99828 800A9028 0800E003 */  jr         $ra
/* 9982C 800A902C 1800BD27 */   addiu     $sp, $sp, 0x18
