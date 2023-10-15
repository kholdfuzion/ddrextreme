.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aae64
/* 9B664 800AAE64 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9B668 800AAE68 1000BFAF */  sw         $ra, 0x10($sp)
/* 9B66C 800AAE6C 7219030C */  jal        FUN_800c65c8
/* 9B670 800AAE70 22000424 */   addiu     $a0, $zero, 0x22
/* 9B674 800AAE74 F6AB020C */  jal        FUN_800aafd8
/* 9B678 800AAE78 00000000 */   nop
/* 9B67C 800AAE7C 08004004 */  bltz       $v0, .L800AAEA0
/* 9B680 800AAE80 1C80033C */   lui       $v1, %hi(D_801C3E88)
/* 9B684 800AAE84 883E6324 */  addiu      $v1, $v1, %lo(D_801C3E88)
/* 9B688 800AAE88 04006290 */  lbu        $v0, 4($v1)
/* 9B68C 800AAE8C 00000000 */  nop
/* 9B690 800AAE90 01004230 */  andi       $v0, $v0, 1
/* 9B694 800AAE94 040062A0 */  sb         $v0, 4($v1)
/* 9B698 800AAE98 A9AB0208 */  j          .L800AAEA4
/* 9B69C 800AAE9C FF004230 */   andi      $v0, $v0, 0xff
.L800AAEA0:
/* 9B6A0 800AAEA0 21100000 */  addu       $v0, $zero, $zero
.L800AAEA4:
/* 9B6A4 800AAEA4 1000BF8F */  lw         $ra, 0x10($sp)
/* 9B6A8 800AAEA8 00000000 */  nop
/* 9B6AC 800AAEAC 0800E003 */  jr         $ra
/* 9B6B0 800AAEB0 1800BD27 */   addiu     $sp, $sp, 0x18
