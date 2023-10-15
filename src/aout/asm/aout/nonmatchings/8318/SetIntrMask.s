.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetIntrMask
/* BAE0 8001B2E0 0D80033C */  lui        $v1, %hi(D_800D3DF0)
/* BAE4 8001B2E4 F03D638C */  lw         $v1, %lo(D_800D3DF0)($v1)
/* BAE8 8001B2E8 00000000 */  nop
/* BAEC 8001B2EC 00006294 */  lhu        $v0, ($v1)
/* BAF0 8001B2F0 0800E003 */  jr         $ra
/* BAF4 8001B2F4 000064A4 */   sh        $a0, ($v1)
