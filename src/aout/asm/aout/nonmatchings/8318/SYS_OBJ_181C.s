.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_181C
/* A000 80019800 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* A004 80019804 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* A008 80019808 00000000 */  nop
/* A00C 8001980C 0000428C */  lw         $v0, ($v0)
/* A010 80019810 0800E003 */  jr         $ra
/* A014 80019814 00000000 */   nop
