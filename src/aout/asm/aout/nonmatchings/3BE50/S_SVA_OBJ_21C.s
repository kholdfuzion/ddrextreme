.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_21C
/* A98F0 800B90F0 49E40208 */  j          S_SVA_OBJ_250
/* A98F4 800B90F4 00800434 */   ori       $a0, $zero, 0x8000
