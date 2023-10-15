.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_15C
/* A9830 800B9030 11E40208 */  j          S_SVA_OBJ_170
/* A9834 800B9034 00C00434 */   ori       $a0, $zero, 0xc000
