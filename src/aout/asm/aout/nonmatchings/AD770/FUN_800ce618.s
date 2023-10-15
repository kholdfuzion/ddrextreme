.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ce618
/* BEE18 800CE618 641F023C */  lui        $v0, 0x1f64
/* BEE1C 800CE61C EE0040A4 */  sh         $zero, 0xee($v0)
/* BEE20 800CE620 2080023C */  lui        $v0, %hi(D_801FBCF8)
/* BEE24 800CE624 F8BC40AC */  sw         $zero, %lo(D_801FBCF8)($v0)
/* BEE28 800CE628 F8BC428C */  lw         $v0, -0x4308($v0)
/* BEE2C 800CE62C 2080023C */  lui        $v0, %hi(D_801FBCFC)
/* BEE30 800CE630 FCBC40AC */  sw         $zero, %lo(D_801FBCFC)($v0)
/* BEE34 800CE634 2080023C */  lui        $v0, %hi(D_801FBD00)
/* BEE38 800CE638 00BD40A4 */  sh         $zero, %lo(D_801FBD00)($v0)
/* BEE3C 800CE63C 0800E003 */  jr         $ra
/* BEE40 800CE640 21100000 */   addu      $v0, $zero, $zero
