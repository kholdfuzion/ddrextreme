.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9c44
/* BA444 800C9C44 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BA448 800C9C48 1000B0AF */  sw         $s0, 0x10($sp)
/* BA44C 800C9C4C 21808000 */  addu       $s0, $a0, $zero
/* BA450 800C9C50 1400B1AF */  sw         $s1, 0x14($sp)
/* BA454 800C9C54 1800BFAF */  sw         $ra, 0x18($sp)
/* BA458 800C9C58 A509030C */  jal        FUN_800c2694
/* BA45C 800C9C5C 2188A000 */   addu      $s1, $a1, $zero
/* BA460 800C9C60 21200002 */  addu       $a0, $s0, $zero
/* BA464 800C9C64 01000224 */  addiu      $v0, $zero, 1
/* BA468 800C9C68 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA46C 800C9C6C 73000224 */  addiu      $v0, $zero, 0x73
/* BA470 800C9C70 21282002 */  addu       $a1, $s1, $zero
/* BA474 800C9C74 21300000 */  addu       $a2, $zero, $zero
/* BA478 800C9C78 0C00838C */  lw         $v1, 0xc($a0)
/* BA47C 800C9C7C 09000724 */  addiu      $a3, $zero, 9
/* BA480 800C9C80 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BA484 800C9C84 B209030C */  jal        FUN_800c26c8
/* BA488 800C9C88 000062A0 */   sb        $v0, ($v1)
/* BA48C 800C9C8C 1800BF8F */  lw         $ra, 0x18($sp)
/* BA490 800C9C90 1400B18F */  lw         $s1, 0x14($sp)
/* BA494 800C9C94 1000B08F */  lw         $s0, 0x10($sp)
/* BA498 800C9C98 0800E003 */  jr         $ra
/* BA49C 800C9C9C 2000BD27 */   addiu     $sp, $sp, 0x20
