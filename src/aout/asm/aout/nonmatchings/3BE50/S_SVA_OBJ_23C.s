.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_23C
/* A9910 800B9110 49E40208 */  j          S_SVA_OBJ_250
/* A9914 800B9114 00C00434 */   ori       $a0, $zero, 0xc000
