.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C9944
/* BA144 800C9944 2080023C */  lui        $v0, %hi(D_801FB894)
/* BA148 800C9948 94B8428C */  lw         $v0, %lo(D_801FB894)($v0)
/* BA14C 800C994C 0800E003 */  jr         $ra
/* BA150 800C9950 00000000 */   nop
