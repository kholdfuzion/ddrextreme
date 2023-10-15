.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba670
/* AAE70 800BA670 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AAE74 800BA674 1580043C */  lui        $a0, %hi(D_8014BA50)
/* AAE78 800BA678 1000BFAF */  sw         $ra, 0x10($sp)
/* AAE7C 800BA67C 02B3000C */  jal        FUN_8002cc08
/* AAE80 800BA680 50BA8424 */   addiu     $a0, $a0, %lo(D_8014BA50)
/* AAE84 800BA684 1000BF8F */  lw         $ra, 0x10($sp)
/* AAE88 800BA688 00000000 */  nop
/* AAE8C 800BA68C 0800E003 */  jr         $ra
/* AAE90 800BA690 1800BD27 */   addiu     $sp, $sp, 0x18
