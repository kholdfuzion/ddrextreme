.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9574
/* B9D74 800C9574 FFFF0A24 */  addiu      $t2, $zero, -1
/* B9D78 800C9578 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9D7C 800C957C F0B74824 */  addiu      $t0, $v0, %lo(D_801FB7F0)
/* B9D80 800C9580 2400098D */  lw         $t1, 0x24($t0)
/* B9D84 800C9584 0400038D */  lw         $v1, 4($t0)
/* B9D88 800C9588 01002225 */  addiu      $v0, $t1, 1
/* B9D8C 800C958C 0B006014 */  bnez       $v1, .L800C95BC
/* B9D90 800C9590 240002AD */   sw        $v0, 0x24($t0)
/* B9D94 800C9594 21500000 */  addu       $t2, $zero, $zero
/* B9D98 800C9598 08000224 */  addiu      $v0, $zero, 8
/* B9D9C 800C959C 040002AD */  sw         $v0, 4($t0)
/* B9DA0 800C95A0 FEFF0224 */  addiu      $v0, $zero, -2
/* B9DA4 800C95A4 080000AD */  sw         $zero, 8($t0)
/* B9DA8 800C95A8 0C0002AD */  sw         $v0, 0xc($t0)
/* B9DAC 800C95AC 9C0004AD */  sw         $a0, 0x9c($t0)
/* B9DB0 800C95B0 940005AD */  sw         $a1, 0x94($t0)
/* B9DB4 800C95B4 980006AD */  sw         $a2, 0x98($t0)
/* B9DB8 800C95B8 900007AD */  sw         $a3, 0x90($t0)
.L800C95BC:
/* B9DBC 800C95BC 240009AD */  sw         $t1, 0x24($t0)
/* B9DC0 800C95C0 0800E003 */  jr         $ra
/* B9DC4 800C95C4 21104001 */   addu      $v0, $t2, $zero
