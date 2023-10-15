.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001bce8
/* C4E8 8001BCE8 0D80023C */  lui        $v0, %hi(D_800D3E68)
/* C4EC 8001BCEC 683E428C */  lw         $v0, %lo(D_800D3E68)($v0)
/* C4F0 8001BCF0 0800E003 */  jr         $ra
/* C4F4 8001BCF4 00000000 */   nop
/* C4F8 8001BCF8 00000000 */  nop
/* C4FC 8001BCFC 00000000 */  nop
/* C500 8001BD00 00000000 */  nop
