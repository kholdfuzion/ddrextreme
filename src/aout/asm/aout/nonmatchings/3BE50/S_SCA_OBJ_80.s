.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_80
/* A9F54 800B9754 DBE50208 */  j          S_SCA_OBJ_98
/* A9F58 800B9758 00D00534 */   ori       $a1, $zero, 0xd000
