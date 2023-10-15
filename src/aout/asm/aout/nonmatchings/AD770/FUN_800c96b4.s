.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c96b4
/* B9EB4 800C96B4 FFFF0724 */  addiu      $a3, $zero, -1
/* B9EB8 800C96B8 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9EBC 800C96BC F0B74524 */  addiu      $a1, $v0, %lo(D_801FB7F0)
/* B9EC0 800C96C0 2400A68C */  lw         $a2, 0x24($a1)
/* B9EC4 800C96C4 0400A38C */  lw         $v1, 4($a1)
/* B9EC8 800C96C8 0100C224 */  addiu      $v0, $a2, 1
/* B9ECC 800C96CC 08006014 */  bnez       $v1, .L800C96F0
/* B9ED0 800C96D0 2400A2AC */   sw        $v0, 0x24($a1)
/* B9ED4 800C96D4 21380000 */  addu       $a3, $zero, $zero
/* B9ED8 800C96D8 0C000224 */  addiu      $v0, $zero, 0xc
/* B9EDC 800C96DC 0400A2AC */  sw         $v0, 4($a1)
/* B9EE0 800C96E0 FEFF0224 */  addiu      $v0, $zero, -2
/* B9EE4 800C96E4 0800A0AC */  sw         $zero, 8($a1)
/* B9EE8 800C96E8 0C00A2AC */  sw         $v0, 0xc($a1)
/* B9EEC 800C96EC 9C00A4AC */  sw         $a0, 0x9c($a1)
.L800C96F0:
/* B9EF0 800C96F0 2400A6AC */  sw         $a2, 0x24($a1)
/* B9EF4 800C96F4 0800E003 */  jr         $ra
/* B9EF8 800C96F8 2110E000 */   addu      $v0, $a3, $zero
