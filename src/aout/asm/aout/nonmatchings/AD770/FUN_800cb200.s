.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb200
/* BBA00 800CB200 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BBA04 800CB204 1800B0AF */  sw         $s0, 0x18($sp)
/* BBA08 800CB208 21800000 */  addu       $s0, $zero, $zero
/* BBA0C 800CB20C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BBA10 800CB210 6DF0020C */  jal        FUN_800bc1b4
/* BBA14 800CB214 21200002 */   addu      $a0, $s0, $zero
/* BBA18 800CB218 21100002 */  addu       $v0, $s0, $zero
/* BBA1C 800CB21C FFFF4224 */  addiu      $v0, $v0, -1
.L800CB220:
/* BBA20 800CB220 FFFF4104 */  bgez       $v0, .L800CB220
/* BBA24 800CB224 FFFF4224 */   addiu     $v0, $v0, -1
/* BBA28 800CB228 21200000 */  addu       $a0, $zero, $zero
/* BBA2C 800CB22C 6A1F023C */  lui        $v0, 0x1f6a
/* BBA30 800CB230 000040A4 */  sh         $zero, ($v0)
/* BBA34 800CB234 00004394 */  lhu        $v1, ($v0)
/* BBA38 800CB238 2080023C */  lui        $v0, %hi(D_801FBCA0)
/* BBA3C 800CB23C A0BC40A4 */  sh         $zero, %lo(D_801FBCA0)($v0)
/* BBA40 800CB240 1000A3A7 */  sh         $v1, 0x10($sp)
/* BBA44 800CB244 FFFF8424 */  addiu      $a0, $a0, -1
.L800CB248:
/* BBA48 800CB248 FFFF8104 */  bgez       $a0, .L800CB248
/* BBA4C 800CB24C FFFF8424 */   addiu     $a0, $a0, -1
/* BBA50 800CB250 21280000 */  addu       $a1, $zero, $zero
/* BBA54 800CB254 04000424 */  addiu      $a0, $zero, 4
/* BBA58 800CB258 6A1F023C */  lui        $v0, 0x1f6a
/* BBA5C 800CB25C 000044A4 */  sh         $a0, ($v0)
/* BBA60 800CB260 00004394 */  lhu        $v1, ($v0)
/* BBA64 800CB264 2080023C */  lui        $v0, %hi(D_801FBCA0)
/* BBA68 800CB268 A0BC44A4 */  sh         $a0, %lo(D_801FBCA0)($v0)
/* BBA6C 800CB26C 1000A3A7 */  sh         $v1, 0x10($sp)
/* BBA70 800CB270 FFFFA524 */  addiu      $a1, $a1, -1
.L800CB274:
/* BBA74 800CB274 FFFFA104 */  bgez       $a1, .L800CB274
/* BBA78 800CB278 FFFFA524 */   addiu     $a1, $a1, -1
/* BBA7C 800CB27C 0100A524 */  addiu      $a1, $a1, 1
/* BBA80 800CB280 21500000 */  addu       $t2, $zero, $zero
/* BBA84 800CB284 08000B24 */  addiu      $t3, $zero, 8
/* BBA88 800CB288 2080023C */  lui        $v0, 0x8020
/* BBA8C 800CB28C 21404000 */  addu       $t0, $v0, $zero
/* BBA90 800CB290 6A1F023C */  lui        $v0, 0x1f6a
/* BBA94 800CB294 21384000 */  addu       $a3, $v0, $zero
/* BBA98 800CB298 0A000C24 */  addiu      $t4, $zero, 0xa
/* BBA9C 800CB29C 401F0E3C */  lui        $t6, 0x1f40
/* BBAA0 800CB2A0 0000E0A4 */  sh         $zero, ($a3)
/* BBAA4 800CB2A4 0000E294 */  lhu        $v0, ($a3)
/* BBAA8 800CB2A8 07000D24 */  addiu      $t5, $zero, 7
/* BBAAC 800CB2AC A0BC00A5 */  sh         $zero, -0x4360($t0)
/* BBAB0 800CB2B0 1000A2A7 */  sh         $v0, 0x10($sp)
/* BBAB4 800CB2B4 21100000 */  addu       $v0, $zero, $zero
.L800CB2B8:
/* BBAB8 800CB2B8 FFFF4224 */  addiu      $v0, $v0, -1
.L800CB2BC:
/* BBABC 800CB2BC FFFF4104 */  bgez       $v0, .L800CB2BC
/* BBAC0 800CB2C0 FFFF4224 */   addiu     $v0, $v0, -1
/* BBAC4 800CB2C4 0000EBA4 */  sh         $t3, ($a3)
/* BBAC8 800CB2C8 0000E294 */  lhu        $v0, ($a3)
/* BBACC 800CB2CC 21180000 */  addu       $v1, $zero, $zero
/* BBAD0 800CB2D0 A0BC0BA5 */  sh         $t3, -0x4360($t0)
/* BBAD4 800CB2D4 1000A2A7 */  sh         $v0, 0x10($sp)
/* BBAD8 800CB2D8 FFFF6324 */  addiu      $v1, $v1, -1
.L800CB2DC:
/* BBADC 800CB2DC FFFF6104 */  bgez       $v1, .L800CB2DC
/* BBAE0 800CB2E0 FFFF6324 */   addiu     $v1, $v1, -1
/* BBAE4 800CB2E4 0000ECA4 */  sh         $t4, ($a3)
/* BBAE8 800CB2E8 0000E294 */  lhu        $v0, ($a3)
/* BBAEC 800CB2EC 21180000 */  addu       $v1, $zero, $zero
/* BBAF0 800CB2F0 A0BC0CA5 */  sh         $t4, -0x4360($t0)
/* BBAF4 800CB2F4 1000A2A7 */  sh         $v0, 0x10($sp)
/* BBAF8 800CB2F8 FFFF6324 */  addiu      $v1, $v1, -1
.L800CB2FC:
/* BBAFC 800CB2FC FFFF6104 */  bgez       $v1, .L800CB2FC
/* BBB00 800CB300 FFFF6324 */   addiu     $v1, $v1, -1
/* BBB04 800CB304 0000EBA4 */  sh         $t3, ($a3)
/* BBB08 800CB308 0000E294 */  lhu        $v0, ($a3)
/* BBB0C 800CB30C 21180000 */  addu       $v1, $zero, $zero
/* BBB10 800CB310 A0BC0BA5 */  sh         $t3, -0x4360($t0)
/* BBB14 800CB314 1000A2A7 */  sh         $v0, 0x10($sp)
/* BBB18 800CB318 FFFF6324 */  addiu      $v1, $v1, -1
.L800CB31C:
/* BBB1C 800CB31C FFFF6104 */  bgez       $v1, .L800CB31C
/* BBB20 800CB320 FFFF6324 */   addiu     $v1, $v1, -1
/* BBB24 800CB324 0000E0A4 */  sh         $zero, ($a3)
/* BBB28 800CB328 0000E294 */  lhu        $v0, ($a3)
/* BBB2C 800CB32C 21180000 */  addu       $v1, $zero, $zero
/* BBB30 800CB330 A0BC00A5 */  sh         $zero, -0x4360($t0)
/* BBB34 800CB334 1000A2A7 */  sh         $v0, 0x10($sp)
/* BBB38 800CB338 FFFF6324 */  addiu      $v1, $v1, -1
.L800CB33C:
/* BBB3C 800CB33C FFFF6104 */  bgez       $v1, .L800CB33C
/* BBB40 800CB340 FFFF6324 */   addiu     $v1, $v1, -1
/* BBB44 800CB344 21180000 */  addu       $v1, $zero, $zero
/* BBB48 800CB348 21306000 */  addu       $a2, $v1, $zero
/* BBB4C 800CB34C 21286000 */  addu       $a1, $v1, $zero
/* BBB50 800CB350 02000924 */  addiu      $t1, $zero, 2
.L800CB354:
/* BBB54 800CB354 0000E9A4 */  sh         $t1, ($a3)
/* BBB58 800CB358 0000E294 */  lhu        $v0, ($a3)
/* BBB5C 800CB35C 21200000 */  addu       $a0, $zero, $zero
/* BBB60 800CB360 A0BC09A5 */  sh         $t1, -0x4360($t0)
/* BBB64 800CB364 1000A2A7 */  sh         $v0, 0x10($sp)
/* BBB68 800CB368 FFFF8424 */  addiu      $a0, $a0, -1
.L800CB36C:
/* BBB6C 800CB36C FFFF8104 */  bgez       $a0, .L800CB36C
/* BBB70 800CB370 FFFF8424 */   addiu     $a0, $a0, -1
/* BBB74 800CB374 2120A000 */  addu       $a0, $a1, $zero
/* BBB78 800CB378 0600C295 */  lhu        $v0, 6($t6)
/* BBB7C 800CB37C 42180300 */  srl        $v1, $v1, 1
/* BBB80 800CB380 40110200 */  sll        $v0, $v0, 5
/* BBB84 800CB384 80004230 */  andi       $v0, $v0, 0x80
/* BBB88 800CB388 0200A104 */  bgez       $a1, .L800CB394
/* BBB8C 800CB38C 25186200 */   or        $v1, $v1, $v0
/* BBB90 800CB390 0700A424 */  addiu      $a0, $a1, 7
.L800CB394:
/* BBB94 800CB394 C3100400 */  sra        $v0, $a0, 3
/* BBB98 800CB398 C0100200 */  sll        $v0, $v0, 3
/* BBB9C 800CB39C 2310A200 */  subu       $v0, $a1, $v0
/* BBBA0 800CB3A0 03004D14 */  bne        $v0, $t5, .L800CB3B0
/* BBBA4 800CB3A4 00120600 */   sll       $v0, $a2, 8
/* BBBA8 800CB3A8 25304300 */  or         $a2, $v0, $v1
/* BBBAC 800CB3AC 21180000 */  addu       $v1, $zero, $zero
.L800CB3B0:
/* BBBB0 800CB3B0 0000E0A4 */  sh         $zero, ($a3)
/* BBBB4 800CB3B4 0000E294 */  lhu        $v0, ($a3)
/* BBBB8 800CB3B8 21200000 */  addu       $a0, $zero, $zero
/* BBBBC 800CB3BC A0BC00A5 */  sh         $zero, -0x4360($t0)
/* BBBC0 800CB3C0 1000A2A7 */  sh         $v0, 0x10($sp)
/* BBBC4 800CB3C4 FFFF8424 */  addiu      $a0, $a0, -1
.L800CB3C8:
/* BBBC8 800CB3C8 FFFF8104 */  bgez       $a0, .L800CB3C8
/* BBBCC 800CB3CC FFFF8424 */   addiu     $a0, $a0, -1
/* BBBD0 800CB3D0 01008424 */  addiu      $a0, $a0, 1
/* BBBD4 800CB3D4 0100A524 */  addiu      $a1, $a1, 1
/* BBBD8 800CB3D8 2000A228 */  slti       $v0, $a1, 0x20
/* BBBDC 800CB3DC DDFF4014 */  bnez       $v0, .L800CB354
/* BBBE0 800CB3E0 5519023C */   lui       $v0, 0x1955
/* BBBE4 800CB3E4 55AA4234 */  ori        $v0, $v0, 0xaa55
/* BBBE8 800CB3E8 0300C214 */  bne        $a2, $v0, .L800CB3F8
/* BBBEC 800CB3EC 0019023C */   lui       $v0, 0x1900
/* BBBF0 800CB3F0 072D0308 */  j          .L800CB41C
/* BBBF4 800CB3F4 01001024 */   addiu     $s0, $zero, 1
.L800CB3F8:
/* BBBF8 800CB3F8 55AA4234 */  ori        $v0, $v0, 0xaa55
/* BBBFC 800CB3FC 0300C214 */  bne        $a2, $v0, .L800CB40C
/* BBC00 800CB400 00000000 */   nop
/* BBC04 800CB404 072D0308 */  j          .L800CB41C
/* BBC08 800CB408 02001024 */   addiu     $s0, $zero, 2
.L800CB40C:
/* BBC0C 800CB40C 01004A25 */  addiu      $t2, $t2, 1
/* BBC10 800CB410 03004229 */  slti       $v0, $t2, 3
/* BBC14 800CB414 A8FF4014 */  bnez       $v0, .L800CB2B8
/* BBC18 800CB418 21100000 */   addu      $v0, $zero, $zero
.L800CB41C:
/* BBC1C 800CB41C 04000424 */  addiu      $a0, $zero, 4
/* BBC20 800CB420 6A1F023C */  lui        $v0, 0x1f6a
/* BBC24 800CB424 000044A4 */  sh         $a0, ($v0)
/* BBC28 800CB428 00004394 */  lhu        $v1, ($v0)
/* BBC2C 800CB42C 2080023C */  lui        $v0, %hi(D_801FBCA0)
/* BBC30 800CB430 A0BC44A4 */  sh         $a0, %lo(D_801FBCA0)($v0)
/* BBC34 800CB434 21100002 */  addu       $v0, $s0, $zero
/* BBC38 800CB438 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BBC3C 800CB43C 1800B08F */  lw         $s0, 0x18($sp)
/* BBC40 800CB440 1000A3A7 */  sh         $v1, 0x10($sp)
/* BBC44 800CB444 0800E003 */  jr         $ra
/* BBC48 800CB448 2000BD27 */   addiu     $sp, $sp, 0x20
