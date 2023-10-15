.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_130
/* AA004 800B9804 0BE60208 */  j          S_SCA_OBJ_158
/* AA008 800B9808 00B00534 */   ori       $a1, $zero, 0xb000
