.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c961c
/* B9E1C 800C961C FFFF0824 */  addiu      $t0, $zero, -1
/* B9E20 800C9620 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9E24 800C9624 F0B74624 */  addiu      $a2, $v0, %lo(D_801FB7F0)
/* B9E28 800C9628 2400C78C */  lw         $a3, 0x24($a2)
/* B9E2C 800C962C 0400C38C */  lw         $v1, 4($a2)
/* B9E30 800C9630 0100E224 */  addiu      $v0, $a3, 1
/* B9E34 800C9634 09006014 */  bnez       $v1, .L800C965C
/* B9E38 800C9638 2400C2AC */   sw        $v0, 0x24($a2)
/* B9E3C 800C963C 21400000 */  addu       $t0, $zero, $zero
/* B9E40 800C9640 0A000224 */  addiu      $v0, $zero, 0xa
/* B9E44 800C9644 0400C2AC */  sw         $v0, 4($a2)
/* B9E48 800C9648 FEFF0224 */  addiu      $v0, $zero, -2
/* B9E4C 800C964C 0800C0AC */  sw         $zero, 8($a2)
/* B9E50 800C9650 0C00C2AC */  sw         $v0, 0xc($a2)
/* B9E54 800C9654 9C00C4AC */  sw         $a0, 0x9c($a2)
/* B9E58 800C9658 9000C5AC */  sw         $a1, 0x90($a2)
.L800C965C:
/* B9E5C 800C965C 2400C7AC */  sw         $a3, 0x24($a2)
/* B9E60 800C9660 0800E003 */  jr         $ra
/* B9E64 800C9664 21100001 */   addu      $v0, $t0, $zero
