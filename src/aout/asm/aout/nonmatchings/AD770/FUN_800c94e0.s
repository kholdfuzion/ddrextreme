.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c94e0
/* B9CE0 800C94E0 FFFF0724 */  addiu      $a3, $zero, -1
/* B9CE4 800C94E4 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9CE8 800C94E8 F0B74524 */  addiu      $a1, $v0, %lo(D_801FB7F0)
/* B9CEC 800C94EC 2400A68C */  lw         $a2, 0x24($a1)
/* B9CF0 800C94F0 0400A38C */  lw         $v1, 4($a1)
/* B9CF4 800C94F4 0100C224 */  addiu      $v0, $a2, 1
/* B9CF8 800C94F8 08006014 */  bnez       $v1, .L800C951C
/* B9CFC 800C94FC 2400A2AC */   sw        $v0, 0x24($a1)
/* B9D00 800C9500 21380000 */  addu       $a3, $zero, $zero
/* B9D04 800C9504 05000224 */  addiu      $v0, $zero, 5
/* B9D08 800C9508 0400A2AC */  sw         $v0, 4($a1)
/* B9D0C 800C950C FEFF0224 */  addiu      $v0, $zero, -2
/* B9D10 800C9510 0800A0AC */  sw         $zero, 8($a1)
/* B9D14 800C9514 0C00A2AC */  sw         $v0, 0xc($a1)
/* B9D18 800C9518 9C00A4AC */  sw         $a0, 0x9c($a1)
.L800C951C:
/* B9D1C 800C951C 2400A6AC */  sw         $a2, 0x24($a1)
/* B9D20 800C9520 0800E003 */  jr         $ra
/* B9D24 800C9524 2110E000 */   addu      $v0, $a3, $zero
