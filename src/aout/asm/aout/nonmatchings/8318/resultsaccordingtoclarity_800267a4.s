.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel resultsaccordingtoclarity_800267a4
/* 16FA4 800267A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 16FA8 800267A8 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 16FAC 800267AC 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 16FB0 800267B0 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 16FB4 800267B4 06000224 */  addiu      $v0, $zero, 6
/* 16FB8 800267B8 1400B1AF */  sw         $s1, 0x14($sp)
/* 16FBC 800267BC 21888000 */  addu       $s1, $a0, $zero
/* 16FC0 800267C0 280062A4 */  sh         $v0, %lo(D_800F0028)($v1)
/* 16FC4 800267C4 28006224 */  addiu      $v0, $v1, 0x28
/* 16FC8 800267C8 01000524 */  addiu      $a1, $zero, 1
/* 16FCC 800267CC 1800BFAF */  sw         $ra, 0x18($sp)
/* 16FD0 800267D0 1000B0AF */  sw         $s0, 0x10($sp)
/* 16FD4 800267D4 20004480 */  lb         $a0, 0x20($v0)
/* 16FD8 800267D8 00000000 */  nop
/* 16FDC 800267DC 05008514 */  bne        $a0, $a1, .L800267F4
/* 16FE0 800267E0 21806000 */   addu      $s0, $v1, $zero
/* 16FE4 800267E4 E40B010C */  jal        FUN_80042f90
/* 16FE8 800267E8 00000000 */   nop
/* 16FEC 800267EC 009A0008 */  j          .L80026800
/* 16FF0 800267F0 28000426 */   addiu     $a0, $s0, 0x28
.L800267F4:
/* 16FF4 800267F4 DC0B010C */  jal        FUN_80042f70
/* 16FF8 800267F8 00000000 */   nop
/* 16FFC 800267FC 28000426 */  addiu      $a0, $s0, 0x28
.L80026800:
/* 17000 80026800 20008280 */  lb         $v0, 0x20($a0)
/* 17004 80026804 00000000 */  nop
/* 17008 80026808 09004014 */  bnez       $v0, .L80026830
/* 1700C 8002680C 21100000 */   addu      $v0, $zero, $zero
/* 17010 80026810 0D008380 */  lb         $v1, 0xd($a0)
/* 17014 80026814 FFFF0224 */  addiu      $v0, $zero, -1
/* 17018 80026818 05006214 */  bne        $v1, $v0, .L80026830
/* 1701C 8002681C 21100000 */   addu      $v0, $zero, $zero
/* 17020 80026820 18008280 */  lb         $v0, 0x18($a0)
/* 17024 80026824 00000000 */  nop
/* 17028 80026828 02004228 */  slti       $v0, $v0, 2
/* 1702C 8002682C 01004238 */  xori       $v0, $v0, 1
.L80026830:
/* 17030 80026830 04004010 */  beqz       $v0, .L80026844
/* 17034 80026834 1380023C */   lui       $v0, 0x8013
/* 17038 80026838 D5C1020C */  jal        FUN_800b0754
/* 1703C 8002683C 00000000 */   nop
/* 17040 80026840 1380023C */  lui        $v0, %hi(D_80129DA8)
.L80026844:
/* 17044 80026844 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 17048 80026848 B40D438C */  lw         $v1, 0xdb4($v0)
/* 1704C 8002684C 0FFF0424 */  addiu      $a0, $zero, -0xf1
/* 17050 80026850 24186400 */  and        $v1, $v1, $a0
/* 17054 80026854 20006334 */  ori        $v1, $v1, 0x20
/* 17058 80026858 08002426 */  addiu      $a0, $s1, 8
/* 1705C 8002685C 839E010C */  jal        FUN_80067a0c
/* 17060 80026860 B40D43AC */   sw        $v1, 0xdb4($v0)
/* 17064 80026864 1800BF8F */  lw         $ra, 0x18($sp)
/* 17068 80026868 1400B18F */  lw         $s1, 0x14($sp)
/* 1706C 8002686C 1000B08F */  lw         $s0, 0x10($sp)
/* 17070 80026870 0800E003 */  jr         $ra
/* 17074 80026874 2000BD27 */   addiu     $sp, $sp, 0x20
