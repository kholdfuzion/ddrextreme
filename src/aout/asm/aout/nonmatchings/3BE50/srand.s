.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel srand
/* 4F184 8005E984 1A80013C */  lui        $at, %hi(D_801A2680)
/* 4F188 8005E988 0800E003 */  jr         $ra
/* 4F18C 8005E98C 802624AC */   sw        $a0, %lo(D_801A2680)($at)
/* 4F190 8005E990 00000000 */  nop
