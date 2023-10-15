.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bdde8
/* AE5E8 800BDDE8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* AE5EC 800BDDEC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AE5F0 800BDDF0 21988000 */  addu       $s3, $a0, $zero
/* AE5F4 800BDDF4 2000B4AF */  sw         $s4, 0x20($sp)
/* AE5F8 800BDDF8 21A0A000 */  addu       $s4, $a1, $zero
/* AE5FC 800BDDFC 2800B6AF */  sw         $s6, 0x28($sp)
/* AE600 800BDE00 21B0C000 */  addu       $s6, $a2, $zero
/* AE604 800BDE04 01000424 */  addiu      $a0, $zero, 1
/* AE608 800BDE08 3000BFAF */  sw         $ra, 0x30($sp)
/* AE60C 800BDE0C 2C00B7AF */  sw         $s7, 0x2c($sp)
/* AE610 800BDE10 2400B5AF */  sw         $s5, 0x24($sp)
/* AE614 800BDE14 1800B2AF */  sw         $s2, 0x18($sp)
/* AE618 800BDE18 1400B1AF */  sw         $s1, 0x14($sp)
/* AE61C 800BDE1C CD6B000C */  jal        VSync
/* AE620 800BDE20 1000B0AF */   sw        $s0, 0x10($sp)
/* AE624 800BDE24 21A84000 */  addu       $s5, $v0, $zero
/* AE628 800BDE28 21900000 */  addu       $s2, $zero, $zero
/* AE62C 800BDE2C 2100C01A */  blez       $s6, .L800BDEB4
/* AE630 800BDE30 21884002 */   addu      $s1, $s2, $zero
/* AE634 800BDE34 0F80023C */  lui        $v0, %hi(D_800EE108)
/* AE638 800BDE38 08E15724 */  addiu      $s7, $v0, %lo(D_800EE108)
.L800BDE3C:
/* AE63C 800BDE3C 21206002 */  addu       $a0, $s3, $zero
/* AE640 800BDE40 02007326 */  addiu      $s3, $s3, 2
/* AE644 800BDE44 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE648 800BDE48 A8E1438C */  lw         $v1, %lo(D_800EE1A8)($v0)
/* AE64C 800BDE4C 00008596 */  lhu        $a1, ($s4)
/* AE650 800BDE50 80100300 */  sll        $v0, $v1, 2
/* AE654 800BDE54 21104300 */  addu       $v0, $v0, $v1
/* AE658 800BDE58 C0100200 */  sll        $v0, $v0, 3
/* AE65C 800BDE5C 21105700 */  addu       $v0, $v0, $s7
/* AE660 800BDE60 1000428C */  lw         $v0, 0x10($v0)
/* AE664 800BDE64 00000000 */  nop
/* AE668 800BDE68 09F84000 */  jalr       $v0
/* AE66C 800BDE6C 02009426 */   addiu     $s4, $s4, 2
/* AE670 800BDE70 21884000 */  addu       $s1, $v0, $zero
/* AE674 800BDE74 10002016 */  bnez       $s1, .L800BDEB8
/* AE678 800BDE78 001F043C */   lui       $a0, 0x1f00
/* AE67C 800BDE7C CD6B000C */  jal        VSync
/* AE680 800BDE80 01000424 */   addiu     $a0, $zero, 1
/* AE684 800BDE84 21804000 */  addu       $s0, $v0, $zero
/* AE688 800BDE88 23101502 */  subu       $v0, $s0, $s5
/* AE68C 800BDE8C FFFF4230 */  andi       $v0, $v0, 0xffff
/* AE690 800BDE90 0801422C */  sltiu      $v0, $v0, 0x108
/* AE694 800BDE94 03004014 */  bnez       $v0, .L800BDEA4
/* AE698 800BDE98 00000000 */   nop
/* AE69C 800BDE9C 23F0020C */  jal        FUN_800bc08c
/* AE6A0 800BDEA0 21A80002 */   addu      $s5, $s0, $zero
.L800BDEA4:
/* AE6A4 800BDEA4 01005226 */  addiu      $s2, $s2, 1
/* AE6A8 800BDEA8 2A105602 */  slt        $v0, $s2, $s6
/* AE6AC 800BDEAC E3FF4014 */  bnez       $v0, .L800BDE3C
/* AE6B0 800BDEB0 00000000 */   nop
.L800BDEB4:
/* AE6B4 800BDEB4 001F043C */  lui        $a0, 0x1f00
.L800BDEB8:
/* AE6B8 800BDEB8 60F8020C */  jal        FUN_800be180
/* AE6BC 800BDEBC 00008424 */   addiu     $a0, $a0, 0
/* AE6C0 800BDEC0 21102002 */  addu       $v0, $s1, $zero
/* AE6C4 800BDEC4 3000BF8F */  lw         $ra, 0x30($sp)
/* AE6C8 800BDEC8 2C00B78F */  lw         $s7, 0x2c($sp)
/* AE6CC 800BDECC 2800B68F */  lw         $s6, 0x28($sp)
/* AE6D0 800BDED0 2400B58F */  lw         $s5, 0x24($sp)
/* AE6D4 800BDED4 2000B48F */  lw         $s4, 0x20($sp)
/* AE6D8 800BDED8 1C00B38F */  lw         $s3, 0x1c($sp)
/* AE6DC 800BDEDC 1800B28F */  lw         $s2, 0x18($sp)
/* AE6E0 800BDEE0 1400B18F */  lw         $s1, 0x14($sp)
/* AE6E4 800BDEE4 1000B08F */  lw         $s0, 0x10($sp)
/* AE6E8 800BDEE8 0800E003 */  jr         $ra
/* AE6EC 800BDEEC 3800BD27 */   addiu     $sp, $sp, 0x38
