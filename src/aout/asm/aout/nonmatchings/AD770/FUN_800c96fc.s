.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c96fc
/* B9EFC 800C96FC FFFF0824 */  addiu      $t0, $zero, -1
/* B9F00 800C9700 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9F04 800C9704 F0B74624 */  addiu      $a2, $v0, %lo(D_801FB7F0)
/* B9F08 800C9708 2400C78C */  lw         $a3, 0x24($a2)
/* B9F0C 800C970C 0400C38C */  lw         $v1, 4($a2)
/* B9F10 800C9710 0100E224 */  addiu      $v0, $a3, 1
/* B9F14 800C9714 09006014 */  bnez       $v1, .L800C973C
/* B9F18 800C9718 2400C2AC */   sw        $v0, 0x24($a2)
/* B9F1C 800C971C 21400000 */  addu       $t0, $zero, $zero
/* B9F20 800C9720 07000224 */  addiu      $v0, $zero, 7
/* B9F24 800C9724 0400C2AC */  sw         $v0, 4($a2)
/* B9F28 800C9728 FEFF0224 */  addiu      $v0, $zero, -2
/* B9F2C 800C972C 0800C0AC */  sw         $zero, 8($a2)
/* B9F30 800C9730 0C00C2AC */  sw         $v0, 0xc($a2)
/* B9F34 800C9734 9C00C4AC */  sw         $a0, 0x9c($a2)
/* B9F38 800C9738 9000C5AC */  sw         $a1, 0x90($a2)
.L800C973C:
/* B9F3C 800C973C 2400C7AC */  sw         $a3, 0x24($a2)
/* B9F40 800C9740 0800E003 */  jr         $ra
/* B9F44 800C9744 21100001 */   addu      $v0, $t0, $zero
