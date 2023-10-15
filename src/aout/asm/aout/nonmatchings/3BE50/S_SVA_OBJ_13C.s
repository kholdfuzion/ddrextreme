.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_13C
/* A9810 800B9010 11E40208 */  j          S_SVA_OBJ_170
/* A9814 800B9014 00800434 */   ori       $a0, $zero, 0x8000
