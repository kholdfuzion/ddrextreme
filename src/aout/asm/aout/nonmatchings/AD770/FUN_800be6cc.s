.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be6cc
/* AEECC 800BE6CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AEED0 800BE6D0 001F033C */  lui        $v1, 0x1f00
/* AEED4 800BE6D4 F0F00234 */  ori        $v0, $zero, 0xf0f0
/* AEED8 800BE6D8 011F063C */  lui        $a2, 0x1f01
/* AEEDC 800BE6DC 000062A4 */  sh         $v0, ($v1)
/* AEEE0 800BE6E0 AAAA0234 */  ori        $v0, $zero, 0xaaaa
/* AEEE4 800BE6E4 00006324 */  addiu      $v1, $v1, 0
/* AEEE8 800BE6E8 AAAAC2A4 */  sh         $v0, -0x5556($a2)
/* AEEEC 800BE6EC 55550224 */  addiu      $v0, $zero, 0x5555
/* AEEF0 800BE6F0 1000BFAF */  sw         $ra, 0x10($sp)
/* AEEF4 800BE6F4 545562A4 */  sh         $v0, 0x5554($v1)
/* AEEF8 800BE6F8 A0A00234 */  ori        $v0, $zero, 0xa0a0
/* AEEFC 800BE6FC AAAAC2A4 */  sh         $v0, -0x5556($a2)
/* AEF00 800BE700 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AEF04 800BE704 000085A4 */  sh         $a1, ($a0)
/* AEF08 800BE708 FFFFA530 */  andi       $a1, $a1, 0xffff
/* AEF0C 800BE70C 09000624 */  addiu      $a2, $zero, 9
/* AEF10 800BE710 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AEF14 800BE714 F86F428C */  lw         $v0, 0x6ff8($v0)
/* AEF18 800BE718 7EFA020C */  jal        FUN_800be9f8
/* AEF1C 800BE71C 00000000 */   nop
/* AEF20 800BE720 21184000 */  addu       $v1, $v0, $zero
/* AEF24 800BE724 FEFF0224 */  addiu      $v0, $zero, -2
/* AEF28 800BE728 02006214 */  bne        $v1, $v0, .L800BE734
/* AEF2C 800BE72C 00000000 */   nop
/* AEF30 800BE730 FFFF0324 */  addiu      $v1, $zero, -1
.L800BE734:
/* AEF34 800BE734 1000BF8F */  lw         $ra, 0x10($sp)
/* AEF38 800BE738 21106000 */  addu       $v0, $v1, $zero
/* AEF3C 800BE73C 0800E003 */  jr         $ra
/* AEF40 800BE740 1800BD27 */   addiu     $sp, $sp, 0x18
