.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cdefc
/* BE6FC 800CDEFC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BE700 800CDF00 2800B2AF */  sw         $s2, 0x28($sp)
/* BE704 800CDF04 21908000 */  addu       $s2, $a0, $zero
/* BE708 800CDF08 2000B0AF */  sw         $s0, 0x20($sp)
/* BE70C 800CDF0C 21800000 */  addu       $s0, $zero, $zero
/* BE710 800CDF10 2400B1AF */  sw         $s1, 0x24($sp)
/* BE714 800CDF14 2C00BFAF */  sw         $ra, 0x2c($sp)
/* BE718 800CDF18 FE02030C */  jal        FUN_800c0bf8
/* BE71C 800CDF1C 21880002 */   addu      $s1, $s0, $zero
/* BE720 800CDF20 01004230 */  andi       $v0, $v0, 1
/* BE724 800CDF24 04004010 */  beqz       $v0, .L800CDF38
/* BE728 800CDF28 08000224 */   addiu     $v0, $zero, 8
/* BE72C 800CDF2C 1D6E000C */  jal        FUN_8001b874
/* BE730 800CDF30 01001024 */   addiu     $s0, $zero, 1
/* BE734 800CDF34 08000224 */  addiu      $v0, $zero, 8
.L800CDF38:
/* BE738 800CDF38 1000A2AF */  sw         $v0, 0x10($sp)
/* BE73C 800CDF3C 21200000 */  addu       $a0, $zero, $zero
/* BE740 800CDF40 21288000 */  addu       $a1, $a0, $zero
/* BE744 800CDF44 1000A627 */  addiu      $a2, $sp, 0x10
/* BE748 800CDF48 AD39030C */  jal        FUN_800ce6b4
/* BE74C 800CDF4C 21388000 */   addu      $a3, $a0, $zero
/* BE750 800CDF50 06004018 */  blez       $v0, .L800CDF6C
/* BE754 800CDF54 21204002 */   addu      $a0, $s2, $zero
/* BE758 800CDF58 1400A527 */  addiu      $a1, $sp, 0x14
/* BE75C 800CDF5C BD6B000C */  jal        memcpy
/* BE760 800CDF60 21304000 */   addu      $a2, $v0, $zero
/* BE764 800CDF64 DC370308 */  j          .L800CDF70
/* BE768 800CDF68 00000000 */   nop
.L800CDF6C:
/* BE76C 800CDF6C 21884000 */  addu       $s1, $v0, $zero
.L800CDF70:
/* BE770 800CDF70 04000012 */  beqz       $s0, .L800CDF84
/* BE774 800CDF74 21102002 */   addu      $v0, $s1, $zero
/* BE778 800CDF78 216E000C */  jal        FUN_8001b884
/* BE77C 800CDF7C 00000000 */   nop
/* BE780 800CDF80 21102002 */  addu       $v0, $s1, $zero
.L800CDF84:
/* BE784 800CDF84 2C00BF8F */  lw         $ra, 0x2c($sp)
/* BE788 800CDF88 2800B28F */  lw         $s2, 0x28($sp)
/* BE78C 800CDF8C 2400B18F */  lw         $s1, 0x24($sp)
/* BE790 800CDF90 2000B08F */  lw         $s0, 0x20($sp)
/* BE794 800CDF94 0800E003 */  jr         $ra
/* BE798 800CDF98 3000BD27 */   addiu     $sp, $sp, 0x30
