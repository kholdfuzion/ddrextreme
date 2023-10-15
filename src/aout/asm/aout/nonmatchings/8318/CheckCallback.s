.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel CheckCallback
/* BAB8 8001B2B8 0D80023C */  lui        $v0, %hi(D_800D2D62)
/* BABC 8001B2BC 622D4294 */  lhu        $v0, %lo(D_800D2D62)($v0)
/* BAC0 8001B2C0 0800E003 */  jr         $ra
/* BAC4 8001B2C4 00000000 */   nop
