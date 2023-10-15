.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c95c8
/* B9DC8 800C95C8 FFFF0A24 */  addiu      $t2, $zero, -1
/* B9DCC 800C95CC 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9DD0 800C95D0 F0B74824 */  addiu      $t0, $v0, %lo(D_801FB7F0)
/* B9DD4 800C95D4 2400098D */  lw         $t1, 0x24($t0)
/* B9DD8 800C95D8 0400038D */  lw         $v1, 4($t0)
/* B9DDC 800C95DC 01002225 */  addiu      $v0, $t1, 1
/* B9DE0 800C95E0 0B006014 */  bnez       $v1, .L800C9610
/* B9DE4 800C95E4 240002AD */   sw        $v0, 0x24($t0)
/* B9DE8 800C95E8 21500000 */  addu       $t2, $zero, $zero
/* B9DEC 800C95EC 09000224 */  addiu      $v0, $zero, 9
/* B9DF0 800C95F0 040002AD */  sw         $v0, 4($t0)
/* B9DF4 800C95F4 FEFF0224 */  addiu      $v0, $zero, -2
/* B9DF8 800C95F8 080000AD */  sw         $zero, 8($t0)
/* B9DFC 800C95FC 0C0002AD */  sw         $v0, 0xc($t0)
/* B9E00 800C9600 9C0004AD */  sw         $a0, 0x9c($t0)
/* B9E04 800C9604 940005AD */  sw         $a1, 0x94($t0)
/* B9E08 800C9608 980006AD */  sw         $a2, 0x98($t0)
/* B9E0C 800C960C 900007AD */  sw         $a3, 0x90($t0)
.L800C9610:
/* B9E10 800C9610 240009AD */  sw         $t1, 0x24($t0)
/* B9E14 800C9614 0800E003 */  jr         $ra
/* B9E18 800C9618 21104001 */   addu      $v0, $t2, $zero
