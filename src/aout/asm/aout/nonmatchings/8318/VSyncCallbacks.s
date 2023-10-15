.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel VSyncCallbacks
/* BA28 8001B228 0D80023C */  lui        $v0, %hi(D_800D3DE8)
/* BA2C 8001B22C E83D428C */  lw         $v0, %lo(D_800D3DE8)($v0)
/* BA30 8001B230 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BA34 8001B234 1000BFAF */  sw         $ra, 0x10($sp)
/* BA38 8001B238 1400428C */  lw         $v0, 0x14($v0)
/* BA3C 8001B23C 00000000 */  nop
/* BA40 8001B240 09F84000 */  jalr       $v0
/* BA44 8001B244 00000000 */   nop
/* BA48 8001B248 1000BF8F */  lw         $ra, 0x10($sp)
/* BA4C 8001B24C 1800BD27 */  addiu      $sp, $sp, 0x18
/* BA50 8001B250 0800E003 */  jr         $ra
/* BA54 8001B254 00000000 */   nop
