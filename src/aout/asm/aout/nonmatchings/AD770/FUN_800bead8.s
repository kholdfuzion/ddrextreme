.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bead8
/* AF2D8 800BEAD8 0F80043C */  lui        $a0, %hi(D_800EE1FC)
/* AF2DC 800BEADC FCE1828C */  lw         $v0, %lo(D_800EE1FC)($a0)
/* AF2E0 800BEAE0 00000000 */  nop
/* AF2E4 800BEAE4 06004014 */  bnez       $v0, .L800BEB00
/* AF2E8 800BEAE8 21100000 */   addu      $v0, $zero, $zero
/* AF2EC 800BEAEC 0F80033C */  lui        $v1, %hi(D_800EE1D0)
/* AF2F0 800BEAF0 D0E160AC */  sw         $zero, %lo(D_800EE1D0)($v1)
/* AF2F4 800BEAF4 01000324 */  addiu      $v1, $zero, 1
/* AF2F8 800BEAF8 0800E003 */  jr         $ra
/* AF2FC 800BEAFC FCE183AC */   sw        $v1, -0x1e04($a0)
.L800BEB00:
/* AF300 800BEB00 0800E003 */  jr         $ra
/* AF304 800BEB04 00000000 */   nop
