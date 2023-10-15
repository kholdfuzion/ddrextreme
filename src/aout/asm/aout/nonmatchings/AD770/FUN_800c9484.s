.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9484
/* B9C84 800C9484 FFFF0924 */  addiu      $t1, $zero, -1
/* B9C88 800C9488 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9C8C 800C948C F0B74724 */  addiu      $a3, $v0, %lo(D_801FB7F0)
/* B9C90 800C9490 2400E88C */  lw         $t0, 0x24($a3)
/* B9C94 800C9494 0400E38C */  lw         $v1, 4($a3)
/* B9C98 800C9498 01000225 */  addiu      $v0, $t0, 1
/* B9C9C 800C949C 0D006014 */  bnez       $v1, .L800C94D4
/* B9CA0 800C94A0 2400E2AC */   sw        $v0, 0x24($a3)
/* B9CA4 800C94A4 21480000 */  addu       $t1, $zero, $zero
/* B9CA8 800C94A8 02000224 */  addiu      $v0, $zero, 2
/* B9CAC 800C94AC 0400E2AC */  sw         $v0, 4($a3)
/* B9CB0 800C94B0 FEFF0224 */  addiu      $v0, $zero, -2
/* B9CB4 800C94B4 0C00E2AC */  sw         $v0, 0xc($a3)
/* B9CB8 800C94B8 01000224 */  addiu      $v0, $zero, 1
/* B9CBC 800C94BC 0800E0AC */  sw         $zero, 8($a3)
/* B9CC0 800C94C0 2000E2AC */  sw         $v0, 0x20($a3)
/* B9CC4 800C94C4 9C00E4AC */  sw         $a0, 0x9c($a3)
/* B9CC8 800C94C8 9400E5AC */  sw         $a1, 0x94($a3)
/* B9CCC 800C94CC 9800E6AC */  sw         $a2, 0x98($a3)
/* B9CD0 800C94D0 9000E0AC */  sw         $zero, 0x90($a3)
.L800C94D4:
/* B9CD4 800C94D4 2400E8AC */  sw         $t0, 0x24($a3)
/* B9CD8 800C94D8 0800E003 */  jr         $ra
/* B9CDC 800C94DC 21102001 */   addu      $v0, $t1, $zero
