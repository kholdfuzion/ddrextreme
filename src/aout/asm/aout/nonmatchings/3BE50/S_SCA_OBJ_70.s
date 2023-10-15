.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_70
/* A9F44 800B9744 DBE50208 */  j          S_SCA_OBJ_98
/* A9F48 800B9748 00B00534 */   ori       $a1, $zero, 0xb000
