.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8008B140
/* 7B940 8008B140 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 7B944 8008B144 6800A28F */  lw         $v0, 0x68($sp)
/* 7B948 8008B148 003B0700 */  sll        $a3, $a3, 0xc
/* 7B94C 8008B14C 4800B6AF */  sw         $s6, 0x48($sp)
/* 7B950 8008B150 1A00E200 */  div        $zero, $a3, $v0
/* 7B954 8008B154 02004014 */  bnez       $v0, .L8008B160
/* 7B958 8008B158 00000000 */   nop
/* 7B95C 8008B15C 0D000700 */  break      7
.L8008B160:
/* 7B960 8008B160 FFFF0124 */   addiu     $at, $zero, -1
/* 7B964 8008B164 04004114 */  bne        $v0, $at, .L8008B178
/* 7B968 8008B168 0080013C */   lui       $at, 0x8000
/* 7B96C 8008B16C 0200E114 */  bne        $a3, $at, .L8008B178
/* 7B970 8008B170 00000000 */   nop
/* 7B974 8008B174 0D000600 */  break      6
.L8008B178:
/* 7B978 8008B178 12B00000 */   mflo      $s6
/* 7B97C 8008B17C 4C00B7AF */  sw         $s7, 0x4c($sp)
/* 7B980 8008B180 21B8A000 */  addu       $s7, $a1, $zero
/* 7B984 8008B184 5000BEAF */  sw         $fp, 0x50($sp)
/* 7B988 8008B188 21F0C000 */  addu       $fp, $a2, $zero
/* 7B98C 8008B18C 30FD0624 */  addiu      $a2, $zero, -0x2d0
/* 7B990 8008B190 5400BFAF */  sw         $ra, 0x54($sp)
/* 7B994 8008B194 4400B5AF */  sw         $s5, 0x44($sp)
/* 7B998 8008B198 4000B4AF */  sw         $s4, 0x40($sp)
/* 7B99C 8008B19C 3C00B3AF */  sw         $s3, 0x3c($sp)
/* 7B9A0 8008B1A0 3800B2AF */  sw         $s2, 0x38($sp)
/* 7B9A4 8008B1A4 3400B1AF */  sw         $s1, 0x34($sp)
/* 7B9A8 8008B1A8 3000B0AF */  sw         $s0, 0x30($sp)
/* 7B9AC 8008B1AC 0110C22A */  slti       $v0, $s6, 0x1001
/* 7B9B0 8008B1B0 01004238 */  xori       $v0, $v0, 1
/* 7B9B4 8008B1B4 1B004010 */  beqz       $v0, .L8008B224
/* 7B9B8 8008B1B8 5800A4AF */   sw        $a0, 0x58($sp)
/* 7B9BC 8008B1BC 0118C22A */  slti       $v0, $s6, 0x1801
/* 7B9C0 8008B1C0 06004010 */  beqz       $v0, .L8008B1DC
/* 7B9C4 8008B1C4 00101024 */   addiu     $s0, $zero, 0x1000
/* 7B9C8 8008B1C8 2A10D002 */  slt        $v0, $s6, $s0
/* 7B9CC 8008B1CC 05004014 */  bnez       $v0, .L8008B1E4
/* 7B9D0 8008B1D0 00F01026 */   addiu     $s0, $s0, -0x1000
/* 7B9D4 8008B1D4 782C0208 */  j          .L8008B1E0
/* 7B9D8 8008B1D8 2180C002 */   addu      $s0, $s6, $zero
.L8008B1DC:
/* 7B9DC 8008B1DC 00181024 */  addiu      $s0, $zero, 0x1800
.L8008B1E0:
/* 7B9E0 8008B1E0 00F01026 */  addiu      $s0, $s0, -0x1000
.L8008B1E4:
/* 7B9E4 8008B1E4 3001C224 */  addiu      $v0, $a2, 0x130
/* 7B9E8 8008B1E8 18005000 */  mult       $v0, $s0
/* 7B9EC 8008B1EC 12180000 */  mflo       $v1
/* 7B9F0 8008B1F0 00000000 */  nop
/* 7B9F4 8008B1F4 00000000 */  nop
/* 7B9F8 8008B1F8 18007000 */  mult       $v1, $s0
/* 7B9FC 8008B1FC 12200000 */  mflo       $a0
/* 7BA00 8008B200 05008104 */  bgez       $a0, .L8008B218
/* 7BA04 8008B204 83150400 */   sra       $v0, $a0, 0x16
/* 7BA08 8008B208 3F00023C */  lui        $v0, 0x3f
/* 7BA0C 8008B20C FFFF4234 */  ori        $v0, $v0, 0xffff
/* 7BA10 8008B210 21208200 */  addu       $a0, $a0, $v0
/* 7BA14 8008B214 83150400 */  sra        $v0, $a0, 0x16
.L8008B218:
/* 7BA18 8008B218 D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7BA1C 8008B21C B52C0208 */  j          .L8008B2D4
/* 7BA20 8008B220 21A80201 */   addu      $s5, $t0, $v0
.L8008B224:
/* 7BA24 8008B224 0108C22A */  slti       $v0, $s6, 0x801
/* 7BA28 8008B228 04004010 */  beqz       $v0, .L8008B23C
/* 7BA2C 8008B22C 00081024 */   addiu     $s0, $zero, 0x800
/* 7BA30 8008B230 0200C106 */  bgez       $s6, .L8008B23C
/* 7BA34 8008B234 2180C002 */   addu      $s0, $s6, $zero
/* 7BA38 8008B238 21800000 */  addu       $s0, $zero, $zero
.L8008B23C:
/* 7BA3C 8008B23C D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7BA40 8008B240 23100601 */  subu       $v0, $t0, $a2
/* 7BA44 8008B244 18005000 */  mult       $v0, $s0
/* 7BA48 8008B248 12100000 */  mflo       $v0
/* 7BA4C 8008B24C 02004104 */  bgez       $v0, .L8008B258
/* 7BA50 8008B250 00000000 */   nop
/* 7BA54 8008B254 FF074224 */  addiu      $v0, $v0, 0x7ff
.L8008B258:
/* 7BA58 8008B258 C3120200 */  sra        $v0, $v0, 0xb
/* 7BA5C 8008B25C 21A8C200 */  addu       $s5, $a2, $v0
/* 7BA60 8008B260 0110C22A */  slti       $v0, $s6, 0x1001
/* 7BA64 8008B264 06004010 */  beqz       $v0, .L8008B280
/* 7BA68 8008B268 00081024 */   addiu     $s0, $zero, 0x800
/* 7BA6C 8008B26C 2A10D002 */  slt        $v0, $s6, $s0
/* 7BA70 8008B270 04004014 */  bnez       $v0, .L8008B284
/* 7BA74 8008B274 00000000 */   nop
/* 7BA78 8008B278 A12C0208 */  j          .L8008B284
/* 7BA7C 8008B27C 2180C002 */   addu      $s0, $s6, $zero
.L8008B280:
/* 7BA80 8008B280 00101024 */  addiu      $s0, $zero, 0x1000
.L8008B284:
/* 7BA84 8008B284 00F80426 */  addiu      $a0, $s0, -0x800
/* 7BA88 8008B288 40800400 */  sll        $s0, $a0, 1
/* 7BA8C 8008B28C F4F1000C */  jal        rsin
/* 7BA90 8008B290 80200400 */   sll       $a0, $a0, 2
/* 7BA94 8008B294 00100424 */  addiu      $a0, $zero, 0x1000
/* 7BA98 8008B298 23209000 */  subu       $a0, $a0, $s0
/* 7BA9C 8008B29C 40180400 */  sll        $v1, $a0, 1
/* 7BAA0 8008B2A0 21186400 */  addu       $v1, $v1, $a0
/* 7BAA4 8008B2A4 40180300 */  sll        $v1, $v1, 1
/* 7BAA8 8008B2A8 18004300 */  mult       $v0, $v1
/* 7BAAC 8008B2AC 12200000 */  mflo       $a0
/* 7BAB0 8008B2B0 05008104 */  bgez       $a0, .L8008B2C8
/* 7BAB4 8008B2B4 03160400 */   sra       $v0, $a0, 0x18
/* 7BAB8 8008B2B8 FF00023C */  lui        $v0, 0xff
/* 7BABC 8008B2BC FFFF4234 */  ori        $v0, $v0, 0xffff
/* 7BAC0 8008B2C0 21208200 */  addu       $a0, $a0, $v0
/* 7BAC4 8008B2C4 03160400 */  sra        $v0, $a0, 0x18
.L8008B2C8:
/* 7BAC8 8008B2C8 031B0300 */  sra        $v1, $v1, 0xc
/* 7BACC 8008B2CC 21104300 */  addu       $v0, $v0, $v1
/* 7BAD0 8008B2D0 23A8A202 */  subu       $s5, $s5, $v0
.L8008B2D4:
/* 7BAD4 8008B2D4 2128E002 */  addu       $a1, $s7, $zero
/* 7BAD8 8008B2D8 2130C003 */  addu       $a2, $fp, $zero
/* 7BADC 8008B2DC 60FF0824 */  addiu      $t0, $zero, -0xa0
/* 7BAE0 8008B2E0 5800A48F */  lw         $a0, 0x58($sp)
/* 7BAE4 8008B2E4 39000225 */  addiu      $v0, $t0, 0x39
/* 7BAE8 8008B2E8 1000A2AF */  sw         $v0, 0x10($sp)
/* 7BAEC 8008B2EC 1400B6AF */  sw         $s6, 0x14($sp)
/* 7BAF0 8008B2F0 21408000 */  addu       $t0, $a0, $zero
/* 7BAF4 8008B2F4 AC480291 */  lbu        $v0, 0x48ac($t0)
/* 7BAF8 8008B2F8 0300A726 */  addiu      $a3, $s5, 3
/* 7BAFC 8008B2FC 01004238 */  xori       $v0, $v0, 1
/* 7BB00 8008B300 0100422C */  sltiu      $v0, $v0, 1
/* 7BB04 8008B304 F614020C */  jal        FUN_800853d8
/* 7BB08 8008B308 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BB0C 8008B30C 21F04000 */  addu       $fp, $v0, $zero
/* 7BB10 8008B310 2120E002 */  addu       $a0, $s7, $zero
/* 7BB14 8008B314 1380083C */  lui        $t0, %hi(D_801280E0)
/* 7BB18 8008B318 E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 7BB1C 8008B31C 2128C003 */  addu       $a1, $fp, $zero
/* 7BB20 8008B320 54000291 */  lbu        $v0, 0x54($t0)
/* 7BB24 8008B324 1380083C */  lui        $t0, %hi(D_801282E0)
/* 7BB28 8008B328 E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 7BB2C 8008B32C C0800200 */  sll        $s0, $v0, 3
/* 7BB30 8008B330 23800202 */  subu       $s0, $s0, $v0
/* 7BB34 8008B334 80801000 */  sll        $s0, $s0, 2
/* 7BB38 8008B338 21800802 */  addu       $s0, $s0, $t0
/* 7BB3C 8008B33C 04000686 */  lh         $a2, 4($s0)
/* 7BB40 8008B340 06000786 */  lh         $a3, 6($s0)
/* 7BB44 8008B344 50000824 */  addiu      $t0, $zero, 0x50
/* 7BB48 8008B348 1000A8AF */  sw         $t0, 0x10($sp)
/* 7BB4C 8008B34C 38000824 */  addiu      $t0, $zero, 0x38
/* 7BB50 8008B350 1400A8AF */  sw         $t0, 0x14($sp)
/* 7BB54 8008B354 0C000286 */  lh         $v0, 0xc($s0)
/* 7BB58 8008B358 FFFF0824 */  addiu      $t0, $zero, -1
/* 7BB5C 8008B35C 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BB60 8008B360 1769010C */  jal        FUN_8005a45c
/* 7BB64 8008B364 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BB68 8008B368 2120E002 */  addu       $a0, $s7, $zero
/* 7BB6C 8008B36C 16000686 */  lh         $a2, 0x16($s0)
/* 7BB70 8008B370 18000786 */  lh         $a3, 0x18($s0)
/* 7BB74 8008B374 396D010C */  jal        FUN_8005b4e4
/* 7BB78 8008B378 2128C003 */   addu      $a1, $fp, $zero
/* 7BB7C 8008B37C 2120E002 */  addu       $a0, $s7, $zero
/* 7BB80 8008B380 2128C003 */  addu       $a1, $fp, $zero
/* 7BB84 8008B384 2130A002 */  addu       $a2, $s5, $zero
/* 7BB88 8008B388 60FF0724 */  addiu      $a3, $zero, -0xa0
/* 7BB8C 8008B38C 50000824 */  addiu      $t0, $zero, 0x50
/* 7BB90 8008B390 1000A8AF */  sw         $t0, 0x10($sp)
/* 7BB94 8008B394 38000824 */  addiu      $t0, $zero, 0x38
/* 7BB98 8008B398 976D010C */  jal        FUN_8005b65c
/* 7BB9C 8008B39C 1400A8AF */   sw        $t0, 0x14($sp)
/* 7BBA0 8008B3A0 2120E002 */  addu       $a0, $s7, $zero
/* 7BBA4 8008B3A4 2128C003 */  addu       $a1, $fp, $zero
/* 7BBA8 8008B3A8 80000624 */  addiu      $a2, $zero, 0x80
/* 7BBAC 8008B3AC 2138C000 */  addu       $a3, $a2, $zero
/* 7BBB0 8008B3B0 2140C000 */  addu       $t0, $a2, $zero
/* 7BBB4 8008B3B4 EB6C010C */  jal        FUN_8005b3ac
/* 7BBB8 8008B3B8 1000A8AF */   sw        $t0, 0x10($sp)
/* 7BBBC 8008B3BC 0100DE27 */  addiu      $fp, $fp, 1
/* 7BBC0 8008B3C0 2120E002 */  addu       $a0, $s7, $zero
/* 7BBC4 8008B3C4 04000686 */  lh         $a2, 4($s0)
/* 7BBC8 8008B3C8 06000786 */  lh         $a3, 6($s0)
/* 7BBCC 8008B3CC 50000824 */  addiu      $t0, $zero, 0x50
/* 7BBD0 8008B3D0 08001124 */  addiu      $s1, $zero, 8
/* 7BBD4 8008B3D4 2128C003 */  addu       $a1, $fp, $zero
/* 7BBD8 8008B3D8 1000A8AF */  sw         $t0, 0x10($sp)
/* 7BBDC 8008B3DC 1400B1AF */  sw         $s1, 0x14($sp)
/* 7BBE0 8008B3E0 0C000286 */  lh         $v0, 0xc($s0)
/* 7BBE4 8008B3E4 FFFF0824 */  addiu      $t0, $zero, -1
/* 7BBE8 8008B3E8 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BBEC 8008B3EC 3800E724 */  addiu      $a3, $a3, 0x38
/* 7BBF0 8008B3F0 1769010C */  jal        FUN_8005a45c
/* 7BBF4 8008B3F4 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BBF8 8008B3F8 2120E002 */  addu       $a0, $s7, $zero
/* 7BBFC 8008B3FC 16000686 */  lh         $a2, 0x16($s0)
/* 7BC00 8008B400 18000786 */  lh         $a3, 0x18($s0)
/* 7BC04 8008B404 396D010C */  jal        FUN_8005b4e4
/* 7BC08 8008B408 2128C003 */   addu      $a1, $fp, $zero
/* 7BC0C 8008B40C 2120E002 */  addu       $a0, $s7, $zero
/* 7BC10 8008B410 2128C003 */  addu       $a1, $fp, $zero
/* 7BC14 8008B414 2130A002 */  addu       $a2, $s5, $zero
/* 7BC18 8008B418 60FF0824 */  addiu      $t0, $zero, -0xa0
/* 7BC1C 8008B41C 38000825 */  addiu      $t0, $t0, 0x38
/* 7BC20 8008B420 21380001 */  addu       $a3, $t0, $zero
/* 7BC24 8008B424 2800A8AF */  sw         $t0, 0x28($sp)
/* 7BC28 8008B428 50000824 */  addiu      $t0, $zero, 0x50
/* 7BC2C 8008B42C 1000A8AF */  sw         $t0, 0x10($sp)
/* 7BC30 8008B430 976D010C */  jal        FUN_8005b65c
/* 7BC34 8008B434 1400A8AF */   sw        $t0, 0x14($sp)
/* 7BC38 8008B438 2120E002 */  addu       $a0, $s7, $zero
/* 7BC3C 8008B43C 2128C003 */  addu       $a1, $fp, $zero
/* 7BC40 8008B440 80000624 */  addiu      $a2, $zero, 0x80
/* 7BC44 8008B444 2138C000 */  addu       $a3, $a2, $zero
/* 7BC48 8008B448 2140C000 */  addu       $t0, $a2, $zero
/* 7BC4C 8008B44C EB6C010C */  jal        FUN_8005b3ac
/* 7BC50 8008B450 1000A8AF */   sw        $t0, 0x10($sp)
/* 7BC54 8008B454 0100DE27 */  addiu      $fp, $fp, 1
/* 7BC58 8008B458 2120E002 */  addu       $a0, $s7, $zero
/* 7BC5C 8008B45C 04000686 */  lh         $a2, 4($s0)
/* 7BC60 8008B460 06000786 */  lh         $a3, 6($s0)
/* 7BC64 8008B464 50000824 */  addiu      $t0, $zero, 0x50
/* 7BC68 8008B468 2128C003 */  addu       $a1, $fp, $zero
/* 7BC6C 8008B46C 1000A8AF */  sw         $t0, 0x10($sp)
/* 7BC70 8008B470 1400B1AF */  sw         $s1, 0x14($sp)
/* 7BC74 8008B474 0C000286 */  lh         $v0, 0xc($s0)
/* 7BC78 8008B478 FFFF0824 */  addiu      $t0, $zero, -1
/* 7BC7C 8008B47C 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BC80 8008B480 4000E724 */  addiu      $a3, $a3, 0x40
/* 7BC84 8008B484 1769010C */  jal        FUN_8005a45c
/* 7BC88 8008B488 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BC8C 8008B48C 2120E002 */  addu       $a0, $s7, $zero
/* 7BC90 8008B490 16000686 */  lh         $a2, 0x16($s0)
/* 7BC94 8008B494 18000786 */  lh         $a3, 0x18($s0)
/* 7BC98 8008B498 396D010C */  jal        FUN_8005b4e4
/* 7BC9C 8008B49C 2128C003 */   addu      $a1, $fp, $zero
/* 7BCA0 8008B4A0 2120E002 */  addu       $a0, $s7, $zero
/* 7BCA4 8008B4A4 2128C003 */  addu       $a1, $fp, $zero
/* 7BCA8 8008B4A8 2130A002 */  addu       $a2, $s5, $zero
/* 7BCAC 8008B4AC 60FF0824 */  addiu      $t0, $zero, -0xa0
/* 7BCB0 8008B4B0 88001425 */  addiu      $s4, $t0, 0x88
/* 7BCB4 8008B4B4 21388002 */  addu       $a3, $s4, $zero
/* 7BCB8 8008B4B8 50000824 */  addiu      $t0, $zero, 0x50
/* 7BCBC 8008B4BC 1000A8AF */  sw         $t0, 0x10($sp)
/* 7BCC0 8008B4C0 976D010C */  jal        FUN_8005b65c
/* 7BCC4 8008B4C4 1400B1AF */   sw        $s1, 0x14($sp)
/* 7BCC8 8008B4C8 2120E002 */  addu       $a0, $s7, $zero
/* 7BCCC 8008B4CC 2128C003 */  addu       $a1, $fp, $zero
/* 7BCD0 8008B4D0 80000624 */  addiu      $a2, $zero, 0x80
/* 7BCD4 8008B4D4 2138C000 */  addu       $a3, $a2, $zero
/* 7BCD8 8008B4D8 2140C000 */  addu       $t0, $a2, $zero
/* 7BCDC 8008B4DC EB6C010C */  jal        FUN_8005b3ac
/* 7BCE0 8008B4E0 1000A8AF */   sw        $t0, 0x10($sp)
/* 7BCE4 8008B4E4 0100DE27 */  addiu      $fp, $fp, 1
/* 7BCE8 8008B4E8 2120E002 */  addu       $a0, $s7, $zero
/* 7BCEC 8008B4EC 04000686 */  lh         $a2, 4($s0)
/* 7BCF0 8008B4F0 06000786 */  lh         $a3, 6($s0)
/* 7BCF4 8008B4F4 38000824 */  addiu      $t0, $zero, 0x38
/* 7BCF8 8008B4F8 2128C003 */  addu       $a1, $fp, $zero
/* 7BCFC 8008B4FC 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BD00 8008B500 1400A8AF */  sw         $t0, 0x14($sp)
/* 7BD04 8008B504 0C000286 */  lh         $v0, 0xc($s0)
/* 7BD08 8008B508 FFFF0824 */  addiu      $t0, $zero, -1
/* 7BD0C 8008B50C 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BD10 8008B510 5000C624 */  addiu      $a2, $a2, 0x50
/* 7BD14 8008B514 1769010C */  jal        FUN_8005a45c
/* 7BD18 8008B518 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BD1C 8008B51C 2120E002 */  addu       $a0, $s7, $zero
/* 7BD20 8008B520 16000686 */  lh         $a2, 0x16($s0)
/* 7BD24 8008B524 18000786 */  lh         $a3, 0x18($s0)
/* 7BD28 8008B528 396D010C */  jal        FUN_8005b4e4
/* 7BD2C 8008B52C 2128C003 */   addu      $a1, $fp, $zero
/* 7BD30 8008B530 2120E002 */  addu       $a0, $s7, $zero
/* 7BD34 8008B534 2128C003 */  addu       $a1, $fp, $zero
/* 7BD38 8008B538 5000B326 */  addiu      $s3, $s5, 0x50
/* 7BD3C 8008B53C 21306002 */  addu       $a2, $s3, $zero
/* 7BD40 8008B540 60FF0724 */  addiu      $a3, $zero, -0xa0
/* 7BD44 8008B544 AC001224 */  addiu      $s2, $zero, 0xac
/* 7BD48 8008B548 38000824 */  addiu      $t0, $zero, 0x38
/* 7BD4C 8008B54C 1000B2AF */  sw         $s2, 0x10($sp)
/* 7BD50 8008B550 976D010C */  jal        FUN_8005b65c
/* 7BD54 8008B554 1400A8AF */   sw        $t0, 0x14($sp)
/* 7BD58 8008B558 2120E002 */  addu       $a0, $s7, $zero
/* 7BD5C 8008B55C 2128C003 */  addu       $a1, $fp, $zero
/* 7BD60 8008B560 80000624 */  addiu      $a2, $zero, 0x80
/* 7BD64 8008B564 2138C000 */  addu       $a3, $a2, $zero
/* 7BD68 8008B568 2140C000 */  addu       $t0, $a2, $zero
/* 7BD6C 8008B56C EB6C010C */  jal        FUN_8005b3ac
/* 7BD70 8008B570 1000A8AF */   sw        $t0, 0x10($sp)
/* 7BD74 8008B574 0100DE27 */  addiu      $fp, $fp, 1
/* 7BD78 8008B578 2120E002 */  addu       $a0, $s7, $zero
/* 7BD7C 8008B57C 04000686 */  lh         $a2, 4($s0)
/* 7BD80 8008B580 06000786 */  lh         $a3, 6($s0)
/* 7BD84 8008B584 2128C003 */  addu       $a1, $fp, $zero
/* 7BD88 8008B588 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BD8C 8008B58C 1400B1AF */  sw         $s1, 0x14($sp)
/* 7BD90 8008B590 0C000286 */  lh         $v0, 0xc($s0)
/* 7BD94 8008B594 FFFF0824 */  addiu      $t0, $zero, -1
/* 7BD98 8008B598 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BD9C 8008B59C 5000C624 */  addiu      $a2, $a2, 0x50
/* 7BDA0 8008B5A0 3800E724 */  addiu      $a3, $a3, 0x38
/* 7BDA4 8008B5A4 1769010C */  jal        FUN_8005a45c
/* 7BDA8 8008B5A8 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BDAC 8008B5AC 2120E002 */  addu       $a0, $s7, $zero
/* 7BDB0 8008B5B0 16000686 */  lh         $a2, 0x16($s0)
/* 7BDB4 8008B5B4 18000786 */  lh         $a3, 0x18($s0)
/* 7BDB8 8008B5B8 396D010C */  jal        FUN_8005b4e4
/* 7BDBC 8008B5BC 2128C003 */   addu      $a1, $fp, $zero
/* 7BDC0 8008B5C0 2120E002 */  addu       $a0, $s7, $zero
/* 7BDC4 8008B5C4 2128C003 */  addu       $a1, $fp, $zero
/* 7BDC8 8008B5C8 21306002 */  addu       $a2, $s3, $zero
/* 7BDCC 8008B5CC 2800A78F */  lw         $a3, 0x28($sp)
/* 7BDD0 8008B5D0 50000824 */  addiu      $t0, $zero, 0x50
/* 7BDD4 8008B5D4 1000B2AF */  sw         $s2, 0x10($sp)
/* 7BDD8 8008B5D8 976D010C */  jal        FUN_8005b65c
/* 7BDDC 8008B5DC 1400A8AF */   sw        $t0, 0x14($sp)
/* 7BDE0 8008B5E0 2120E002 */  addu       $a0, $s7, $zero
/* 7BDE4 8008B5E4 2128C003 */  addu       $a1, $fp, $zero
/* 7BDE8 8008B5E8 80000624 */  addiu      $a2, $zero, 0x80
/* 7BDEC 8008B5EC 2138C000 */  addu       $a3, $a2, $zero
/* 7BDF0 8008B5F0 2140C000 */  addu       $t0, $a2, $zero
/* 7BDF4 8008B5F4 EB6C010C */  jal        FUN_8005b3ac
/* 7BDF8 8008B5F8 1000A8AF */   sw        $t0, 0x10($sp)
/* 7BDFC 8008B5FC 0100DE27 */  addiu      $fp, $fp, 1
/* 7BE00 8008B600 2120E002 */  addu       $a0, $s7, $zero
/* 7BE04 8008B604 04000686 */  lh         $a2, 4($s0)
/* 7BE08 8008B608 06000786 */  lh         $a3, 6($s0)
/* 7BE0C 8008B60C 2128C003 */  addu       $a1, $fp, $zero
/* 7BE10 8008B610 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BE14 8008B614 1400B1AF */  sw         $s1, 0x14($sp)
/* 7BE18 8008B618 0C000286 */  lh         $v0, 0xc($s0)
/* 7BE1C 8008B61C FFFF0824 */  addiu      $t0, $zero, -1
/* 7BE20 8008B620 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BE24 8008B624 5000C624 */  addiu      $a2, $a2, 0x50
/* 7BE28 8008B628 4000E724 */  addiu      $a3, $a3, 0x40
/* 7BE2C 8008B62C 1769010C */  jal        FUN_8005a45c
/* 7BE30 8008B630 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BE34 8008B634 2120E002 */  addu       $a0, $s7, $zero
/* 7BE38 8008B638 16000686 */  lh         $a2, 0x16($s0)
/* 7BE3C 8008B63C 18000786 */  lh         $a3, 0x18($s0)
/* 7BE40 8008B640 396D010C */  jal        FUN_8005b4e4
/* 7BE44 8008B644 2128C003 */   addu      $a1, $fp, $zero
/* 7BE48 8008B648 2120E002 */  addu       $a0, $s7, $zero
/* 7BE4C 8008B64C 2128C003 */  addu       $a1, $fp, $zero
/* 7BE50 8008B650 21306002 */  addu       $a2, $s3, $zero
/* 7BE54 8008B654 21388002 */  addu       $a3, $s4, $zero
/* 7BE58 8008B658 1000B2AF */  sw         $s2, 0x10($sp)
/* 7BE5C 8008B65C 976D010C */  jal        FUN_8005b65c
/* 7BE60 8008B660 1400B1AF */   sw        $s1, 0x14($sp)
/* 7BE64 8008B664 2120E002 */  addu       $a0, $s7, $zero
/* 7BE68 8008B668 2128C003 */  addu       $a1, $fp, $zero
/* 7BE6C 8008B66C 80000624 */  addiu      $a2, $zero, 0x80
/* 7BE70 8008B670 2138C000 */  addu       $a3, $a2, $zero
/* 7BE74 8008B674 2140C000 */  addu       $t0, $a2, $zero
/* 7BE78 8008B678 EB6C010C */  jal        FUN_8005b3ac
/* 7BE7C 8008B67C 1000A8AF */   sw        $t0, 0x10($sp)
/* 7BE80 8008B680 0100DE27 */  addiu      $fp, $fp, 1
/* 7BE84 8008B684 2120E002 */  addu       $a0, $s7, $zero
/* 7BE88 8008B688 04000686 */  lh         $a2, 4($s0)
/* 7BE8C 8008B68C 06000786 */  lh         $a3, 6($s0)
/* 7BE90 8008B690 38000824 */  addiu      $t0, $zero, 0x38
/* 7BE94 8008B694 2128C003 */  addu       $a1, $fp, $zero
/* 7BE98 8008B698 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BE9C 8008B69C 1400A8AF */  sw         $t0, 0x14($sp)
/* 7BEA0 8008B6A0 0C000286 */  lh         $v0, 0xc($s0)
/* 7BEA4 8008B6A4 FFFF0824 */  addiu      $t0, $zero, -1
/* 7BEA8 8008B6A8 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BEAC 8008B6AC 5800C624 */  addiu      $a2, $a2, 0x58
/* 7BEB0 8008B6B0 1769010C */  jal        FUN_8005a45c
/* 7BEB4 8008B6B4 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BEB8 8008B6B8 2120E002 */  addu       $a0, $s7, $zero
/* 7BEBC 8008B6BC 16000686 */  lh         $a2, 0x16($s0)
/* 7BEC0 8008B6C0 18000786 */  lh         $a3, 0x18($s0)
/* 7BEC4 8008B6C4 396D010C */  jal        FUN_8005b4e4
/* 7BEC8 8008B6C8 2128C003 */   addu      $a1, $fp, $zero
/* 7BECC 8008B6CC 2120E002 */  addu       $a0, $s7, $zero
/* 7BED0 8008B6D0 2128C003 */  addu       $a1, $fp, $zero
/* 7BED4 8008B6D4 FC00B226 */  addiu      $s2, $s5, 0xfc
/* 7BED8 8008B6D8 21304002 */  addu       $a2, $s2, $zero
/* 7BEDC 8008B6DC 60FF0724 */  addiu      $a3, $zero, -0xa0
/* 7BEE0 8008B6E0 38000824 */  addiu      $t0, $zero, 0x38
/* 7BEE4 8008B6E4 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BEE8 8008B6E8 976D010C */  jal        FUN_8005b65c
/* 7BEEC 8008B6EC 1400A8AF */   sw        $t0, 0x14($sp)
/* 7BEF0 8008B6F0 2120E002 */  addu       $a0, $s7, $zero
/* 7BEF4 8008B6F4 2128C003 */  addu       $a1, $fp, $zero
/* 7BEF8 8008B6F8 80000624 */  addiu      $a2, $zero, 0x80
/* 7BEFC 8008B6FC 2138C000 */  addu       $a3, $a2, $zero
/* 7BF00 8008B700 2140C000 */  addu       $t0, $a2, $zero
/* 7BF04 8008B704 EB6C010C */  jal        FUN_8005b3ac
/* 7BF08 8008B708 1000A8AF */   sw        $t0, 0x10($sp)
/* 7BF0C 8008B70C 0100DE27 */  addiu      $fp, $fp, 1
/* 7BF10 8008B710 2120E002 */  addu       $a0, $s7, $zero
/* 7BF14 8008B714 04000686 */  lh         $a2, 4($s0)
/* 7BF18 8008B718 06000786 */  lh         $a3, 6($s0)
/* 7BF1C 8008B71C 2128C003 */  addu       $a1, $fp, $zero
/* 7BF20 8008B720 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BF24 8008B724 1400B1AF */  sw         $s1, 0x14($sp)
/* 7BF28 8008B728 0C000286 */  lh         $v0, 0xc($s0)
/* 7BF2C 8008B72C FFFF0824 */  addiu      $t0, $zero, -1
/* 7BF30 8008B730 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BF34 8008B734 5800C624 */  addiu      $a2, $a2, 0x58
/* 7BF38 8008B738 3800E724 */  addiu      $a3, $a3, 0x38
/* 7BF3C 8008B73C 1769010C */  jal        FUN_8005a45c
/* 7BF40 8008B740 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BF44 8008B744 2120E002 */  addu       $a0, $s7, $zero
/* 7BF48 8008B748 16000686 */  lh         $a2, 0x16($s0)
/* 7BF4C 8008B74C 18000786 */  lh         $a3, 0x18($s0)
/* 7BF50 8008B750 396D010C */  jal        FUN_8005b4e4
/* 7BF54 8008B754 2128C003 */   addu      $a1, $fp, $zero
/* 7BF58 8008B758 2120E002 */  addu       $a0, $s7, $zero
/* 7BF5C 8008B75C 2128C003 */  addu       $a1, $fp, $zero
/* 7BF60 8008B760 21304002 */  addu       $a2, $s2, $zero
/* 7BF64 8008B764 2800A78F */  lw         $a3, 0x28($sp)
/* 7BF68 8008B768 50000824 */  addiu      $t0, $zero, 0x50
/* 7BF6C 8008B76C 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BF70 8008B770 976D010C */  jal        FUN_8005b65c
/* 7BF74 8008B774 1400A8AF */   sw        $t0, 0x14($sp)
/* 7BF78 8008B778 2120E002 */  addu       $a0, $s7, $zero
/* 7BF7C 8008B77C 2128C003 */  addu       $a1, $fp, $zero
/* 7BF80 8008B780 80000624 */  addiu      $a2, $zero, 0x80
/* 7BF84 8008B784 2138C000 */  addu       $a3, $a2, $zero
/* 7BF88 8008B788 2140C000 */  addu       $t0, $a2, $zero
/* 7BF8C 8008B78C EB6C010C */  jal        FUN_8005b3ac
/* 7BF90 8008B790 1000A8AF */   sw        $t0, 0x10($sp)
/* 7BF94 8008B794 0100DE27 */  addiu      $fp, $fp, 1
/* 7BF98 8008B798 2120E002 */  addu       $a0, $s7, $zero
/* 7BF9C 8008B79C 04000686 */  lh         $a2, 4($s0)
/* 7BFA0 8008B7A0 06000786 */  lh         $a3, 6($s0)
/* 7BFA4 8008B7A4 2128C003 */  addu       $a1, $fp, $zero
/* 7BFA8 8008B7A8 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BFAC 8008B7AC 1400B1AF */  sw         $s1, 0x14($sp)
/* 7BFB0 8008B7B0 0C000286 */  lh         $v0, 0xc($s0)
/* 7BFB4 8008B7B4 FFFF0824 */  addiu      $t0, $zero, -1
/* 7BFB8 8008B7B8 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7BFBC 8008B7BC 5800C624 */  addiu      $a2, $a2, 0x58
/* 7BFC0 8008B7C0 4000E724 */  addiu      $a3, $a3, 0x40
/* 7BFC4 8008B7C4 1769010C */  jal        FUN_8005a45c
/* 7BFC8 8008B7C8 1800A2AF */   sw        $v0, 0x18($sp)
/* 7BFCC 8008B7CC 2120E002 */  addu       $a0, $s7, $zero
/* 7BFD0 8008B7D0 16000686 */  lh         $a2, 0x16($s0)
/* 7BFD4 8008B7D4 18000786 */  lh         $a3, 0x18($s0)
/* 7BFD8 8008B7D8 396D010C */  jal        FUN_8005b4e4
/* 7BFDC 8008B7DC 2128C003 */   addu      $a1, $fp, $zero
/* 7BFE0 8008B7E0 2120E002 */  addu       $a0, $s7, $zero
/* 7BFE4 8008B7E4 2128C003 */  addu       $a1, $fp, $zero
/* 7BFE8 8008B7E8 21304002 */  addu       $a2, $s2, $zero
/* 7BFEC 8008B7EC 21388002 */  addu       $a3, $s4, $zero
/* 7BFF0 8008B7F0 1000B1AF */  sw         $s1, 0x10($sp)
/* 7BFF4 8008B7F4 976D010C */  jal        FUN_8005b65c
/* 7BFF8 8008B7F8 1400B1AF */   sw        $s1, 0x14($sp)
/* 7BFFC 8008B7FC 2120E002 */  addu       $a0, $s7, $zero
/* 7C000 8008B800 2128C003 */  addu       $a1, $fp, $zero
/* 7C004 8008B804 80000624 */  addiu      $a2, $zero, 0x80
/* 7C008 8008B808 2138C000 */  addu       $a3, $a2, $zero
/* 7C00C 8008B80C 2140C000 */  addu       $t0, $a2, $zero
/* 7C010 8008B810 EB6C010C */  jal        FUN_8005b3ac
/* 7C014 8008B814 1000A8AF */   sw        $t0, 0x10($sp)
/* 7C018 8008B818 00100224 */  addiu      $v0, $zero, 0x1000
/* 7C01C 8008B81C 5F00C212 */  beq        $s6, $v0, .L8008B99C
/* 7C020 8008B820 0100DE27 */   addiu     $fp, $fp, 1
/* 7C024 8008B824 2A10C202 */  slt        $v0, $s6, $v0
/* 7C028 8008B828 35004010 */  beqz       $v0, .L8008B900
/* 7C02C 8008B82C FF000524 */   addiu     $a1, $zero, 0xff
/* 7C030 8008B830 80000624 */  addiu      $a2, $zero, 0x80
/* 7C034 8008B834 60FF0824 */  addiu      $t0, $zero, -0xa0
/* 7C038 8008B838 1000A8AF */  sw         $t0, 0x10($sp)
/* 7C03C 8008B83C D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7C040 8008B840 20020225 */  addiu      $v0, $t0, 0x220
/* 7C044 8008B844 60FF0824 */  addiu      $t0, $zero, -0xa0
/* 7C048 8008B848 F0001225 */  addiu      $s2, $t0, 0xf0
/* 7C04C 8008B84C 24001124 */  addiu      $s1, $zero, 0x24
/* 7C050 8008B850 1380083C */  lui        $t0, %hi(D_801280E0)
/* 7C054 8008B854 E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 7C058 8008B858 1800A2AF */  sw         $v0, 0x18($sp)
/* 7C05C 8008B85C 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 7C060 8008B860 2000B1AF */  sw         $s1, 0x20($sp)
/* 7C064 8008B864 59000391 */  lbu        $v1, 0x59($t0)
/* 7C068 8008B868 1380083C */  lui        $t0, %hi(D_801282E0)
/* 7C06C 8008B86C E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 7C070 8008B870 C0100300 */  sll        $v0, $v1, 3
/* 7C074 8008B874 23104300 */  subu       $v0, $v0, $v1
/* 7C078 8008B878 80100200 */  sll        $v0, $v0, 2
/* 7C07C 8008B87C 21104800 */  addu       $v0, $v0, $t0
/* 7C080 8008B880 5800A88F */  lw         $t0, 0x58($sp)
/* 7C084 8008B884 94001024 */  addiu      $s0, $zero, 0x94
/* 7C088 8008B888 2400B0AF */  sw         $s0, 0x24($sp)
/* 7C08C 8008B88C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7C090 8008B890 E80A048D */  lw         $a0, 0xae8($t0)
/* 7C094 8008B894 D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7C098 8008B898 3DAD010C */  jal        FUN_8006b4f4
/* 7C09C 8008B89C E0000725 */   addiu     $a3, $t0, 0xe0
/* 7C0A0 8008B8A0 5800A88F */  lw         $t0, 0x58($sp)
/* 7C0A4 8008B8A4 FF000524 */  addiu      $a1, $zero, 0xff
/* 7C0A8 8008B8A8 E80A02AD */  sw         $v0, 0xae8($t0)
/* 7C0AC 8008B8AC 1380083C */  lui        $t0, %hi(D_801280E0)
/* 7C0B0 8008B8B0 E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 7C0B4 8008B8B4 59000391 */  lbu        $v1, 0x59($t0)
/* 7C0B8 8008B8B8 60FF0824 */  addiu      $t0, $zero, -0xa0
/* 7C0BC 8008B8BC 1000A8AF */  sw         $t0, 0x10($sp)
/* 7C0C0 8008B8C0 1380083C */  lui        $t0, %hi(D_801282E0)
/* 7C0C4 8008B8C4 E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 7C0C8 8008B8C8 C0100300 */  sll        $v0, $v1, 3
/* 7C0CC 8008B8CC 23104300 */  subu       $v0, $v0, $v1
/* 7C0D0 8008B8D0 80100200 */  sll        $v0, $v0, 2
/* 7C0D4 8008B8D4 21104800 */  addu       $v0, $v0, $t0
/* 7C0D8 8008B8D8 5800A88F */  lw         $t0, 0x58($sp)
/* 7C0DC 8008B8DC 80000624 */  addiu      $a2, $zero, 0x80
/* 7C0E0 8008B8E0 1800A0AF */  sw         $zero, 0x18($sp)
/* 7C0E4 8008B8E4 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 7C0E8 8008B8E8 2000B1AF */  sw         $s1, 0x20($sp)
/* 7C0EC 8008B8EC 2400B0AF */  sw         $s0, 0x24($sp)
/* 7C0F0 8008B8F0 1400A2AF */  sw         $v0, 0x14($sp)
/* 7C0F4 8008B8F4 E80A048D */  lw         $a0, 0xae8($t0)
/* 7C0F8 8008B8F8 622E0208 */  j          .L8008B988
/* 7C0FC 8008B8FC C0FE0724 */   addiu     $a3, $zero, -0x140
.L8008B900:
/* 7C100 8008B900 0110C22A */  slti       $v0, $s6, 0x1001
/* 7C104 8008B904 26004014 */  bnez       $v0, .L8008B9A0
/* 7C108 8008B908 2110C003 */   addu      $v0, $fp, $zero
/* 7C10C 8008B90C FE000324 */  addiu      $v1, $zero, 0xfe
/* 7C110 8008B910 D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7C114 8008B914 23381501 */  subu       $a3, $t0, $s5
/* 7C118 8008B918 21106000 */  addu       $v0, $v1, $zero
/* 7C11C 8008B91C 2A104700 */  slt        $v0, $v0, $a3
/* 7C120 8008B920 02004014 */  bnez       $v0, .L8008B92C
/* 7C124 8008B924 FF000524 */   addiu     $a1, $zero, 0xff
/* 7C128 8008B928 2118E000 */  addu       $v1, $a3, $zero
.L8008B92C:
/* 7C12C 8008B92C 60FF0824 */  addiu      $t0, $zero, -0xa0
/* 7C130 8008B930 4402A226 */  addiu      $v0, $s5, 0x244
/* 7C134 8008B934 1800A2AF */  sw         $v0, 0x18($sp)
/* 7C138 8008B938 F0000225 */  addiu      $v0, $t0, 0xf0
/* 7C13C 8008B93C 1000A8AF */  sw         $t0, 0x10($sp)
/* 7C140 8008B940 1380083C */  lui        $t0, %hi(D_801280E0)
/* 7C144 8008B944 E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 7C148 8008B948 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 7C14C 8008B94C 94000224 */  addiu      $v0, $zero, 0x94
/* 7C150 8008B950 2000A3AF */  sw         $v1, 0x20($sp)
/* 7C154 8008B954 59000391 */  lbu        $v1, 0x59($t0)
/* 7C158 8008B958 1380083C */  lui        $t0, %hi(D_801282E0)
/* 7C15C 8008B95C E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 7C160 8008B960 2400A2AF */  sw         $v0, 0x24($sp)
/* 7C164 8008B964 C0100300 */  sll        $v0, $v1, 3
/* 7C168 8008B968 23104300 */  subu       $v0, $v0, $v1
/* 7C16C 8008B96C 80100200 */  sll        $v0, $v0, 2
/* 7C170 8008B970 21104800 */  addu       $v0, $v0, $t0
/* 7C174 8008B974 5800A88F */  lw         $t0, 0x58($sp)
/* 7C178 8008B978 80000624 */  addiu      $a2, $zero, 0x80
/* 7C17C 8008B97C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7C180 8008B980 E80A048D */  lw         $a0, 0xae8($t0)
/* 7C184 8008B984 0401A726 */  addiu      $a3, $s5, 0x104
.L8008B988:
/* 7C188 8008B988 3DAD010C */  jal        FUN_8006b4f4
/* 7C18C 8008B98C 00000000 */   nop
/* 7C190 8008B990 5800A88F */  lw         $t0, 0x58($sp)
/* 7C194 8008B994 00000000 */  nop
/* 7C198 8008B998 E80A02AD */  sw         $v0, 0xae8($t0)
.L8008B99C:
/* 7C19C 8008B99C 2110C003 */  addu       $v0, $fp, $zero
.L8008B9A0:
/* 7C1A0 8008B9A0 5400BF8F */  lw         $ra, 0x54($sp)
/* 7C1A4 8008B9A4 5000BE8F */  lw         $fp, 0x50($sp)
/* 7C1A8 8008B9A8 4C00B78F */  lw         $s7, 0x4c($sp)
/* 7C1AC 8008B9AC 4800B68F */  lw         $s6, 0x48($sp)
/* 7C1B0 8008B9B0 4400B58F */  lw         $s5, 0x44($sp)
/* 7C1B4 8008B9B4 4000B48F */  lw         $s4, 0x40($sp)
/* 7C1B8 8008B9B8 3C00B38F */  lw         $s3, 0x3c($sp)
/* 7C1BC 8008B9BC 3800B28F */  lw         $s2, 0x38($sp)
/* 7C1C0 8008B9C0 3400B18F */  lw         $s1, 0x34($sp)
/* 7C1C4 8008B9C4 3000B08F */  lw         $s0, 0x30($sp)
/* 7C1C8 8008B9C8 0800E003 */  jr         $ra
/* 7C1CC 8008B9CC 5800BD27 */   addiu     $sp, $sp, 0x58
