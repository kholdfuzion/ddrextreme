.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C2870
/* B3070 800C2870 1F80023C */  lui        $v0, %hi(D_801F72D0)
/* B3074 800C2874 0800E003 */  jr         $ra
/* B3078 800C2878 D07244A0 */   sb        $a0, %lo(D_801F72D0)($v0)
