.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b07c
/* 5B87C 8006B07C 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 5B880 8006B080 8400B5AF */  sw         $s5, 0x84($sp)
/* 5B884 8006B084 C400B58F */  lw         $s5, 0xc4($sp)
/* 5B888 8006B088 C800AD8F */  lw         $t5, 0xc8($sp)
/* 5B88C 8006B08C C000AF8F */  lw         $t7, 0xc0($sp)
/* 5B890 8006B090 CC00A28F */  lw         $v0, 0xcc($sp)
/* 5B894 8006B094 21588000 */  addu       $t3, $a0, $zero
/* 5B898 8006B098 9400BFAF */  sw         $ra, 0x94($sp)
/* 5B89C 8006B09C 9000BEAF */  sw         $fp, 0x90($sp)
/* 5B8A0 8006B0A0 8C00B7AF */  sw         $s7, 0x8c($sp)
/* 5B8A4 8006B0A4 8800B6AF */  sw         $s6, 0x88($sp)
/* 5B8A8 8006B0A8 8000B4AF */  sw         $s4, 0x80($sp)
/* 5B8AC 8006B0AC 7C00B3AF */  sw         $s3, 0x7c($sp)
/* 5B8B0 8006B0B0 7800B2AF */  sw         $s2, 0x78($sp)
/* 5B8B4 8006B0B4 7400B1AF */  sw         $s1, 0x74($sp)
/* 5B8B8 8006B0B8 7000B0AF */  sw         $s0, 0x70($sp)
/* 5B8BC 8006B0BC 9C00A5AF */  sw         $a1, 0x9c($sp)
/* 5B8C0 8006B0C0 A000A6AF */  sw         $a2, 0xa0($sp)
/* 5B8C4 8006B0C4 05004104 */  bgez       $v0, .L8006B0DC
/* 5B8C8 8006B0C8 A400A7AF */   sw        $a3, 0xa4($sp)
/* 5B8CC 8006B0CC 0800E385 */  lh         $v1, 8($t7)
/* 5B8D0 8006B0D0 00000000 */  nop
/* 5B8D4 8006B0D4 B800A3AF */  sw         $v1, 0xb8($sp)
/* 5B8D8 8006B0D8 CC00A3AF */  sw         $v1, 0xcc($sp)
.L8006B0DC:
/* 5B8DC 8006B0DC D000A48F */  lw         $a0, 0xd0($sp)
/* 5B8E0 8006B0E0 00000000 */  nop
/* 5B8E4 8006B0E4 05008104 */  bgez       $a0, .L8006B0FC
/* 5B8E8 8006B0E8 00000000 */   nop
/* 5B8EC 8006B0EC 0A00E585 */  lh         $a1, 0xa($t7)
/* 5B8F0 8006B0F0 00000000 */  nop
/* 5B8F4 8006B0F4 BC00A5AF */  sw         $a1, 0xbc($sp)
/* 5B8F8 8006B0F8 D000A5AF */  sw         $a1, 0xd0($sp)
.L8006B0FC:
/* 5B8FC 8006B0FC 0400EC91 */  lbu        $t4, 4($t7)
/* 5B900 8006B100 CC00AA8F */  lw         $t2, 0xcc($sp)
/* 5B904 8006B104 4C00A0AF */  sw         $zero, 0x4c($sp)
/* 5B908 8006B108 0600E391 */  lbu        $v1, 6($t7)
/* 5B90C 8006B10C D000A58F */  lw         $a1, 0xd0($sp)
/* 5B910 8006B110 21209501 */  addu       $a0, $t4, $s5
/* 5B914 8006B114 21108A00 */  addu       $v0, $a0, $t2
/* 5B918 8006B118 FF004224 */  addiu      $v0, $v0, 0xff
/* 5B91C 8006B11C 03920200 */  sra        $s2, $v0, 8
/* 5B920 8006B120 4800A3AF */  sw         $v1, 0x48($sp)
/* 5B924 8006B124 21186D00 */  addu       $v1, $v1, $t5
/* 5B928 8006B128 21106500 */  addu       $v0, $v1, $a1
/* 5B92C 8006B12C FF004224 */  addiu      $v0, $v0, 0xff
/* 5B930 8006B130 03BA0200 */  sra        $s7, $v0, 8
/* 5B934 8006B134 034A0400 */  sra        $t1, $a0, 8
/* 5B938 8006B138 00520900 */  sll        $t2, $t1, 8
/* 5B93C 8006B13C 23A8AA02 */  subu       $s5, $s5, $t2
/* 5B940 8006B140 23904902 */  subu       $s2, $s2, $t1
/* 5B944 8006B144 03320300 */  sra        $a2, $v1, 8
/* 5B948 8006B148 00120600 */  sll        $v0, $a2, 8
/* 5B94C 8006B14C 2368A201 */  subu       $t5, $t5, $v0
/* 5B950 8006B150 B800A38F */  lw         $v1, 0xb8($sp)
/* 5B954 8006B154 CC00A48F */  lw         $a0, 0xcc($sp)
/* 5B958 8006B158 23B8E602 */  subu       $s7, $s7, $a2
/* 5B95C 8006B15C 4000AAAF */  sw         $t2, 0x40($sp)
/* 5B960 8006B160 05006414 */  bne        $v1, $a0, .L8006B178
/* 5B964 8006B164 4400A2AF */   sw        $v0, 0x44($sp)
/* 5B968 8006B168 BC00AA8F */  lw         $t2, 0xbc($sp)
/* 5B96C 8006B16C 00000000 */  nop
/* 5B970 8006B170 03004511 */  beq        $t2, $a1, .L8006B180
/* 5B974 8006B174 00000000 */   nop
.L8006B178:
/* 5B978 8006B178 01000224 */  addiu      $v0, $zero, 1
/* 5B97C 8006B17C 4C00A2AF */  sw         $v0, 0x4c($sp)
.L8006B180:
/* 5B980 8006B180 A100E01A */  blez       $s7, .L8006B408
/* 5B984 8006B184 21200000 */   addu      $a0, $zero, $zero
/* 5B988 8006B188 4800A38F */  lw         $v1, 0x48($sp)
/* 5B98C 8006B18C 00010E24 */  addiu      $t6, $zero, 0x100
/* 5B990 8006B190 23180300 */  negu       $v1, $v1
/* 5B994 8006B194 5400A3AF */  sw         $v1, 0x54($sp)
/* 5B998 8006B198 21300000 */  addu       $a2, $zero, $zero
.L8006B19C:
/* 5B99C 8006B19C 21400000 */  addu       $t0, $zero, $zero
/* 5B9A0 8006B1A0 4800AA8F */  lw         $t2, 0x48($sp)
/* 5B9A4 8006B1A4 21380000 */  addu       $a3, $zero, $zero
/* 5B9A8 8006B1A8 04008014 */  bnez       $a0, .L8006B1BC
/* 5B9AC 8006B1AC 23280A00 */   negu      $a1, $t2
/* 5B9B0 8006B1B0 2130A001 */  addu       $a2, $t5, $zero
/* 5B9B4 8006B1B4 21280000 */  addu       $a1, $zero, $zero
/* 5B9B8 8006B1B8 5400A78F */  lw         $a3, 0x54($sp)
.L8006B1BC:
/* 5B9BC 8006B1BC FFFFE226 */  addiu      $v0, $s7, -1
/* 5B9C0 8006B1C0 08008214 */  bne        $a0, $v0, .L8006B1E4
/* 5B9C4 8006B1C4 01000224 */   addiu     $v0, $zero, 1
/* 5B9C8 8006B1C8 00121700 */  sll        $v0, $s7, 8
/* 5B9CC 8006B1CC 23104D00 */  subu       $v0, $v0, $t5
/* 5B9D0 8006B1D0 D000A38F */  lw         $v1, 0xd0($sp)
/* 5B9D4 8006B1D4 5400A58F */  lw         $a1, 0x54($sp)
/* 5B9D8 8006B1D8 4800A78F */  lw         $a3, 0x48($sp)
/* 5B9DC 8006B1DC 23404300 */  subu       $t0, $v0, $v1
/* 5B9E0 8006B1E0 01000224 */  addiu      $v0, $zero, 1
.L8006B1E4:
/* 5B9E4 8006B1E4 0300E216 */  bne        $s7, $v0, .L8006B1F4
/* 5B9E8 8006B1E8 21800000 */   addu      $s0, $zero, $zero
/* 5B9EC 8006B1EC 21280000 */  addu       $a1, $zero, $zero
/* 5B9F0 8006B1F0 21380000 */  addu       $a3, $zero, $zero
.L8006B1F4:
/* 5B9F4 8006B1F4 01008A24 */  addiu      $t2, $a0, 1
/* 5B9F8 8006B1F8 7E00401A */  blez       $s2, .L8006B3F4
/* 5B9FC 8006B1FC 5800AAAF */   sw        $t2, 0x58($sp)
/* 5BA00 8006B200 23F00C00 */  negu       $fp, $t4
/* 5BA04 8006B204 B400A28F */  lw         $v0, 0xb4($sp)
/* 5BA08 8006B208 00220400 */  sll        $a0, $a0, 8
/* 5BA0C 8006B20C 21184500 */  addu       $v1, $v0, $a1
/* 5BA10 8006B210 21186400 */  addu       $v1, $v1, $a0
/* 5BA14 8006B214 23186D00 */  subu       $v1, $v1, $t5
/* 5BA18 8006B218 21B06600 */  addu       $s6, $v1, $a2
/* 5BA1C 8006B21C 4400A38F */  lw         $v1, 0x44($sp)
/* 5BA20 8006B220 21880000 */  addu       $s1, $zero, $zero
/* 5BA24 8006B224 2110A300 */  addu       $v0, $a1, $v1
/* 5BA28 8006B228 21104400 */  addu       $v0, $v0, $a0
/* 5BA2C 8006B22C 21A04600 */  addu       $s4, $v0, $a2
/* 5BA30 8006B230 001A1200 */  sll        $v1, $s2, 8
/* 5BA34 8006B234 23187500 */  subu       $v1, $v1, $s5
/* 5BA38 8006B238 2310C801 */  subu       $v0, $t6, $t0
/* 5BA3C 8006B23C 23104600 */  subu       $v0, $v0, $a2
/* 5BA40 8006B240 21984700 */  addu       $s3, $v0, $a3
/* 5BA44 8006B244 5000A3AF */  sw         $v1, 0x50($sp)
.L8006B248:
/* 5BA48 8006B248 21480000 */  addu       $t1, $zero, $zero
/* 5BA4C 8006B24C 21180000 */  addu       $v1, $zero, $zero
/* 5BA50 8006B250 23400C00 */  negu       $t0, $t4
/* 5BA54 8006B254 04000016 */  bnez       $s0, .L8006B268
/* 5BA58 8006B258 21500000 */   addu      $t2, $zero, $zero
/* 5BA5C 8006B25C 2148A002 */  addu       $t1, $s5, $zero
/* 5BA60 8006B260 21400000 */  addu       $t0, $zero, $zero
/* 5BA64 8006B264 2150C003 */  addu       $t2, $fp, $zero
.L8006B268:
/* 5BA68 8006B268 FFFF4226 */  addiu      $v0, $s2, -1
/* 5BA6C 8006B26C 06000216 */  bne        $s0, $v0, .L8006B288
/* 5BA70 8006B270 01000224 */   addiu     $v0, $zero, 1
/* 5BA74 8006B274 2140C003 */  addu       $t0, $fp, $zero
/* 5BA78 8006B278 5000A48F */  lw         $a0, 0x50($sp)
/* 5BA7C 8006B27C CC00A58F */  lw         $a1, 0xcc($sp)
/* 5BA80 8006B280 21508001 */  addu       $t2, $t4, $zero
/* 5BA84 8006B284 23188500 */  subu       $v1, $a0, $a1
.L8006B288:
/* 5BA88 8006B288 03004216 */  bne        $s2, $v0, .L8006B298
/* 5BA8C 8006B28C 00000000 */   nop
/* 5BA90 8006B290 21400000 */  addu       $t0, $zero, $zero
/* 5BA94 8006B294 21500000 */  addu       $t2, $zero, $zero
.L8006B298:
/* 5BA98 8006B298 4C00A28F */  lw         $v0, 0x4c($sp)
/* 5BA9C 8006B29C 00000000 */  nop
/* 5BAA0 8006B2A0 2A004010 */  beqz       $v0, .L8006B34C
/* 5BAA4 8006B2A4 21206001 */   addu      $a0, $t3, $zero
/* 5BAA8 8006B2A8 A800AB8F */  lw         $t3, 0xa8($sp)
/* 5BAAC 8006B2AC 9C00A58F */  lw         $a1, 0x9c($sp)
/* 5BAB0 8006B2B0 A000A68F */  lw         $a2, 0xa0($sp)
/* 5BAB4 8006B2B4 A400A78F */  lw         $a3, 0xa4($sp)
/* 5BAB8 8006B2B8 AC00A28F */  lw         $v0, 0xac($sp)
/* 5BABC 8006B2BC 1000ABAF */  sw         $t3, 0x10($sp)
/* 5BAC0 8006B2C0 B000AB8F */  lw         $t3, 0xb0($sp)
/* 5BAC4 8006B2C4 1400A2AF */  sw         $v0, 0x14($sp)
/* 5BAC8 8006B2C8 21106801 */  addu       $v0, $t3, $t0
/* 5BACC 8006B2CC 21105100 */  addu       $v0, $v0, $s1
/* 5BAD0 8006B2D0 23105500 */  subu       $v0, $v0, $s5
/* 5BAD4 8006B2D4 BC00AB8F */  lw         $t3, 0xbc($sp)
/* 5BAD8 8006B2D8 21104900 */  addu       $v0, $v0, $t1
/* 5BADC 8006B2DC 1800A2AF */  sw         $v0, 0x18($sp)
/* 5BAE0 8006B2E0 B800A28F */  lw         $v0, 0xb8($sp)
/* 5BAE4 8006B2E4 2400ABAF */  sw         $t3, 0x24($sp)
/* 5BAE8 8006B2E8 4000AB8F */  lw         $t3, 0x40($sp)
/* 5BAEC 8006B2EC 1C00B6AF */  sw         $s6, 0x1c($sp)
/* 5BAF0 8006B2F0 2800AFAF */  sw         $t7, 0x28($sp)
/* 5BAF4 8006B2F4 3000B4AF */  sw         $s4, 0x30($sp)
/* 5BAF8 8006B2F8 3800B3AF */  sw         $s3, 0x38($sp)
/* 5BAFC 8006B2FC 6000ACAF */  sw         $t4, 0x60($sp)
/* 5BB00 8006B300 6400ADAF */  sw         $t5, 0x64($sp)
/* 5BB04 8006B304 6800AEAF */  sw         $t6, 0x68($sp)
/* 5BB08 8006B308 6C00AFAF */  sw         $t7, 0x6c($sp)
/* 5BB0C 8006B30C 2000A2AF */  sw         $v0, 0x20($sp)
/* 5BB10 8006B310 21100B01 */  addu       $v0, $t0, $t3
/* 5BB14 8006B314 21105100 */  addu       $v0, $v0, $s1
/* 5BB18 8006B318 21104900 */  addu       $v0, $v0, $t1
/* 5BB1C 8006B31C 2C00A2AF */  sw         $v0, 0x2c($sp)
/* 5BB20 8006B320 2310C301 */  subu       $v0, $t6, $v1
/* 5BB24 8006B324 23104900 */  subu       $v0, $v0, $t1
/* 5BB28 8006B328 21104A00 */  addu       $v0, $v0, $t2
/* 5BB2C 8006B32C 27AB010C */  jal        FUN_8006ac9c
/* 5BB30 8006B330 3400A2AF */   sw        $v0, 0x34($sp)
/* 5BB34 8006B334 6000AC8F */  lw         $t4, 0x60($sp)
/* 5BB38 8006B338 6400AD8F */  lw         $t5, 0x64($sp)
/* 5BB3C 8006B33C 6800AE8F */  lw         $t6, 0x68($sp)
/* 5BB40 8006B340 6C00AF8F */  lw         $t7, 0x6c($sp)
/* 5BB44 8006B344 F9AC0108 */  j          .L8006B3E4
/* 5BB48 8006B348 21584000 */   addu      $t3, $v0, $zero
.L8006B34C:
/* 5BB4C 8006B34C 2318C301 */  subu       $v1, $t6, $v1
/* 5BB50 8006B350 23186900 */  subu       $v1, $v1, $t1
/* 5BB54 8006B354 21186A00 */  addu       $v1, $v1, $t2
/* 5BB58 8006B358 AC00AB8F */  lw         $t3, 0xac($sp)
/* 5BB5C 8006B35C 9C00A58F */  lw         $a1, 0x9c($sp)
/* 5BB60 8006B360 A000A68F */  lw         $a2, 0xa0($sp)
/* 5BB64 8006B364 A400A78F */  lw         $a3, 0xa4($sp)
/* 5BB68 8006B368 A800A28F */  lw         $v0, 0xa8($sp)
/* 5BB6C 8006B36C 4000AA8F */  lw         $t2, 0x40($sp)
/* 5BB70 8006B370 1400ABAF */  sw         $t3, 0x14($sp)
/* 5BB74 8006B374 B000AB8F */  lw         $t3, 0xb0($sp)
/* 5BB78 8006B378 1C00B6AF */  sw         $s6, 0x1c($sp)
/* 5BB7C 8006B37C 2000A3AF */  sw         $v1, 0x20($sp)
/* 5BB80 8006B380 2400B3AF */  sw         $s3, 0x24($sp)
/* 5BB84 8006B384 2800AFAF */  sw         $t7, 0x28($sp)
/* 5BB88 8006B388 3000B4AF */  sw         $s4, 0x30($sp)
/* 5BB8C 8006B38C 3400A3AF */  sw         $v1, 0x34($sp)
/* 5BB90 8006B390 3800B3AF */  sw         $s3, 0x38($sp)
/* 5BB94 8006B394 6000ACAF */  sw         $t4, 0x60($sp)
/* 5BB98 8006B398 6400ADAF */  sw         $t5, 0x64($sp)
/* 5BB9C 8006B39C 6800AEAF */  sw         $t6, 0x68($sp)
/* 5BBA0 8006B3A0 6C00AFAF */  sw         $t7, 0x6c($sp)
/* 5BBA4 8006B3A4 1000A2AF */  sw         $v0, 0x10($sp)
/* 5BBA8 8006B3A8 21106801 */  addu       $v0, $t3, $t0
/* 5BBAC 8006B3AC 21105100 */  addu       $v0, $v0, $s1
/* 5BBB0 8006B3B0 23105500 */  subu       $v0, $v0, $s5
/* 5BBB4 8006B3B4 21104900 */  addu       $v0, $v0, $t1
/* 5BBB8 8006B3B8 1800A2AF */  sw         $v0, 0x18($sp)
/* 5BBBC 8006B3BC 21100A01 */  addu       $v0, $t0, $t2
/* 5BBC0 8006B3C0 21105100 */  addu       $v0, $v0, $s1
/* 5BBC4 8006B3C4 21104900 */  addu       $v0, $v0, $t1
/* 5BBC8 8006B3C8 27AB010C */  jal        FUN_8006ac9c
/* 5BBCC 8006B3CC 2C00A2AF */   sw        $v0, 0x2c($sp)
/* 5BBD0 8006B3D0 21584000 */  addu       $t3, $v0, $zero
/* 5BBD4 8006B3D4 6C00AF8F */  lw         $t7, 0x6c($sp)
/* 5BBD8 8006B3D8 6800AE8F */  lw         $t6, 0x68($sp)
/* 5BBDC 8006B3DC 6400AD8F */  lw         $t5, 0x64($sp)
/* 5BBE0 8006B3E0 6000AC8F */  lw         $t4, 0x60($sp)
.L8006B3E4:
/* 5BBE4 8006B3E4 01001026 */  addiu      $s0, $s0, 1
/* 5BBE8 8006B3E8 2A101202 */  slt        $v0, $s0, $s2
/* 5BBEC 8006B3EC 96FF4014 */  bnez       $v0, .L8006B248
/* 5BBF0 8006B3F0 00013126 */   addiu     $s1, $s1, 0x100
.L8006B3F4:
/* 5BBF4 8006B3F4 5800A48F */  lw         $a0, 0x58($sp)
/* 5BBF8 8006B3F8 00000000 */  nop
/* 5BBFC 8006B3FC 2A109700 */  slt        $v0, $a0, $s7
/* 5BC00 8006B400 66FF4014 */  bnez       $v0, .L8006B19C
/* 5BC04 8006B404 21300000 */   addu      $a2, $zero, $zero
.L8006B408:
/* 5BC08 8006B408 9400BF8F */  lw         $ra, 0x94($sp)
/* 5BC0C 8006B40C 9000BE8F */  lw         $fp, 0x90($sp)
/* 5BC10 8006B410 8C00B78F */  lw         $s7, 0x8c($sp)
/* 5BC14 8006B414 8800B68F */  lw         $s6, 0x88($sp)
/* 5BC18 8006B418 8400B58F */  lw         $s5, 0x84($sp)
/* 5BC1C 8006B41C 8000B48F */  lw         $s4, 0x80($sp)
/* 5BC20 8006B420 7C00B38F */  lw         $s3, 0x7c($sp)
/* 5BC24 8006B424 7800B28F */  lw         $s2, 0x78($sp)
/* 5BC28 8006B428 7400B18F */  lw         $s1, 0x74($sp)
/* 5BC2C 8006B42C 7000B08F */  lw         $s0, 0x70($sp)
/* 5BC30 8006B430 21106001 */  addu       $v0, $t3, $zero
/* 5BC34 8006B434 0800E003 */  jr         $ra
/* 5BC38 8006B438 9800BD27 */   addiu     $sp, $sp, 0x98
