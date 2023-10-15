.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9528
/* B9D28 800C9528 FFFF0824 */  addiu      $t0, $zero, -1
/* B9D2C 800C952C 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9D30 800C9530 F0B74624 */  addiu      $a2, $v0, %lo(D_801FB7F0)
/* B9D34 800C9534 2400C78C */  lw         $a3, 0x24($a2)
/* B9D38 800C9538 0400C38C */  lw         $v1, 4($a2)
/* B9D3C 800C953C 0100E224 */  addiu      $v0, $a3, 1
/* B9D40 800C9540 09006014 */  bnez       $v1, .L800C9568
/* B9D44 800C9544 2400C2AC */   sw        $v0, 0x24($a2)
/* B9D48 800C9548 21400000 */  addu       $t0, $zero, $zero
/* B9D4C 800C954C 06000224 */  addiu      $v0, $zero, 6
/* B9D50 800C9550 0400C2AC */  sw         $v0, 4($a2)
/* B9D54 800C9554 FEFF0224 */  addiu      $v0, $zero, -2
/* B9D58 800C9558 0800C0AC */  sw         $zero, 8($a2)
/* B9D5C 800C955C 0C00C2AC */  sw         $v0, 0xc($a2)
/* B9D60 800C9560 9C00C4AC */  sw         $a0, 0x9c($a2)
/* B9D64 800C9564 9000C5AC */  sw         $a1, 0x90($a2)
.L800C9568:
/* B9D68 800C9568 2400C7AC */  sw         $a3, 0x24($a2)
/* B9D6C 800C956C 0800E003 */  jr         $ra
/* B9D70 800C9570 21100001 */   addu      $v0, $t0, $zero
