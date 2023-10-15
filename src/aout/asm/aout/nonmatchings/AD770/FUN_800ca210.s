.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca210
/* BAA10 800CA210 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BAA14 800CA214 1400B1AF */  sw         $s1, 0x14($sp)
/* BAA18 800CA218 21888000 */  addu       $s1, $a0, $zero
/* BAA1C 800CA21C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BAA20 800CA220 2198A000 */  addu       $s3, $a1, $zero
/* BAA24 800CA224 1000B0AF */  sw         $s0, 0x10($sp)
/* BAA28 800CA228 2180C000 */  addu       $s0, $a2, $zero
/* BAA2C 800CA22C 1800B2AF */  sw         $s2, 0x18($sp)
/* BAA30 800CA230 2000BFAF */  sw         $ra, 0x20($sp)
/* BAA34 800CA234 A509030C */  jal        FUN_800c2694
/* BAA38 800CA238 2190E000 */   addu      $s2, $a3, $zero
/* BAA3C 800CA23C 21202002 */  addu       $a0, $s1, $zero
/* BAA40 800CA240 05000224 */  addiu      $v0, $zero, 5
/* BAA44 800CA244 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BAA48 800CA248 72000224 */  addiu      $v0, $zero, 0x72
/* BAA4C 800CA24C 40001026 */  addiu      $s0, $s0, 0x40
/* BAA50 800CA250 21286002 */  addu       $a1, $s3, $zero
/* BAA54 800CA254 21300000 */  addu       $a2, $zero, $zero
/* BAA58 800CA258 0C00838C */  lw         $v1, 0xc($a0)
/* BAA5C 800CA25C 2138C000 */  addu       $a3, $a2, $zero
/* BAA60 800CA260 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BAA64 800CA264 000062A0 */  sb         $v0, ($v1)
/* BAA68 800CA268 03141200 */  sra        $v0, $s2, 0x10
/* BAA6C 800CA26C 020062A0 */  sb         $v0, 2($v1)
/* BAA70 800CA270 03121200 */  sra        $v0, $s2, 8
/* BAA74 800CA274 010070A0 */  sb         $s0, 1($v1)
/* BAA78 800CA278 030062A0 */  sb         $v0, 3($v1)
/* BAA7C 800CA27C B209030C */  jal        FUN_800c26c8
/* BAA80 800CA280 040072A0 */   sb        $s2, 4($v1)
/* BAA84 800CA284 2000BF8F */  lw         $ra, 0x20($sp)
/* BAA88 800CA288 1C00B38F */  lw         $s3, 0x1c($sp)
/* BAA8C 800CA28C 1800B28F */  lw         $s2, 0x18($sp)
/* BAA90 800CA290 1400B18F */  lw         $s1, 0x14($sp)
/* BAA94 800CA294 1000B08F */  lw         $s0, 0x10($sp)
/* BAA98 800CA298 0800E003 */  jr         $ra
/* BAA9C 800CA29C 2800BD27 */   addiu     $sp, $sp, 0x28
