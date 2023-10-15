.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd764
/* ADF64 800BD764 8000A530 */  andi       $a1, $a1, 0x80
/* ADF68 800BD768 0500A010 */  beqz       $a1, .L800BD780
/* ADF6C 800BD76C 0F80033C */   lui       $v1, 0x800f
/* ADF70 800BD770 0B00A014 */  bnez       $a1, .L800BD7A0
/* ADF74 800BD774 0F80033C */   lui       $v1, %hi(D_800EDE0C)
/* ADF78 800BD778 0800E003 */  jr         $ra
/* ADF7C 800BD77C 21100000 */   addu      $v0, $zero, $zero
.L800BD780:
/* ADF80 800BD780 0CDE6324 */  addiu      $v1, $v1, %lo(D_800EDE0C)
.L800BD784:
/* ADF84 800BD784 FF008230 */  andi       $v0, $a0, 0xff
/* ADF88 800BD788 E0FF4224 */  addiu      $v0, $v0, -0x20
/* ADF8C 800BD78C 80100200 */  sll        $v0, $v0, 2
/* ADF90 800BD790 21104300 */  addu       $v0, $v0, $v1
/* ADF94 800BD794 00004284 */  lh         $v0, ($v0)
/* ADF98 800BD798 0800E003 */  jr         $ra
/* ADF9C 800BD79C 00000000 */   nop
.L800BD7A0:
/* ADFA0 800BD7A0 E1F50208 */  j          .L800BD784
/* ADFA4 800BD7A4 78DF6324 */   addiu     $v1, $v1, -0x2088
