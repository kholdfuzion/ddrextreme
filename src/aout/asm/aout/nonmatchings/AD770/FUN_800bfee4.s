.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bfee4
/* B06E4 800BFEE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B06E8 800BFEE8 1800BFAF */  sw         $ra, 0x18($sp)
/* B06EC 800BFEEC 1400B1AF */  sw         $s1, 0x14($sp)
/* B06F0 800BFEF0 1000B0AF */  sw         $s0, 0x10($sp)
/* B06F4 800BFEF4 21880000 */  addu       $s1, $zero, $zero
/* B06F8 800BFEF8 21800000 */  addu       $s0, $zero, $zero
.L800BFEFC:
/* B06FC 800BFEFC 6DFF020C */  jal        FUN_800bfdb4
/* B0700 800BFF00 01001026 */   addiu     $s0, $s0, 1
/* B0704 800BFF04 25102202 */  or         $v0, $s1, $v0
/* B0708 800BFF08 40100200 */  sll        $v0, $v0, 1
/* B070C 800BFF0C FE005130 */  andi       $s1, $v0, 0xfe
/* B0710 800BFF10 0700022A */  slti       $v0, $s0, 7
/* B0714 800BFF14 F9FF4014 */  bnez       $v0, .L800BFEFC
/* B0718 800BFF18 00000000 */   nop
/* B071C 800BFF1C 6DFF020C */  jal        FUN_800bfdb4
/* B0720 800BFF20 00000000 */   nop
/* B0724 800BFF24 25102202 */  or         $v0, $s1, $v0
/* B0728 800BFF28 FF004230 */  andi       $v0, $v0, 0xff
/* B072C 800BFF2C 1800BF8F */  lw         $ra, 0x18($sp)
/* B0730 800BFF30 1400B18F */  lw         $s1, 0x14($sp)
/* B0734 800BFF34 1000B08F */  lw         $s0, 0x10($sp)
/* B0738 800BFF38 0800E003 */  jr         $ra
/* B073C 800BFF3C 2000BD27 */   addiu     $sp, $sp, 0x20
