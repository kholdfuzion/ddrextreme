.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be658
/* AEE58 800BE658 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AEE5C 800BE65C 001F033C */  lui        $v1, 0x1f00
/* AEE60 800BE660 F0F00234 */  ori        $v0, $zero, 0xf0f0
/* AEE64 800BE664 000062A4 */  sh         $v0, ($v1)
/* AEE68 800BE668 00006324 */  addiu      $v1, $v1, 0
/* AEE6C 800BE66C AAAA0234 */  ori        $v0, $zero, 0xaaaa
/* AEE70 800BE670 1000BFAF */  sw         $ra, 0x10($sp)
/* AEE74 800BE674 AA0A62A4 */  sh         $v0, 0xaaa($v1)
/* AEE78 800BE678 55550224 */  addiu      $v0, $zero, 0x5555
/* AEE7C 800BE67C 540562A4 */  sh         $v0, 0x554($v1)
/* AEE80 800BE680 A0A00234 */  ori        $v0, $zero, 0xa0a0
/* AEE84 800BE684 AA0A62A4 */  sh         $v0, 0xaaa($v1)
/* AEE88 800BE688 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AEE8C 800BE68C 000085A4 */  sh         $a1, ($a0)
/* AEE90 800BE690 FFFFA530 */  andi       $a1, $a1, 0xffff
/* AEE94 800BE694 09000624 */  addiu      $a2, $zero, 9
/* AEE98 800BE698 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AEE9C 800BE69C F86F428C */  lw         $v0, 0x6ff8($v0)
/* AEEA0 800BE6A0 7EFA020C */  jal        FUN_800be9f8
/* AEEA4 800BE6A4 00000000 */   nop
/* AEEA8 800BE6A8 21184000 */  addu       $v1, $v0, $zero
/* AEEAC 800BE6AC FEFF0224 */  addiu      $v0, $zero, -2
/* AEEB0 800BE6B0 02006214 */  bne        $v1, $v0, .L800BE6BC
/* AEEB4 800BE6B4 00000000 */   nop
/* AEEB8 800BE6B8 FFFF0324 */  addiu      $v1, $zero, -1
.L800BE6BC:
/* AEEBC 800BE6BC 1000BF8F */  lw         $ra, 0x10($sp)
/* AEEC0 800BE6C0 21106000 */  addu       $v0, $v1, $zero
/* AEEC4 800BE6C4 0800E003 */  jr         $ra
/* AEEC8 800BE6C8 1800BD27 */   addiu     $sp, $sp, 0x18
