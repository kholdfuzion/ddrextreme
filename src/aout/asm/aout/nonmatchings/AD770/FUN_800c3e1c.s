.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c3e1c
/* B461C 800C3E1C F0FFBD27 */  addiu      $sp, $sp, -0x10
/* B4620 800C3E20 21C88000 */  addu       $t9, $a0, $zero
/* B4624 800C3E24 0800B0AF */  sw         $s0, 8($sp)
/* B4628 800C3E28 2180A000 */  addu       $s0, $a1, $zero
/* B462C 800C3E2C 1F80023C */  lui        $v0, %hi(D_801F7400)
/* B4630 800C3E30 0074478C */  lw         $a3, %lo(D_801F7400)($v0)
/* B4634 800C3E34 21480000 */  addu       $t1, $zero, $zero
/* B4638 800C3E38 3B00C018 */  blez       $a2, .L800C3F28
/* B463C 800C3E3C 0C00B1AF */   sw        $s1, 0xc($sp)
/* B4640 800C3E40 1F800F3C */  lui        $t7, 0x801f
/* B4644 800C3E44 C6410E3C */  lui        $t6, 0x41c6
/* B4648 800C3E48 6D4ECE35 */  ori        $t6, $t6, 0x4e6d
/* B464C 800C3E4C FF7F0D3C */  lui        $t5, 0x7fff
/* B4650 800C3E50 FFFFAD35 */  ori        $t5, $t5, 0xffff
/* B4654 800C3E54 0080183C */  lui        $t8, 0x8000
/* B4658 800C3E58 C1040B3C */  lui        $t3, 0x4c1
/* B465C 800C3E5C B71D6B35 */  ori        $t3, $t3, 0x1db7
/* B4660 800C3E60 0300CC30 */  andi       $t4, $a2, 3
/* B4664 800C3E64 C0280C00 */  sll        $a1, $t4, 3
.L800C3E68:
/* B4668 800C3E68 26008015 */  bnez       $t4, .L800C3F04
/* B466C 800C3E6C 21202903 */   addu      $a0, $t9, $t1
/* B4670 800C3E70 21400000 */  addu       $t0, $zero, $zero
/* B4674 800C3E74 2150A003 */  addu       $t2, $sp, $zero
.L800C3E78:
/* B4678 800C3E78 0474E28D */  lw         $v0, 0x7404($t7)
/* B467C 800C3E7C 00000000 */  nop
/* B4680 800C3E80 18004E00 */  mult       $v0, $t6
/* B4684 800C3E84 2118E000 */  addu       $v1, $a3, $zero
/* B4688 800C3E88 21380000 */  addu       $a3, $zero, $zero
/* B468C 800C3E8C 12880000 */  mflo       $s1
/* B4690 800C3E90 3B302226 */  addiu      $v0, $s1, 0x303b
/* B4694 800C3E94 24104D00 */  and        $v0, $v0, $t5
/* B4698 800C3E98 0474E2AD */  sw         $v0, 0x7404($t7)
/* B469C 800C3E9C C2130200 */  srl        $v0, $v0, 0xf
/* B46A0 800C3EA0 0000A2A7 */  sh         $v0, ($sp)
/* B46A4 800C3EA4 21104701 */  addu       $v0, $t2, $a3
.L800C3EA8:
/* B46A8 800C3EA8 00004290 */  lbu        $v0, ($v0)
/* B46AC 800C3EAC 21200000 */  addu       $a0, $zero, $zero
/* B46B0 800C3EB0 00160200 */  sll        $v0, $v0, 0x18
/* B46B4 800C3EB4 26186200 */  xor        $v1, $v1, $v0
/* B46B8 800C3EB8 24107800 */  and        $v0, $v1, $t8
.L800C3EBC:
/* B46BC 800C3EBC 03004010 */  beqz       $v0, .L800C3ECC
/* B46C0 800C3EC0 40100300 */   sll       $v0, $v1, 1
/* B46C4 800C3EC4 B40F0308 */  j          .L800C3ED0
/* B46C8 800C3EC8 26184B00 */   xor       $v1, $v0, $t3
.L800C3ECC:
/* B46CC 800C3ECC 40180300 */  sll        $v1, $v1, 1
.L800C3ED0:
/* B46D0 800C3ED0 01008424 */  addiu      $a0, $a0, 1
/* B46D4 800C3ED4 0800822C */  sltiu      $v0, $a0, 8
/* B46D8 800C3ED8 F8FF4014 */  bnez       $v0, .L800C3EBC
/* B46DC 800C3EDC 24107800 */   and       $v0, $v1, $t8
/* B46E0 800C3EE0 0100E724 */  addiu      $a3, $a3, 1
/* B46E4 800C3EE4 0200E22C */  sltiu      $v0, $a3, 2
/* B46E8 800C3EE8 EFFF4014 */  bnez       $v0, .L800C3EA8
/* B46EC 800C3EEC 21104701 */   addu      $v0, $t2, $a3
/* B46F0 800C3EF0 01000825 */  addiu      $t0, $t0, 1
/* B46F4 800C3EF4 07000229 */  slti       $v0, $t0, 7
/* B46F8 800C3EF8 DFFF4014 */  bnez       $v0, .L800C3E78
/* B46FC 800C3EFC 21386000 */   addu      $a3, $v1, $zero
/* B4700 800C3F00 21202903 */  addu       $a0, $t9, $t1
.L800C3F04:
/* B4704 800C3F04 21100902 */  addu       $v0, $s0, $t1
/* B4708 800C3F08 01002925 */  addiu      $t1, $t1, 1
/* B470C 800C3F0C 00004290 */  lbu        $v0, ($v0)
/* B4710 800C3F10 0718A700 */  srav       $v1, $a3, $a1
/* B4714 800C3F14 26104300 */  xor        $v0, $v0, $v1
/* B4718 800C3F18 000082A0 */  sb         $v0, ($a0)
/* B471C 800C3F1C 2A102601 */  slt        $v0, $t1, $a2
/* B4720 800C3F20 D1FF4014 */  bnez       $v0, .L800C3E68
/* B4724 800C3F24 00000000 */   nop
.L800C3F28:
/* B4728 800C3F28 0C00B18F */  lw         $s1, 0xc($sp)
/* B472C 800C3F2C 0800B08F */  lw         $s0, 8($sp)
/* B4730 800C3F30 21102003 */  addu       $v0, $t9, $zero
/* B4734 800C3F34 0800E003 */  jr         $ra
/* B4738 800C3F38 1000BD27 */   addiu     $sp, $sp, 0x10
