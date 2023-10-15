.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9430
/* B9C30 800C9430 FFFF0A24 */  addiu      $t2, $zero, -1
/* B9C34 800C9434 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9C38 800C9438 F0B74824 */  addiu      $t0, $v0, %lo(D_801FB7F0)
/* B9C3C 800C943C 2400098D */  lw         $t1, 0x24($t0)
/* B9C40 800C9440 0400038D */  lw         $v1, 4($t0)
/* B9C44 800C9444 01002225 */  addiu      $v0, $t1, 1
/* B9C48 800C9448 0B006014 */  bnez       $v1, .L800C9478
/* B9C4C 800C944C 240002AD */   sw        $v0, 0x24($t0)
/* B9C50 800C9450 21500000 */  addu       $t2, $zero, $zero
/* B9C54 800C9454 03000224 */  addiu      $v0, $zero, 3
/* B9C58 800C9458 040002AD */  sw         $v0, 4($t0)
/* B9C5C 800C945C FEFF0224 */  addiu      $v0, $zero, -2
/* B9C60 800C9460 080000AD */  sw         $zero, 8($t0)
/* B9C64 800C9464 0C0002AD */  sw         $v0, 0xc($t0)
/* B9C68 800C9468 9C0004AD */  sw         $a0, 0x9c($t0)
/* B9C6C 800C946C 940005AD */  sw         $a1, 0x94($t0)
/* B9C70 800C9470 980006AD */  sw         $a2, 0x98($t0)
/* B9C74 800C9474 900007AD */  sw         $a3, 0x90($t0)
.L800C9478:
/* B9C78 800C9478 240009AD */  sw         $t1, 0x24($t0)
/* B9C7C 800C947C 0800E003 */  jr         $ra
/* B9C80 800C9480 21104001 */   addu      $v0, $t2, $zero
