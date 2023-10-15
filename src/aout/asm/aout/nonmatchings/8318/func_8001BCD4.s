.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001BCD4
/* C4D4 8001BCD4 0D80023C */  lui        $v0, %hi(D_800D3E68)
/* C4D8 8001BCD8 683E428C */  lw         $v0, %lo(D_800D3E68)($v0)
/* C4DC 8001BCDC 0D80013C */  lui        $at, %hi(D_800D3E68)
/* C4E0 8001BCE0 0800E003 */  jr         $ra
/* C4E4 8001BCE4 683E24AC */   sw        $a0, %lo(D_800D3E68)($at)
