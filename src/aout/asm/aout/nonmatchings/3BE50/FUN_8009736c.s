.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009736c
/* 87B6C 8009736C 13000224 */  addiu      $v0, $zero, 0x13
.L80097370:
/* 87B70 80097370 000080AC */  sw         $zero, ($a0)
/* 87B74 80097374 540080AC */  sw         $zero, 0x54($a0)
/* 87B78 80097378 FFFF4224 */  addiu      $v0, $v0, -1
/* 87B7C 8009737C FCFF4104 */  bgez       $v0, .L80097370
/* 87B80 80097380 04008424 */   addiu     $a0, $a0, 4
/* 87B84 80097384 0800E003 */  jr         $ra
/* 87B88 80097388 00000000 */   nop
