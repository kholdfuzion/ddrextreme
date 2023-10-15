.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc5ec
/* ACDEC 800BC5EC 01000224 */  addiu      $v0, $zero, 1
/* ACDF0 800BC5F0 14008210 */  beq        $a0, $v0, .L800BC644
/* ACDF4 800BC5F4 02008228 */   slti      $v0, $a0, 2
/* ACDF8 800BC5F8 05004010 */  beqz       $v0, .L800BC610
/* ACDFC 800BC5FC 00000000 */   nop
/* ACE00 800BC600 0A008010 */  beqz       $a0, .L800BC62C
/* ACE04 800BC604 FFFF0224 */   addiu     $v0, $zero, -1
/* ACE08 800BC608 A2F10208 */  j          .L800BC688
/* ACE0C 800BC60C 00000000 */   nop
.L800BC610:
/* ACE10 800BC610 02000224 */  addiu      $v0, $zero, 2
/* ACE14 800BC614 11008210 */  beq        $a0, $v0, .L800BC65C
/* ACE18 800BC618 03000224 */   addiu     $v0, $zero, 3
/* ACE1C 800BC61C 15008210 */  beq        $a0, $v0, .L800BC674
/* ACE20 800BC620 FFFF0224 */   addiu     $v0, $zero, -1
/* ACE24 800BC624 A2F10208 */  j          .L800BC688
/* ACE28 800BC628 00000000 */   nop
.L800BC62C:
/* ACE2C 800BC62C 0F80023C */  lui        $v0, %hi(D_800ED0A4)
/* ACE30 800BC630 A4D0428C */  lw         $v0, %lo(D_800ED0A4)($v0)
/* ACE34 800BC634 00000000 */  nop
/* ACE38 800BC638 000045AC */  sw         $a1, ($v0)
/* ACE3C 800BC63C A2F10208 */  j          .L800BC688
/* ACE40 800BC640 21100000 */   addu      $v0, $zero, $zero
.L800BC644:
/* ACE44 800BC644 0F80023C */  lui        $v0, %hi(D_800ED09C)
/* ACE48 800BC648 9CD0428C */  lw         $v0, %lo(D_800ED09C)($v0)
/* ACE4C 800BC64C 00000000 */  nop
/* ACE50 800BC650 000045AC */  sw         $a1, ($v0)
/* ACE54 800BC654 A2F10208 */  j          .L800BC688
/* ACE58 800BC658 21100000 */   addu      $v0, $zero, $zero
.L800BC65C:
/* ACE5C 800BC65C 0F80023C */  lui        $v0, %hi(D_800ED0A0)
/* ACE60 800BC660 A0D0428C */  lw         $v0, %lo(D_800ED0A0)($v0)
/* ACE64 800BC664 00000000 */  nop
/* ACE68 800BC668 000045AC */  sw         $a1, ($v0)
/* ACE6C 800BC66C A2F10208 */  j          .L800BC688
/* ACE70 800BC670 21100000 */   addu      $v0, $zero, $zero
.L800BC674:
/* ACE74 800BC674 0F80023C */  lui        $v0, %hi(D_800ED0A8)
/* ACE78 800BC678 A8D0428C */  lw         $v0, %lo(D_800ED0A8)($v0)
/* ACE7C 800BC67C 00000000 */  nop
/* ACE80 800BC680 000045AC */  sw         $a1, ($v0)
/* ACE84 800BC684 21100000 */  addu       $v0, $zero, $zero
.L800BC688:
/* ACE88 800BC688 0800E003 */  jr         $ra
/* ACE8C 800BC68C 00000000 */   nop
