.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80074464
/* 64C64 80074464 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 64C68 80074468 1400B1AF */  sw         $s1, 0x14($sp)
/* 64C6C 8007446C 21888000 */  addu       $s1, $a0, $zero
/* 64C70 80074470 1800BFAF */  sw         $ra, 0x18($sp)
/* 64C74 80074474 24D10108 */  j          .L80074490
/* 64C78 80074478 1000B0AF */   sw        $s0, 0x10($sp)
.L8007447C:
/* 64C7C 8007447C 7FD1010C */  jal        FUN_800745fc
/* 64C80 80074480 21200002 */   addu      $a0, $s0, $zero
.L80074484:
/* 64C84 80074484 8ED1010C */  jal        FUN_80074638
/* 64C88 80074488 21200002 */   addu      $a0, $s0, $zero
/* 64C8C 8007448C FFFF3126 */  addiu      $s1, $s1, -1
.L80074490:
/* 64C90 80074490 0B00201A */  blez       $s1, .L800744C0
/* 64C94 80074494 21102002 */   addu      $v0, $s1, $zero
/* 64C98 80074498 35D1010C */  jal        FUN_800744d4
/* 64C9C 8007449C 00000000 */   nop
/* 64CA0 800744A0 21804000 */  addu       $s0, $v0, $zero
/* 64CA4 800744A4 F7FF0106 */  bgez       $s0, .L80074484
/* 64CA8 800744A8 00000000 */   nop
/* 64CAC 800744AC 45D1010C */  jal        FUN_80074514
/* 64CB0 800744B0 00000000 */   nop
/* 64CB4 800744B4 21804000 */  addu       $s0, $v0, $zero
/* 64CB8 800744B8 F0FF0106 */  bgez       $s0, .L8007447C
/* 64CBC 800744BC 21102002 */   addu      $v0, $s1, $zero
.L800744C0:
/* 64CC0 800744C0 1800BF8F */  lw         $ra, 0x18($sp)
/* 64CC4 800744C4 1400B18F */  lw         $s1, 0x14($sp)
/* 64CC8 800744C8 1000B08F */  lw         $s0, 0x10($sp)
/* 64CCC 800744CC 0800E003 */  jr         $ra
/* 64CD0 800744D0 2000BD27 */   addiu     $sp, $sp, 0x20
