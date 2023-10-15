.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_22C
/* A9900 800B9100 49E40208 */  j          S_SVA_OBJ_250
/* A9904 800B9104 00A00434 */   ori       $a0, $zero, 0xa000
