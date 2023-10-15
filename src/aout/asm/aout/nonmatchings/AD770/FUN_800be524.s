.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be524
/* AED24 800BE524 FFFF0234 */  ori        $v0, $zero, 0xffff
/* AED28 800BE528 000082A4 */  sh         $v0, ($a0)
/* AED2C 800BE52C 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AED30 800BE530 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AED34 800BE534 F86F428C */  lw         $v0, 0x6ff8($v0)
/* AED38 800BE538 0800E003 */  jr         $ra
/* AED3C 800BE53C 00000000 */   nop
