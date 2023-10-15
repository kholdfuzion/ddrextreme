.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80072eb4
/* 636B4 80072EB4 21388000 */  addu       $a3, $a0, $zero
/* 636B8 80072EB8 1B80043C */  lui        $a0, %hi(D_801AFBF4)
/* 636BC 80072EBC F4FB838C */  lw         $v1, %lo(D_801AFBF4)($a0)
/* 636C0 80072EC0 00000000 */  nop
/* 636C4 80072EC4 B8006284 */  lh         $v0, 0xb8($v1)
/* 636C8 80072EC8 00000000 */  nop
/* 636CC 80072ECC 15004010 */  beqz       $v0, .L80072F24
/* 636D0 80072ED0 01000224 */   addiu     $v0, $zero, 1
/* 636D4 80072ED4 DB0062A0 */  sb         $v0, 0xdb($v1)
/* 636D8 80072ED8 F4FB838C */  lw         $v1, -0x40c($a0)
/* 636DC 80072EDC 00000000 */  nop
/* 636E0 80072EE0 BA006284 */  lh         $v0, 0xba($v1)
/* 636E4 80072EE4 00000000 */  nop
/* 636E8 80072EE8 C0120200 */  sll        $v0, $v0, 0xb
/* 636EC 80072EEC 1B00A200 */  divu       $zero, $a1, $v0
/* 636F0 80072EF0 DC0067AC */  sw         $a3, 0xdc($v1)
/* 636F4 80072EF4 E00065AC */  sw         $a1, 0xe0($v1)
/* 636F8 80072EF8 12200000 */  mflo       $a0
/* 636FC 80072EFC 02004014 */  bnez       $v0, .L80072F08
/* 63700 80072F00 00000000 */   nop
/* 63704 80072F04 CD010000 */  break      0, 7
.L80072F08:
/* 63708 80072F08 21100000 */   addu      $v0, $zero, $zero
/* 6370C 80072F0C C00064A4 */  sh         $a0, 0xc0($v1)
/* 63710 80072F10 C20060A4 */  sh         $zero, 0xc2($v1)
/* 63714 80072F14 CE0060A4 */  sh         $zero, 0xce($v1)
/* 63718 80072F18 F40066AC */  sw         $a2, 0xf4($v1)
/* 6371C 80072F1C 0800E003 */  jr         $ra
/* 63720 80072F20 F80065AC */   sw        $a1, 0xf8($v1)
.L80072F24:
/* 63724 80072F24 0800E003 */  jr         $ra
/* 63728 80072F28 FFFF0224 */   addiu     $v0, $zero, -1
