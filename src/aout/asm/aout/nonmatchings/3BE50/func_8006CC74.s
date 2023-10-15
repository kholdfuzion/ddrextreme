.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006CC74
/* 5D474 8006CC74 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5D478 8006CC78 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5D47C 8006CC7C 2138A000 */  addu       $a3, $a1, $zero
/* 5D480 8006CC80 40100400 */  sll        $v0, $a0, 1
/* 5D484 8006CC84 21104400 */  addu       $v0, $v0, $a0
/* 5D488 8006CC88 80100200 */  sll        $v0, $v0, 2
/* 5D48C 8006CC8C 23104400 */  subu       $v0, $v0, $a0
/* 5D490 8006CC90 80100200 */  sll        $v0, $v0, 2
/* 5D494 8006CC94 23104400 */  subu       $v0, $v0, $a0
/* 5D498 8006CC98 80100200 */  sll        $v0, $v0, 2
/* 5D49C 8006CC9C 21104400 */  addu       $v0, $v0, $a0
/* 5D4A0 8006CCA0 80100200 */  sll        $v0, $v0, 2
/* 5D4A4 8006CCA4 23104400 */  subu       $v0, $v0, $a0
/* 5D4A8 8006CCA8 80100200 */  sll        $v0, $v0, 2
/* 5D4AC 8006CCAC 80290300 */  sll        $a1, $v1, 6
/* 5D4B0 8006CCB0 2128A300 */  addu       $a1, $a1, $v1
/* 5D4B4 8006CCB4 80280500 */  sll        $a1, $a1, 2
/* 5D4B8 8006CCB8 2328A300 */  subu       $a1, $a1, $v1
/* 5D4BC 8006CCBC C0280500 */  sll        $a1, $a1, 3
/* 5D4C0 8006CCC0 2128A300 */  addu       $a1, $a1, $v1
/* 5D4C4 8006CCC4 C0280500 */  sll        $a1, $a1, 3
/* 5D4C8 8006CCC8 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5D4CC 8006CCCC 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5D4D0 8006CCD0 21104300 */  addu       $v0, $v0, $v1
/* 5D4D4 8006CCD4 2128A200 */  addu       $a1, $a1, $v0
/* 5D4D8 8006CCD8 0B00C010 */  beqz       $a2, .L8006CD08
/* 5D4DC 8006CCDC 3400A524 */   addiu     $a1, $a1, 0x34
/* 5D4E0 8006CCE0 C0100700 */  sll        $v0, $a3, 3
/* 5D4E4 8006CCE4 23104700 */  subu       $v0, $v0, $a3
/* 5D4E8 8006CCE8 80100200 */  sll        $v0, $v0, 2
/* 5D4EC 8006CCEC 21104500 */  addu       $v0, $v0, $a1
/* 5D4F0 8006CCF0 08004224 */  addiu      $v0, $v0, 8
/* 5D4F4 8006CCF4 07004390 */  lbu        $v1, 7($v0)
/* 5D4F8 8006CCF8 00000000 */  nop
/* 5D4FC 8006CCFC 02006334 */  ori        $v1, $v1, 2
/* 5D500 8006CD00 0800E003 */  jr         $ra
/* 5D504 8006CD04 070043A0 */   sb        $v1, 7($v0)
.L8006CD08:
/* 5D508 8006CD08 C0100700 */  sll        $v0, $a3, 3
/* 5D50C 8006CD0C 23104700 */  subu       $v0, $v0, $a3
/* 5D510 8006CD10 80100200 */  sll        $v0, $v0, 2
/* 5D514 8006CD14 21104500 */  addu       $v0, $v0, $a1
/* 5D518 8006CD18 08004224 */  addiu      $v0, $v0, 8
/* 5D51C 8006CD1C 07004390 */  lbu        $v1, 7($v0)
/* 5D520 8006CD20 00000000 */  nop
/* 5D524 8006CD24 FD006330 */  andi       $v1, $v1, 0xfd
/* 5D528 8006CD28 0800E003 */  jr         $ra
/* 5D52C 8006CD2C 070043A0 */   sb        $v1, 7($v0)
