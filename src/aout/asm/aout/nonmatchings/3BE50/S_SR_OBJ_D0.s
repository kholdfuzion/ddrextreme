.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SR_OBJ_D0
/* A81E4 800B79E4 0F80023C */  lui        $v0, %hi(D_800EC784)
/* A81E8 800B79E8 84C7428C */  lw         $v0, %lo(D_800EC784)($v0)
/* A81EC 800B79EC 1400BF8F */  lw         $ra, 0x14($sp)
/* A81F0 800B79F0 1000B08F */  lw         $s0, 0x10($sp)
/* A81F4 800B79F4 0800E003 */  jr         $ra
/* A81F8 800B79F8 1800BD27 */   addiu     $sp, $sp, 0x18
/* A81FC 800B79FC 00000000 */  nop
/* A8200 800B7A00 00000000 */  nop
