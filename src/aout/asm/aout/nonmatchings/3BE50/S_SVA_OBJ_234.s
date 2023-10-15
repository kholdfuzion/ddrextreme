.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_234
/* A9908 800B9108 49E40208 */  j          S_SVA_OBJ_250
/* A990C 800B910C 00B00434 */   ori       $a0, $zero, 0xb000
