.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ClearOTag
/* 8F84 80018784 0D80023C */  lui        $v0, %hi(D_800D2B9A)
/* 8F88 80018788 9A2B4290 */  lbu        $v0, %lo(D_800D2B9A)($v0)
/* 8F8C 8001878C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8F90 80018790 1000B0AF */  sw         $s0, 0x10($sp)
/* 8F94 80018794 21808000 */  addu       $s0, $a0, $zero
/* 8F98 80018798 1400B1AF */  sw         $s1, 0x14($sp)
/* 8F9C 8001879C 2188A000 */  addu       $s1, $a1, $zero
/* 8FA0 800187A0 0200422C */  sltiu      $v0, $v0, 2
/* 8FA4 800187A4 08004014 */  bnez       $v0, .L800187C8
/* 8FA8 800187A8 1800BFAF */   sw        $ra, 0x18($sp)
/* 8FAC 800187AC 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 8FB0 800187B0 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 8FB4 800187B4 0180043C */  lui        $a0, %hi(D_800101F0)
/* 8FB8 800187B8 F0018424 */  addiu      $a0, $a0, %lo(D_800101F0)
/* 8FBC 800187BC 21280002 */  addu       $a1, $s0, $zero
/* 8FC0 800187C0 09F84000 */  jalr       $v0
/* 8FC4 800187C4 21302002 */   addu      $a2, $s1, $zero
.L800187C8:
/* 8FC8 800187C8 FFFF3126 */  addiu      $s1, $s1, -1
/* 8FCC 800187CC 0D002012 */  beqz       $s1, .L80018804
/* 8FD0 800187D0 FF00053C */   lui       $a1, 0xff
/* 8FD4 800187D4 FFFFA534 */  ori        $a1, $a1, 0xffff
/* 8FD8 800187D8 00FF063C */  lui        $a2, 0xff00
.L800187DC:
/* 8FDC 800187DC FFFF3126 */  addiu      $s1, $s1, -1
/* 8FE0 800187E0 04000426 */  addiu      $a0, $s0, 4
/* 8FE4 800187E4 030000A2 */  sb         $zero, 3($s0)
/* 8FE8 800187E8 0000028E */  lw         $v0, ($s0)
/* 8FEC 800187EC 24188500 */  and        $v1, $a0, $a1
/* 8FF0 800187F0 24104600 */  and        $v0, $v0, $a2
/* 8FF4 800187F4 25104300 */  or         $v0, $v0, $v1
/* 8FF8 800187F8 000002AE */  sw         $v0, ($s0)
/* 8FFC 800187FC F7FF2016 */  bnez       $s1, .L800187DC
/* 9000 80018800 21808000 */   addu      $s0, $a0, $zero
.L80018804:
/* 9004 80018804 FF00063C */  lui        $a2, 0xff
/* 9008 80018808 FFFFC634 */  ori        $a2, $a2, 0xffff
/* 900C 8001880C 21100002 */  addu       $v0, $s0, $zero
/* 9010 80018810 0D80053C */  lui        $a1, %hi(D_800D2C58)
/* 9014 80018814 582CA524 */  addiu      $a1, $a1, %lo(D_800D2C58)
/* 9018 80018818 0D80033C */  lui        $v1, %hi(D_800D2C44)
/* 901C 8001881C 442C6324 */  addiu      $v1, $v1, %lo(D_800D2C44)
/* 9020 80018820 24186600 */  and        $v1, $v1, $a2
/* 9024 80018824 0004043C */  lui        $a0, 0x400
/* 9028 80018828 25186400 */  or         $v1, $v1, $a0
/* 902C 8001882C 0000A3AC */  sw         $v1, ($a1)
/* 9030 80018830 2428A600 */  and        $a1, $a1, $a2
/* 9034 80018834 000045AC */  sw         $a1, ($v0)
/* 9038 80018838 1800BF8F */  lw         $ra, 0x18($sp)
/* 903C 8001883C 1400B18F */  lw         $s1, 0x14($sp)
/* 9040 80018840 1000B08F */  lw         $s0, 0x10($sp)
/* 9044 80018844 0800E003 */  jr         $ra
/* 9048 80018848 2000BD27 */   addiu     $sp, $sp, 0x20
