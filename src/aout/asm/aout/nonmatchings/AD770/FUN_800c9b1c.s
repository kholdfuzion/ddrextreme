.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9b1c
/* BA31C 800C9B1C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BA320 800C9B20 1000B0AF */  sw         $s0, 0x10($sp)
/* BA324 800C9B24 21808000 */  addu       $s0, $a0, $zero
/* BA328 800C9B28 2000B4AF */  sw         $s4, 0x20($sp)
/* BA32C 800C9B2C 21A0A000 */  addu       $s4, $a1, $zero
/* BA330 800C9B30 1400B1AF */  sw         $s1, 0x14($sp)
/* BA334 800C9B34 2188C000 */  addu       $s1, $a2, $zero
/* BA338 800C9B38 1800B2AF */  sw         $s2, 0x18($sp)
/* BA33C 800C9B3C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA340 800C9B40 3800B38F */  lw         $s3, 0x38($sp)
/* BA344 800C9B44 2400BFAF */  sw         $ra, 0x24($sp)
/* BA348 800C9B48 A509030C */  jal        FUN_800c2694
/* BA34C 800C9B4C 2190E000 */   addu      $s2, $a3, $zero
/* BA350 800C9B50 21200002 */  addu       $a0, $s0, $zero
/* BA354 800C9B54 06000224 */  addiu      $v0, $zero, 6
/* BA358 800C9B58 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA35C 800C9B5C 70000224 */  addiu      $v0, $zero, 0x70
/* BA360 800C9B60 21288002 */  addu       $a1, $s4, $zero
/* BA364 800C9B64 21300000 */  addu       $a2, $zero, $zero
/* BA368 800C9B68 0C00838C */  lw         $v1, 0xc($a0)
/* BA36C 800C9B6C 09000724 */  addiu      $a3, $zero, 9
/* BA370 800C9B70 2B0092A0 */  sb         $s2, 0x2b($a0)
/* BA374 800C9B74 2A0092A0 */  sb         $s2, 0x2a($a0)
/* BA378 800C9B78 1C0093AC */  sw         $s3, 0x1c($a0)
/* BA37C 800C9B7C 000062A0 */  sb         $v0, ($v1)
/* BA380 800C9B80 03141100 */  sra        $v0, $s1, 0x10
/* BA384 800C9B84 020062A0 */  sb         $v0, 2($v1)
/* BA388 800C9B88 03121100 */  sra        $v0, $s1, 8
/* BA38C 800C9B8C 010060A0 */  sb         $zero, 1($v1)
/* BA390 800C9B90 030062A0 */  sb         $v0, 3($v1)
/* BA394 800C9B94 040071A0 */  sb         $s1, 4($v1)
/* BA398 800C9B98 B209030C */  jal        FUN_800c26c8
/* BA39C 800C9B9C 050072A0 */   sb        $s2, 5($v1)
/* BA3A0 800C9BA0 2400BF8F */  lw         $ra, 0x24($sp)
/* BA3A4 800C9BA4 2000B48F */  lw         $s4, 0x20($sp)
/* BA3A8 800C9BA8 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA3AC 800C9BAC 1800B28F */  lw         $s2, 0x18($sp)
/* BA3B0 800C9BB0 1400B18F */  lw         $s1, 0x14($sp)
/* BA3B4 800C9BB4 1000B08F */  lw         $s0, 0x10($sp)
/* BA3B8 800C9BB8 0800E003 */  jr         $ra
/* BA3BC 800C9BBC 2800BD27 */   addiu     $sp, $sp, 0x28
