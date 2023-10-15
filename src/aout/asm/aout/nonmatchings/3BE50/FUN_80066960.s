.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80066960
/* 57160 80066960 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 57164 80066964 5000B6AF */  sw         $s6, 0x50($sp)
/* 57168 80066968 21B08000 */  addu       $s6, $a0, $zero
/* 5716C 8006696C 02000424 */  addiu      $a0, $zero, 2
/* 57170 80066970 5800BEAF */  sw         $fp, 0x58($sp)
/* 57174 80066974 21F0A000 */  addu       $fp, $a1, $zero
/* 57178 80066978 0F000524 */  addiu      $a1, $zero, 0xf
/* 5717C 8006697C 5400B7AF */  sw         $s7, 0x54($sp)
/* 57180 80066980 21B8C000 */  addu       $s7, $a2, $zero
/* 57184 80066984 5C00BFAF */  sw         $ra, 0x5c($sp)
/* 57188 80066988 4C00B5AF */  sw         $s5, 0x4c($sp)
/* 5718C 8006698C 4800B4AF */  sw         $s4, 0x48($sp)
/* 57190 80066990 4400B3AF */  sw         $s3, 0x44($sp)
/* 57194 80066994 4000B2AF */  sw         $s2, 0x40($sp)
/* 57198 80066998 3C00B1AF */  sw         $s1, 0x3c($sp)
/* 5719C 8006699C 3800B0AF */  sw         $s0, 0x38($sp)
/* 571A0 800669A0 2800A0AF */  sw         $zero, 0x28($sp)
/* 571A4 800669A4 3000A0AF */  sw         $zero, 0x30($sp)
/* 571A8 800669A8 3400A0AF */  sw         $zero, 0x34($sp)
/* 571AC 800669AC FA56010C */  jal        FUN_80055be8
/* 571B0 800669B0 2C00A0AF */   sw        $zero, 0x2c($sp)
/* 571B4 800669B4 02000424 */  addiu      $a0, $zero, 2
/* 571B8 800669B8 946B010C */  jal        FUN_8005ae50
/* 571BC 800669BC FFFF0524 */   addiu     $a1, $zero, -1
/* 571C0 800669C0 02000424 */  addiu      $a0, $zero, 2
/* 571C4 800669C4 376C010C */  jal        FUN_8005b0dc
/* 571C8 800669C8 FE000524 */   addiu     $a1, $zero, 0xfe
/* 571CC 800669CC 03000424 */  addiu      $a0, $zero, 3
/* 571D0 800669D0 FA56010C */  jal        FUN_80055be8
/* 571D4 800669D4 0F000524 */   addiu     $a1, $zero, 0xf
/* 571D8 800669D8 03000424 */  addiu      $a0, $zero, 3
/* 571DC 800669DC 946B010C */  jal        FUN_8005ae50
/* 571E0 800669E0 FFFF0524 */   addiu     $a1, $zero, -1
/* 571E4 800669E4 03000424 */  addiu      $a0, $zero, 3
/* 571E8 800669E8 376C010C */  jal        FUN_8005b0dc
/* 571EC 800669EC FC000524 */   addiu     $a1, $zero, 0xfc
/* 571F0 800669F0 01000424 */  addiu      $a0, $zero, 1
/* 571F4 800669F4 C3B0010C */  jal        FUN_8006c30c
/* 571F8 800669F8 01000524 */   addiu     $a1, $zero, 1
/* 571FC 800669FC 01000424 */  addiu      $a0, $zero, 1
/* 57200 80066A00 0BB2010C */  jal        FUN_8006c82c
/* 57204 80066A04 FD000524 */   addiu     $a1, $zero, 0xfd
/* 57208 80066A08 01000424 */  addiu      $a0, $zero, 1
/* 5720C 80066A0C FFFF0524 */  addiu      $a1, $zero, -1
/* 57210 80066A10 FFFF0624 */  addiu      $a2, $zero, -1
/* 57214 80066A14 FFFF0724 */  addiu      $a3, $zero, -1
/* 57218 80066A18 FFFF1024 */  addiu      $s0, $zero, -1
/* 5721C 80066A1C 9CAE010C */  jal        FUN_8006ba70
/* 57220 80066A20 1000B0AF */   sw        $s0, 0x10($sp)
/* 57224 80066A24 01000424 */  addiu      $a0, $zero, 1
/* 57228 80066A28 33B1010C */  jal        FUN_8006c4cc
/* 5722C 80066A2C 21280000 */   addu      $a1, $zero, $zero
/* 57230 80066A30 01000424 */  addiu      $a0, $zero, 1
/* 57234 80066A34 81B1010C */  jal        FUN_8006c604
/* 57238 80066A38 FFFF0524 */   addiu     $a1, $zero, -1
/* 5723C 80066A3C 02000424 */  addiu      $a0, $zero, 2
/* 57240 80066A40 C3B0010C */  jal        FUN_8006c30c
/* 57244 80066A44 01000524 */   addiu     $a1, $zero, 1
/* 57248 80066A48 02000424 */  addiu      $a0, $zero, 2
/* 5724C 80066A4C 0BB2010C */  jal        FUN_8006c82c
/* 57250 80066A50 FD000524 */   addiu     $a1, $zero, 0xfd
/* 57254 80066A54 02000424 */  addiu      $a0, $zero, 2
/* 57258 80066A58 FFFF0524 */  addiu      $a1, $zero, -1
/* 5725C 80066A5C FFFF0624 */  addiu      $a2, $zero, -1
/* 57260 80066A60 FFFF0724 */  addiu      $a3, $zero, -1
/* 57264 80066A64 9CAE010C */  jal        FUN_8006ba70
/* 57268 80066A68 1000B0AF */   sw        $s0, 0x10($sp)
/* 5726C 80066A6C 02000424 */  addiu      $a0, $zero, 2
/* 57270 80066A70 33B1010C */  jal        FUN_8006c4cc
/* 57274 80066A74 21280000 */   addu      $a1, $zero, $zero
/* 57278 80066A78 02000424 */  addiu      $a0, $zero, 2
/* 5727C 80066A7C 81B1010C */  jal        FUN_8006c604
/* 57280 80066A80 FFFF0524 */   addiu     $a1, $zero, -1
/* 57284 80066A84 03000424 */  addiu      $a0, $zero, 3
/* 57288 80066A88 C3B0010C */  jal        FUN_8006c30c
/* 5728C 80066A8C 01000524 */   addiu     $a1, $zero, 1
/* 57290 80066A90 03000424 */  addiu      $a0, $zero, 3
/* 57294 80066A94 0BB2010C */  jal        FUN_8006c82c
/* 57298 80066A98 FD000524 */   addiu     $a1, $zero, 0xfd
/* 5729C 80066A9C 03000424 */  addiu      $a0, $zero, 3
/* 572A0 80066AA0 FFFF0524 */  addiu      $a1, $zero, -1
/* 572A4 80066AA4 FFFF0624 */  addiu      $a2, $zero, -1
/* 572A8 80066AA8 FFFF0724 */  addiu      $a3, $zero, -1
/* 572AC 80066AAC 9CAE010C */  jal        FUN_8006ba70
/* 572B0 80066AB0 1000B0AF */   sw        $s0, 0x10($sp)
/* 572B4 80066AB4 03000424 */  addiu      $a0, $zero, 3
/* 572B8 80066AB8 33B1010C */  jal        FUN_8006c4cc
/* 572BC 80066ABC 21280000 */   addu      $a1, $zero, $zero
/* 572C0 80066AC0 03000424 */  addiu      $a0, $zero, 3
/* 572C4 80066AC4 81B1010C */  jal        FUN_8006c604
/* 572C8 80066AC8 FFFF0524 */   addiu     $a1, $zero, -1
/* 572CC 80066ACC 2800B427 */  addiu      $s4, $sp, 0x28
/* 572D0 80066AD0 40000224 */  addiu      $v0, $zero, 0x40
/* 572D4 80066AD4 0A00E216 */  bne        $s7, $v0, .L80066B00
/* 572D8 80066AD8 2C00B527 */   addiu     $s5, $sp, 0x2c
/* 572DC 80066ADC 2120C002 */  addu       $a0, $s6, $zero
/* 572E0 80066AE0 02000524 */  addiu      $a1, $zero, 2
/* 572E4 80066AE4 21308002 */  addu       $a2, $s4, $zero
/* 572E8 80066AE8 03000724 */  addiu      $a3, $zero, 3
/* 572EC 80066AEC C0FFC227 */  addiu      $v0, $fp, -0x40
/* 572F0 80066AF0 1000B5AF */  sw         $s5, 0x10($sp)
/* 572F4 80066AF4 1400A2AF */  sw         $v0, 0x14($sp)
/* 572F8 80066AF8 658B010C */  jal        FUN_80062d94
/* 572FC 80066AFC 1800B7AF */   sw        $s7, 0x18($sp)
.L80066B00:
/* 57300 80066B00 6666103C */  lui        $s0, 0x6666
/* 57304 80066B04 67661036 */  ori        $s0, $s0, 0x6667
/* 57308 80066B08 1800F002 */  mult       $s7, $s0
/* 5730C 80066B0C 2120C002 */  addu       $a0, $s6, $zero
/* 57310 80066B10 02000524 */  addiu      $a1, $zero, 2
/* 57314 80066B14 21308002 */  addu       $a2, $s4, $zero
/* 57318 80066B18 01000724 */  addiu      $a3, $zero, 1
/* 5731C 80066B1C 3000B327 */  addiu      $s3, $sp, 0x30
/* 57320 80066B20 C3971700 */  sra        $s2, $s7, 0x1f
/* 57324 80066B24 1000B3AF */  sw         $s3, 0x10($sp)
/* 57328 80066B28 1400BEAF */  sw         $fp, 0x14($sp)
/* 5732C 80066B2C 10800000 */  mfhi       $s0
/* 57330 80066B30 43881000 */  sra        $s1, $s0, 1
/* 57334 80066B34 23883202 */  subu       $s1, $s1, $s2
/* 57338 80066B38 5B90010C */  jal        FUN_8006416c
/* 5733C 80066B3C 1800B1AF */   sw        $s1, 0x18($sp)
/* 57340 80066B40 5555023C */  lui        $v0, 0x5555
/* 57344 80066B44 56554234 */  ori        $v0, $v0, 0x5556
/* 57348 80066B48 1800E202 */  mult       $s7, $v0
/* 5734C 80066B4C 2120C002 */  addu       $a0, $s6, $zero
/* 57350 80066B50 02000524 */  addiu      $a1, $zero, 2
/* 57354 80066B54 21308002 */  addu       $a2, $s4, $zero
/* 57358 80066B58 03000724 */  addiu      $a3, $zero, 3
/* 5735C 80066B5C 1000B5AF */  sw         $s5, 0x10($sp)
/* 57360 80066B60 1400BEAF */  sw         $fp, 0x14($sp)
/* 57364 80066B64 10100000 */  mfhi       $v0
/* 57368 80066B68 23105200 */  subu       $v0, $v0, $s2
/* 5736C 80066B6C 6D92010C */  jal        FUN_800649b4
/* 57370 80066B70 1800A2AF */   sw        $v0, 0x18($sp)
/* 57374 80066B74 2120C002 */  addu       $a0, $s6, $zero
/* 57378 80066B78 02000524 */  addiu      $a1, $zero, 2
/* 5737C 80066B7C 2800A68F */  lw         $a2, 0x28($sp)
/* 57380 80066B80 2138C003 */  addu       $a3, $fp, $zero
/* 57384 80066B84 A496010C */  jal        FUN_80065a90
/* 57388 80066B88 1000B1AF */   sw        $s1, 0x10($sp)
/* 5738C 80066B8C 2120C002 */  addu       $a0, $s6, $zero
/* 57390 80066B90 01000524 */  addiu      $a1, $zero, 1
/* 57394 80066B94 21306002 */  addu       $a2, $s3, $zero
/* 57398 80066B98 02000724 */  addiu      $a3, $zero, 2
/* 5739C 80066B9C 2800A2AF */  sw         $v0, 0x28($sp)
/* 573A0 80066BA0 3400A227 */  addiu      $v0, $sp, 0x34
/* 573A4 80066BA4 83801000 */  sra        $s0, $s0, 2
/* 573A8 80066BA8 23801202 */  subu       $s0, $s0, $s2
/* 573AC 80066BAC 1000A2AF */  sw         $v0, 0x10($sp)
/* 573B0 80066BB0 2310D003 */  subu       $v0, $fp, $s0
/* 573B4 80066BB4 2380F002 */  subu       $s0, $s7, $s0
/* 573B8 80066BB8 1400A2AF */  sw         $v0, 0x14($sp)
/* 573BC 80066BBC F893010C */  jal        FUN_80064fe0
/* 573C0 80066BC0 1800B0AF */   sw        $s0, 0x18($sp)
/* 573C4 80066BC4 FF000524 */  addiu      $a1, $zero, 0xff
/* 573C8 80066BC8 80000624 */  addiu      $a2, $zero, 0x80
/* 573CC 80066BCC C0FE0724 */  addiu      $a3, $zero, -0x140
/* 573D0 80066BD0 0000C48E */  lw         $a0, ($s6)
/* 573D4 80066BD4 44FF0224 */  addiu      $v0, $zero, -0xbc
/* 573D8 80066BD8 1000A2AF */  sw         $v0, 0x10($sp)
/* 573DC 80066BDC 34000224 */  addiu      $v0, $zero, 0x34
/* 573E0 80066BE0 80020324 */  addiu      $v1, $zero, 0x280
/* 573E4 80066BE4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 573E8 80066BE8 1380023C */  lui        $v0, %hi(D_80128139)
/* 573EC 80066BEC 2000A3AF */  sw         $v1, 0x20($sp)
/* 573F0 80066BF0 AC010324 */  addiu      $v1, $zero, 0x1ac
/* 573F4 80066BF4 2400A3AF */  sw         $v1, 0x24($sp)
/* 573F8 80066BF8 1380033C */  lui        $v1, %hi(D_801282E0)
/* 573FC 80066BFC 39814890 */  lbu        $t0, %lo(D_80128139)($v0)
/* 57400 80066C00 2800B08F */  lw         $s0, 0x28($sp)
/* 57404 80066C04 E0826324 */  addiu      $v1, $v1, %lo(D_801282E0)
/* 57408 80066C08 1800A0AF */  sw         $zero, 0x18($sp)
/* 5740C 80066C0C C0100800 */  sll        $v0, $t0, 3
/* 57410 80066C10 23104800 */  subu       $v0, $v0, $t0
/* 57414 80066C14 80100200 */  sll        $v0, $v0, 2
/* 57418 80066C18 21104300 */  addu       $v0, $v0, $v1
/* 5741C 80066C1C 3DAD010C */  jal        FUN_8006b4f4
/* 57420 80066C20 1400A2AF */   sw        $v0, 0x14($sp)
/* 57424 80066C24 02000424 */  addiu      $a0, $zero, 2
/* 57428 80066C28 21280002 */  addu       $a1, $s0, $zero
/* 5742C 80066C2C 0000C2AE */  sw         $v0, ($s6)
/* 57430 80066C30 1D6B010C */  jal        FUN_8005ac74
/* 57434 80066C34 2800B0AF */   sw        $s0, 0x28($sp)
/* 57438 80066C38 9157010C */  jal        FUN_80055e44
/* 5743C 80066C3C 02000424 */   addiu     $a0, $zero, 2
/* 57440 80066C40 03000424 */  addiu      $a0, $zero, 3
/* 57444 80066C44 1D6B010C */  jal        FUN_8005ac74
/* 57448 80066C48 21280000 */   addu      $a1, $zero, $zero
/* 5744C 80066C4C 9157010C */  jal        FUN_80055e44
/* 57450 80066C50 03000424 */   addiu     $a0, $zero, 3
/* 57454 80066C54 3000A58F */  lw         $a1, 0x30($sp)
/* 57458 80066C58 15B1010C */  jal        FUN_8006c454
/* 5745C 80066C5C 01000424 */   addiu     $a0, $zero, 1
/* 57460 80066C60 EAAE010C */  jal        FUN_8006bba8
/* 57464 80066C64 01000424 */   addiu     $a0, $zero, 1
/* 57468 80066C68 3400A58F */  lw         $a1, 0x34($sp)
/* 5746C 80066C6C 15B1010C */  jal        FUN_8006c454
/* 57470 80066C70 02000424 */   addiu     $a0, $zero, 2
/* 57474 80066C74 EAAE010C */  jal        FUN_8006bba8
/* 57478 80066C78 02000424 */   addiu     $a0, $zero, 2
/* 5747C 80066C7C 2C00A58F */  lw         $a1, 0x2c($sp)
/* 57480 80066C80 15B1010C */  jal        FUN_8006c454
/* 57484 80066C84 03000424 */   addiu     $a0, $zero, 3
/* 57488 80066C88 EAAE010C */  jal        FUN_8006bba8
/* 5748C 80066C8C 03000424 */   addiu     $a0, $zero, 3
/* 57490 80066C90 5C00BF8F */  lw         $ra, 0x5c($sp)
/* 57494 80066C94 5800BE8F */  lw         $fp, 0x58($sp)
/* 57498 80066C98 5400B78F */  lw         $s7, 0x54($sp)
/* 5749C 80066C9C 5000B68F */  lw         $s6, 0x50($sp)
/* 574A0 80066CA0 4C00B58F */  lw         $s5, 0x4c($sp)
/* 574A4 80066CA4 4800B48F */  lw         $s4, 0x48($sp)
/* 574A8 80066CA8 4400B38F */  lw         $s3, 0x44($sp)
/* 574AC 80066CAC 4000B28F */  lw         $s2, 0x40($sp)
/* 574B0 80066CB0 3C00B18F */  lw         $s1, 0x3c($sp)
/* 574B4 80066CB4 3800B08F */  lw         $s0, 0x38($sp)
/* 574B8 80066CB8 0800E003 */  jr         $ra
/* 574BC 80066CBC 6000BD27 */   addiu     $sp, $sp, 0x60
