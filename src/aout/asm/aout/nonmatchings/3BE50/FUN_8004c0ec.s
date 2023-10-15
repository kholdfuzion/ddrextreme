.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004c0ec
/* 3C8EC 8004C0EC A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 3C8F0 8004C0F0 4C00B7AF */  sw         $s7, 0x4c($sp)
/* 3C8F4 8004C0F4 21B88000 */  addu       $s7, $a0, $zero
/* 3C8F8 8004C0F8 6400A7AF */  sw         $a3, 0x64($sp)
/* 3C8FC 8004C0FC 2000E228 */  slti       $v0, $a3, 0x20
/* 3C900 8004C100 5400BFAF */  sw         $ra, 0x54($sp)
/* 3C904 8004C104 5000BEAF */  sw         $fp, 0x50($sp)
/* 3C908 8004C108 4800B6AF */  sw         $s6, 0x48($sp)
/* 3C90C 8004C10C 4400B5AF */  sw         $s5, 0x44($sp)
/* 3C910 8004C110 4000B4AF */  sw         $s4, 0x40($sp)
/* 3C914 8004C114 3C00B3AF */  sw         $s3, 0x3c($sp)
/* 3C918 8004C118 3800B2AF */  sw         $s2, 0x38($sp)
/* 3C91C 8004C11C 3400B1AF */  sw         $s1, 0x34($sp)
/* 3C920 8004C120 3000B0AF */  sw         $s0, 0x30($sp)
/* 3C924 8004C124 5C00A5AF */  sw         $a1, 0x5c($sp)
/* 3C928 8004C128 06004010 */  beqz       $v0, .L8004C144
/* 3C92C 8004C12C 6000A6AF */   sw        $a2, 0x60($sp)
/* 3C930 8004C130 2000E224 */  addiu      $v0, $a3, 0x20
/* 3C934 8004C134 C21F0200 */  srl        $v1, $v0, 0x1f
/* 3C938 8004C138 21104300 */  addu       $v0, $v0, $v1
/* 3C93C 8004C13C 52300108 */  j          .L8004C148
/* 3C940 8004C140 43100200 */   sra       $v0, $v0, 1
.L8004C144:
/* 3C944 8004C144 20000224 */  addiu      $v0, $zero, 0x20
.L8004C148:
/* 3C948 8004C148 1000A2AF */  sw         $v0, 0x10($sp)
/* 3C94C 8004C14C FFFF0224 */  addiu      $v0, $zero, -1
/* 3C950 8004C150 7800A38F */  lw         $v1, 0x78($sp)
/* 3C954 8004C154 7000A48F */  lw         $a0, 0x70($sp)
/* 3C958 8004C158 20006324 */  addiu      $v1, $v1, 0x20
/* 3C95C 8004C15C 06008214 */  bne        $a0, $v0, .L8004C178
/* 3C960 8004C160 7800A3AF */   sw        $v1, 0x78($sp)
/* 3C964 8004C164 A1FF0224 */  addiu      $v0, $zero, -0x5f
/* 3C968 8004C168 51000324 */  addiu      $v1, $zero, 0x51
/* 3C96C 8004C16C 1400A2AF */  sw         $v0, 0x14($sp)
/* 3C970 8004C170 71300108 */  j          .L8004C1C4
/* 3C974 8004C174 1800A3AF */   sw        $v1, 0x18($sp)
.L8004C178:
/* 3C978 8004C178 6800A48F */  lw         $a0, 0x68($sp)
/* 3C97C 8004C17C 00000000 */  nop
/* 3C980 8004C180 08008010 */  beqz       $a0, .L8004C1A4
/* 3C984 8004C184 01000224 */   addiu     $v0, $zero, 1
/* 3C988 8004C188 7000A38F */  lw         $v1, 0x70($sp)
/* 3C98C 8004C18C 6C00A48F */  lw         $a0, 0x6c($sp)
/* 3C990 8004C190 04106200 */  sllv       $v0, $v0, $v1
/* 3C994 8004C194 23108200 */  subu       $v0, $a0, $v0
/* 3C998 8004C198 1400A2AF */  sw         $v0, 0x14($sp)
/* 3C99C 8004C19C 71300108 */  j          .L8004C1C4
/* 3C9A0 8004C1A0 1800A4AF */   sw        $a0, 0x18($sp)
.L8004C1A4:
/* 3C9A4 8004C1A4 6C00A28F */  lw         $v0, 0x6c($sp)
/* 3C9A8 8004C1A8 7000A38F */  lw         $v1, 0x70($sp)
/* 3C9AC 8004C1AC 1400A2AF */  sw         $v0, 0x14($sp)
/* 3C9B0 8004C1B0 01000224 */  addiu      $v0, $zero, 1
/* 3C9B4 8004C1B4 1400A48F */  lw         $a0, 0x14($sp)
/* 3C9B8 8004C1B8 04106200 */  sllv       $v0, $v0, $v1
/* 3C9BC 8004C1BC 21108200 */  addu       $v0, $a0, $v0
/* 3C9C0 8004C1C0 1800A2AF */  sw         $v0, 0x18($sp)
.L8004C1C4:
/* 3C9C4 8004C1C4 21400000 */  addu       $t0, $zero, $zero
/* 3C9C8 8004C1C8 07000224 */  addiu      $v0, $zero, 7
/* 3C9CC 8004C1CC 7000A38F */  lw         $v1, 0x70($sp)
/* 3C9D0 8004C1D0 5C00A48F */  lw         $a0, 0x5c($sp)
/* 3C9D4 8004C1D4 23F04300 */  subu       $fp, $v0, $v1
/* 3C9D8 8004C1D8 8000A38F */  lw         $v1, 0x80($sp)
/* 3C9DC 8004C1DC 1F008424 */  addiu      $a0, $a0, 0x1f
/* 3C9E0 8004C1E0 1C00A4AF */  sw         $a0, 0x1c($sp)
/* 3C9E4 8004C1E4 80190300 */  sll        $v1, $v1, 6
/* 3C9E8 8004C1E8 2000A3AF */  sw         $v1, 0x20($sp)
.L8004C1EC:
/* 3C9EC 8004C1EC 06000015 */  bnez       $t0, .L8004C208
/* 3C9F0 8004C1F0 01000224 */   addiu     $v0, $zero, 1
/* 3C9F4 8004C1F4 6000B18F */  lw         $s1, 0x60($sp)
/* 3C9F8 8004C1F8 1000A48F */  lw         $a0, 0x10($sp)
/* 3C9FC 8004C1FC 7800B48F */  lw         $s4, 0x78($sp)
/* 3CA00 8004C200 A2300108 */  j          .L8004C288
/* 3CA04 8004C204 21A88000 */   addu      $s5, $a0, $zero
.L8004C208:
/* 3CA08 8004C208 08000215 */  bne        $t0, $v0, .L8004C22C
/* 3CA0C 8004C20C 01001524 */   addiu     $s5, $zero, 1
/* 3CA10 8004C210 6000A28F */  lw         $v0, 0x60($sp)
/* 3CA14 8004C214 6400A38F */  lw         $v1, 0x64($sp)
/* 3CA18 8004C218 20005124 */  addiu      $s1, $v0, 0x20
/* 3CA1C 8004C21C 7800A28F */  lw         $v0, 0x78($sp)
/* 3CA20 8004C220 E0FF6424 */  addiu      $a0, $v1, -0x20
/* 3CA24 8004C224 A2300108 */  j          .L8004C288
/* 3CA28 8004C228 20005424 */   addiu     $s4, $v0, 0x20
.L8004C22C:
/* 3CA2C 8004C22C 1000A38F */  lw         $v1, 0x10($sp)
/* 3CA30 8004C230 00000000 */  nop
/* 3CA34 8004C234 20006228 */  slti       $v0, $v1, 0x20
/* 3CA38 8004C238 0C004010 */  beqz       $v0, .L8004C26C
/* 3CA3C 8004C23C E0FF6224 */   addiu     $v0, $v1, -0x20
/* 3CA40 8004C240 6000A48F */  lw         $a0, 0x60($sp)
/* 3CA44 8004C244 00000000 */  nop
/* 3CA48 8004C248 21888300 */  addu       $s1, $a0, $v1
/* 3CA4C 8004C24C 6400A38F */  lw         $v1, 0x64($sp)
/* 3CA50 8004C250 00000000 */  nop
/* 3CA54 8004C254 23206200 */  subu       $a0, $v1, $v0
/* 3CA58 8004C258 40FF8324 */  addiu      $v1, $a0, -0xc0
/* 3CA5C 8004C25C 7800A28F */  lw         $v0, 0x78($sp)
/* 3CA60 8004C260 21A88000 */  addu       $s5, $a0, $zero
/* 3CA64 8004C264 A2300108 */  j          .L8004C288
/* 3CA68 8004C268 23A04300 */   subu      $s4, $v0, $v1
.L8004C26C:
/* 3CA6C 8004C26C 20001524 */  addiu      $s5, $zero, 0x20
/* 3CA70 8004C270 6000A38F */  lw         $v1, 0x60($sp)
/* 3CA74 8004C274 6400A48F */  lw         $a0, 0x64($sp)
/* 3CA78 8004C278 7800A28F */  lw         $v0, 0x78($sp)
/* 3CA7C 8004C27C 21886400 */  addu       $s1, $v1, $a0
/* 3CA80 8004C280 20000424 */  addiu      $a0, $zero, 0x20
/* 3CA84 8004C284 A0005424 */  addiu      $s4, $v0, 0xa0
.L8004C288:
/* 3CA88 8004C288 8D008018 */  blez       $a0, .L8004C4C0
/* 3CA8C 8004C28C 21102402 */   addu      $v0, $s1, $a0
/* 3CA90 8004C290 1800A38F */  lw         $v1, 0x18($sp)
/* 3CA94 8004C294 00000000 */  nop
/* 3CA98 8004C298 23284300 */  subu       $a1, $v0, $v1
/* 3CA9C 8004C29C 1400A28F */  lw         $v0, 0x14($sp)
/* 3CAA0 8004C2A0 00000000 */  nop
/* 3CAA4 8004C2A4 23185100 */  subu       $v1, $v0, $s1
/* 3CAA8 8004C2A8 2A10A400 */  slt        $v0, $a1, $a0
/* 3CAAC 8004C2AC 84004010 */  beqz       $v0, .L8004C4C0
/* 3CAB0 8004C2B0 2A106400 */   slt       $v0, $v1, $a0
/* 3CAB4 8004C2B4 82004010 */  beqz       $v0, .L8004C4C0
/* 3CAB8 8004C2B8 00000000 */   nop
/* 3CABC 8004C2BC 02006104 */  bgez       $v1, .L8004C2C8
/* 3CAC0 8004C2C0 00000000 */   nop
/* 3CAC4 8004C2C4 21180000 */  addu       $v1, $zero, $zero
.L8004C2C8:
/* 3CAC8 8004C2C8 0200A104 */  bgez       $a1, .L8004C2D4
/* 3CACC 8004C2CC 00000000 */   nop
/* 3CAD0 8004C2D0 21280000 */  addu       $a1, $zero, $zero
.L8004C2D4:
/* 3CAD4 8004C2D4 23208500 */  subu       $a0, $a0, $a1
/* 3CAD8 8004C2D8 21882302 */  addu       $s1, $s1, $v1
/* 3CADC 8004C2DC 01000224 */  addiu      $v0, $zero, 1
/* 3CAE0 8004C2E0 04000211 */  beq        $t0, $v0, .L8004C2F4
/* 3CAE4 8004C2E4 23208300 */   subu      $a0, $a0, $v1
/* 3CAE8 8004C2E8 23A8A502 */  subu       $s5, $s5, $a1
/* 3CAEC 8004C2EC 21A08302 */  addu       $s4, $s4, $v1
/* 3CAF0 8004C2F0 23A8A302 */  subu       $s5, $s5, $v1
.L8004C2F4:
/* 3CAF4 8004C2F4 7000A38F */  lw         $v1, 0x70($sp)
/* 3CAF8 8004C2F8 FFFF0224 */  addiu      $v0, $zero, -1
/* 3CAFC 8004C2FC 04006214 */  bne        $v1, $v0, .L8004C310
/* 3CB00 8004C300 21B02402 */   addu      $s6, $s1, $a0
/* 3CB04 8004C304 6C00B28F */  lw         $s2, 0x6c($sp)
/* 3CB08 8004C308 DA300108 */  j          .L8004C368
/* 3CB0C 8004C30C 21984002 */   addu      $s3, $s2, $zero
.L8004C310:
/* 3CB10 8004C310 6800A28F */  lw         $v0, 0x68($sp)
/* 3CB14 8004C314 00000000 */  nop
/* 3CB18 8004C318 0A004010 */  beqz       $v0, .L8004C344
/* 3CB1C 8004C31C 00000000 */   nop
/* 3CB20 8004C320 1400A38F */  lw         $v1, 0x14($sp)
/* 3CB24 8004C324 00000000 */  nop
/* 3CB28 8004C328 23102302 */  subu       $v0, $s1, $v1
/* 3CB2C 8004C32C 0498C203 */  sllv       $s3, $v0, $fp
/* 3CB30 8004C330 21182402 */  addu       $v1, $s1, $a0
/* 3CB34 8004C334 1400A48F */  lw         $a0, 0x14($sp)
/* 3CB38 8004C338 21B06000 */  addu       $s6, $v1, $zero
/* 3CB3C 8004C33C D9300108 */  j          .L8004C364
/* 3CB40 8004C340 23106400 */   subu      $v0, $v1, $a0
.L8004C344:
/* 3CB44 8004C344 1800A38F */  lw         $v1, 0x18($sp)
/* 3CB48 8004C348 00000000 */  nop
/* 3CB4C 8004C34C 23107100 */  subu       $v0, $v1, $s1
/* 3CB50 8004C350 0498C203 */  sllv       $s3, $v0, $fp
/* 3CB54 8004C354 21182402 */  addu       $v1, $s1, $a0
/* 3CB58 8004C358 1800A48F */  lw         $a0, 0x18($sp)
/* 3CB5C 8004C35C 21B06000 */  addu       $s6, $v1, $zero
/* 3CB60 8004C360 23108300 */  subu       $v0, $a0, $v1
.L8004C364:
/* 3CB64 8004C364 0490C203 */  sllv       $s2, $v0, $fp
.L8004C368:
/* 3CB68 8004C368 2120E002 */  addu       $a0, $s7, $zero
/* 3CB6C 8004C36C 0FAD010C */  jal        FUN_8006b43c
/* 3CB70 8004C370 2800A8AF */   sw        $t0, 0x28($sp)
/* 3CB74 8004C374 0100E426 */  addiu      $a0, $s7, 1
/* 3CB78 8004C378 0FAD010C */  jal        FUN_8006b43c
/* 3CB7C 8004C37C 21804000 */   addu      $s0, $v0, $zero
/* 3CB80 8004C380 0C000324 */  addiu      $v1, $zero, 0xc
/* 3CB84 8004C384 3C000224 */  addiu      $v0, $zero, 0x3c
/* 3CB88 8004C388 0200F726 */  addiu      $s7, $s7, 2
/* 3CB8C 8004C38C 00FF8632 */  andi       $a2, $s4, 0xff00
/* 3CB90 8004C390 030003A2 */  sb         $v1, 3($s0)
/* 3CB94 8004C394 070002A2 */  sb         $v0, 7($s0)
/* 3CB98 8004C398 7400A38F */  lw         $v1, 0x74($sp)
/* 3CB9C 8004C39C 2800A88F */  lw         $t0, 0x28($sp)
/* 3CBA0 8004C3A0 83100300 */  sra        $v0, $v1, 2
/* 3CBA4 8004C3A4 C0FF4730 */  andi       $a3, $v0, 0xffc0
/* 3CBA8 8004C3A8 FF006430 */  andi       $a0, $v1, 0xff
/* 3CBAC 8004C3AC 8400A38F */  lw         $v1, 0x84($sp)
/* 3CBB0 8004C3B0 FFFF0224 */  addiu      $v0, $zero, -1
/* 3CBB4 8004C3B4 03006210 */  beq        $v1, $v0, .L8004C3C4
/* 3CBB8 8004C3B8 FF008532 */   andi      $a1, $s4, 0xff
/* 3CBBC 8004C3BC F2300108 */  j          .L8004C3C8
/* 3CBC0 8004C3C0 3E000224 */   addiu     $v0, $zero, 0x3e
.L8004C3C4:
/* 3CBC4 8004C3C4 3C000224 */  addiu      $v0, $zero, 0x3c
.L8004C3C8:
/* 3CBC8 8004C3C8 070002A2 */  sb         $v0, 7($s0)
/* 3CBCC 8004C3CC 5C00A28F */  lw         $v0, 0x5c($sp)
/* 3CBD0 8004C3D0 0A0011A6 */  sh         $s1, 0xa($s0)
/* 3CBD4 8004C3D4 080002A6 */  sh         $v0, 8($s0)
/* 3CBD8 8004C3D8 1C00A38F */  lw         $v1, 0x1c($sp)
/* 3CBDC 8004C3DC 200002A6 */  sh         $v0, 0x20($s0)
/* 3CBE0 8004C3E0 2110B500 */  addu       $v0, $a1, $s5
/* 3CBE4 8004C3E4 160011A6 */  sh         $s1, 0x16($s0)
/* 3CBE8 8004C3E8 220016A6 */  sh         $s6, 0x22($s0)
/* 3CBEC 8004C3EC 2E0016A6 */  sh         $s6, 0x2e($s0)
/* 3CBF0 8004C3F0 0C0004A2 */  sb         $a0, 0xc($s0)
/* 3CBF4 8004C3F4 0D0005A2 */  sb         $a1, 0xd($s0)
/* 3CBF8 8004C3F8 190005A2 */  sb         $a1, 0x19($s0)
/* 3CBFC 8004C3FC 240004A2 */  sb         $a0, 0x24($s0)
/* 3CC00 8004C400 250002A2 */  sb         $v0, 0x25($s0)
/* 3CC04 8004C404 310002A2 */  sb         $v0, 0x31($s0)
/* 3CC08 8004C408 040013A2 */  sb         $s3, 4($s0)
/* 3CC0C 8004C40C 050013A2 */  sb         $s3, 5($s0)
/* 3CC10 8004C410 060013A2 */  sb         $s3, 6($s0)
/* 3CC14 8004C414 100013A2 */  sb         $s3, 0x10($s0)
/* 3CC18 8004C418 110013A2 */  sb         $s3, 0x11($s0)
/* 3CC1C 8004C41C 120013A2 */  sb         $s3, 0x12($s0)
/* 3CC20 8004C420 1C0012A2 */  sb         $s2, 0x1c($s0)
/* 3CC24 8004C424 1D0012A2 */  sb         $s2, 0x1d($s0)
/* 3CC28 8004C428 1E0012A2 */  sb         $s2, 0x1e($s0)
/* 3CC2C 8004C42C 280012A2 */  sb         $s2, 0x28($s0)
/* 3CC30 8004C430 290012A2 */  sb         $s2, 0x29($s0)
/* 3CC34 8004C434 2A0012A2 */  sb         $s2, 0x2a($s0)
/* 3CC38 8004C438 140003A6 */  sh         $v1, 0x14($s0)
/* 3CC3C 8004C43C 2C0003A6 */  sh         $v1, 0x2c($s0)
/* 3CC40 8004C440 1F008324 */  addiu      $v1, $a0, 0x1f
/* 3CC44 8004C444 180003A2 */  sb         $v1, 0x18($s0)
/* 3CC48 8004C448 300003A2 */  sb         $v1, 0x30($s0)
/* 3CC4C 8004C44C 7C00A48F */  lw         $a0, 0x7c($sp)
/* 3CC50 8004C450 2000A38F */  lw         $v1, 0x20($sp)
/* 3CC54 8004C454 03110400 */  sra        $v0, $a0, 4
/* 3CC58 8004C458 3F004230 */  andi       $v0, $v0, 0x3f
/* 3CC5C 8004C45C 25106200 */  or         $v0, $v1, $v0
/* 3CC60 8004C460 FF03E330 */  andi       $v1, $a3, 0x3ff
/* 3CC64 8004C464 0E0002A6 */  sh         $v0, 0xe($s0)
/* 3CC68 8004C468 8400A28F */  lw         $v0, 0x84($sp)
/* 3CC6C 8004C46C 83190300 */  sra        $v1, $v1, 6
/* 3CC70 8004C470 03004430 */  andi       $a0, $v0, 3
/* 3CC74 8004C474 40210400 */  sll        $a0, $a0, 5
/* 3CC78 8004C478 00008434 */  ori        $a0, $a0, 0
/* 3CC7C 8004C47C 0001C230 */  andi       $v0, $a2, 0x100
/* 3CC80 8004C480 03110200 */  sra        $v0, $v0, 4
/* 3CC84 8004C484 25208200 */  or         $a0, $a0, $v0
/* 3CC88 8004C488 25208300 */  or         $a0, $a0, $v1
/* 3CC8C 8004C48C 0002C230 */  andi       $v0, $a2, 0x200
/* 3CC90 8004C490 80100200 */  sll        $v0, $v0, 2
/* 3CC94 8004C494 25208200 */  or         $a0, $a0, $v0
/* 3CC98 8004C498 1380023C */  lui        $v0, %hi(D_8012A9D4)
/* 3CC9C 8004C49C 1A0004A6 */  sh         $a0, 0x1a($s0)
/* 3CCA0 8004C4A0 D4A9438C */  lw         $v1, %lo(D_8012A9D4)($v0)
/* 3CCA4 8004C4A4 00000000 */  nop
/* 3CCA8 8004C4A8 0400648C */  lw         $a0, 4($v1)
/* 3CCAC 8004C4AC 21280002 */  addu       $a1, $s0, $zero
/* 3CCB0 8004C4B0 2800A8AF */  sw         $t0, 0x28($sp)
/* 3CCB4 8004C4B4 D685000C */  jal        AddPrim
/* 3CCB8 8004C4B8 EC038424 */   addiu     $a0, $a0, 0x3ec
/* 3CCBC 8004C4BC 2800A88F */  lw         $t0, 0x28($sp)
.L8004C4C0:
/* 3CCC0 8004C4C0 00000000 */  nop
/* 3CCC4 8004C4C4 01000825 */  addiu      $t0, $t0, 1
/* 3CCC8 8004C4C8 03000229 */  slti       $v0, $t0, 3
/* 3CCCC 8004C4CC 47FF4014 */  bnez       $v0, .L8004C1EC
/* 3CCD0 8004C4D0 2110E002 */   addu      $v0, $s7, $zero
/* 3CCD4 8004C4D4 5400BF8F */  lw         $ra, 0x54($sp)
/* 3CCD8 8004C4D8 5000BE8F */  lw         $fp, 0x50($sp)
/* 3CCDC 8004C4DC 4C00B78F */  lw         $s7, 0x4c($sp)
/* 3CCE0 8004C4E0 4800B68F */  lw         $s6, 0x48($sp)
/* 3CCE4 8004C4E4 4400B58F */  lw         $s5, 0x44($sp)
/* 3CCE8 8004C4E8 4000B48F */  lw         $s4, 0x40($sp)
/* 3CCEC 8004C4EC 3C00B38F */  lw         $s3, 0x3c($sp)
/* 3CCF0 8004C4F0 3800B28F */  lw         $s2, 0x38($sp)
/* 3CCF4 8004C4F4 3400B18F */  lw         $s1, 0x34($sp)
/* 3CCF8 8004C4F8 3000B08F */  lw         $s0, 0x30($sp)
/* 3CCFC 8004C4FC 0800E003 */  jr         $ra
/* 3CD00 8004C500 5800BD27 */   addiu     $sp, $sp, 0x58
