.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d2544
/* C2D44 800D2544 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C2D48 800D2548 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2D4C 800D254C 10BD4224 */  addiu      $v0, $v0, %lo(D_801FBD10)
/* C2D50 800D2550 1000BFAF */  sw         $ra, 0x10($sp)
/* C2D54 800D2554 DF114390 */  lbu        $v1, 0x11df($v0)
/* C2D58 800D2558 00000000 */  nop
/* C2D5C 800D255C 07006014 */  bnez       $v1, .L800D257C
/* C2D60 800D2560 00000000 */   nop
/* C2D64 800D2564 B50144A0 */  sb         $a0, 0x1b5($v0)
/* C2D68 800D2568 21200000 */  addu       $a0, $zero, $zero
/* C2D6C 800D256C A143030C */  jal        FUN_800d0e84
/* C2D70 800D2570 B70145A0 */   sb        $a1, 0x1b7($v0)
/* C2D74 800D2574 60490308 */  j          .L800D2580
/* C2D78 800D2578 00000000 */   nop
.L800D257C:
/* C2D7C 800D257C FBFF0224 */  addiu      $v0, $zero, -5
.L800D2580:
/* C2D80 800D2580 1000BF8F */  lw         $ra, 0x10($sp)
/* C2D84 800D2584 00000000 */  nop
/* C2D88 800D2588 0800E003 */  jr         $ra
/* C2D8C 800D258C 1800BD27 */   addiu     $sp, $sp, 0x18
