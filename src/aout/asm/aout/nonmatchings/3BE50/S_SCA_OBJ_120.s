.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_120
/* A9FF4 800B97F4 0BE60208 */  j          S_SCA_OBJ_158
/* A9FF8 800B97F8 00900534 */   ori       $a1, $zero, 0x9000
