.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsSwapDispBuff
/* 18E90 80028690 1380023C */  lui        $v0, %hi(D_801290AC)
/* 18E94 80028694 AC904284 */  lh         $v0, %lo(D_801290AC)($v0)
/* 18E98 80028698 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18E9C 8002869C 1000BFAF */  sw         $ra, 0x10($sp)
/* 18EA0 800286A0 40100200 */  sll        $v0, $v0, 1
/* 18EA4 800286A4 1380033C */  lui        $v1, %hi(D_80129010)
/* 18EA8 800286A8 21186200 */  addu       $v1, $v1, $v0
/* 18EAC 800286AC 10906394 */  lhu        $v1, %lo(D_80129010)($v1)
/* 18EB0 800286B0 1380043C */  lui        $a0, %hi(D_80129088)
/* 18EB4 800286B4 88908424 */  addiu      $a0, $a0, %lo(D_80129088)
/* 18EB8 800286B8 000083A4 */  sh         $v1, ($a0)
/* 18EBC 800286BC 1380013C */  lui        $at, %hi(D_80129014)
/* 18EC0 800286C0 21082200 */  addu       $at, $at, $v0
/* 18EC4 800286C4 14902294 */  lhu        $v0, %lo(D_80129014)($at)
/* 18EC8 800286C8 E462000C */  jal        PutDispEnv
/* 18ECC 800286CC 020082A4 */   sh        $v0, 2($a0)
/* 18ED0 800286D0 B260000C */  jal        SetDispMask
/* 18ED4 800286D4 01000424 */   addiu     $a0, $zero, 1
/* 18ED8 800286D8 1380023C */  lui        $v0, %hi(D_801290A8)
/* 18EDC 800286DC A890428C */  lw         $v0, %lo(D_801290A8)($v0)
/* 18EE0 800286E0 00000000 */  nop
/* 18EE4 800286E4 01004224 */  addiu      $v0, $v0, 1
/* 18EE8 800286E8 21184000 */  addu       $v1, $v0, $zero
/* 18EEC 800286EC 1380013C */  lui        $at, %hi(D_801290A8)
/* 18EF0 800286F0 02006014 */  bnez       $v1, .L800286FC
/* 18EF4 800286F4 A89023AC */   sw        $v1, %lo(D_801290A8)($at)
/* 18EF8 800286F8 01000324 */  addiu      $v1, $zero, 1
.L800286FC:
/* 18EFC 800286FC 1380023C */  lui        $v0, %hi(D_801290AC)
/* 18F00 80028700 AC904284 */  lh         $v0, %lo(D_801290AC)($v0)
/* 18F04 80028704 1380013C */  lui        $at, %hi(D_801290A8)
/* 18F08 80028708 A89023AC */  sw         $v1, %lo(D_801290A8)($at)
/* 18F0C 8002870C 0100422C */  sltiu      $v0, $v0, 1
/* 18F10 80028710 1380013C */  lui        $at, %hi(D_801290AC)
/* 18F14 80028714 2A86000C */  jal        GsSetDrawBuffClip
/* 18F18 80028718 AC9022A4 */   sh        $v0, %lo(D_801290AC)($at)
/* 18F1C 8002871C E685000C */  jal        GsSetDrawBuffOffset
/* 18F20 80028720 00000000 */   nop
/* 18F24 80028724 1000BF8F */  lw         $ra, 0x10($sp)
/* 18F28 80028728 1800BD27 */  addiu      $sp, $sp, 0x18
/* 18F2C 8002872C 0800E003 */  jr         $ra
/* 18F30 80028730 00000000 */   nop
/* 18F34 80028734 00000000 */  nop
/* 18F38 80028738 00000000 */  nop
/* 18F3C 8002873C 00000000 */  nop
