.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BE20C
/* AEA0C 800BE20C 1F80023C */  lui        $v0, %hi(D_801F6FF0)
/* AEA10 800BE210 F06F428C */  lw         $v0, %lo(D_801F6FF0)($v0)
/* AEA14 800BE214 00000000 */  nop
/* AEA18 800BE218 000082AC */  sw         $v0, ($a0)
/* AEA1C 800BE21C 1F80023C */  lui        $v0, %hi(D_801F6FF4)
/* AEA20 800BE220 F46F428C */  lw         $v0, %lo(D_801F6FF4)($v0)
/* AEA24 800BE224 0800E003 */  jr         $ra
/* AEA28 800BE228 040082AC */   sw        $v0, 4($a0)
