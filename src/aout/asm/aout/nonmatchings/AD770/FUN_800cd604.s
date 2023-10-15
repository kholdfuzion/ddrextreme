.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd604
/* BDE04 800CD604 2080023C */  lui        $v0, %hi(D_801FBCB0)
/* BDE08 800CD608 B0BC4624 */  addiu      $a2, $v0, %lo(D_801FBCB0)
/* BDE0C 800CD60C 2400C28C */  lw         $v0, 0x24($a2)
/* BDE10 800CD610 00000000 */  nop
/* BDE14 800CD614 09004014 */  bnez       $v0, .L800CD63C
/* BDE18 800CD618 21100000 */   addu      $v0, $zero, $zero
/* BDE1C 800CD61C 01000324 */  addiu      $v1, $zero, 1
/* BDE20 800CD620 2400C3AC */  sw         $v1, 0x24($a2)
/* BDE24 800CD624 9BFF0324 */  addiu      $v1, $zero, -0x65
/* BDE28 800CD628 2C00C0AC */  sw         $zero, 0x2c($a2)
/* BDE2C 800CD62C 2800C3AC */  sw         $v1, 0x28($a2)
/* BDE30 800CD630 3400C4AC */  sw         $a0, 0x34($a2)
/* BDE34 800CD634 0800E003 */  jr         $ra
/* BDE38 800CD638 3800C5AC */   sw        $a1, 0x38($a2)
.L800CD63C:
/* BDE3C 800CD63C 0800E003 */  jr         $ra
/* BDE40 800CD640 9BFF0224 */   addiu     $v0, $zero, -0x65
