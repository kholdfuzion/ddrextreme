.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CBB68
/* BC368 800CBB68 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BC36C 800CBB6C 1400B1AF */  sw         $s1, 0x14($sp)
/* BC370 800CBB70 21888000 */  addu       $s1, $a0, $zero
/* BC374 800CBB74 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BC378 800CBB78 2198A000 */  addu       $s3, $a1, $zero
/* BC37C 800CBB7C 1800B2AF */  sw         $s2, 0x18($sp)
/* BC380 800CBB80 21906002 */  addu       $s2, $s3, $zero
/* BC384 800CBB84 80000424 */  addiu      $a0, $zero, 0x80
/* BC388 800CBB88 2000BFAF */  sw         $ra, 0x20($sp)
/* BC38C 800CBB8C E42D030C */  jal        FUN_800cb790
/* BC390 800CBB90 1000B0AF */   sw        $s0, 0x10($sp)
/* BC394 800CBB94 05004010 */  beqz       $v0, .L800CBBAC
/* BC398 800CBB98 00000000 */   nop
/* BC39C 800CBB9C D32D030C */  jal        FUN_800cb74c
/* BC3A0 800CBBA0 FFFF0424 */   addiu     $a0, $zero, -1
/* BC3A4 800CBBA4 122F0308 */  j          .L800CBC48
/* BC3A8 800CBBA8 00000000 */   nop
.L800CBBAC:
/* BC3AC 800CBBAC 442B030C */  jal        FUN_800cad10
/* BC3B0 800CBBB0 60000424 */   addiu     $a0, $zero, 0x60
/* BC3B4 800CBBB4 11004014 */  bnez       $v0, .L800CBBFC
/* BC3B8 800CBBB8 21800000 */   addu      $s0, $zero, $zero
.L800CBBBC:
/* BC3BC 800CBBBC 00002492 */  lbu        $a0, ($s1)
/* BC3C0 800CBBC0 442B030C */  jal        FUN_800cad10
/* BC3C4 800CBBC4 01003126 */   addiu     $s1, $s1, 1
/* BC3C8 800CBBC8 0C004014 */  bnez       $v0, .L800CBBFC
/* BC3CC 800CBBCC 01001026 */   addiu     $s0, $s0, 1
/* BC3D0 800CBBD0 0800022A */  slti       $v0, $s0, 8
/* BC3D4 800CBBD4 F9FF4014 */  bnez       $v0, .L800CBBBC
/* BC3D8 800CBBD8 00000000 */   nop
/* BC3DC 800CBBDC E42D030C */  jal        FUN_800cb790
/* BC3E0 800CBBE0 C0000424 */   addiu     $a0, $zero, 0xc0
/* BC3E4 800CBBE4 09004010 */  beqz       $v0, .L800CBC0C
/* BC3E8 800CBBE8 21800000 */   addu      $s0, $zero, $zero
/* BC3EC 800CBBEC D32D030C */  jal        FUN_800cb74c
/* BC3F0 800CBBF0 FDFF0424 */   addiu     $a0, $zero, -3
/* BC3F4 800CBBF4 122F0308 */  j          .L800CBC48
/* BC3F8 800CBBF8 00000000 */   nop
.L800CBBFC:
/* BC3FC 800CBBFC D32D030C */  jal        FUN_800cb74c
/* BC400 800CBC00 FEFF0424 */   addiu     $a0, $zero, -2
/* BC404 800CBC04 122F0308 */  j          .L800CBC48
/* BC408 800CBC08 00000000 */   nop
.L800CBC0C:
/* BC40C 800CBC0C D62B030C */  jal        FUN_800caf58
/* BC410 800CBC10 01001026 */   addiu     $s0, $s0, 1
/* BC414 800CBC14 000042A2 */  sb         $v0, ($s2)
/* BC418 800CBC18 0400022A */  slti       $v0, $s0, 4
/* BC41C 800CBC1C FBFF4014 */  bnez       $v0, .L800CBC0C
/* BC420 800CBC20 01005226 */   addiu     $s2, $s2, 1
/* BC424 800CBC24 292C030C */  jal        FUN_800cb0a4
/* BC428 800CBC28 00000000 */   nop
/* BC42C 800CBC2C 04000424 */  addiu      $a0, $zero, 4
/* BC430 800CBC30 000042A2 */  sb         $v0, ($s2)
/* BC434 800CBC34 070060A2 */  sb         $zero, 7($s3)
/* BC438 800CBC38 060060A2 */  sb         $zero, 6($s3)
/* BC43C 800CBC3C B32D030C */  jal        FUN_800cb6cc
/* BC440 800CBC40 050060A2 */   sb        $zero, 5($s3)
/* BC444 800CBC44 21100000 */  addu       $v0, $zero, $zero
.L800CBC48:
/* BC448 800CBC48 2000BF8F */  lw         $ra, 0x20($sp)
/* BC44C 800CBC4C 1C00B38F */  lw         $s3, 0x1c($sp)
/* BC450 800CBC50 1800B28F */  lw         $s2, 0x18($sp)
/* BC454 800CBC54 1400B18F */  lw         $s1, 0x14($sp)
/* BC458 800CBC58 1000B08F */  lw         $s0, 0x10($sp)
/* BC45C 800CBC5C 0800E003 */  jr         $ra
/* BC460 800CBC60 2800BD27 */   addiu     $sp, $sp, 0x28
