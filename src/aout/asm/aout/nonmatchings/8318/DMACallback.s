.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DMACallback
/* B9C4 8001B1C4 0D80023C */  lui        $v0, %hi(D_800D3DE8)
/* B9C8 8001B1C8 E83D428C */  lw         $v0, %lo(D_800D3DE8)($v0)
/* B9CC 8001B1CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B9D0 8001B1D0 1000BFAF */  sw         $ra, 0x10($sp)
/* B9D4 8001B1D4 0400428C */  lw         $v0, 4($v0)
/* B9D8 8001B1D8 00000000 */  nop
/* B9DC 8001B1DC 09F84000 */  jalr       $v0
/* B9E0 8001B1E0 00000000 */   nop
/* B9E4 8001B1E4 1000BF8F */  lw         $ra, 0x10($sp)
/* B9E8 8001B1E8 1800BD27 */  addiu      $sp, $sp, 0x18
/* B9EC 8001B1EC 0800E003 */  jr         $ra
/* B9F0 8001B1F0 00000000 */   nop
