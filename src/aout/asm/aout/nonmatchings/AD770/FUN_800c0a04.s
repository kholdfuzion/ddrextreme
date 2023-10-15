.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0a04
/* B1204 800C0A04 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B1208 800C0A08 2400BFAF */  sw         $ra, 0x24($sp)
/* B120C 800C0A0C 2000B2AF */  sw         $s2, 0x20($sp)
/* B1210 800C0A10 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B1214 800C0A14 1800B0AF */  sw         $s0, 0x18($sp)
/* B1218 800C0A18 FF009030 */  andi       $s0, $a0, 0xff
/* B121C 800C0A1C FFFFB230 */  andi       $s2, $a1, 0xffff
/* B1220 800C0A20 55FE020C */  jal        FUN_800bf954
/* B1224 800C0A24 FFFFD130 */   andi      $s1, $a2, 0xffff
/* B1228 800C0A28 5AFF020C */  jal        FUN_800bfd68
/* B122C 800C0A2C 3A000424 */   addiu     $a0, $zero, 0x3a
/* B1230 800C0A30 E0FF020C */  jal        FUN_800bff80
/* B1234 800C0A34 00000000 */   nop
/* B1238 800C0A38 07004014 */  bnez       $v0, .L800C0A58
/* B123C 800C0A3C 00000000 */   nop
/* B1240 800C0A40 5AFF020C */  jal        FUN_800bfd68
/* B1244 800C0A44 68000424 */   addiu     $a0, $zero, 0x68
/* B1248 800C0A48 E0FF020C */  jal        FUN_800bff80
/* B124C 800C0A4C 00000000 */   nop
/* B1250 800C0A50 05004010 */  beqz       $v0, .L800C0A68
/* B1254 800C0A54 21200000 */   addu      $a0, $zero, $zero
.L800C0A58:
/* B1258 800C0A58 A7FE020C */  jal        FUN_800bfa9c
/* B125C 800C0A5C 00000000 */   nop
/* B1260 800C0A60 B3020308 */  j          .L800C0ACC
/* B1264 800C0A64 01000224 */   addiu     $v0, $zero, 1
.L800C0A68:
/* B1268 800C0A68 21280002 */  addu       $a1, $s0, $zero
/* B126C 800C0A6C 5601030C */  jal        FUN_800c0558
/* B1270 800C0A70 1000A627 */   addiu     $a2, $sp, 0x10
/* B1274 800C0A74 21202002 */  addu       $a0, $s1, $zero
/* B1278 800C0A78 2500030C */  jal        FUN_800c0094
/* B127C 800C0A7C 1200A527 */   addiu     $a1, $sp, 0x12
/* B1280 800C0A80 21204002 */  addu       $a0, $s2, $zero
/* B1284 800C0A84 2500030C */  jal        FUN_800c0094
/* B1288 800C0A88 1400A527 */   addiu     $a1, $sp, 0x14
/* B128C 800C0A8C 21800000 */  addu       $s0, $zero, $zero
/* B1290 800C0A90 1000B127 */  addiu      $s1, $sp, 0x10
/* B1294 800C0A94 21103002 */  addu       $v0, $s1, $s0
.L800C0A98:
/* B1298 800C0A98 00004490 */  lbu        $a0, ($v0)
/* B129C 800C0A9C 5AFF020C */  jal        FUN_800bfd68
/* B12A0 800C0AA0 00000000 */   nop
/* B12A4 800C0AA4 E0FF020C */  jal        FUN_800bff80
/* B12A8 800C0AA8 00000000 */   nop
/* B12AC 800C0AAC EAFF4014 */  bnez       $v0, .L800C0A58
/* B12B0 800C0AB0 01001026 */   addiu     $s0, $s0, 1
/* B12B4 800C0AB4 0600022A */  slti       $v0, $s0, 6
/* B12B8 800C0AB8 F7FF4014 */  bnez       $v0, .L800C0A98
/* B12BC 800C0ABC 21103002 */   addu      $v0, $s1, $s0
/* B12C0 800C0AC0 A7FE020C */  jal        FUN_800bfa9c
/* B12C4 800C0AC4 00000000 */   nop
/* B12C8 800C0AC8 21100000 */  addu       $v0, $zero, $zero
.L800C0ACC:
/* B12CC 800C0ACC 2400BF8F */  lw         $ra, 0x24($sp)
/* B12D0 800C0AD0 2000B28F */  lw         $s2, 0x20($sp)
/* B12D4 800C0AD4 1C00B18F */  lw         $s1, 0x1c($sp)
/* B12D8 800C0AD8 1800B08F */  lw         $s0, 0x18($sp)
/* B12DC 800C0ADC 0800E003 */  jr         $ra
/* B12E0 800C0AE0 2800BD27 */   addiu     $sp, $sp, 0x28
