.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_60
/* A9F34 800B9734 DBE50208 */  j          S_SCA_OBJ_98
/* A9F38 800B9738 00900534 */   ori       $a1, $zero, 0x9000
