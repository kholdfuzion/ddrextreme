.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005b984
/* 4C184 8005B984 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 4C188 8005B988 7C00A88F */  lw         $t0, 0x7c($sp)
/* 4C18C 8005B98C 7800A98F */  lw         $t1, 0x78($sp)
/* 4C190 8005B990 4C00B3AF */  sw         $s3, 0x4c($sp)
/* 4C194 8005B994 2198A000 */  addu       $s3, $a1, $zero
/* 4C198 8005B998 5000B4AF */  sw         $s4, 0x50($sp)
/* 4C19C 8005B99C 21A0C000 */  addu       $s4, $a2, $zero
/* 4C1A0 8005B9A0 6400BFAF */  sw         $ra, 0x64($sp)
/* 4C1A4 8005B9A4 6000BEAF */  sw         $fp, 0x60($sp)
/* 4C1A8 8005B9A8 5C00B7AF */  sw         $s7, 0x5c($sp)
/* 4C1AC 8005B9AC 5800B6AF */  sw         $s6, 0x58($sp)
/* 4C1B0 8005B9B0 5400B5AF */  sw         $s5, 0x54($sp)
/* 4C1B4 8005B9B4 4800B2AF */  sw         $s2, 0x48($sp)
/* 4C1B8 8005B9B8 4400B1AF */  sw         $s1, 0x44($sp)
/* 4C1BC 8005B9BC 4000B0AF */  sw         $s0, 0x40($sp)
/* 4C1C0 8005B9C0 6800A4AF */  sw         $a0, 0x68($sp)
/* 4C1C4 8005B9C4 C2110800 */  srl        $v0, $t0, 7
/* 4C1C8 8005B9C8 01004230 */  andi       $v0, $v0, 1
/* 4C1CC 8005B9CC 08004010 */  beqz       $v0, .L8005B9F0
/* 4C1D0 8005B9D0 7400A7AF */   sw        $a3, 0x74($sp)
/* 4C1D4 8005B9D4 8000A28F */  lw         $v0, 0x80($sp)
/* 4C1D8 8005B9D8 1000A9AF */  sw         $t1, 0x10($sp)
/* 4C1DC 8005B9DC 1400A8AF */  sw         $t0, 0x14($sp)
/* 4C1E0 8005B9E0 AA6F010C */  jal        FUN_8005bea8
/* 4C1E4 8005B9E4 1800A2AF */   sw        $v0, 0x18($sp)
/* 4C1E8 8005B9E8 FE6E0108 */  j          .L8005BBF8
/* 4C1EC 8005B9EC 00000000 */   nop
.L8005B9F0:
/* 4C1F0 8005B9F0 0F000331 */  andi       $v1, $t0, 0xf
/* 4C1F4 8005B9F4 80300300 */  sll        $a2, $v1, 2
/* 4C1F8 8005B9F8 0180023C */  lui        $v0, %hi(D_800140F8)
/* 4C1FC 8005B9FC F8404224 */  addiu      $v0, $v0, %lo(D_800140F8)
/* 4C200 8005BA00 2110C200 */  addu       $v0, $a2, $v0
/* 4C204 8005BA04 1380043C */  lui        $a0, 0x8013
/* 4C208 8005BA08 00005E8C */  lw         $fp, ($v0)
/* 4C20C 8005BA0C 0180023C */  lui        $v0, %hi(D_80014038)
/* 4C210 8005BA10 38404224 */  addiu      $v0, $v0, %lo(D_80014038)
/* 4C214 8005BA14 2110C200 */  addu       $v0, $a2, $v0
/* 4C218 8005BA18 0000438C */  lw         $v1, ($v0)
/* 4C21C 8005BA1C E0808424 */  addiu      $a0, $a0, -0x7f20
/* 4C220 8005BA20 21186400 */  addu       $v1, $v1, $a0
/* 4C224 8005BA24 00006290 */  lbu        $v0, ($v1)
/* 4C228 8005BA28 FFFFC327 */  addiu      $v1, $fp, -1
/* 4C22C 8005BA2C 2800A3AF */  sw         $v1, 0x28($sp)
/* 4C230 8005BA30 0180033C */  lui        $v1, %hi(D_80014078)
/* 4C234 8005BA34 78406324 */  addiu      $v1, $v1, %lo(D_80014078)
/* 4C238 8005BA38 2118C300 */  addu       $v1, $a2, $v1
/* 4C23C 8005BA3C 0000778C */  lw         $s7, ($v1)
/* 4C240 8005BA40 C0200200 */  sll        $a0, $v0, 3
/* 4C244 8005BA44 23208200 */  subu       $a0, $a0, $v0
/* 4C248 8005BA48 80200400 */  sll        $a0, $a0, 2
/* 4C24C 8005BA4C 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4C250 8005BA50 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4C254 8005BA54 21B08200 */  addu       $s6, $a0, $v0
/* 4C258 8005BA58 0D000224 */  addiu      $v0, $zero, 0xd
/* 4C25C 8005BA5C 0300C217 */  bne        $fp, $v0, .L8005BA6C
/* 4C260 8005BA60 00000000 */   nop
/* 4C264 8005BA64 10001E24 */  addiu      $fp, $zero, 0x10
/* 4C268 8005BA68 2800A2AF */  sw         $v0, 0x28($sp)
.L8005BA6C:
/* 4C26C 8005BA6C 02110800 */  srl        $v0, $t0, 4
/* 4C270 8005BA70 03004230 */  andi       $v0, $v0, 3
/* 4C274 8005BA74 FFFF4224 */  addiu      $v0, $v0, -1
/* 4C278 8005BA78 021A0800 */  srl        $v1, $t0, 8
/* 4C27C 8005BA7C FF006330 */  andi       $v1, $v1, 0xff
/* 4C280 8005BA80 3400A2AF */  sw         $v0, 0x34($sp)
/* 4C284 8005BA84 02140800 */  srl        $v0, $t0, 0x10
/* 4C288 8005BA88 FF004230 */  andi       $v0, $v0, 0xff
/* 4C28C 8005BA8C 2000A3AF */  sw         $v1, 0x20($sp)
/* 4C290 8005BA90 021D0800 */  srl        $v1, $t0, 0x14
/* 4C294 8005BA94 F0006330 */  andi       $v1, $v1, 0xf0
/* 4C298 8005BA98 2400A2AF */  sw         $v0, 0x24($sp)
/* 4C29C 8005BA9C 0180023C */  lui        $v0, %hi(D_800140B8)
/* 4C2A0 8005BAA0 B8404224 */  addiu      $v0, $v0, %lo(D_800140B8)
/* 4C2A4 8005BAA4 2110C200 */  addu       $v0, $a2, $v0
/* 4C2A8 8005BAA8 1600C486 */  lh         $a0, 0x16($s6)
/* 4C2AC 8005BAAC 0000458C */  lw         $a1, ($v0)
/* 4C2B0 8005BAB0 2000A28F */  lw         $v0, 0x20($sp)
/* 4C2B4 8005BAB4 21208300 */  addu       $a0, $a0, $v1
/* 4C2B8 8005BAB8 21A84500 */  addu       $s5, $v0, $a1
/* 4C2BC 8005BABC 0180033C */  lui        $v1, %hi(D_80014138)
/* 4C2C0 8005BAC0 38416324 */  addiu      $v1, $v1, %lo(D_80014138)
/* 4C2C4 8005BAC4 2118C300 */  addu       $v1, $a2, $v1
/* 4C2C8 8005BAC8 0180023C */  lui        $v0, %hi(D_80014178)
/* 4C2CC 8005BACC 78414224 */  addiu      $v0, $v0, %lo(D_80014178)
/* 4C2D0 8005BAD0 2110C200 */  addu       $v0, $a2, $v0
/* 4C2D4 8005BAD4 2C00A4AF */  sw         $a0, 0x2c($sp)
/* 4C2D8 8005BAD8 0400C686 */  lh         $a2, 4($s6)
/* 4C2DC 8005BADC 0000648C */  lw         $a0, ($v1)
/* 4C2E0 8005BAE0 0600C586 */  lh         $a1, 6($s6)
/* 4C2E4 8005BAE4 0000438C */  lw         $v1, ($v0)
/* 4C2E8 8005BAE8 2130C400 */  addu       $a2, $a2, $a0
/* 4C2EC 8005BAEC 2128A300 */  addu       $a1, $a1, $v1
/* 4C2F0 8005BAF0 3800A6AF */  sw         $a2, 0x38($sp)
/* 4C2F4 8005BAF4 3C00A5AF */  sw         $a1, 0x3c($sp)
/* 4C2F8 8005BAF8 00002291 */  lbu        $v0, ($t1)
/* 4C2FC 8005BAFC 1800C386 */  lh         $v1, 0x18($s6)
/* 4C300 8005BB00 21906002 */  addu       $s2, $s3, $zero
/* 4C304 8005BB04 39004010 */  beqz       $v0, .L8005BBEC
/* 4C308 8005BB08 3000A3AF */   sw        $v1, 0x30($sp)
/* 4C30C 8005BB0C 21882001 */  addu       $s1, $t1, $zero
/* 4C310 8005BB10 00002292 */  lbu        $v0, ($s1)
.L8005BB14:
/* 4C314 8005BB14 00000000 */  nop
/* 4C318 8005BB18 E0FF5024 */  addiu      $s0, $v0, -0x20
/* 4C31C 8005BB1C 1F000012 */  beqz       $s0, .L8005BB9C
/* 4C320 8005BB20 21286002 */   addu      $a1, $s3, $zero
/* 4C324 8005BB24 6800A48F */  lw         $a0, 0x68($sp)
/* 4C328 8005BB28 7400A78F */  lw         $a3, 0x74($sp)
/* 4C32C 8005BB2C 2000A28F */  lw         $v0, 0x20($sp)
/* 4C330 8005BB30 2400A38F */  lw         $v1, 0x24($sp)
/* 4C334 8005BB34 21308002 */  addu       $a2, $s4, $zero
/* 4C338 8005BB38 1000A2AF */  sw         $v0, 0x10($sp)
/* 4C33C 8005BB3C FFFF6224 */  addiu      $v0, $v1, -1
/* 4C340 8005BB40 976D010C */  jal        FUN_8005b65c
/* 4C344 8005BB44 1400A2AF */   sw        $v0, 0x14($sp)
/* 4C348 8005BB48 03311000 */  sra        $a2, $s0, 4
/* 4C34C 8005BB4C 1800E602 */  mult       $s7, $a2
/* 4C350 8005BB50 0F000732 */  andi       $a3, $s0, 0xf
/* 4C354 8005BB54 6800A48F */  lw         $a0, 0x68($sp)
/* 4C358 8005BB58 12300000 */  mflo       $a2
/* 4C35C 8005BB5C 0C00C286 */  lh         $v0, 0xc($s6)
/* 4C360 8005BB60 2800A38F */  lw         $v1, 0x28($sp)
/* 4C364 8005BB64 1800C703 */  mult       $fp, $a3
/* 4C368 8005BB68 1400A3AF */  sw         $v1, 0x14($sp)
/* 4C36C 8005BB6C 3400A38F */  lw         $v1, 0x34($sp)
/* 4C370 8005BB70 1800A2AF */  sw         $v0, 0x18($sp)
/* 4C374 8005BB74 3800A28F */  lw         $v0, 0x38($sp)
/* 4C378 8005BB78 21286002 */  addu       $a1, $s3, $zero
/* 4C37C 8005BB7C 1000B7AF */  sw         $s7, 0x10($sp)
/* 4C380 8005BB80 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 4C384 8005BB84 3C00A38F */  lw         $v1, 0x3c($sp)
/* 4C388 8005BB88 21304600 */  addu       $a2, $v0, $a2
/* 4C38C 8005BB8C 12380000 */  mflo       $a3
/* 4C390 8005BB90 1769010C */  jal        FUN_8005a45c
/* 4C394 8005BB94 21386700 */   addu      $a3, $v1, $a3
/* 4C398 8005BB98 01007326 */  addiu      $s3, $s3, 1
.L8005BB9C:
/* 4C39C 8005BB9C 01003126 */  addiu      $s1, $s1, 1
/* 4C3A0 8005BBA0 00002292 */  lbu        $v0, ($s1)
/* 4C3A4 8005BBA4 00000000 */  nop
/* 4C3A8 8005BBA8 DAFF4014 */  bnez       $v0, .L8005BB14
/* 4C3AC 8005BBAC 21A09502 */   addu      $s4, $s4, $s5
/* 4C3B0 8005BBB0 FC6E0108 */  j          .L8005BBF0
/* 4C3B4 8005BBB4 2A105302 */   slt       $v0, $s2, $s3
.L8005BBB8:
/* 4C3B8 8005BBB8 6800A48F */  lw         $a0, 0x68($sp)
/* 4C3BC 8005BBBC 2C00A68F */  lw         $a2, 0x2c($sp)
/* 4C3C0 8005BBC0 3000A78F */  lw         $a3, 0x30($sp)
/* 4C3C4 8005BBC4 396D010C */  jal        FUN_8005b4e4
/* 4C3C8 8005BBC8 21284002 */   addu      $a1, $s2, $zero
/* 4C3CC 8005BBCC 21284002 */  addu       $a1, $s2, $zero
/* 4C3D0 8005BBD0 8000A28F */  lw         $v0, 0x80($sp)
/* 4C3D4 8005BBD4 6800A48F */  lw         $a0, 0x68($sp)
/* 4C3D8 8005BBD8 21304000 */  addu       $a2, $v0, $zero
/* 4C3DC 8005BBDC 21384000 */  addu       $a3, $v0, $zero
/* 4C3E0 8005BBE0 EB6C010C */  jal        FUN_8005b3ac
/* 4C3E4 8005BBE4 1000A2AF */   sw        $v0, 0x10($sp)
/* 4C3E8 8005BBE8 01005226 */  addiu      $s2, $s2, 1
.L8005BBEC:
/* 4C3EC 8005BBEC 2A105302 */  slt        $v0, $s2, $s3
.L8005BBF0:
/* 4C3F0 8005BBF0 F1FF4014 */  bnez       $v0, .L8005BBB8
/* 4C3F4 8005BBF4 21106002 */   addu      $v0, $s3, $zero
.L8005BBF8:
/* 4C3F8 8005BBF8 6400BF8F */  lw         $ra, 0x64($sp)
/* 4C3FC 8005BBFC 6000BE8F */  lw         $fp, 0x60($sp)
/* 4C400 8005BC00 5C00B78F */  lw         $s7, 0x5c($sp)
/* 4C404 8005BC04 5800B68F */  lw         $s6, 0x58($sp)
/* 4C408 8005BC08 5400B58F */  lw         $s5, 0x54($sp)
/* 4C40C 8005BC0C 5000B48F */  lw         $s4, 0x50($sp)
/* 4C410 8005BC10 4C00B38F */  lw         $s3, 0x4c($sp)
/* 4C414 8005BC14 4800B28F */  lw         $s2, 0x48($sp)
/* 4C418 8005BC18 4400B18F */  lw         $s1, 0x44($sp)
/* 4C41C 8005BC1C 4000B08F */  lw         $s0, 0x40($sp)
/* 4C420 8005BC20 0800E003 */  jr         $ra
/* 4C424 8005BC24 6800BD27 */   addiu     $sp, $sp, 0x68
