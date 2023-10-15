.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel InterruptCallback
/* B994 8001B194 0D80023C */  lui        $v0, %hi(D_800D3DE8)
/* B998 8001B198 E83D428C */  lw         $v0, %lo(D_800D3DE8)($v0)
/* B99C 8001B19C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B9A0 8001B1A0 1000BFAF */  sw         $ra, 0x10($sp)
/* B9A4 8001B1A4 0800428C */  lw         $v0, 8($v0)
/* B9A8 8001B1A8 00000000 */  nop
/* B9AC 8001B1AC 09F84000 */  jalr       $v0
/* B9B0 8001B1B0 00000000 */   nop
/* B9B4 8001B1B4 1000BF8F */  lw         $ra, 0x10($sp)
/* B9B8 8001B1B8 1800BD27 */  addiu      $sp, $sp, 0x18
/* B9BC 8001B1BC 0800E003 */  jr         $ra
/* B9C0 8001B1C0 00000000 */   nop
