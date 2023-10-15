.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ResetCallback
/* B964 8001B164 0D80023C */  lui        $v0, %hi(D_800D3DE8)
/* B968 8001B168 E83D428C */  lw         $v0, %lo(D_800D3DE8)($v0)
/* B96C 8001B16C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B970 8001B170 1000BFAF */  sw         $ra, 0x10($sp)
/* B974 8001B174 0C00428C */  lw         $v0, 0xc($v0)
/* B978 8001B178 00000000 */  nop
/* B97C 8001B17C 09F84000 */  jalr       $v0
/* B980 8001B180 00000000 */   nop
/* B984 8001B184 1000BF8F */  lw         $ra, 0x10($sp)
/* B988 8001B188 1800BD27 */  addiu      $sp, $sp, 0x18
/* B98C 8001B18C 0800E003 */  jr         $ra
/* B990 8001B190 00000000 */   nop
