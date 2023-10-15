.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2a70
/* B3270 800C2A70 D8FEBD27 */  addiu      $sp, $sp, -0x128
/* B3274 800C2A74 1801B0AF */  sw         $s0, 0x118($sp)
/* B3278 800C2A78 01001024 */  addiu      $s0, $zero, 1
/* B327C 800C2A7C 1C01B1AF */  sw         $s1, 0x11c($sp)
/* B3280 800C2A80 0F80113C */  lui        $s1, %hi(D_800EE558)
/* B3284 800C2A84 2001BFAF */  sw         $ra, 0x120($sp)
/* B3288 800C2A88 FF000424 */  addiu      $a0, $zero, 0xff
.L800C2A8C:
/* B328C 800C2A8C 1000A527 */  addiu      $a1, $sp, 0x10
/* B3290 800C2A90 02000624 */  addiu      $a2, $zero, 2
/* B3294 800C2A94 58E52292 */  lbu        $v0, %lo(D_800EE558)($s1)
/* B3298 800C2A98 1800A727 */  addiu      $a3, $sp, 0x18
/* B329C 800C2A9C 1100B0A3 */  sb         $s0, 0x11($sp)
/* B32A0 800C2AA0 BF0A030C */  jal        FUN_800c2afc
/* B32A4 800C2AA4 1000A2A3 */   sb        $v0, 0x10($sp)
/* B32A8 800C2AA8 0F004004 */  bltz       $v0, .L800C2AE8
/* B32AC 800C2AAC 00000000 */   nop
/* B32B0 800C2AB0 EC0A030C */  jal        FUN_800c2bb0
/* B32B4 800C2AB4 01000424 */   addiu     $a0, $zero, 1
/* B32B8 800C2AB8 B206030C */  jal        FUN_800c1ac8
/* B32BC 800C2ABC 00000000 */   nop
/* B32C0 800C2AC0 06004010 */  beqz       $v0, .L800C2ADC
/* B32C4 800C2AC4 2000032A */   slti      $v1, $s0, 0x20
/* B32C8 800C2AC8 01001026 */  addiu      $s0, $s0, 1
/* B32CC 800C2ACC 2000022A */  slti       $v0, $s0, 0x20
/* B32D0 800C2AD0 EEFF4014 */  bnez       $v0, .L800C2A8C
/* B32D4 800C2AD4 FF000424 */   addiu     $a0, $zero, 0xff
/* B32D8 800C2AD8 2000032A */  slti       $v1, $s0, 0x20
.L800C2ADC:
/* B32DC 800C2ADC 02006010 */  beqz       $v1, .L800C2AE8
/* B32E0 800C2AE0 FDFF0224 */   addiu     $v0, $zero, -3
/* B32E4 800C2AE4 21100002 */  addu       $v0, $s0, $zero
.L800C2AE8:
/* B32E8 800C2AE8 2001BF8F */  lw         $ra, 0x120($sp)
/* B32EC 800C2AEC 1C01B18F */  lw         $s1, 0x11c($sp)
/* B32F0 800C2AF0 1801B08F */  lw         $s0, 0x118($sp)
/* B32F4 800C2AF4 0800E003 */  jr         $ra
/* B32F8 800C2AF8 2801BD27 */   addiu     $sp, $sp, 0x128
