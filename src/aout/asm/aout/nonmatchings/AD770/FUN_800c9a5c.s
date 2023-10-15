.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9a5c
/* BA25C 800C9A5C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BA260 800C9A60 1000B0AF */  sw         $s0, 0x10($sp)
/* BA264 800C9A64 21808000 */  addu       $s0, $a0, $zero
/* BA268 800C9A68 2000B4AF */  sw         $s4, 0x20($sp)
/* BA26C 800C9A6C 21A0A000 */  addu       $s4, $a1, $zero
/* BA270 800C9A70 1400B1AF */  sw         $s1, 0x14($sp)
/* BA274 800C9A74 2188C000 */  addu       $s1, $a2, $zero
/* BA278 800C9A78 1800B2AF */  sw         $s2, 0x18($sp)
/* BA27C 800C9A7C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA280 800C9A80 3800B38F */  lw         $s3, 0x38($sp)
/* BA284 800C9A84 2400BFAF */  sw         $ra, 0x24($sp)
/* BA288 800C9A88 A509030C */  jal        FUN_800c2694
/* BA28C 800C9A8C 2190E000 */   addu      $s2, $a3, $zero
/* BA290 800C9A90 2080053C */  lui        $a1, %hi(D_801FB9A0)
/* BA294 800C9A94 A0B9A324 */  addiu      $v1, $a1, %lo(D_801FB9A0)
/* BA298 800C9A98 06006424 */  addiu      $a0, $v1, 6
/* BA29C 800C9A9C 21304002 */  addu       $a2, $s2, $zero
/* BA2A0 800C9AA0 FE000224 */  addiu      $v0, $zero, 0xfe
/* BA2A4 800C9AA4 1B0002A2 */  sb         $v0, 0x1b($s0)
/* BA2A8 800C9AA8 0600C224 */  addiu      $v0, $a2, 6
/* BA2AC 800C9AAC 1A0002A2 */  sb         $v0, 0x1a($s0)
/* BA2B0 800C9AB0 70000224 */  addiu      $v0, $zero, 0x70
/* BA2B4 800C9AB4 2A0000A2 */  sb         $zero, 0x2a($s0)
/* BA2B8 800C9AB8 A0B9A2A0 */  sb         $v0, -0x4660($a1)
/* BA2BC 800C9ABC 01000224 */  addiu      $v0, $zero, 1
/* BA2C0 800C9AC0 0C0003AE */  sw         $v1, 0xc($s0)
/* BA2C4 800C9AC4 010062A0 */  sb         $v0, 1($v1)
/* BA2C8 800C9AC8 03141100 */  sra        $v0, $s1, 0x10
/* BA2CC 800C9ACC 020062A0 */  sb         $v0, 2($v1)
/* BA2D0 800C9AD0 03121100 */  sra        $v0, $s1, 8
/* BA2D4 800C9AD4 030062A0 */  sb         $v0, 3($v1)
/* BA2D8 800C9AD8 040071A0 */  sb         $s1, 4($v1)
/* BA2DC 800C9ADC 050066A0 */  sb         $a2, 5($v1)
/* BA2E0 800C9AE0 BD6B000C */  jal        memcpy
/* BA2E4 800C9AE4 21286002 */   addu      $a1, $s3, $zero
/* BA2E8 800C9AE8 21200002 */  addu       $a0, $s0, $zero
/* BA2EC 800C9AEC 21288002 */  addu       $a1, $s4, $zero
/* BA2F0 800C9AF0 21300000 */  addu       $a2, $zero, $zero
/* BA2F4 800C9AF4 B209030C */  jal        FUN_800c26c8
/* BA2F8 800C9AF8 09000724 */   addiu     $a3, $zero, 9
/* BA2FC 800C9AFC 2400BF8F */  lw         $ra, 0x24($sp)
/* BA300 800C9B00 2000B48F */  lw         $s4, 0x20($sp)
/* BA304 800C9B04 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA308 800C9B08 1800B28F */  lw         $s2, 0x18($sp)
/* BA30C 800C9B0C 1400B18F */  lw         $s1, 0x14($sp)
/* BA310 800C9B10 1000B08F */  lw         $s0, 0x10($sp)
/* BA314 800C9B14 0800E003 */  jr         $ra
/* BA318 800C9B18 2800BD27 */   addiu     $sp, $sp, 0x28
