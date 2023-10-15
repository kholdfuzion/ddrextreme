.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_N2P_OBJ_C8
/* A9D9C 800B959C 0800E003 */  jr         $ra
/* A9DA0 800B95A0 FFFFA230 */   andi      $v0, $a1, 0xffff
