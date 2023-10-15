.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bdef0
/* AE6F0 800BDEF0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* AE6F4 800BDEF4 3000BEAF */  sw         $fp, 0x30($sp)
/* AE6F8 800BDEF8 21F0A000 */  addu       $fp, $a1, $zero
/* AE6FC 800BDEFC 2800B6AF */  sw         $s6, 0x28($sp)
/* AE700 800BDF00 21B0C000 */  addu       $s6, $a2, $zero
/* AE704 800BDF04 2000B4AF */  sw         $s4, 0x20($sp)
/* AE708 800BDF08 3800A4AF */  sw         $a0, 0x38($sp)
/* AE70C 800BDF0C 21A08000 */  addu       $s4, $a0, $zero
/* AE710 800BDF10 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AE714 800BDF14 2198C003 */  addu       $s3, $fp, $zero
/* AE718 800BDF18 01000424 */  addiu      $a0, $zero, 1
/* AE71C 800BDF1C 3400BFAF */  sw         $ra, 0x34($sp)
/* AE720 800BDF20 2C00B7AF */  sw         $s7, 0x2c($sp)
/* AE724 800BDF24 2400B5AF */  sw         $s5, 0x24($sp)
/* AE728 800BDF28 1800B2AF */  sw         $s2, 0x18($sp)
/* AE72C 800BDF2C 1400B1AF */  sw         $s1, 0x14($sp)
/* AE730 800BDF30 CD6B000C */  jal        VSync
/* AE734 800BDF34 1000B0AF */   sw        $s0, 0x10($sp)
/* AE738 800BDF38 21A84000 */  addu       $s5, $v0, $zero
/* AE73C 800BDF3C 21900000 */  addu       $s2, $zero, $zero
/* AE740 800BDF40 2100C01A */  blez       $s6, .L800BDFC8
/* AE744 800BDF44 21884002 */   addu      $s1, $s2, $zero
/* AE748 800BDF48 0F80023C */  lui        $v0, %hi(D_800EE108)
/* AE74C 800BDF4C 08E15724 */  addiu      $s7, $v0, %lo(D_800EE108)
.L800BDF50:
/* AE750 800BDF50 21208002 */  addu       $a0, $s4, $zero
/* AE754 800BDF54 02009426 */  addiu      $s4, $s4, 2
/* AE758 800BDF58 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE75C 800BDF5C A8E1438C */  lw         $v1, %lo(D_800EE1A8)($v0)
/* AE760 800BDF60 00006596 */  lhu        $a1, ($s3)
/* AE764 800BDF64 80100300 */  sll        $v0, $v1, 2
/* AE768 800BDF68 21104300 */  addu       $v0, $v0, $v1
/* AE76C 800BDF6C C0100200 */  sll        $v0, $v0, 3
/* AE770 800BDF70 21105700 */  addu       $v0, $v0, $s7
/* AE774 800BDF74 1000428C */  lw         $v0, 0x10($v0)
/* AE778 800BDF78 00000000 */  nop
/* AE77C 800BDF7C 09F84000 */  jalr       $v0
/* AE780 800BDF80 02007326 */   addiu     $s3, $s3, 2
/* AE784 800BDF84 21884000 */  addu       $s1, $v0, $zero
/* AE788 800BDF88 10002016 */  bnez       $s1, .L800BDFCC
/* AE78C 800BDF8C 001F043C */   lui       $a0, 0x1f00
/* AE790 800BDF90 CD6B000C */  jal        VSync
/* AE794 800BDF94 01000424 */   addiu     $a0, $zero, 1
/* AE798 800BDF98 21804000 */  addu       $s0, $v0, $zero
/* AE79C 800BDF9C 23101502 */  subu       $v0, $s0, $s5
/* AE7A0 800BDFA0 FFFF4230 */  andi       $v0, $v0, 0xffff
/* AE7A4 800BDFA4 0801422C */  sltiu      $v0, $v0, 0x108
/* AE7A8 800BDFA8 03004014 */  bnez       $v0, .L800BDFB8
/* AE7AC 800BDFAC 00000000 */   nop
/* AE7B0 800BDFB0 23F0020C */  jal        FUN_800bc08c
/* AE7B4 800BDFB4 21A80002 */   addu      $s5, $s0, $zero
.L800BDFB8:
/* AE7B8 800BDFB8 01005226 */  addiu      $s2, $s2, 1
/* AE7BC 800BDFBC 2A105602 */  slt        $v0, $s2, $s6
/* AE7C0 800BDFC0 E3FF4014 */  bnez       $v0, .L800BDF50
/* AE7C4 800BDFC4 00000000 */   nop
.L800BDFC8:
/* AE7C8 800BDFC8 001F043C */  lui        $a0, 0x1f00
.L800BDFCC:
/* AE7CC 800BDFCC 60F8020C */  jal        FUN_800be180
/* AE7D0 800BDFD0 00008424 */   addiu     $a0, $a0, 0
/* AE7D4 800BDFD4 21382002 */  addu       $a3, $s1, $zero
/* AE7D8 800BDFD8 0500E010 */  beqz       $a3, .L800BDFF0
/* AE7DC 800BDFDC 2110E000 */   addu      $v0, $a3, $zero
/* AE7E0 800BDFE0 0CF80208 */  j          .L800BE030
/* AE7E4 800BDFE4 00000000 */   nop
.L800BDFE8:
/* AE7E8 800BDFE8 0BF80208 */  j          .L800BE02C
/* AE7EC 800BDFEC FFFF0724 */   addiu     $a3, $zero, -1
.L800BDFF0:
/* AE7F0 800BDFF0 2A10F600 */  slt        $v0, $a3, $s6
/* AE7F4 800BDFF4 0D004010 */  beqz       $v0, .L800BE02C
/* AE7F8 800BDFF8 21300000 */   addu      $a2, $zero, $zero
/* AE7FC 800BDFFC 2128C003 */  addu       $a1, $fp, $zero
/* AE800 800BE000 3800A48F */  lw         $a0, 0x38($sp)
.L800BE004:
/* AE804 800BE004 00000000 */  nop
/* AE808 800BE008 00008394 */  lhu        $v1, ($a0)
/* AE80C 800BE00C 0000A294 */  lhu        $v0, ($a1)
/* AE810 800BE010 00000000 */  nop
/* AE814 800BE014 F4FF6214 */  bne        $v1, $v0, .L800BDFE8
/* AE818 800BE018 0200A524 */   addiu     $a1, $a1, 2
/* AE81C 800BE01C 0100C624 */  addiu      $a2, $a2, 1
/* AE820 800BE020 2A10D600 */  slt        $v0, $a2, $s6
/* AE824 800BE024 F7FF4014 */  bnez       $v0, .L800BE004
/* AE828 800BE028 02008424 */   addiu     $a0, $a0, 2
.L800BE02C:
/* AE82C 800BE02C 2110E000 */  addu       $v0, $a3, $zero
.L800BE030:
/* AE830 800BE030 3400BF8F */  lw         $ra, 0x34($sp)
/* AE834 800BE034 3000BE8F */  lw         $fp, 0x30($sp)
/* AE838 800BE038 2C00B78F */  lw         $s7, 0x2c($sp)
/* AE83C 800BE03C 2800B68F */  lw         $s6, 0x28($sp)
/* AE840 800BE040 2400B58F */  lw         $s5, 0x24($sp)
/* AE844 800BE044 2000B48F */  lw         $s4, 0x20($sp)
/* AE848 800BE048 1C00B38F */  lw         $s3, 0x1c($sp)
/* AE84C 800BE04C 1800B28F */  lw         $s2, 0x18($sp)
/* AE850 800BE050 1400B18F */  lw         $s1, 0x14($sp)
/* AE854 800BE054 1000B08F */  lw         $s0, 0x10($sp)
/* AE858 800BE058 0800E003 */  jr         $ra
/* AE85C 800BE05C 3800BD27 */   addiu     $sp, $sp, 0x38
