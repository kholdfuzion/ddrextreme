.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80073b64
/* 64364 80073B64 04000224 */  addiu      $v0, $zero, 4
/* 64368 80073B68 030082A0 */  sb         $v0, 3($a0)
/* 6436C 80073B6C 64000224 */  addiu      $v0, $zero, 0x64
/* 64370 80073B70 0800E003 */  jr         $ra
/* 64374 80073B74 070082A0 */   sb        $v0, 7($a0)
/* 64378 80073B78 00000000 */  nop
/* 6437C 80073B7C 00000000 */  nop
/* 64380 80073B80 00000000 */  nop
