.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CCFA0
/* BD7A0 800CCFA0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD7A4 800CCFA4 1400B1AF */  sw         $s1, 0x14($sp)
/* BD7A8 800CCFA8 21888000 */  addu       $s1, $a0, $zero
/* BD7AC 800CCFAC 2080043C */  lui        $a0, %hi(D_801FBCB0)
/* BD7B0 800CCFB0 B0BC8424 */  addiu      $a0, $a0, %lo(D_801FBCB0)
/* BD7B4 800CCFB4 19008424 */  addiu      $a0, $a0, 0x19
/* BD7B8 800CCFB8 E8070524 */  addiu      $a1, $zero, 0x7e8
/* BD7BC 800CCFBC 21302002 */  addu       $a2, $s1, $zero
/* BD7C0 800CCFC0 08000724 */  addiu      $a3, $zero, 8
/* BD7C4 800CCFC4 1800BFAF */  sw         $ra, 0x18($sp)
/* BD7C8 800CCFC8 0031030C */  jal        FUN_800cc400
/* BD7CC 800CCFCC 1000B0AF */   sw        $s0, 0x10($sp)
/* BD7D0 800CCFD0 21804000 */  addu       $s0, $v0, $zero
/* BD7D4 800CCFD4 07000016 */  bnez       $s0, .L800CCFF4
/* BD7D8 800CCFD8 21202002 */   addu      $a0, $s1, $zero
/* BD7DC 800CCFDC 9737030C */  jal        FUN_800cde5c
/* BD7E0 800CCFE0 08000524 */   addiu     $a1, $zero, 8
/* BD7E4 800CCFE4 05004010 */  beqz       $v0, .L800CCFFC
/* BD7E8 800CCFE8 21100002 */   addu      $v0, $s0, $zero
/* BD7EC 800CCFEC FE330308 */  j          .L800CCFF8
/* BD7F0 800CCFF0 F5FF1024 */   addiu     $s0, $zero, -0xb
.L800CCFF4:
/* BD7F4 800CCFF4 F6FF1024 */  addiu      $s0, $zero, -0xa
.L800CCFF8:
/* BD7F8 800CCFF8 21100002 */  addu       $v0, $s0, $zero
.L800CCFFC:
/* BD7FC 800CCFFC 1800BF8F */  lw         $ra, 0x18($sp)
/* BD800 800CD000 1400B18F */  lw         $s1, 0x14($sp)
/* BD804 800CD004 1000B08F */  lw         $s0, 0x10($sp)
/* BD808 800CD008 0800E003 */  jr         $ra
/* BD80C 800CD00C 2000BD27 */   addiu     $sp, $sp, 0x20
