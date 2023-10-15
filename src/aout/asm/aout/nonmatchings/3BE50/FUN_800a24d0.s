.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a24d0
/* 92CD0 800A24D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 92CD4 800A24D4 FFFF8224 */  addiu      $v0, $a0, -1
/* 92CD8 800A24D8 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92CDC 800A24DC 1400BFAF */  sw         $ra, 0x14($sp)
/* 92CE0 800A24E0 09004010 */  beqz       $v0, .L800A2508
/* 92CE4 800A24E4 1000B0AF */   sw        $s0, 0x10($sp)
/* 92CE8 800A24E8 1B80023C */  lui        $v0, %hi(D_801B2B88)
/* 92CEC 800A24EC 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 92CF0 800A24F0 80200400 */  sll        $a0, $a0, 2
/* 92CF4 800A24F4 21186400 */  addu       $v1, $v1, $a0
/* 92CF8 800A24F8 0400708C */  lw         $s0, 4($v1)
/* 92CFC 800A24FC 00000000 */  nop
/* 92D00 800A2500 03000016 */  bnez       $s0, .L800A2510
/* 92D04 800A2504 00000000 */   nop
.L800A2508:
/* 92D08 800A2508 52890208 */  j          .L800A2548
/* 92D0C 800A250C 21100000 */   addu      $v0, $zero, $zero
.L800A2510:
/* 92D10 800A2510 08000286 */  lh         $v0, 8($s0)
/* 92D14 800A2514 00000000 */  nop
/* 92D18 800A2518 0A004018 */  blez       $v0, .L800A2544
/* 92D1C 800A251C 00000000 */   nop
/* 92D20 800A2520 EFE9020C */  jal        FUN_800ba7bc
/* 92D24 800A2524 00000000 */   nop
/* 92D28 800A2528 08000486 */  lh         $a0, 8($s0)
/* 92D2C 800A252C 01000324 */  addiu      $v1, $zero, 1
/* 92D30 800A2530 FFFF8424 */  addiu      $a0, $a0, -1
/* 92D34 800A2534 04188300 */  sllv       $v1, $v1, $a0
/* 92D38 800A2538 24186200 */  and        $v1, $v1, $v0
/* 92D3C 800A253C 02006010 */  beqz       $v1, .L800A2548
/* 92D40 800A2540 21100000 */   addu      $v0, $zero, $zero
.L800A2544:
/* 92D44 800A2544 01000224 */  addiu      $v0, $zero, 1
.L800A2548:
/* 92D48 800A2548 1400BF8F */  lw         $ra, 0x14($sp)
/* 92D4C 800A254C 1000B08F */  lw         $s0, 0x10($sp)
/* 92D50 800A2550 0800E003 */  jr         $ra
/* 92D54 800A2554 1800BD27 */   addiu     $sp, $sp, 0x18
