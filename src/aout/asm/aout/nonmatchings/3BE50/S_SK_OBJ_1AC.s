.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SK_OBJ_1AC
/* A93E0 800B8BE0 0F80013C */  lui        $at, %hi(D_800EC77C)
/* A93E4 800B8BE4 7CC722AC */  sw         $v0, %lo(D_800EC77C)($at)
