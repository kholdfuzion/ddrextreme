.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bfdb4
/* B05B4 800BFDB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B05B8 800BFDB8 1000BFAF */  sw         $ra, 0x10($sp)
/* B05BC 800BFDBC 641F033C */  lui        $v1, 0x1f64
/* B05C0 800BFDC0 AC006334 */  ori        $v1, $v1, 0xac
/* B05C4 800BFDC4 00100224 */  addiu      $v0, $zero, 0x1000
/* B05C8 800BFDC8 000062A4 */  sh         $v0, ($v1)
/* B05CC 800BFDCC 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B05D0 800BFDD0 30570324 */  addiu      $v1, $zero, 0x5730
/* B05D4 800BFDD4 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B05D8 800BFDD8 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B05DC 800BFDDC 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B05E0 800BFDE0 641F033C */  lui        $v1, 0x1f64
/* B05E4 800BFDE4 AC006334 */  ori        $v1, $v1, 0xac
/* B05E8 800BFDE8 00300224 */  addiu      $v0, $zero, 0x3000
/* B05EC 800BFDEC 000062A4 */  sh         $v0, ($v1)
/* B05F0 800BFDF0 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B05F4 800BFDF4 30570324 */  addiu      $v1, $zero, 0x5730
/* B05F8 800BFDF8 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B05FC 800BFDFC 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0600 800BFE00 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
.L800BFE04:
/* B0604 800BFE04 F4FD020C */  jal        FUN_800bf7d0
/* B0608 800BFE08 00000000 */   nop
/* B060C 800BFE0C FDFF4010 */  beqz       $v0, .L800BFE04
/* B0610 800BFE10 641F033C */   lui       $v1, 0x1f64
/* B0614 800BFE14 AC006334 */  ori        $v1, $v1, 0xac
/* B0618 800BFE18 00300224 */  addiu      $v0, $zero, 0x3000
/* B061C 800BFE1C 000062A4 */  sh         $v0, ($v1)
/* B0620 800BFE20 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0624 800BFE24 30570324 */  addiu      $v1, $zero, 0x5730
/* B0628 800BFE28 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B062C 800BFE2C 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0630 800BFE30 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0634 800BFE34 641F043C */  lui        $a0, 0x1f64
/* B0638 800BFE38 AC008434 */  ori        $a0, $a0, 0xac
/* B063C 800BFE3C 00008294 */  lhu        $v0, ($a0)
/* B0640 800BFE40 00000000 */  nop
/* B0644 800BFE44 00104230 */  andi       $v0, $v0, 0x1000
/* B0648 800BFE48 00300324 */  addiu      $v1, $zero, 0x3000
/* B064C 800BFE4C 000083A4 */  sh         $v1, ($a0)
/* B0650 800BFE50 1F80033C */  lui        $v1, %hi(D_801F7082)
/* B0654 800BFE54 30570424 */  addiu      $a0, $zero, 0x5730
/* B0658 800BFE58 827064A4 */  sh         $a0, %lo(D_801F7082)($v1)
/* B065C 800BFE5C 1F80033C */  lui        $v1, %hi(D_801F7080)
/* B0660 800BFE60 807064A4 */  sh         $a0, %lo(D_801F7080)($v1)
/* B0664 800BFE64 641F043C */  lui        $a0, 0x1f64
/* B0668 800BFE68 AC008434 */  ori        $a0, $a0, 0xac
/* B066C 800BFE6C 00100324 */  addiu      $v1, $zero, 0x1000
/* B0670 800BFE70 000083A4 */  sh         $v1, ($a0)
/* B0674 800BFE74 1F80033C */  lui        $v1, %hi(D_801F7082)
/* B0678 800BFE78 30570424 */  addiu      $a0, $zero, 0x5730
/* B067C 800BFE7C 827064A4 */  sh         $a0, %lo(D_801F7082)($v1)
/* B0680 800BFE80 1F80033C */  lui        $v1, %hi(D_801F7080)
/* B0684 800BFE84 807064A4 */  sh         $a0, %lo(D_801F7080)($v1)
/* B0688 800BFE88 641F043C */  lui        $a0, 0x1f64
/* B068C 800BFE8C AC008434 */  ori        $a0, $a0, 0xac
/* B0690 800BFE90 00100324 */  addiu      $v1, $zero, 0x1000
/* B0694 800BFE94 000083A4 */  sh         $v1, ($a0)
/* B0698 800BFE98 1F80033C */  lui        $v1, %hi(D_801F7082)
/* B069C 800BFE9C 30570424 */  addiu      $a0, $zero, 0x5730
/* B06A0 800BFEA0 827064A4 */  sh         $a0, %lo(D_801F7082)($v1)
/* B06A4 800BFEA4 1F80033C */  lui        $v1, %hi(D_801F7080)
/* B06A8 800BFEA8 807064A4 */  sh         $a0, %lo(D_801F7080)($v1)
/* B06AC 800BFEAC 641F043C */  lui        $a0, 0x1f64
/* B06B0 800BFEB0 AC008434 */  ori        $a0, $a0, 0xac
/* B06B4 800BFEB4 00100324 */  addiu      $v1, $zero, 0x1000
/* B06B8 800BFEB8 000083A4 */  sh         $v1, ($a0)
/* B06BC 800BFEBC 1F80033C */  lui        $v1, %hi(D_801F7082)
/* B06C0 800BFEC0 30570424 */  addiu      $a0, $zero, 0x5730
/* B06C4 800BFEC4 827064A4 */  sh         $a0, %lo(D_801F7082)($v1)
/* B06C8 800BFEC8 1F80033C */  lui        $v1, %hi(D_801F7080)
/* B06CC 800BFECC 807064A4 */  sh         $a0, %lo(D_801F7080)($v1)
/* B06D0 800BFED0 2B100200 */  sltu       $v0, $zero, $v0
/* B06D4 800BFED4 1000BF8F */  lw         $ra, 0x10($sp)
/* B06D8 800BFED8 00000000 */  nop
/* B06DC 800BFEDC 0800E003 */  jr         $ra
/* B06E0 800BFEE0 1800BD27 */   addiu     $sp, $sp, 0x18
