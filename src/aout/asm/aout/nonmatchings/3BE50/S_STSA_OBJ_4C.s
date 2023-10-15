.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_STSA_OBJ_4C
/* A9530 800B8D30 1000BF8F */  lw         $ra, 0x10($sp)
/* A9534 800B8D34 1800BD27 */  addiu      $sp, $sp, 0x18
/* A9538 800B8D38 0800E003 */  jr         $ra
/* A953C 800B8D3C 00000000 */   nop
/* A9540 800B8D40 00000000 */  nop
