.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800304B0
/* 20CB0 800304B0 0E80023C */  lui        $v0, %hi(D_800D8DF4)
/* 20CB4 800304B4 0800E003 */  jr         $ra
/* 20CB8 800304B8 F48D44AC */   sw        $a0, %lo(D_800D8DF4)($v0)
