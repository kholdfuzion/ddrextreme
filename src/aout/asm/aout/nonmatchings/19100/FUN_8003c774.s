.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c774
/* 2CF74 8003C774 21388000 */  addu       $a3, $a0, $zero
/* 2CF78 8003C778 0000E28C */  lw         $v0, ($a3)
/* 2CF7C 8003C77C 0300C010 */  beqz       $a2, .L8003C78C
/* 2CF80 8003C780 00000000 */   nop
/* 2CF84 8003C784 E4F10008 */  j          .L8003C790
/* 2CF88 8003C788 D3FF4224 */   addiu     $v0, $v0, -0x2d
.L8003C78C:
/* 2CF8C 8003C78C 2D004224 */  addiu      $v0, $v0, 0x2d
.L8003C790:
/* 2CF90 8003C790 0000E2AC */  sw         $v0, ($a3)
/* 2CF94 8003C794 1580043C */  lui        $a0, %hi(D_80156E38)
/* 2CF98 8003C798 386E8424 */  addiu      $a0, $a0, %lo(D_80156E38)
/* 2CF9C 8003C79C 80100600 */  sll        $v0, $a2, 2
/* 2CFA0 8003C7A0 21104600 */  addu       $v0, $v0, $a2
/* 2CFA4 8003C7A4 80100200 */  sll        $v0, $v0, 2
/* 2CFA8 8003C7A8 23104600 */  subu       $v0, $v0, $a2
/* 2CFAC 8003C7AC 21104500 */  addu       $v0, $v0, $a1
/* 2CFB0 8003C7B0 80100200 */  sll        $v0, $v0, 2
/* 2CFB4 8003C7B4 0000E58C */  lw         $a1, ($a3)
/* 2CFB8 8003C7B8 21184400 */  addu       $v1, $v0, $a0
/* 2CFBC 8003C7BC 000065AC */  sw         $a1, ($v1)
/* 2CFC0 8003C7C0 0400E68C */  lw         $a2, 4($a3)
/* 2CFC4 8003C7C4 21208200 */  addu       $a0, $a0, $v0
/* 2CFC8 8003C7C8 0800E003 */  jr         $ra
/* 2CFCC 8003C7CC 200086AC */   sw        $a2, 0x20($a0)
