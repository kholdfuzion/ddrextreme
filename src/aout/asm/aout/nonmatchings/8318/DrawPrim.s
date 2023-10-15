.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DrawPrim
/* 90F8 800188F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 90FC 800188FC 1000B0AF */  sw         $s0, 0x10($sp)
/* 9100 80018900 21808000 */  addu       $s0, $a0, $zero
/* 9104 80018904 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 9108 80018908 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 910C 8001890C 1800BFAF */  sw         $ra, 0x18($sp)
/* 9110 80018910 1400B1AF */  sw         $s1, 0x14($sp)
/* 9114 80018914 3C00428C */  lw         $v0, 0x3c($v0)
/* 9118 80018918 03001192 */  lbu        $s1, 3($s0)
/* 911C 8001891C 09F84000 */  jalr       $v0
/* 9120 80018920 21200000 */   addu      $a0, $zero, $zero
/* 9124 80018924 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 9128 80018928 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 912C 8001892C 04000426 */  addiu      $a0, $s0, 4
/* 9130 80018930 1400428C */  lw         $v0, 0x14($v0)
/* 9134 80018934 00000000 */  nop
/* 9138 80018938 09F84000 */  jalr       $v0
/* 913C 8001893C 21282002 */   addu      $a1, $s1, $zero
/* 9140 80018940 1800BF8F */  lw         $ra, 0x18($sp)
/* 9144 80018944 1400B18F */  lw         $s1, 0x14($sp)
/* 9148 80018948 1000B08F */  lw         $s0, 0x10($sp)
/* 914C 8001894C 0800E003 */  jr         $ra
/* 9150 80018950 2000BD27 */   addiu     $sp, $sp, 0x20
