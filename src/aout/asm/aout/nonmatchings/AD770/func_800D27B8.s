.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D27B8
/* C2FB8 800D27B8 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2FBC 800D27BC 10BD4224 */  addiu      $v0, $v0, %lo(D_801FBD10)
/* C2FC0 800D27C0 C6014390 */  lbu        $v1, 0x1c6($v0)
/* C2FC4 800D27C4 00000000 */  nop
/* C2FC8 800D27C8 000083AC */  sw         $v1, ($a0)
/* C2FCC 800D27CC C7014490 */  lbu        $a0, 0x1c7($v0)
/* C2FD0 800D27D0 0800E003 */  jr         $ra
/* C2FD4 800D27D4 0000A4AC */   sw        $a0, ($a1)
