.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_128
/* A9FFC 800B97FC 0BE60208 */  j          S_SCA_OBJ_158
/* AA000 800B9800 00A00534 */   ori       $a1, $zero, 0xa000
