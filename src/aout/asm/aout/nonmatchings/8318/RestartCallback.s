.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel RestartCallback
/* BA88 8001B288 0D80023C */  lui        $v0, %hi(D_800D3DE8)
/* BA8C 8001B28C E83D428C */  lw         $v0, %lo(D_800D3DE8)($v0)
/* BA90 8001B290 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BA94 8001B294 1000BFAF */  sw         $ra, 0x10($sp)
/* BA98 8001B298 1800428C */  lw         $v0, 0x18($v0)
/* BA9C 8001B29C 00000000 */  nop
/* BAA0 8001B2A0 09F84000 */  jalr       $v0
/* BAA4 8001B2A4 00000000 */   nop
/* BAA8 8001B2A8 1000BF8F */  lw         $ra, 0x10($sp)
/* BAAC 8001B2AC 1800BD27 */  addiu      $sp, $sp, 0x18
/* BAB0 8001B2B0 0800E003 */  jr         $ra
/* BAB4 8001B2B4 00000000 */   nop
