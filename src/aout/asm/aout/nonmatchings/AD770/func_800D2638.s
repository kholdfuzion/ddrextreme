.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D2638
/* C2E38 800D2638 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C2E3C 800D263C 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2E40 800D2640 2000B0AF */  sw         $s0, 0x20($sp)
/* C2E44 800D2644 10BD5024 */  addiu      $s0, $v0, %lo(D_801FBD10)
/* C2E48 800D2648 2C00BFAF */  sw         $ra, 0x2c($sp)
/* C2E4C 800D264C 2800B2AF */  sw         $s2, 0x28($sp)
/* C2E50 800D2650 2400B1AF */  sw         $s1, 0x24($sp)
/* C2E54 800D2654 DF110392 */  lbu        $v1, 0x11df($s0)
/* C2E58 800D2658 00000000 */  nop
/* C2E5C 800D265C 03006010 */  beqz       $v1, .L800D266C
/* C2E60 800D2660 21908000 */   addu      $s2, $a0, $zero
/* C2E64 800D2664 AE490308 */  j          .L800D26B8
/* C2E68 800D2668 FBFF0224 */   addiu     $v0, $zero, -5
.L800D266C:
/* C2E6C 800D266C 1000B127 */  addiu      $s1, $sp, 0x10
/* C2E70 800D2670 21202002 */  addu       $a0, $s1, $zero
/* C2E74 800D2674 21280000 */  addu       $a1, $zero, $zero
/* C2E78 800D2678 F6A2000C */  jal        memset
/* C2E7C 800D267C 0C000624 */   addiu     $a2, $zero, 0xc
/* C2E80 800D2680 4B000324 */  addiu      $v1, $zero, 0x4b
/* C2E84 800D2684 03004012 */  beqz       $s2, .L800D2694
/* C2E88 800D2688 1000A3A3 */   sb        $v1, 0x10($sp)
/* C2E8C 800D268C 01000224 */  addiu      $v0, $zero, 1
/* C2E90 800D2690 1800A2A3 */  sb         $v0, 0x18($sp)
.L800D2694:
/* C2E94 800D2694 21200000 */  addu       $a0, $zero, $zero
/* C2E98 800D2698 21282002 */  addu       $a1, $s1, $zero
/* C2E9C 800D269C 01000224 */  addiu      $v0, $zero, 1
/* C2EA0 800D26A0 DF1102A2 */  sb         $v0, 0x11df($s0)
/* C2EA4 800D26A4 E01100AE */  sw         $zero, 0x11e0($s0)
/* C2EA8 800D26A8 E41100AE */  sw         $zero, 0x11e4($s0)
/* C2EAC 800D26AC E81100AE */  sw         $zero, 0x11e8($s0)
/* C2EB0 800D26B0 AC41030C */  jal        FUN_800d06b0
/* C2EB4 800D26B4 00000000 */   nop
.L800D26B8:
/* C2EB8 800D26B8 2C00BF8F */  lw         $ra, 0x2c($sp)
/* C2EBC 800D26BC 2800B28F */  lw         $s2, 0x28($sp)
/* C2EC0 800D26C0 2400B18F */  lw         $s1, 0x24($sp)
/* C2EC4 800D26C4 2000B08F */  lw         $s0, 0x20($sp)
/* C2EC8 800D26C8 0800E003 */  jr         $ra
/* C2ECC 800D26CC 3000BD27 */   addiu     $sp, $sp, 0x30
