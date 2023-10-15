.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_224
/* A98F8 800B90F8 49E40208 */  j          S_SVA_OBJ_250
/* A98FC 800B90FC 00900434 */   ori       $a0, $zero, 0x9000
