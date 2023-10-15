.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80020f78
/* 11778 80020F78 05000224 */  addiu      $v0, $zero, 5
/* 1177C 80020F7C 030082A0 */  sb         $v0, 3($a0)
/* 11780 80020F80 28000224 */  addiu      $v0, $zero, 0x28
/* 11784 80020F84 0800E003 */  jr         $ra
/* 11788 80020F88 070082A0 */   sb        $v0, 7($a0)
/* 1178C 80020F8C 00000000 */  nop
/* 11790 80020F90 00000000 */  nop
/* 11794 80020F94 00000000 */  nop
