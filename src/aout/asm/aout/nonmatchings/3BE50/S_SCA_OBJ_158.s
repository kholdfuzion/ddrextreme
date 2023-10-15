.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_158
/* AA02C 800B982C 0A00A010 */  beqz       $a1, .L800B9858
/* AA030 800B9830 FF7F0231 */   andi      $v0, $t0, 0x7fff
/* AA034 800B9834 06008684 */  lh         $a2, 6($a0)
/* AA038 800B9838 06008394 */  lhu        $v1, 6($a0)
/* AA03C 800B983C 8000C228 */  slti       $v0, $a2, 0x80
/* AA040 800B9840 04004010 */  beqz       $v0, .L800B9854
/* AA044 800B9844 7F000824 */   addiu     $t0, $zero, 0x7f
/* AA048 800B9848 0200C004 */  bltz       $a2, .L800B9854
/* AA04C 800B984C 21400000 */   addu      $t0, $zero, $zero
/* AA050 800B9850 21406000 */  addu       $t0, $v1, $zero
.L800B9854:
/* AA054 800B9854 FF7F0231 */  andi       $v0, $t0, 0x7fff
.L800B9858:
/* AA058 800B9858 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA05C 800B985C F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA060 800B9860 25104500 */  or         $v0, $v0, $a1
/* AA064 800B9864 820162A4 */  sh         $v0, 0x182($v1)
.L800B9868:
/* AA068 800B9868 03004015 */  bnez       $t2, .L800B9878
/* AA06C 800B986C 40002231 */   andi      $v0, $t1, 0x40
/* AA070 800B9870 06004010 */  beqz       $v0, .L800B988C
/* AA074 800B9874 00000000 */   nop
.L800B9878:
/* AA078 800B9878 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA07C 800B987C F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA080 800B9880 10008294 */  lhu        $v0, 0x10($a0)
/* AA084 800B9884 00000000 */  nop
/* AA088 800B9888 B00162A4 */  sh         $v0, 0x1b0($v1)
.L800B988C:
/* AA08C 800B988C 03004015 */  bnez       $t2, .L800B989C
/* AA090 800B9890 80002231 */   andi      $v0, $t1, 0x80
/* AA094 800B9894 06004010 */  beqz       $v0, .L800B98B0
/* AA098 800B9898 00000000 */   nop
.L800B989C:
/* AA09C 800B989C 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA0A0 800B98A0 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA0A4 800B98A4 12008294 */  lhu        $v0, 0x12($a0)
/* AA0A8 800B98A8 00000000 */  nop
/* AA0AC 800B98AC B20162A4 */  sh         $v0, 0x1b2($v1)
.L800B98B0:
/* AA0B0 800B98B0 03004015 */  bnez       $t2, .L800B98C0
/* AA0B4 800B98B4 00042231 */   andi      $v0, $t1, 0x400
/* AA0B8 800B98B8 06004010 */  beqz       $v0, .L800B98D4
/* AA0BC 800B98BC 00000000 */   nop
.L800B98C0:
/* AA0C0 800B98C0 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA0C4 800B98C4 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA0C8 800B98C8 1C008294 */  lhu        $v0, 0x1c($a0)
/* AA0CC 800B98CC 00000000 */  nop
/* AA0D0 800B98D0 B40162A4 */  sh         $v0, 0x1b4($v1)
.L800B98D4:
/* AA0D4 800B98D4 03004015 */  bnez       $t2, .L800B98E4
/* AA0D8 800B98D8 00082231 */   andi      $v0, $t1, 0x800
/* AA0DC 800B98DC 06004010 */  beqz       $v0, .L800B98F8
/* AA0E0 800B98E0 00000000 */   nop
.L800B98E4:
/* AA0E4 800B98E4 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA0E8 800B98E8 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA0EC 800B98EC 1E008294 */  lhu        $v0, 0x1e($a0)
/* AA0F0 800B98F0 00000000 */  nop
/* AA0F4 800B98F4 B60162A4 */  sh         $v0, 0x1b6($v1)
.L800B98F8:
/* AA0F8 800B98F8 03004015 */  bnez       $t2, .L800B9908
/* AA0FC 800B98FC 00012231 */   andi      $v0, $t1, 0x100
/* AA100 800B9900 12004010 */  beqz       $v0, .L800B994C
/* AA104 800B9904 00000000 */   nop
.L800B9908:
/* AA108 800B9908 1400828C */  lw         $v0, 0x14($a0)
/* AA10C 800B990C 00000000 */  nop
/* AA110 800B9910 07004014 */  bnez       $v0, .L800B9930
/* AA114 800B9914 00000000 */   nop
/* AA118 800B9918 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA11C 800B991C F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA120 800B9920 00000000 */  nop
/* AA124 800B9924 AA016294 */  lhu        $v0, 0x1aa($v1)
/* AA128 800B9928 52E60208 */  j          S_SCA_OBJ_274
/* AA12C 800B992C FBFF4230 */   andi      $v0, $v0, 0xfffb
.L800B9930:
/* AA130 800B9930 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA134 800B9934 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA138 800B9938 00000000 */  nop
/* AA13C 800B993C AA016294 */  lhu        $v0, 0x1aa($v1)
/* AA140 800B9940 00000000 */  nop
/* AA144 800B9944 04004234 */  ori        $v0, $v0, 4
