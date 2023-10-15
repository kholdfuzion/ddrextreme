.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GetIntrMask
/* BAC8 8001B2C8 0D80023C */  lui        $v0, %hi(D_800D3DF0)
/* BACC 8001B2CC F03D428C */  lw         $v0, %lo(D_800D3DF0)($v0)
/* BAD0 8001B2D0 00000000 */  nop
/* BAD4 8001B2D4 00004294 */  lhu        $v0, ($v0)
/* BAD8 8001B2D8 0800E003 */  jr         $ra
/* BADC 8001B2DC 00000000 */   nop
