.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007469c
/* 64E9C 8007469C 1B80033C */  lui        $v1, %hi(D_801B0C98)
/* 64EA0 800746A0 980C6324 */  addiu      $v1, $v1, %lo(D_801B0C98)
/* 64EA4 800746A4 80100400 */  sll        $v0, $a0, 2
/* 64EA8 800746A8 21104400 */  addu       $v0, $v0, $a0
/* 64EAC 800746AC 80100200 */  sll        $v0, $v0, 2
/* 64EB0 800746B0 21186200 */  addu       $v1, $v1, $v0
/* 64EB4 800746B4 0C00628C */  lw         $v0, 0xc($v1)
/* 64EB8 800746B8 0800E003 */  jr         $ra
/* 64EBC 800746BC 00000000 */   nop
