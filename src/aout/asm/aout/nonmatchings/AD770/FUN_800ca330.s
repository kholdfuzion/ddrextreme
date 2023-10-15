.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca330
/* BAB30 800CA330 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BAB34 800CA334 1400B1AF */  sw         $s1, 0x14($sp)
/* BAB38 800CA338 21888000 */  addu       $s1, $a0, $zero
/* BAB3C 800CA33C 1800B2AF */  sw         $s2, 0x18($sp)
/* BAB40 800CA340 2190A000 */  addu       $s2, $a1, $zero
/* BAB44 800CA344 1000B0AF */  sw         $s0, 0x10($sp)
/* BAB48 800CA348 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BAB4C 800CA34C A509030C */  jal        FUN_800c2694
/* BAB50 800CA350 2180C000 */   addu      $s0, $a2, $zero
/* BAB54 800CA354 21202002 */  addu       $a0, $s1, $zero
/* BAB58 800CA358 02000224 */  addiu      $v0, $zero, 2
/* BAB5C 800CA35C 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BAB60 800CA360 72000224 */  addiu      $v0, $zero, 0x72
/* BAB64 800CA364 60001026 */  addiu      $s0, $s0, 0x60
/* BAB68 800CA368 21284002 */  addu       $a1, $s2, $zero
/* BAB6C 800CA36C 21300000 */  addu       $a2, $zero, $zero
/* BAB70 800CA370 0C00838C */  lw         $v1, 0xc($a0)
/* BAB74 800CA374 2138C000 */  addu       $a3, $a2, $zero
/* BAB78 800CA378 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BAB7C 800CA37C 000062A0 */  sb         $v0, ($v1)
/* BAB80 800CA380 B209030C */  jal        FUN_800c26c8
/* BAB84 800CA384 010070A0 */   sb        $s0, 1($v1)
/* BAB88 800CA388 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BAB8C 800CA38C 1800B28F */  lw         $s2, 0x18($sp)
/* BAB90 800CA390 1400B18F */  lw         $s1, 0x14($sp)
/* BAB94 800CA394 1000B08F */  lw         $s0, 0x10($sp)
/* BAB98 800CA398 0800E003 */  jr         $ra
/* BAB9C 800CA39C 2000BD27 */   addiu     $sp, $sp, 0x20
