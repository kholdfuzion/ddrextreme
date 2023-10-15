.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel get_astruct_800311f4
/* 219F4 800311F4 0E80033C */  lui        $v1, %hi(D_800D8DF8)
/* 219F8 800311F8 F88D628C */  lw         $v0, %lo(D_800D8DF8)($v1)
/* 219FC 800311FC 0800E003 */  jr         $ra
/* 21A00 80031200 00000000 */   nop
