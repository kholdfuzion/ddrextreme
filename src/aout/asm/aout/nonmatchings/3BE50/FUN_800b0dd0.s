.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0dd0
/* A15D0 800B0DD0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A15D4 800B0DD4 1D80033C */  lui        $v1, %hi(D_801D238C)
/* A15D8 800B0DD8 1D80073C */  lui        $a3, %hi(D_801D2388)
/* A15DC 800B0DDC 8C23688C */  lw         $t0, %lo(D_801D238C)($v1)
/* A15E0 800B0DE0 8823E28C */  lw         $v0, %lo(D_801D2388)($a3)
/* A15E4 800B0DE4 21188000 */  addu       $v1, $a0, $zero
/* A15E8 800B0DE8 2400BFAF */  sw         $ra, 0x24($sp)
/* A15EC 800B0DEC 23400201 */  subu       $t0, $t0, $v0
/* A15F0 800B0DF0 02000105 */  bgez       $t0, .L800B0DFC
/* A15F4 800B0DF4 2000B0AF */   sw        $s0, 0x20($sp)
/* A15F8 800B0DF8 10000825 */  addiu      $t0, $t0, 0x10
.L800B0DFC:
/* A15FC 800B0DFC 0F000224 */  addiu      $v0, $zero, 0xf
/* A1600 800B0E00 23104800 */  subu       $v0, $v0, $t0
/* A1604 800B0E04 18004018 */  blez       $v0, .L800B0E68
/* A1608 800B0E08 1000A427 */   addiu     $a0, $sp, 0x10
/* A160C 800B0E0C 1000A3AF */  sw         $v1, 0x10($sp)
/* A1610 800B0E10 1400A6AF */  sw         $a2, 0x14($sp)
/* A1614 800B0E14 1800A5AF */  sw         $a1, 0x18($sp)
/* A1618 800B0E18 C7C2020C */  jal        FUN_800b0b1c
/* A161C 800B0E1C 1C00A0A7 */   sh        $zero, 0x1c($sp)
/* A1620 800B0E20 1D6E000C */  jal        FUN_8001b874
/* A1624 800B0E24 21804000 */   addu      $s0, $v0, $zero
/* A1628 800B0E28 00F3043C */  lui        $a0, 0xf300
/* A162C 800B0E2C 00028434 */  ori        $a0, $a0, 0x200
/* A1630 800B0E30 ADC3020C */  jal        UnDeliverEvent
/* A1634 800B0E34 01000524 */   addiu     $a1, $zero, 1
/* A1638 800B0E38 00F3043C */  lui        $a0, 0xf300
/* A163C 800B0E3C 00028434 */  ori        $a0, $a0, 0x200
/* A1640 800B0E40 ADC3020C */  jal        UnDeliverEvent
/* A1644 800B0E44 21280000 */   addu      $a1, $zero, $zero
/* A1648 800B0E48 00F3043C */  lui        $a0, 0xf300
/* A164C 800B0E4C 00028434 */  ori        $a0, $a0, 0x200
/* A1650 800B0E50 A9C3020C */  jal        DeliverEvent
/* A1654 800B0E54 21280000 */   addu      $a1, $zero, $zero
/* A1658 800B0E58 216E000C */  jal        FUN_8001b884
/* A165C 800B0E5C 00000000 */   nop
/* A1660 800B0E60 9BC30208 */  j          .L800B0E6C
/* A1664 800B0E64 21100002 */   addu      $v0, $s0, $zero
.L800B0E68:
/* A1668 800B0E68 FFFF0224 */  addiu      $v0, $zero, -1
.L800B0E6C:
/* A166C 800B0E6C 2400BF8F */  lw         $ra, 0x24($sp)
/* A1670 800B0E70 2000B08F */  lw         $s0, 0x20($sp)
/* A1674 800B0E74 0800E003 */  jr         $ra
/* A1678 800B0E78 2800BD27 */   addiu     $sp, $sp, 0x28
