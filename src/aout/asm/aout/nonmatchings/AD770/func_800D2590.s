.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D2590
/* C2D90 800D2590 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C2D94 800D2594 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2D98 800D2598 2400B1AF */  sw         $s1, 0x24($sp)
/* C2D9C 800D259C 10BD5124 */  addiu      $s1, $v0, %lo(D_801FBD10)
/* C2DA0 800D25A0 2C00BFAF */  sw         $ra, 0x2c($sp)
/* C2DA4 800D25A4 2800B2AF */  sw         $s2, 0x28($sp)
/* C2DA8 800D25A8 2000B0AF */  sw         $s0, 0x20($sp)
/* C2DAC 800D25AC DF112392 */  lbu        $v1, 0x11df($s1)
/* C2DB0 800D25B0 00000000 */  nop
/* C2DB4 800D25B4 19006014 */  bnez       $v1, .L800D261C
/* C2DB8 800D25B8 21908000 */   addu      $s2, $a0, $zero
/* C2DBC 800D25BC 1000B027 */  addiu      $s0, $sp, 0x10
/* C2DC0 800D25C0 21200002 */  addu       $a0, $s0, $zero
/* C2DC4 800D25C4 21280000 */  addu       $a1, $zero, $zero
/* C2DC8 800D25C8 F6A2000C */  jal        memset
/* C2DCC 800D25CC 0C000624 */   addiu     $a2, $zero, 0xc
/* C2DD0 800D25D0 21200000 */  addu       $a0, $zero, $zero
/* C2DD4 800D25D4 21280002 */  addu       $a1, $s0, $zero
/* C2DD8 800D25D8 42000224 */  addiu      $v0, $zero, 0x42
/* C2DDC 800D25DC 40000324 */  addiu      $v1, $zero, 0x40
/* C2DE0 800D25E0 01000624 */  addiu      $a2, $zero, 1
/* C2DE4 800D25E4 1000A2A3 */  sb         $v0, 0x10($sp)
/* C2DE8 800D25E8 10000224 */  addiu      $v0, $zero, 0x10
/* C2DEC 800D25EC 1200A3A3 */  sb         $v1, 0x12($sp)
/* C2DF0 800D25F0 1300A6A3 */  sb         $a2, 0x13($sp)
/* C2DF4 800D25F4 1700A0A3 */  sb         $zero, 0x17($sp)
/* C2DF8 800D25F8 1800A2A3 */  sb         $v0, 0x18($sp)
/* C2DFC 800D25FC DF1126A2 */  sb         $a2, 0x11df($s1)
/* C2E00 800D2600 E01132AE */  sw         $s2, 0x11e0($s1)
/* C2E04 800D2604 E41122AE */  sw         $v0, 0x11e4($s1)
/* C2E08 800D2608 E81120AE */  sw         $zero, 0x11e8($s1)
/* C2E0C 800D260C AC41030C */  jal        FUN_800d06b0
/* C2E10 800D2610 00000000 */   nop
/* C2E14 800D2614 88490308 */  j          .L800D2620
/* C2E18 800D2618 00000000 */   nop
.L800D261C:
/* C2E1C 800D261C FBFF0224 */  addiu      $v0, $zero, -5
.L800D2620:
/* C2E20 800D2620 2C00BF8F */  lw         $ra, 0x2c($sp)
/* C2E24 800D2624 2800B28F */  lw         $s2, 0x28($sp)
/* C2E28 800D2628 2400B18F */  lw         $s1, 0x24($sp)
/* C2E2C 800D262C 2000B08F */  lw         $s0, 0x20($sp)
/* C2E30 800D2630 0800E003 */  jr         $ra
/* C2E34 800D2634 3000BD27 */   addiu     $sp, $sp, 0x30
