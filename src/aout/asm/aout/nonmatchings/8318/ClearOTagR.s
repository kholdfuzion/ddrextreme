.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ClearOTagR
/* 904C 8001884C 0D80023C */  lui        $v0, %hi(D_800D2B9A)
/* 9050 80018850 9A2B4290 */  lbu        $v0, %lo(D_800D2B9A)($v0)
/* 9054 80018854 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9058 80018858 1000B0AF */  sw         $s0, 0x10($sp)
/* 905C 8001885C 21808000 */  addu       $s0, $a0, $zero
/* 9060 80018860 1400B1AF */  sw         $s1, 0x14($sp)
/* 9064 80018864 2188A000 */  addu       $s1, $a1, $zero
/* 9068 80018868 0200422C */  sltiu      $v0, $v0, 2
/* 906C 8001886C 09004014 */  bnez       $v0, .L80018894
/* 9070 80018870 1800BFAF */   sw        $ra, 0x18($sp)
/* 9074 80018874 0180043C */  lui        $a0, %hi(D_80010208)
/* 9078 80018878 08028424 */  addiu      $a0, $a0, %lo(D_80010208)
/* 907C 8001887C 21280002 */  addu       $a1, $s0, $zero
/* 9080 80018880 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 9084 80018884 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 9088 80018888 00000000 */  nop
/* 908C 8001888C 09F84000 */  jalr       $v0
/* 9090 80018890 21302002 */   addu      $a2, $s1, $zero
.L80018894:
/* 9094 80018894 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 9098 80018898 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 909C 8001889C 21200002 */  addu       $a0, $s0, $zero
/* 90A0 800188A0 2C00428C */  lw         $v0, 0x2c($v0)
/* 90A4 800188A4 00000000 */  nop
/* 90A8 800188A8 09F84000 */  jalr       $v0
/* 90AC 800188AC 21282002 */   addu      $a1, $s1, $zero
/* 90B0 800188B0 FF00063C */  lui        $a2, 0xff
/* 90B4 800188B4 FFFFC634 */  ori        $a2, $a2, 0xffff
/* 90B8 800188B8 21100002 */  addu       $v0, $s0, $zero
/* 90BC 800188BC 0D80053C */  lui        $a1, %hi(D_800D2C58)
/* 90C0 800188C0 582CA524 */  addiu      $a1, $a1, %lo(D_800D2C58)
/* 90C4 800188C4 0D80033C */  lui        $v1, %hi(D_800D2C44)
/* 90C8 800188C8 442C6324 */  addiu      $v1, $v1, %lo(D_800D2C44)
/* 90CC 800188CC 24186600 */  and        $v1, $v1, $a2
/* 90D0 800188D0 0004043C */  lui        $a0, 0x400
/* 90D4 800188D4 25186400 */  or         $v1, $v1, $a0
/* 90D8 800188D8 0000A3AC */  sw         $v1, ($a1)
/* 90DC 800188DC 2428A600 */  and        $a1, $a1, $a2
/* 90E0 800188E0 000045AC */  sw         $a1, ($v0)
/* 90E4 800188E4 1800BF8F */  lw         $ra, 0x18($sp)
/* 90E8 800188E8 1400B18F */  lw         $s1, 0x14($sp)
/* 90EC 800188EC 1000B08F */  lw         $s0, 0x10($sp)
/* 90F0 800188F0 0800E003 */  jr         $ra
/* 90F4 800188F4 2000BD27 */   addiu     $sp, $sp, 0x20
