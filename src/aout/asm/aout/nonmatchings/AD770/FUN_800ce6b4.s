.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ce6b4
/* BEEB4 800CE6B4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BEEB8 800CE6B8 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BEEBC 800CE6BC 2188C000 */  addu       $s1, $a2, $zero
/* BEEC0 800CE6C0 FF008430 */  andi       $a0, $a0, 0xff
/* BEEC4 800CE6C4 2000BFAF */  sw         $ra, 0x20($sp)
/* BEEC8 800CE6C8 1800B0AF */  sw         $s0, 0x18($sp)
/* BEECC 800CE6CC 16008014 */  bnez       $a0, .L800CE728
/* BEED0 800CE6D0 FFFF0224 */   addiu     $v0, $zero, -1
/* BEED4 800CE6D4 2080023C */  lui        $v0, %hi(D_801FBCFC)
/* BEED8 800CE6D8 FCBC428C */  lw         $v0, %lo(D_801FBCFC)($v0)
/* BEEDC 800CE6DC 00000000 */  nop
/* BEEE0 800CE6E0 11004010 */  beqz       $v0, .L800CE728
/* BEEE4 800CE6E4 FFFF0224 */   addiu     $v0, $zero, -1
/* BEEE8 800CE6E8 0F00A014 */  bnez       $a1, .L800CE728
/* BEEEC 800CE6EC 00000000 */   nop
/* BEEF0 800CE6F0 3239030C */  jal        FUN_800ce4c8
/* BEEF4 800CE6F4 1000A427 */   addiu     $a0, $sp, 0x10
/* BEEF8 800CE6F8 0B004004 */  bltz       $v0, .L800CE728
/* BEEFC 800CE6FC 00000000 */   nop
/* BEF00 800CE700 0000308E */  lw         $s0, ($s1)
/* BEF04 800CE704 00000000 */  nop
/* BEF08 800CE708 0900022A */  slti       $v0, $s0, 9
/* BEF0C 800CE70C 02004014 */  bnez       $v0, .L800CE718
/* BEF10 800CE710 04002426 */   addiu     $a0, $s1, 4
/* BEF14 800CE714 08001024 */  addiu      $s0, $zero, 8
.L800CE718:
/* BEF18 800CE718 1000A527 */  addiu      $a1, $sp, 0x10
/* BEF1C 800CE71C BD6B000C */  jal        memcpy
/* BEF20 800CE720 21300002 */   addu      $a2, $s0, $zero
/* BEF24 800CE724 21100002 */  addu       $v0, $s0, $zero
.L800CE728:
/* BEF28 800CE728 2000BF8F */  lw         $ra, 0x20($sp)
/* BEF2C 800CE72C 1C00B18F */  lw         $s1, 0x1c($sp)
/* BEF30 800CE730 1800B08F */  lw         $s0, 0x18($sp)
/* BEF34 800CE734 0800E003 */  jr         $ra
/* BEF38 800CE738 2800BD27 */   addiu     $sp, $sp, 0x28
