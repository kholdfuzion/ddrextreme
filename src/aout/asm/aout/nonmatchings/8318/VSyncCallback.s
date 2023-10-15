.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel VSyncCallback
/* B9F4 8001B1F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B9F8 8001B1F8 0D80023C */  lui        $v0, %hi(D_800D3DE8)
/* B9FC 8001B1FC E83D428C */  lw         $v0, %lo(D_800D3DE8)($v0)
/* BA00 8001B200 21288000 */  addu       $a1, $a0, $zero
/* BA04 8001B204 1000BFAF */  sw         $ra, 0x10($sp)
/* BA08 8001B208 1400428C */  lw         $v0, 0x14($v0)
/* BA0C 8001B20C 00000000 */  nop
/* BA10 8001B210 09F84000 */  jalr       $v0
/* BA14 8001B214 04000424 */   addiu     $a0, $zero, 4
/* BA18 8001B218 1000BF8F */  lw         $ra, 0x10($sp)
/* BA1C 8001B21C 1800BD27 */  addiu      $sp, $sp, 0x18
/* BA20 8001B220 0800E003 */  jr         $ra
/* BA24 8001B224 00000000 */   nop
