.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CCF50
/* BD750 800CCF50 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD754 800CCF54 1000A627 */  addiu      $a2, $sp, 0x10
/* BD758 800CCF58 1800BFAF */  sw         $ra, 0x18($sp)
/* BD75C 800CCF5C 1700A0A3 */  sb         $zero, 0x17($sp)
/* BD760 800CCF60 1600A0A3 */  sb         $zero, 0x16($sp)
/* BD764 800CCF64 1300A0A3 */  sb         $zero, 0x13($sp)
/* BD768 800CCF68 1200A0A3 */  sb         $zero, 0x12($sp)
/* BD76C 800CCF6C 1100A0A3 */  sb         $zero, 0x11($sp)
/* BD770 800CCF70 1000A0A3 */  sb         $zero, 0x10($sp)
/* BD774 800CCF74 0300A290 */  lbu        $v0, 3($a1)
/* BD778 800CCF78 08000724 */  addiu      $a3, $zero, 8
/* BD77C 800CCF7C 1400A2A3 */  sb         $v0, 0x14($sp)
/* BD780 800CCF80 0400A290 */  lbu        $v0, 4($a1)
/* BD784 800CCF84 F0070524 */  addiu      $a1, $zero, 0x7f0
/* BD788 800CCF88 AE31030C */  jal        FUN_800cc6b8
/* BD78C 800CCF8C 1500A2A3 */   sb        $v0, 0x15($sp)
/* BD790 800CCF90 1800BF8F */  lw         $ra, 0x18($sp)
/* BD794 800CCF94 00000000 */  nop
/* BD798 800CCF98 0800E003 */  jr         $ra
/* BD79C 800CCF9C 2000BD27 */   addiu     $sp, $sp, 0x20
