.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003e1d4
/* 2E9D4 8003E1D4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 2E9D8 8003E1D8 1800A827 */  addiu      $t0, $sp, 0x18
/* 2E9DC 8003E1DC 04000524 */  addiu      $a1, $zero, 4
/* 2E9E0 8003E1E0 2800A327 */  addiu      $v1, $sp, 0x28
/* 2E9E4 8003E1E4 3400BFAF */  sw         $ra, 0x34($sp)
/* 2E9E8 8003E1E8 3000B0AF */  sw         $s0, 0x30($sp)
.L8003E1EC:
/* 2E9EC 8003E1EC 000060AC */  sw         $zero, ($v1)
/* 2E9F0 8003E1F0 FFFFA524 */  addiu      $a1, $a1, -1
/* 2E9F4 8003E1F4 FDFFA104 */  bgez       $a1, .L8003E1EC
/* 2E9F8 8003E1F8 FCFF6324 */   addiu     $v1, $v1, -4
/* 2E9FC 8003E1FC 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2EA00 8003E200 B4FF0624 */  addiu      $a2, $zero, -0x4c
/* 2EA04 8003E204 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EA08 8003E208 80100400 */  sll        $v0, $a0, 2
/* 2EA0C 8003E20C 21100201 */  addu       $v0, $t0, $v0
/* 2EA10 8003E210 02000324 */  addiu      $v1, $zero, 2
/* 2EA14 8003E214 00101024 */  addiu      $s0, $zero, 0x1000
/* 2EA18 8003E218 000043AC */  sw         $v1, ($v0)
/* 2EA1C 8003E21C 0180023C */  lui        $v0, %hi(D_80012FF4)
/* 2EA20 8003E220 1800A48F */  lw         $a0, 0x18($sp)
/* 2EA24 8003E224 F42F4224 */  addiu      $v0, $v0, %lo(D_80012FF4)
/* 2EA28 8003E228 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EA2C 8003E22C 290A010C */  jal        PrintText_800428a4
/* 2EA30 8003E230 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EA34 8003E234 6E19030C */  jal        FUN_800c65b8
/* 2EA38 8003E238 00000000 */   nop
/* 2EA3C 8003E23C 05004230 */  andi       $v0, $v0, 5
/* 2EA40 8003E240 05000324 */  addiu      $v1, $zero, 5
/* 2EA44 8003E244 0C004314 */  bne        $v0, $v1, .L8003E278
/* 2EA48 8003E248 08000424 */   addiu     $a0, $zero, 8
/* 2EA4C 8003E24C 4C000524 */  addiu      $a1, $zero, 0x4c
/* 2EA50 8003E250 C8FF0624 */  addiu      $a2, $zero, -0x38
/* 2EA54 8003E254 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EA58 8003E258 0180023C */  lui        $v0, %hi(D_80013010)
/* 2EA5C 8003E25C 2000A48F */  lw         $a0, 0x20($sp)
/* 2EA60 8003E260 10304224 */  addiu      $v0, $v0, %lo(D_80013010)
/* 2EA64 8003E264 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EA68 8003E268 290A010C */  jal        PrintText_800428a4
/* 2EA6C 8003E26C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EA70 8003E270 A8F80008 */  j          .L8003E2A0
/* 2EA74 8003E274 00000000 */   nop
.L8003E278:
/* 2EA78 8003E278 4C000524 */  addiu      $a1, $zero, 0x4c
/* 2EA7C 8003E27C C8FF0624 */  addiu      $a2, $zero, -0x38
/* 2EA80 8003E280 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EA84 8003E284 08000224 */  addiu      $v0, $zero, 8
/* 2EA88 8003E288 2000A2AF */  sw         $v0, 0x20($sp)
/* 2EA8C 8003E28C 0180023C */  lui        $v0, %hi(D_80013018)
/* 2EA90 8003E290 18304224 */  addiu      $v0, $v0, %lo(D_80013018)
/* 2EA94 8003E294 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EA98 8003E298 290A010C */  jal        PrintText_800428a4
/* 2EA9C 8003E29C 1400A2AF */   sw        $v0, 0x14($sp)
.L8003E2A0:
/* 2EAA0 8003E2A0 6E19030C */  jal        FUN_800c65b8
/* 2EAA4 8003E2A4 00000000 */   nop
/* 2EAA8 8003E2A8 50004230 */  andi       $v0, $v0, 0x50
/* 2EAAC 8003E2AC 50000324 */  addiu      $v1, $zero, 0x50
/* 2EAB0 8003E2B0 0D004314 */  bne        $v0, $v1, .L8003E2E8
/* 2EAB4 8003E2B4 08000424 */   addiu     $a0, $zero, 8
/* 2EAB8 8003E2B8 4C000524 */  addiu      $a1, $zero, 0x4c
/* 2EABC 8003E2BC D2FF0624 */  addiu      $a2, $zero, -0x2e
/* 2EAC0 8003E2C0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EAC4 8003E2C4 00100324 */  addiu      $v1, $zero, 0x1000
/* 2EAC8 8003E2C8 0180023C */  lui        $v0, %hi(D_80013010)
/* 2EACC 8003E2CC 2400A48F */  lw         $a0, 0x24($sp)
/* 2EAD0 8003E2D0 10304224 */  addiu      $v0, $v0, %lo(D_80013010)
/* 2EAD4 8003E2D4 1000A3AF */  sw         $v1, 0x10($sp)
/* 2EAD8 8003E2D8 290A010C */  jal        PrintText_800428a4
/* 2EADC 8003E2DC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EAE0 8003E2E0 C6F80008 */  j          .L8003E318
/* 2EAE4 8003E2E4 84FF0524 */   addiu     $a1, $zero, -0x7c
.L8003E2E8:
/* 2EAE8 8003E2E8 4C000524 */  addiu      $a1, $zero, 0x4c
/* 2EAEC 8003E2EC D2FF0624 */  addiu      $a2, $zero, -0x2e
/* 2EAF0 8003E2F0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EAF4 8003E2F4 08000224 */  addiu      $v0, $zero, 8
/* 2EAF8 8003E2F8 00100324 */  addiu      $v1, $zero, 0x1000
/* 2EAFC 8003E2FC 2400A2AF */  sw         $v0, 0x24($sp)
/* 2EB00 8003E300 0180023C */  lui        $v0, %hi(D_80013018)
/* 2EB04 8003E304 18304224 */  addiu      $v0, $v0, %lo(D_80013018)
/* 2EB08 8003E308 1000A3AF */  sw         $v1, 0x10($sp)
/* 2EB0C 8003E30C 290A010C */  jal        PrintText_800428a4
/* 2EB10 8003E310 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EB14 8003E314 84FF0524 */  addiu      $a1, $zero, -0x7c
.L8003E318:
/* 2EB18 8003E318 C8FF0624 */  addiu      $a2, $zero, -0x38
/* 2EB1C 8003E31C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EB20 8003E320 00101024 */  addiu      $s0, $zero, 0x1000
/* 2EB24 8003E324 0180023C */  lui        $v0, %hi(D_80013020)
/* 2EB28 8003E328 2000A48F */  lw         $a0, 0x20($sp)
/* 2EB2C 8003E32C 20304224 */  addiu      $v0, $v0, %lo(D_80013020)
/* 2EB30 8003E330 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EB34 8003E334 290A010C */  jal        PrintText_800428a4
/* 2EB38 8003E338 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EB3C 8003E33C 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2EB40 8003E340 D2FF0624 */  addiu      $a2, $zero, -0x2e
/* 2EB44 8003E344 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EB48 8003E348 0180023C */  lui        $v0, %hi(D_80013030)
/* 2EB4C 8003E34C 2400A48F */  lw         $a0, 0x24($sp)
/* 2EB50 8003E350 30304224 */  addiu      $v0, $v0, %lo(D_80013030)
/* 2EB54 8003E354 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EB58 8003E358 290A010C */  jal        PrintText_800428a4
/* 2EB5C 8003E35C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EB60 8003E360 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2EB64 8003E364 1C000624 */  addiu      $a2, $zero, 0x1c
/* 2EB68 8003E368 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EB6C 8003E36C 0180023C */  lui        $v0, %hi(D_80013040)
/* 2EB70 8003E370 2800A48F */  lw         $a0, 0x28($sp)
/* 2EB74 8003E374 40304224 */  addiu      $v0, $v0, %lo(D_80013040)
/* 2EB78 8003E378 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EB7C 8003E37C 290A010C */  jal        PrintText_800428a4
/* 2EB80 8003E380 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EB84 8003E384 7CAA000C */  jal        vsync_8002a9f0
/* 2EB88 8003E388 00000000 */   nop
/* 2EB8C 8003E38C 21200000 */  addu       $a0, $zero, $zero
/* 2EB90 8003E390 B4FF0524 */  addiu      $a1, $zero, -0x4c
/* 2EB94 8003E394 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2EB98 8003E398 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EB9C 8003E39C 0180023C */  lui        $v0, %hi(D_80013048)
/* 2EBA0 8003E3A0 48304224 */  addiu      $v0, $v0, %lo(D_80013048)
/* 2EBA4 8003E3A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EBA8 8003E3A8 290A010C */  jal        PrintText_800428a4
/* 2EBAC 8003E3AC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EBB0 8003E3B0 21200000 */  addu       $a0, $zero, $zero
/* 2EBB4 8003E3B4 65FF0524 */  addiu      $a1, $zero, -0x9b
/* 2EBB8 8003E3B8 52000624 */  addiu      $a2, $zero, 0x52
/* 2EBBC 8003E3BC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EBC0 8003E3C0 0180023C */  lui        $v0, %hi(D_8001305C)
/* 2EBC4 8003E3C4 5C304224 */  addiu      $v0, $v0, %lo(D_8001305C)
/* 2EBC8 8003E3C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EBCC 8003E3CC 290A010C */  jal        PrintText_800428a4
/* 2EBD0 8003E3D0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EBD4 8003E3D4 21200000 */  addu       $a0, $zero, $zero
/* 2EBD8 8003E3D8 65FF0524 */  addiu      $a1, $zero, -0x9b
/* 2EBDC 8003E3DC 5A000624 */  addiu      $a2, $zero, 0x5a
/* 2EBE0 8003E3E0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EBE4 8003E3E4 0180023C */  lui        $v0, %hi(D_80013080)
/* 2EBE8 8003E3E8 80304224 */  addiu      $v0, $v0, %lo(D_80013080)
/* 2EBEC 8003E3EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EBF0 8003E3F0 290A010C */  jal        PrintText_800428a4
/* 2EBF4 8003E3F4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EBF8 8003E3F8 3400BF8F */  lw         $ra, 0x34($sp)
/* 2EBFC 8003E3FC 3000B08F */  lw         $s0, 0x30($sp)
/* 2EC00 8003E400 0800E003 */  jr         $ra
/* 2EC04 8003E404 3800BD27 */   addiu     $sp, $sp, 0x38
