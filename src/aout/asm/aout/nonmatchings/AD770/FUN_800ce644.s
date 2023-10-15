.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ce644
/* BEE44 800CE644 FF008430 */  andi       $a0, $a0, 0xff
/* BEE48 800CE648 03008010 */  beqz       $a0, .L800CE658
/* BEE4C 800CE64C 2080033C */   lui       $v1, %hi(D_801FBCFC)
/* BEE50 800CE650 0800E003 */  jr         $ra
/* BEE54 800CE654 FFFF0224 */   addiu     $v0, $zero, -1
.L800CE658:
/* BEE58 800CE658 FCBC628C */  lw         $v0, %lo(D_801FBCFC)($v1)
/* BEE5C 800CE65C 00000000 */  nop
/* BEE60 800CE660 04004014 */  bnez       $v0, .L800CE674
/* BEE64 800CE664 01000224 */   addiu     $v0, $zero, 1
/* BEE68 800CE668 FCBC62AC */  sw         $v0, -0x4304($v1)
/* BEE6C 800CE66C 0800E003 */  jr         $ra
/* BEE70 800CE670 21100000 */   addu      $v0, $zero, $zero
.L800CE674:
/* BEE74 800CE674 0800E003 */  jr         $ra
/* BEE78 800CE678 FFFF0224 */   addiu     $v0, $zero, -1
