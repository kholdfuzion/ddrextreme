.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_110
/* 88F4 800180F4 0D80023C */  lui        $v0, %hi(D_800D2B9A)
/* 88F8 800180F8 9A2B4290 */  lbu        $v0, %lo(D_800D2B9A)($v0)
/* 88FC 800180FC 00000000 */  nop
/* 8900 80018100 0200422C */  sltiu      $v0, $v0, 2
/* 8904 80018104 08004014 */  bnez       $v0, .L80018128
/* 8908 80018108 00000000 */   nop
/* 890C 8001810C 0180043C */  lui        $a0, %hi(D_800100F8)
/* 8910 80018110 F8008424 */  addiu      $a0, $a0, %lo(D_800100F8)
/* 8914 80018114 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 8918 80018118 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 891C 8001811C 00000000 */  nop
/* 8920 80018120 09F84000 */  jalr       $v0
/* 8924 80018124 21282002 */   addu      $a1, $s1, $zero
.L80018128:
/* 8928 80018128 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 892C 8001812C 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 8930 80018130 00000000 */  nop
/* 8934 80018134 3400428C */  lw         $v0, 0x34($v0)
/* 8938 80018138 00000000 */  nop
/* 893C 8001813C 09F84000 */  jalr       $v0
/* 8940 80018140 01000424 */   addiu     $a0, $zero, 1
