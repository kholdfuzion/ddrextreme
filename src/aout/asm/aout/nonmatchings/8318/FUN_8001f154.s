.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001f154
/* F954 8001F154 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* F958 8001F158 3C00B1AF */  sw         $s1, 0x3c($sp)
/* F95C 8001F15C 21880000 */  addu       $s1, $zero, $zero
/* F960 8001F160 4000B2AF */  sw         $s2, 0x40($sp)
/* F964 8001F164 21900000 */  addu       $s2, $zero, $zero
/* F968 8001F168 5C00BFAF */  sw         $ra, 0x5c($sp)
/* F96C 8001F16C 5800BEAF */  sw         $fp, 0x58($sp)
/* F970 8001F170 5400B7AF */  sw         $s7, 0x54($sp)
/* F974 8001F174 5000B6AF */  sw         $s6, 0x50($sp)
/* F978 8001F178 4C00B5AF */  sw         $s5, 0x4c($sp)
/* F97C 8001F17C 4800B4AF */  sw         $s4, 0x48($sp)
/* F980 8001F180 4400B3AF */  sw         $s3, 0x44($sp)
/* F984 8001F184 3800B0AF */  sw         $s0, 0x38($sp)
.L8001F188:
/* F988 8001F188 29A6000C */  jal        coin_left_partial_800298a4
/* F98C 8001F18C 21204002 */   addu      $a0, $s2, $zero
/* F990 8001F190 21204002 */  addu       $a0, $s2, $zero
/* F994 8001F194 01A7000C */  jal        coin_partialcredits_80029c04
/* F998 8001F198 21804000 */   addu      $s0, $v0, $zero
/* F99C 8001F19C 21800202 */  addu       $s0, $s0, $v0
/* F9A0 8001F1A0 01005226 */  addiu      $s2, $s2, 1
/* F9A4 8001F1A4 0200422A */  slti       $v0, $s2, 2
/* F9A8 8001F1A8 F7FF4014 */  bnez       $v0, .L8001F188
/* F9AC 8001F1AC 21883002 */   addu      $s1, $s1, $s0
/* F9B0 8001F1B0 A3002016 */  bnez       $s1, .L8001F440
/* F9B4 8001F1B4 0E80023C */   lui       $v0, %hi(D_800D88CC)
/* F9B8 8001F1B8 CC88438C */  lw         $v1, %lo(D_800D88CC)($v0)
/* F9BC 8001F1BC 00000000 */  nop
/* F9C0 8001F1C0 21006014 */  bnez       $v1, .L8001F248
/* F9C4 8001F1C4 21F04000 */   addu      $fp, $v0, $zero
/* F9C8 8001F1C8 62B3000C */  jal        FUN_8002cd88
/* F9CC 8001F1CC 21200000 */   addu      $a0, $zero, $zero
/* F9D0 8001F1D0 01000424 */  addiu      $a0, $zero, 1
/* F9D4 8001F1D4 62B3000C */  jal        FUN_8002cd88
/* F9D8 8001F1D8 21804000 */   addu      $s0, $v0, $zero
/* F9DC 8001F1DC 070C030C */  jal        FUN_800c301c
/* F9E0 8001F1E0 25200202 */   or        $a0, $s0, $v0
/* F9E4 8001F1E4 14004010 */  beqz       $v0, .L8001F238
/* F9E8 8001F1E8 01000224 */   addiu     $v0, $zero, 1
/* F9EC 8001F1EC CC88C2AF */  sw         $v0, -0x7734($fp)
/* F9F0 8001F1F0 21900000 */  addu       $s2, $zero, $zero
/* F9F4 8001F1F4 2800B027 */  addiu      $s0, $sp, 0x28
/* F9F8 8001F1F8 0180113C */  lui        $s1, 0x8001
.L8001F1FC:
/* F9FC 8001F1FC 02004012 */  beqz       $s2, .L8001F208
/* FA00 8001F200 01000424 */   addiu     $a0, $zero, 1
/* FA04 8001F204 03000424 */  addiu      $a0, $zero, 3
.L8001F208:
/* FA08 8001F208 21280002 */  addu       $a1, $s0, $zero
/* FA0C 8001F20C 650C030C */  jal        checkseccassette_800c3194
/* FA10 8001F210 08000624 */   addiu     $a2, $zero, 8
/* FA14 8001F214 04004104 */  bgez       $v0, .L8001F228
/* FA18 8001F218 E8082426 */   addiu     $a0, $s1, 0x8e8
/* FA1C 8001F21C FFFF0524 */  addiu      $a1, $zero, -1
/* FA20 8001F220 58AA000C */  jal        error_8002a960
/* FA24 8001F224 21300000 */   addu      $a2, $zero, $zero
.L8001F228:
/* FA28 8001F228 01005226 */  addiu      $s2, $s2, 1
/* FA2C 8001F22C 0200422A */  slti       $v0, $s2, 2
/* FA30 8001F230 F2FF4014 */  bnez       $v0, .L8001F1FC
/* FA34 8001F234 00000000 */   nop
.L8001F238:
/* FA38 8001F238 CC88C28F */  lw         $v0, -0x7734($fp)
/* FA3C 8001F23C 00000000 */  nop
/* FA40 8001F240 71004010 */  beqz       $v0, .L8001F408
/* FA44 8001F244 00000000 */   nop
.L8001F248:
/* FA48 8001F248 500E030C */  jal        FUN_800c3940
/* FA4C 8001F24C 21900000 */   addu      $s2, $zero, $zero
/* FA50 8001F250 21B04000 */  addu       $s6, $v0, $zero
/* FA54 8001F254 1380153C */  lui        $s5, %hi(D_80128F98)
/* FA58 8001F258 1380143C */  lui        $s4, %hi(D_80128F58)
/* FA5C 8001F25C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* FA60 8001F260 A89D5724 */  addiu      $s7, $v0, %lo(D_80129DA8)
.L8001F264:
/* FA64 8001F264 02004016 */  bnez       $s2, .L8001F270
/* FA68 8001F268 988FA426 */   addiu     $a0, $s5, %lo(D_80128F98)
/* FA6C 8001F26C 588F8426 */  addiu      $a0, $s4, %lo(D_80128F58)
.L8001F270:
/* FA70 8001F270 0180023C */  lui        $v0, %hi(D_80010904)
/* FA74 8001F274 04004012 */  beqz       $s2, .L8001F288
/* FA78 8001F278 04094524 */   addiu     $a1, $v0, %lo(D_80010904)
/* FA7C 8001F27C 0180023C */  lui        $v0, %hi(D_8001090C)
/* FA80 8001F280 A47C0008 */  j          .L8001F290
/* FA84 8001F284 0C094624 */   addiu     $a2, $v0, %lo(D_8001090C)
.L8001F288:
/* FA88 8001F288 0180023C */  lui        $v0, %hi(D_80010910)
/* FA8C 8001F28C 10094624 */  addiu      $a2, $v0, %lo(D_80010910)
.L8001F290:
/* FA90 8001F290 02004012 */  beqz       $s2, .L8001F29C
/* FA94 8001F294 4800C726 */   addiu     $a3, $s6, 0x48
/* FA98 8001F298 B000C726 */  addiu      $a3, $s6, 0xb0
.L8001F29C:
/* FA9C 8001F29C 8E81000C */  jal        sprintf
/* FAA0 8001F2A0 00000000 */   nop
/* FAA4 8001F2A4 02004016 */  bnez       $s2, .L8001F2B0
/* FAA8 8001F2A8 988FA426 */   addiu     $a0, $s5, -0x7068
/* FAAC 8001F2AC 588F8426 */  addiu      $a0, $s4, -0x70a8
.L8001F2B0:
/* FAB0 8001F2B0 7E81000C */  jal        strlen
/* FAB4 8001F2B4 00000000 */   nop
/* FAB8 8001F2B8 1000A427 */  addiu      $a0, $sp, 0x10
/* FABC 8001F2BC DE83000C */  jal        FUN_80020f78
/* FAC0 8001F2C0 21984000 */   addu      $s3, $v0, $zero
/* FAC4 8001F2C4 B40DE28E */  lw         $v0, 0xdb4($s7)
/* FAC8 8001F2C8 00000000 */  nop
/* FACC 8001F2CC F0004230 */  andi       $v0, $v0, 0xf0
/* FAD0 8001F2D0 1D004014 */  bnez       $v0, .L8001F348
/* FAD4 8001F2D4 01006226 */   addiu     $v0, $s3, 1
/* FAD8 8001F2D8 C21F0200 */  srl        $v1, $v0, 0x1f
/* FADC 8001F2DC 21104300 */  addu       $v0, $v0, $v1
/* FAE0 8001F2E0 43100200 */  sra        $v0, $v0, 1
/* FAE4 8001F2E4 C0140200 */  sll        $v0, $v0, 0x13
/* FAE8 8001F2E8 23100200 */  negu       $v0, $v0
/* FAEC 8001F2EC 038C0200 */  sra        $s1, $v0, 0x10
/* FAF0 8001F2F0 01000324 */  addiu      $v1, $zero, 1
/* FAF4 8001F2F4 23187200 */  subu       $v1, $v1, $s2
/* FAF8 8001F2F8 C0180300 */  sll        $v1, $v1, 3
/* FAFC 8001F2FC 62000224 */  addiu      $v0, $zero, 0x62
/* FB00 8001F300 23104300 */  subu       $v0, $v0, $v1
/* FB04 8001F304 00140200 */  sll        $v0, $v0, 0x10
/* FB08 8001F308 03840200 */  sra        $s0, $v0, 0x10
/* FB0C 8001F30C 02004016 */  bnez       $s2, .L8001F318
/* FB10 8001F310 988FA626 */   addiu     $a2, $s5, -0x7068
/* FB14 8001F314 588F8626 */  addiu      $a2, $s4, -0x70a8
.L8001F318:
/* FB18 8001F318 21202002 */  addu       $a0, $s1, $zero
/* FB1C 8001F31C 21280002 */  addu       $a1, $s0, $zero
/* FB20 8001F320 080A073C */  lui        $a3, 0xa08
/* FB24 8001F324 C874010C */  jal        FUN_8005d320
/* FB28 8001F328 0008E734 */   ori       $a3, $a3, 0x800
/* FB2C 8001F32C FEFF2326 */  addiu      $v1, $s1, -2
/* FB30 8001F330 FEFF0526 */  addiu      $a1, $s0, -2
/* FB34 8001F334 09000426 */  addiu      $a0, $s0, 9
/* FB38 8001F338 C0101300 */  sll        $v0, $s3, 3
/* FB3C 8001F33C 21102202 */  addu       $v0, $s1, $v0
/* FB40 8001F340 ED7C0008 */  j          .L8001F3B4
/* FB44 8001F344 02004224 */   addiu     $v0, $v0, 2
.L8001F348:
/* FB48 8001F348 C21F0200 */  srl        $v1, $v0, 0x1f
/* FB4C 8001F34C 21104300 */  addu       $v0, $v0, $v1
/* FB50 8001F350 43100200 */  sra        $v0, $v0, 1
/* FB54 8001F354 00150200 */  sll        $v0, $v0, 0x14
/* FB58 8001F358 23100200 */  negu       $v0, $v0
/* FB5C 8001F35C 038C0200 */  sra        $s1, $v0, 0x10
/* FB60 8001F360 01000324 */  addiu      $v1, $zero, 1
/* FB64 8001F364 23187200 */  subu       $v1, $v1, $s2
/* FB68 8001F368 00190300 */  sll        $v1, $v1, 4
/* FB6C 8001F36C C4000224 */  addiu      $v0, $zero, 0xc4
/* FB70 8001F370 23104300 */  subu       $v0, $v0, $v1
/* FB74 8001F374 00140200 */  sll        $v0, $v0, 0x10
/* FB78 8001F378 03840200 */  sra        $s0, $v0, 0x10
/* FB7C 8001F37C 02004016 */  bnez       $s2, .L8001F388
/* FB80 8001F380 988FA626 */   addiu     $a2, $s5, -0x7068
/* FB84 8001F384 588F8626 */  addiu      $a2, $s4, -0x70a8
.L8001F388:
/* FB88 8001F388 21202002 */  addu       $a0, $s1, $zero
/* FB8C 8001F38C 21280002 */  addu       $a1, $s0, $zero
/* FB90 8001F390 100A073C */  lui        $a3, 0xa10
/* FB94 8001F394 C874010C */  jal        FUN_8005d320
/* FB98 8001F398 0310E734 */   ori       $a3, $a3, 0x1003
/* FB9C 8001F39C FCFF2326 */  addiu      $v1, $s1, -4
/* FBA0 8001F3A0 FCFF0526 */  addiu      $a1, $s0, -4
/* FBA4 8001F3A4 14000426 */  addiu      $a0, $s0, 0x14
/* FBA8 8001F3A8 00111300 */  sll        $v0, $s3, 4
/* FBAC 8001F3AC 21102202 */  addu       $v0, $s1, $v0
/* FBB0 8001F3B0 04004224 */  addiu      $v0, $v0, 4
.L8001F3B4:
/* FBB4 8001F3B4 1800A3A7 */  sh         $v1, 0x18($sp)
/* FBB8 8001F3B8 1A00A5A7 */  sh         $a1, 0x1a($sp)
/* FBBC 8001F3BC 2000A3A7 */  sh         $v1, 0x20($sp)
/* FBC0 8001F3C0 2200A4A7 */  sh         $a0, 0x22($sp)
/* FBC4 8001F3C4 1C00A2A7 */  sh         $v0, 0x1c($sp)
/* FBC8 8001F3C8 1E00A5A7 */  sh         $a1, 0x1e($sp)
/* FBCC 8001F3CC 2400A2A7 */  sh         $v0, 0x24($sp)
/* FBD0 8001F3D0 2600A4A7 */  sh         $a0, 0x26($sp)
/* FBD4 8001F3D4 1000A427 */  addiu      $a0, $sp, 0x10
/* FBD8 8001F3D8 01000624 */  addiu      $a2, $zero, 1
/* FBDC 8001F3DC 01005226 */  addiu      $s2, $s2, 1
/* FBE0 8001F3E0 10000224 */  addiu      $v0, $zero, 0x10
/* FBE4 8001F3E4 2C0CE58E */  lw         $a1, 0xc2c($s7)
/* FBE8 8001F3E8 80000324 */  addiu      $v1, $zero, 0x80
/* FBEC 8001F3EC 1400A0A3 */  sb         $zero, 0x14($sp)
/* FBF0 8001F3F0 1500A2A3 */  sb         $v0, 0x15($sp)
/* FBF4 8001F3F4 E683000C */  jal        GsSortPoly
/* FBF8 8001F3F8 1600A3A3 */   sb        $v1, 0x16($sp)
/* FBFC 8001F3FC 0200422A */  slti       $v0, $s2, 2
/* FC00 8001F400 98FF4014 */  bnez       $v0, .L8001F264
/* FC04 8001F404 00000000 */   nop
.L8001F408:
/* FC08 8001F408 CC88C38F */  lw         $v1, -0x7734($fp)
/* FC0C 8001F40C 01000224 */  addiu      $v0, $zero, 1
/* FC10 8001F410 0B006214 */  bne        $v1, $v0, .L8001F440
/* FC14 8001F414 00000000 */   nop
/* FC18 8001F418 62B3000C */  jal        FUN_8002cd88
/* FC1C 8001F41C 21200000 */   addu      $a0, $zero, $zero
/* FC20 8001F420 01000424 */  addiu      $a0, $zero, 1
/* FC24 8001F424 62B3000C */  jal        FUN_8002cd88
/* FC28 8001F428 21804000 */   addu      $s0, $v0, $zero
/* FC2C 8001F42C 070C030C */  jal        FUN_800c301c
/* FC30 8001F430 25200202 */   or        $a0, $s0, $v0
/* FC34 8001F434 02004014 */  bnez       $v0, .L8001F440
/* FC38 8001F438 00000000 */   nop
/* FC3C 8001F43C CC88C0AF */  sw         $zero, -0x7734($fp)
.L8001F440:
/* FC40 8001F440 5C00BF8F */  lw         $ra, 0x5c($sp)
/* FC44 8001F444 5800BE8F */  lw         $fp, 0x58($sp)
/* FC48 8001F448 5400B78F */  lw         $s7, 0x54($sp)
/* FC4C 8001F44C 5000B68F */  lw         $s6, 0x50($sp)
/* FC50 8001F450 4C00B58F */  lw         $s5, 0x4c($sp)
/* FC54 8001F454 4800B48F */  lw         $s4, 0x48($sp)
/* FC58 8001F458 4400B38F */  lw         $s3, 0x44($sp)
/* FC5C 8001F45C 4000B28F */  lw         $s2, 0x40($sp)
/* FC60 8001F460 3C00B18F */  lw         $s1, 0x3c($sp)
/* FC64 8001F464 3800B08F */  lw         $s0, 0x38($sp)
/* FC68 8001F468 0800E003 */  jr         $ra
/* FC6C 8001F46C 6000BD27 */   addiu     $sp, $sp, 0x60
