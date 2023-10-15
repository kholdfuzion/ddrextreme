.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SAV_OBJ_2B4
/* A9078 800B8878 0800E003 */  jr         $ra
/* A907C 800B887C 24104201 */   and       $v0, $t2, $v0
/* A9080 800B8880 00000000 */  nop
