.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b4cf0
/* A54F0 800B4CF0 1E80093C */  lui        $t1, %hi(D_801E07D8)
/* A54F4 800B4CF4 1E80043C */  lui        $a0, %hi(D_801E07B8)
/* A54F8 800B4CF8 D807268D */  lw         $a2, %lo(D_801E07D8)($t1)
/* A54FC 800B4CFC 21400000 */  addu       $t0, $zero, $zero
/* A5500 800B4D00 0200C794 */  lhu        $a3, 2($a2)
/* A5504 800B4D04 B80780AC */  sw         $zero, %lo(D_801E07B8)($a0)
/* A5508 800B4D08 0400C28C */  lw         $v0, 4($a2)
/* A550C 800B4D0C B8078424 */  addiu      $a0, $a0, 0x7b8
/* A5510 800B4D10 040082AC */  sw         $v0, 4($a0)
/* A5514 800B4D14 0000C594 */  lhu        $a1, ($a2)
/* A5518 800B4D18 0400C38C */  lw         $v1, 4($a2)
/* A551C 800B4D1C 40100500 */  sll        $v0, $a1, 1
/* A5520 800B4D20 21104500 */  addu       $v0, $v0, $a1
/* A5524 800B4D24 C0100200 */  sll        $v0, $v0, 3
/* A5528 800B4D28 21186200 */  addu       $v1, $v1, $v0
/* A552C 800B4D2C 0180023C */  lui        $v0, %hi(D_800172F0)
/* A5530 800B4D30 F0724224 */  addiu      $v0, $v0, %lo(D_800172F0)
/* A5534 800B4D34 2138E200 */  addu       $a3, $a3, $v0
/* A5538 800B4D38 080083AC */  sw         $v1, 8($a0)
/* A553C 800B4D3C 0000C394 */  lhu        $v1, ($a2)
/* A5540 800B4D40 0000E790 */  lbu        $a3, ($a3)
/* A5544 800B4D44 40180300 */  sll        $v1, $v1, 1
/* A5548 800B4D48 01006324 */  addiu      $v1, $v1, 1
/* A554C 800B4D4C 52006010 */  beqz       $v1, .L800B4E98
/* A5550 800B4D50 21502001 */   addu      $t2, $t1, $zero
/* A5554 800B4D54 21300000 */  addu       $a2, $zero, $zero
/* A5558 800B4D58 D807238D */  lw         $v1, 0x7d8($t1)
.L800B4D5C:
/* A555C 800B4D5C 00000000 */  nop
/* A5560 800B4D60 0400628C */  lw         $v0, 4($v1)
/* A5564 800B4D64 00000000 */  nop
/* A5568 800B4D68 2110C200 */  addu       $v0, $a2, $v0
/* A556C 800B4D6C 13000015 */  bnez       $t0, .L800B4DBC
/* A5570 800B4D70 020040A4 */   sh        $zero, 2($v0)
/* A5574 800B4D74 0400648C */  lw         $a0, 4($v1)
/* A5578 800B4D78 02000224 */  addiu      $v0, $zero, 2
/* A557C 800B4D7C 000082A0 */  sb         $v0, ($a0)
/* A5580 800B4D80 D807238D */  lw         $v1, 0x7d8($t1)
/* A5584 800B4D84 00000000 */  nop
/* A5588 800B4D88 0400648C */  lw         $a0, 4($v1)
/* A558C 800B4D8C FEFFE224 */  addiu      $v0, $a3, -2
/* A5590 800B4D90 010082A0 */  sb         $v0, 1($a0)
/* A5594 800B4D94 D807258D */  lw         $a1, 0x7d8($t1)
/* A5598 800B4D98 00000000 */  nop
/* A559C 800B4D9C 0400A28C */  lw         $v0, 4($a1)
/* A55A0 800B4DA0 00000000 */  nop
/* A55A4 800B4DA4 040040AC */  sw         $zero, 4($v0)
/* A55A8 800B4DA8 0400A38C */  lw         $v1, 4($a1)
/* A55AC 800B4DAC 00000000 */  nop
/* A55B0 800B4DB0 0C006224 */  addiu      $v0, $v1, 0xc
/* A55B4 800B4DB4 9CD30208 */  j          .L800B4E70
/* A55B8 800B4DB8 080062AC */   sw        $v0, 8($v1)
.L800B4DBC:
/* A55BC 800B4DBC 00006294 */  lhu        $v0, ($v1)
/* A55C0 800B4DC0 00000000 */  nop
/* A55C4 800B4DC4 40100200 */  sll        $v0, $v0, 1
/* A55C8 800B4DC8 15000215 */  bne        $t0, $v0, .L800B4E20
/* A55CC 800B4DCC 00000000 */   nop
/* A55D0 800B4DD0 0400628C */  lw         $v0, 4($v1)
/* A55D4 800B4DD4 00000000 */  nop
/* A55D8 800B4DD8 2110C200 */  addu       $v0, $a2, $v0
/* A55DC 800B4DDC 010040A0 */  sb         $zero, 1($v0)
/* A55E0 800B4DE0 D807258D */  lw         $a1, 0x7d8($t1)
/* A55E4 800B4DE4 00000000 */  nop
/* A55E8 800B4DE8 0400A38C */  lw         $v1, 4($a1)
/* A55EC 800B4DEC 00000000 */  nop
/* A55F0 800B4DF0 2118C300 */  addu       $v1, $a2, $v1
/* A55F4 800B4DF4 F4FF6424 */  addiu      $a0, $v1, -0xc
/* A55F8 800B4DF8 040064AC */  sw         $a0, 4($v1)
/* A55FC 800B4DFC 0400A28C */  lw         $v0, 4($a1)
/* A5600 800B4E00 00000000 */  nop
/* A5604 800B4E04 2110C200 */  addu       $v0, $a2, $v0
/* A5608 800B4E08 080040AC */  sw         $zero, 8($v0)
/* A560C 800B4E0C 0400A38C */  lw         $v1, 4($a1)
/* A5610 800B4E10 00000000 */  nop
/* A5614 800B4E14 2118C300 */  addu       $v1, $a2, $v1
/* A5618 800B4E18 9CD30208 */  j          .L800B4E70
/* A561C 800B4E1C 000067A0 */   sb        $a3, ($v1)
.L800B4E20:
/* A5620 800B4E20 0400628C */  lw         $v0, 4($v1)
/* A5624 800B4E24 00000000 */  nop
/* A5628 800B4E28 2110C200 */  addu       $v0, $a2, $v0
/* A562C 800B4E2C 010040A0 */  sb         $zero, 1($v0)
/* A5630 800B4E30 D807258D */  lw         $a1, 0x7d8($t1)
/* A5634 800B4E34 00000000 */  nop
/* A5638 800B4E38 0400A28C */  lw         $v0, 4($a1)
/* A563C 800B4E3C 00000000 */  nop
/* A5640 800B4E40 2110C200 */  addu       $v0, $a2, $v0
/* A5644 800B4E44 F4FF4424 */  addiu      $a0, $v0, -0xc
/* A5648 800B4E48 040044AC */  sw         $a0, 4($v0)
/* A564C 800B4E4C 0400A38C */  lw         $v1, 4($a1)
/* A5650 800B4E50 00000000 */  nop
/* A5654 800B4E54 2118C300 */  addu       $v1, $a2, $v1
/* A5658 800B4E58 0C006424 */  addiu      $a0, $v1, 0xc
/* A565C 800B4E5C 080064AC */  sw         $a0, 8($v1)
/* A5660 800B4E60 0400A28C */  lw         $v0, 4($a1)
/* A5664 800B4E64 00000000 */  nop
/* A5668 800B4E68 2110C200 */  addu       $v0, $a2, $v0
/* A566C 800B4E6C 000047A0 */  sb         $a3, ($v0)
.L800B4E70:
/* A5670 800B4E70 21484001 */  addu       $t1, $t2, $zero
/* A5674 800B4E74 D807238D */  lw         $v1, 0x7d8($t1)
/* A5678 800B4E78 00000000 */  nop
/* A567C 800B4E7C 00006294 */  lhu        $v0, ($v1)
/* A5680 800B4E80 01000825 */  addiu      $t0, $t0, 1
/* A5684 800B4E84 40100200 */  sll        $v0, $v0, 1
/* A5688 800B4E88 01004224 */  addiu      $v0, $v0, 1
/* A568C 800B4E8C 2A100201 */  slt        $v0, $t0, $v0
/* A5690 800B4E90 B2FF4014 */  bnez       $v0, .L800B4D5C
/* A5694 800B4E94 0C00C624 */   addiu     $a2, $a2, 0xc
.L800B4E98:
/* A5698 800B4E98 0800E003 */  jr         $ra
/* A569C 800B4E9C 00000000 */   nop
