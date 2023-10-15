.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel StopCallback
/* BA58 8001B258 0D80023C */  lui        $v0, %hi(D_800D3DE8)
/* BA5C 8001B25C E83D428C */  lw         $v0, %lo(D_800D3DE8)($v0)
/* BA60 8001B260 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BA64 8001B264 1000BFAF */  sw         $ra, 0x10($sp)
/* BA68 8001B268 1000428C */  lw         $v0, 0x10($v0)
/* BA6C 8001B26C 00000000 */  nop
/* BA70 8001B270 09F84000 */  jalr       $v0
/* BA74 8001B274 00000000 */   nop
/* BA78 8001B278 1000BF8F */  lw         $ra, 0x10($sp)
/* BA7C 8001B27C 1800BD27 */  addiu      $sp, $sp, 0x18
/* BA80 8001B280 0800E003 */  jr         $ra
/* BA84 8001B284 00000000 */   nop
