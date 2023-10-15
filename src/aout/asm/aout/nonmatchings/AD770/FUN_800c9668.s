.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9668
/* B9E68 800C9668 FFFF0824 */  addiu      $t0, $zero, -1
/* B9E6C 800C966C 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9E70 800C9670 F0B74624 */  addiu      $a2, $v0, %lo(D_801FB7F0)
/* B9E74 800C9674 2400C78C */  lw         $a3, 0x24($a2)
/* B9E78 800C9678 0400C38C */  lw         $v1, 4($a2)
/* B9E7C 800C967C 0100E224 */  addiu      $v0, $a3, 1
/* B9E80 800C9680 09006014 */  bnez       $v1, .L800C96A8
/* B9E84 800C9684 2400C2AC */   sw        $v0, 0x24($a2)
/* B9E88 800C9688 21400000 */  addu       $t0, $zero, $zero
/* B9E8C 800C968C 0B000224 */  addiu      $v0, $zero, 0xb
/* B9E90 800C9690 0400C2AC */  sw         $v0, 4($a2)
/* B9E94 800C9694 FEFF0224 */  addiu      $v0, $zero, -2
/* B9E98 800C9698 0800C0AC */  sw         $zero, 8($a2)
/* B9E9C 800C969C 0C00C2AC */  sw         $v0, 0xc($a2)
/* B9EA0 800C96A0 9C00C4AC */  sw         $a0, 0x9c($a2)
/* B9EA4 800C96A4 9000C5AC */  sw         $a1, 0x90($a2)
.L800C96A8:
/* B9EA8 800C96A8 2400C7AC */  sw         $a3, 0x24($a2)
/* B9EAC 800C96AC 0800E003 */  jr         $ra
/* B9EB0 800C96B0 21100001 */   addu      $v0, $t0, $zero
