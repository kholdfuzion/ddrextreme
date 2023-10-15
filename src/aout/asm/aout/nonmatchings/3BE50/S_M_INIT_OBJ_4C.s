.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_M_INIT_OBJ_4C
/* A8100 800B7900 0800E003 */  jr         $ra
/* A8104 800B7904 00000000 */   nop
/* A8108 800B7908 00000000 */  nop
/* A810C 800B790C 00000000 */  nop
/* A8110 800B7910 00000000 */  nop
