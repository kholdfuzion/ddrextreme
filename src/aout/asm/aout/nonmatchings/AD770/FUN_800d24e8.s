.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d24e8
/* C2CE8 800D24E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C2CEC 800D24EC 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2CF0 800D24F0 10BD4524 */  addiu      $a1, $v0, %lo(D_801FBD10)
/* C2CF4 800D24F4 1000BFAF */  sw         $ra, 0x10($sp)
/* C2CF8 800D24F8 DF11A390 */  lbu        $v1, 0x11df($a1)
/* C2CFC 800D24FC 00000000 */  nop
/* C2D00 800D2500 0C006014 */  bnez       $v1, .L800D2534
/* C2D04 800D2504 FBFF0224 */   addiu     $v0, $zero, -5
/* C2D08 800D2508 04008010 */  beqz       $a0, .L800D251C
/* C2D0C 800D250C 03000224 */   addiu     $v0, $zero, 3
/* C2D10 800D2510 B401A2A0 */  sb         $v0, 0x1b4($a1)
/* C2D14 800D2514 4B490308 */  j          .L800D252C
/* C2D18 800D2518 B601A2A0 */   sb        $v0, 0x1b6($a1)
.L800D251C:
/* C2D1C 800D251C 01000224 */  addiu      $v0, $zero, 1
/* C2D20 800D2520 02000324 */  addiu      $v1, $zero, 2
/* C2D24 800D2524 B401A2A0 */  sb         $v0, 0x1b4($a1)
/* C2D28 800D2528 B601A3A0 */  sb         $v1, 0x1b6($a1)
.L800D252C:
/* C2D2C 800D252C A143030C */  jal        FUN_800d0e84
/* C2D30 800D2530 21200000 */   addu      $a0, $zero, $zero
.L800D2534:
/* C2D34 800D2534 1000BF8F */  lw         $ra, 0x10($sp)
/* C2D38 800D2538 00000000 */  nop
/* C2D3C 800D253C 0800E003 */  jr         $ra
/* C2D40 800D2540 1800BD27 */   addiu     $sp, $sp, 0x18
