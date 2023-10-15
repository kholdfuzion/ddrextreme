.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abfb8
/* 9C7B8 800ABFB8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 9C7BC 800ABFBC 1C80023C */  lui        $v0, %hi(D_801C4658)
/* 9C7C0 800ABFC0 58464524 */  addiu      $a1, $v0, %lo(D_801C4658)
/* 9C7C4 800ABFC4 14000624 */  addiu      $a2, $zero, 0x14
/* 9C7C8 800ABFC8 3400BFAF */  sw         $ra, 0x34($sp)
/* 9C7CC 800ABFCC 3000B2AF */  sw         $s2, 0x30($sp)
/* 9C7D0 800ABFD0 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 9C7D4 800ABFD4 2800B0AF */  sw         $s0, 0x28($sp)
/* 9C7D8 800ABFD8 0B00A490 */  lbu        $a0, 0xb($a1)
/* 9C7DC 800ABFDC 00000000 */  nop
/* 9C7E0 800ABFE0 04008610 */  beq        $a0, $a2, .L800ABFF4
/* 9C7E4 800ABFE4 21904000 */   addu      $s2, $v0, $zero
/* 9C7E8 800ABFE8 08000224 */  addiu      $v0, $zero, 8
/* 9C7EC 800ABFEC 0B008214 */  bne        $a0, $v0, .L800AC01C
/* 9C7F0 800ABFF0 00000000 */   nop
.L800ABFF4:
/* 9C7F4 800ABFF4 0C00A390 */  lbu        $v1, 0xc($a1)
/* 9C7F8 800ABFF8 00000000 */  nop
/* 9C7FC 800ABFFC 03006610 */  beq        $v1, $a2, .L800AC00C
/* 9C800 800AC000 08000224 */   addiu     $v0, $zero, 8
/* 9C804 800AC004 05006214 */  bne        $v1, $v0, .L800AC01C
/* 9C808 800AC008 00000000 */   nop
.L800AC00C:
/* 9C80C 800AC00C 0900A290 */  lbu        $v0, 9($a1)
/* 9C810 800AC010 00000000 */  nop
/* 9C814 800AC014 43014010 */  beqz       $v0, .L800AC524
/* 9C818 800AC018 01000224 */   addiu     $v0, $zero, 1
.L800AC01C:
/* 9C81C 800AC01C AAAF020C */  jal        FUN_800abea8
/* 9C820 800AC020 21200000 */   addu      $a0, $zero, $zero
/* 9C824 800AC024 AAAF020C */  jal        FUN_800abea8
/* 9C828 800AC028 01000424 */   addiu     $a0, $zero, 1
/* 9C82C 800AC02C 58464326 */  addiu      $v1, $s2, 0x4658
/* 9C830 800AC030 09006290 */  lbu        $v0, 9($v1)
/* 9C834 800AC034 00000000 */  nop
/* 9C838 800AC038 21186200 */  addu       $v1, $v1, $v0
/* 9C83C 800AC03C 0B006390 */  lbu        $v1, 0xb($v1)
/* 9C840 800AC040 00000000 */  nop
/* 9C844 800AC044 1500622C */  sltiu      $v0, $v1, 0x15
/* 9C848 800AC048 12014010 */  beqz       $v0, .L800AC494
/* 9C84C 800AC04C 0180023C */   lui       $v0, %hi(D_80016DE0)
/* 9C850 800AC050 E06D4224 */  addiu      $v0, $v0, %lo(D_80016DE0)
/* 9C854 800AC054 80180300 */  sll        $v1, $v1, 2
/* 9C858 800AC058 21186200 */  addu       $v1, $v1, $v0
/* 9C85C 800AC05C 0000648C */  lw         $a0, ($v1)
/* 9C860 800AC060 00000000 */  nop
/* 9C864 800AC064 08008000 */  jr         $a0
/* 9C868 800AC068 00000000 */   nop
/* 9C86C 800AC06C 58465026 */  addiu      $s0, $s2, 0x4658
/* 9C870 800AC070 09000492 */  lbu        $a0, 9($s0)
/* 9C874 800AC074 19B9020C */  jal        FUN_800ae464
/* 9C878 800AC078 21280000 */   addu      $a1, $zero, $zero
/* 9C87C 800AC07C 0A004010 */  beqz       $v0, .L800AC0A8
/* 9C880 800AC080 01000324 */   addiu     $v1, $zero, 1
/* 9C884 800AC084 09000292 */  lbu        $v0, 9($s0)
/* 9C888 800AC088 00000000 */  nop
/* 9C88C 800AC08C 21100202 */  addu       $v0, $s0, $v0
/* 9C890 800AC090 0B0043A0 */  sb         $v1, 0xb($v0)
/* 9C894 800AC094 09000492 */  lbu        $a0, 9($s0)
/* 9C898 800AC098 E3B3020C */  jal        FUN_800acf8c
/* 9C89C 800AC09C 21280000 */   addu      $a1, $zero, $zero
/* 9C8A0 800AC0A0 2AB10208 */  j          .L800AC4A8
/* 9C8A4 800AC0A4 00000000 */   nop
.L800AC0A8:
/* 9C8A8 800AC0A8 09000392 */  lbu        $v1, 9($s0)
/* 9C8AC 800AC0AC 01000224 */  addiu      $v0, $zero, 1
/* 9C8B0 800AC0B0 82006210 */  beq        $v1, $v0, .L800AC2BC
/* 9C8B4 800AC0B4 21106000 */   addu      $v0, $v1, $zero
/* 9C8B8 800AC0B8 09000292 */  lbu        $v0, 9($s0)
/* 9C8BC 800AC0BC F7B00208 */  j          .L800AC3DC
/* 9C8C0 800AC0C0 14000324 */   addiu     $v1, $zero, 0x14
/* 9C8C4 800AC0C4 1000A427 */  addiu      $a0, $sp, 0x10
/* 9C8C8 800AC0C8 05000524 */  addiu      $a1, $zero, 5
/* 9C8CC 800AC0CC 58465026 */  addiu      $s0, $s2, 0x4658
/* 9C8D0 800AC0D0 09000292 */  lbu        $v0, 9($s0)
/* 9C8D4 800AC0D4 0180033C */  lui        $v1, %hi(D_80016DC8)
/* 9C8D8 800AC0D8 C86D6924 */  addiu      $t1, $v1, %lo(D_80016DC8)
/* 9C8DC 800AC0DC 03002689 */  lwl        $a2, 3($t1)
/* 9C8E0 800AC0E0 00002699 */  lwr        $a2, ($t1)
/* 9C8E4 800AC0E4 07002789 */  lwl        $a3, 7($t1)
/* 9C8E8 800AC0E8 04002799 */  lwr        $a3, 4($t1)
/* 9C8EC 800AC0EC 0B002889 */  lwl        $t0, 0xb($t1)
/* 9C8F0 800AC0F0 08002899 */  lwr        $t0, 8($t1)
/* 9C8F4 800AC0F4 1300A6AB */  swl        $a2, 0x13($sp)
/* 9C8F8 800AC0F8 1000A6BB */  swr        $a2, 0x10($sp)
/* 9C8FC 800AC0FC 1700A7AB */  swl        $a3, 0x17($sp)
/* 9C900 800AC100 1400A7BB */  swr        $a3, 0x14($sp)
/* 9C904 800AC104 1B00A8AB */  swl        $t0, 0x1b($sp)
/* 9C908 800AC108 1800A8BB */  swr        $t0, 0x18($sp)
/* 9C90C 800AC10C 0F002689 */  lwl        $a2, 0xf($t1)
/* 9C910 800AC110 0C002699 */  lwr        $a2, 0xc($t1)
/* 9C914 800AC114 13002789 */  lwl        $a3, 0x13($t1)
/* 9C918 800AC118 10002799 */  lwr        $a3, 0x10($t1)
/* 9C91C 800AC11C 14002881 */  lb         $t0, 0x14($t1)
/* 9C920 800AC120 1F00A6AB */  swl        $a2, 0x1f($sp)
/* 9C924 800AC124 1C00A6BB */  swr        $a2, 0x1c($sp)
/* 9C928 800AC128 2300A7AB */  swl        $a3, 0x23($sp)
/* 9C92C 800AC12C 2000A7BB */  swr        $a3, 0x20($sp)
/* 9C930 800AC130 2400A8A3 */  sb         $t0, 0x24($sp)
/* 9C934 800AC134 15002681 */  lb         $a2, 0x15($t1)
/* 9C938 800AC138 16002781 */  lb         $a3, 0x16($t1)
/* 9C93C 800AC13C 2500A6A3 */  sb         $a2, 0x25($sp)
/* 9C940 800AC140 2600A7A3 */  sb         $a3, 0x26($sp)
/* 9C944 800AC144 31004224 */  addiu      $v0, $v0, 0x31
/* 9C948 800AC148 7F10030C */  jal        FUN_800c41fc
/* 9C94C 800AC14C 1000A2A3 */   sb        $v0, 0x10($sp)
/* 9C950 800AC150 04004104 */  bgez       $v0, .L800AC164
/* 9C954 800AC154 040002AE */   sw        $v0, 4($s0)
/* 9C958 800AC158 09000292 */  lbu        $v0, 9($s0)
/* 9C95C 800AC15C F7B00208 */  j          .L800AC3DC
/* 9C960 800AC160 11000324 */   addiu     $v1, $zero, 0x11
.L800AC164:
/* 9C964 800AC164 09000292 */  lbu        $v0, 9($s0)
/* 9C968 800AC168 F7B00208 */  j          .L800AC3DC
/* 9C96C 800AC16C 02000324 */   addiu     $v1, $zero, 2
/* 9C970 800AC170 58465026 */  addiu      $s0, $s2, 0x4658
/* 9C974 800AC174 09000492 */  lbu        $a0, 9($s0)
/* 9C978 800AC178 5DB3020C */  jal        FUN_800acd74
/* 9C97C 800AC17C 21280000 */   addu      $a1, $zero, $zero
/* 9C980 800AC180 21184000 */  addu       $v1, $v0, $zero
/* 9C984 800AC184 01000224 */  addiu      $v0, $zero, 1
/* 9C988 800AC188 04006214 */  bne        $v1, $v0, .L800AC19C
/* 9C98C 800AC18C 00000000 */   nop
/* 9C990 800AC190 09000292 */  lbu        $v0, 9($s0)
/* 9C994 800AC194 F7B00208 */  j          .L800AC3DC
/* 9C998 800AC198 03000324 */   addiu     $v1, $zero, 3
.L800AC19C:
/* 9C99C 800AC19C C2006104 */  bgez       $v1, .L800AC4A8
/* 9C9A0 800AC1A0 11000324 */   addiu     $v1, $zero, 0x11
/* 9C9A4 800AC1A4 09000292 */  lbu        $v0, 9($s0)
/* 9C9A8 800AC1A8 F9B00208 */  j          .L800AC3E4
/* 9C9AC 800AC1AC 21100202 */   addu      $v0, $s0, $v0
/* 9C9B0 800AC1B0 58465026 */  addiu      $s0, $s2, 0x4658
/* 9C9B4 800AC1B4 0400048E */  lw         $a0, 4($s0)
/* 9C9B8 800AC1B8 FFFF1124 */  addiu      $s1, $zero, -1
/* 9C9BC 800AC1BC 90009114 */  bne        $a0, $s1, .L800AC400
/* 9C9C0 800AC1C0 04000324 */   addiu     $v1, $zero, 4
/* 9C9C4 800AC1C4 09000292 */  lbu        $v0, 9($s0)
/* 9C9C8 800AC1C8 F9B00208 */  j          .L800AC3E4
/* 9C9CC 800AC1CC 21100202 */   addu      $v0, $s0, $v0
/* 9C9D0 800AC1D0 58465026 */  addiu      $s0, $s2, 0x4658
/* 9C9D4 800AC1D4 09000492 */  lbu        $a0, 9($s0)
/* 9C9D8 800AC1D8 E5B9020C */  jal        FUN_800ae794
/* 9C9DC 800AC1DC 00000000 */   nop
/* 9C9E0 800AC1E0 20004010 */  beqz       $v0, .L800AC264
/* 9C9E4 800AC1E4 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 9C9E8 800AC1E8 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 9C9EC 800AC1EC 8A008390 */  lbu        $v1, 0x8a($a0)
/* 9C9F0 800AC1F0 02000524 */  addiu      $a1, $zero, 2
/* 9C9F4 800AC1F4 06006510 */  beq        $v1, $a1, .L800AC210
/* 9C9F8 800AC1F8 0100023C */   lui       $v0, 1
/* 9C9FC 800AC1FC 21108200 */  addu       $v0, $a0, $v0
/* 9CA00 800AC200 06434390 */  lbu        $v1, 0x4306($v0)
/* 9CA04 800AC204 00000000 */  nop
/* 9CA08 800AC208 0B006514 */  bne        $v1, $a1, .L800AC238
/* 9CA0C 800AC20C 58464426 */   addiu     $a0, $s2, 0x4658
.L800AC210:
/* 9CA10 800AC210 01000424 */  addiu      $a0, $zero, 1
/* 9CA14 800AC214 09000292 */  lbu        $v0, 9($s0)
/* 9CA18 800AC218 0A000392 */  lbu        $v1, 0xa($s0)
/* 9CA1C 800AC21C 23108200 */  subu       $v0, $a0, $v0
/* 9CA20 800AC220 40100200 */  sll        $v0, $v0, 1
/* 9CA24 800AC224 04204400 */  sllv       $a0, $a0, $v0
/* 9CA28 800AC228 27200400 */  nor        $a0, $zero, $a0
/* 9CA2C 800AC22C 24186400 */  and        $v1, $v1, $a0
/* 9CA30 800AC230 0A0003A2 */  sb         $v1, 0xa($s0)
/* 9CA34 800AC234 58464426 */  addiu      $a0, $s2, 0x4658
.L800AC238:
/* 9CA38 800AC238 09008390 */  lbu        $v1, 9($a0)
/* 9CA3C 800AC23C 01000224 */  addiu      $v0, $zero, 1
/* 9CA40 800AC240 03006214 */  bne        $v1, $v0, .L800AC250
/* 9CA44 800AC244 21106000 */   addu      $v0, $v1, $zero
/* 9CA48 800AC248 B0B00208 */  j          .L800AC2C0
/* 9CA4C 800AC24C 21108200 */   addu      $v0, $a0, $v0
.L800AC250:
/* 9CA50 800AC250 09008290 */  lbu        $v0, 9($a0)
/* 9CA54 800AC254 08000324 */  addiu      $v1, $zero, 8
/* 9CA58 800AC258 21108200 */  addu       $v0, $a0, $v0
/* 9CA5C 800AC25C 2AB10208 */  j          .L800AC4A8
/* 9CA60 800AC260 0B0043A0 */   sb        $v1, 0xb($v0)
.L800AC264:
/* 9CA64 800AC264 01000324 */  addiu      $v1, $zero, 1
/* 9CA68 800AC268 09000292 */  lbu        $v0, 9($s0)
/* 9CA6C 800AC26C 09000492 */  lbu        $a0, 9($s0)
/* 9CA70 800AC270 40100200 */  sll        $v0, $v0, 1
/* 9CA74 800AC274 04184300 */  sllv       $v1, $v1, $v0
/* 9CA78 800AC278 27180300 */  nor        $v1, $zero, $v1
/* 9CA7C 800AC27C 0A000292 */  lbu        $v0, 0xa($s0)
/* 9CA80 800AC280 21200402 */  addu       $a0, $s0, $a0
/* 9CA84 800AC284 24104300 */  and        $v0, $v0, $v1
/* 9CA88 800AC288 0A0002A2 */  sb         $v0, 0xa($s0)
/* 9CA8C 800AC28C 11000224 */  addiu      $v0, $zero, 0x11
/* 9CA90 800AC290 2AB10208 */  j          .L800AC4A8
/* 9CA94 800AC294 0B0082A0 */   sb        $v0, 0xb($a0)
/* 9CA98 800AC298 58465026 */  addiu      $s0, $s2, 0x4658
/* 9CA9C 800AC29C 0400048E */  lw         $a0, 4($s0)
/* 9CAA0 800AC2A0 FFFF1124 */  addiu      $s1, $zero, -1
/* 9CAA4 800AC2A4 56009114 */  bne        $a0, $s1, .L800AC400
/* 9CAA8 800AC2A8 01000224 */   addiu     $v0, $zero, 1
/* 9CAAC 800AC2AC 09000392 */  lbu        $v1, 9($s0)
/* 9CAB0 800AC2B0 00000000 */  nop
/* 9CAB4 800AC2B4 05006214 */  bne        $v1, $v0, .L800AC2CC
/* 9CAB8 800AC2B8 21106000 */   addu      $v0, $v1, $zero
.L800AC2BC:
/* 9CABC 800AC2BC 21100202 */  addu       $v0, $s0, $v0
.L800AC2C0:
/* 9CAC0 800AC2C0 05000324 */  addiu      $v1, $zero, 5
/* 9CAC4 800AC2C4 2AB10208 */  j          .L800AC4A8
/* 9CAC8 800AC2C8 0B0043A0 */   sb        $v1, 0xb($v0)
.L800AC2CC:
/* 9CACC 800AC2CC 09000292 */  lbu        $v0, 9($s0)
/* 9CAD0 800AC2D0 F7B00208 */  j          .L800AC3DC
/* 9CAD4 800AC2D4 14000324 */   addiu     $v1, $zero, 0x14
/* 9CAD8 800AC2D8 C5AB020C */  jal        FUN_800aaf14
/* 9CADC 800AC2DC 00000000 */   nop
/* 9CAE0 800AC2E0 01000324 */  addiu      $v1, $zero, 1
/* 9CAE4 800AC2E4 24004314 */  bne        $v0, $v1, .L800AC378
/* 9CAE8 800AC2E8 58464226 */   addiu     $v0, $s2, 0x4658
/* 9CAEC 800AC2EC 09004390 */  lbu        $v1, 9($v0)
/* 9CAF0 800AC2F0 E0B00208 */  j          .L800AC380
/* 9CAF4 800AC2F4 06000424 */   addiu     $a0, $zero, 6
/* 9CAF8 800AC2F8 D1AB020C */  jal        FUN_800aaf44
/* 9CAFC 800AC2FC 00000000 */   nop
/* 9CB00 800AC300 21184000 */  addu       $v1, $v0, $zero
/* 9CB04 800AC304 01000224 */  addiu      $v0, $zero, 1
/* 9CB08 800AC308 04006214 */  bne        $v1, $v0, .L800AC31C
/* 9CB0C 800AC30C 58464226 */   addiu     $v0, $s2, 0x4658
/* 9CB10 800AC310 09004390 */  lbu        $v1, 9($v0)
/* 9CB14 800AC314 E0B00208 */  j          .L800AC380
/* 9CB18 800AC318 07000424 */   addiu     $a0, $zero, 7
.L800AC31C:
/* 9CB1C 800AC31C 1B006104 */  bgez       $v1, .L800AC38C
/* 9CB20 800AC320 58464326 */   addiu     $v1, $s2, 0x4658
/* 9CB24 800AC324 DEB00208 */  j          .L800AC378
/* 9CB28 800AC328 58464226 */   addiu     $v0, $s2, 0x4658
/* 9CB2C 800AC32C ECAB020C */  jal        FUN_800aafb0
/* 9CB30 800AC330 00000000 */   nop
/* 9CB34 800AC334 01000324 */  addiu      $v1, $zero, 1
/* 9CB38 800AC338 0F004314 */  bne        $v0, $v1, .L800AC378
/* 9CB3C 800AC33C 58464226 */   addiu     $v0, $s2, 0x4658
/* 9CB40 800AC340 58464526 */  addiu      $a1, $s2, 0x4658
/* 9CB44 800AC344 0900A490 */  lbu        $a0, 9($a1)
/* 9CB48 800AC348 0A00A290 */  lbu        $v0, 0xa($a1)
/* 9CB4C 800AC34C 40180400 */  sll        $v1, $a0, 1
/* 9CB50 800AC350 07106200 */  srav       $v0, $v0, $v1
/* 9CB54 800AC354 01004230 */  andi       $v0, $v0, 1
/* 9CB58 800AC358 04004010 */  beqz       $v0, .L800AC36C
/* 9CB5C 800AC35C 2118A400 */   addu      $v1, $a1, $a0
/* 9CB60 800AC360 08000224 */  addiu      $v0, $zero, 8
/* 9CB64 800AC364 E2B00208 */  j          .L800AC388
/* 9CB68 800AC368 0B0062A0 */   sb        $v0, 0xb($v1)
.L800AC36C:
/* 9CB6C 800AC36C 14000224 */  addiu      $v0, $zero, 0x14
/* 9CB70 800AC370 E2B00208 */  j          .L800AC388
/* 9CB74 800AC374 0B0062A0 */   sb        $v0, 0xb($v1)
.L800AC378:
/* 9CB78 800AC378 09004390 */  lbu        $v1, 9($v0)
/* 9CB7C 800AC37C 13000424 */  addiu      $a0, $zero, 0x13
.L800AC380:
/* 9CB80 800AC380 21104300 */  addu       $v0, $v0, $v1
/* 9CB84 800AC384 0B0044A0 */  sb         $a0, 0xb($v0)
.L800AC388:
/* 9CB88 800AC388 58464326 */  addiu      $v1, $s2, 0x4658
.L800AC38C:
/* 9CB8C 800AC38C 08006290 */  lbu        $v0, 8($v1)
/* 9CB90 800AC390 00000000 */  nop
/* 9CB94 800AC394 44004014 */  bnez       $v0, .L800AC4A8
/* 9CB98 800AC398 00000000 */   nop
/* 9CB9C 800AC39C 09006290 */  lbu        $v0, 9($v1)
/* 9CBA0 800AC3A0 00000000 */  nop
/* 9CBA4 800AC3A4 21106200 */  addu       $v0, $v1, $v0
/* 9CBA8 800AC3A8 13000324 */  addiu      $v1, $zero, 0x13
/* 9CBAC 800AC3AC 2AB10208 */  j          .L800AC4A8
/* 9CBB0 800AC3B0 0B0043A0 */   sb        $v1, 0xb($v0)
/* 9CBB4 800AC3B4 58465026 */  addiu      $s0, $s2, 0x4658
/* 9CBB8 800AC3B8 0400048E */  lw         $a0, 4($s0)
/* 9CBBC 800AC3BC FFFF1124 */  addiu      $s1, $zero, -1
/* 9CBC0 800AC3C0 0F009114 */  bne        $a0, $s1, .L800AC400
/* 9CBC4 800AC3C4 00000000 */   nop
/* 9CBC8 800AC3C8 6BAC020C */  jal        FUN_800ab1ac
/* 9CBCC 800AC3CC 00000000 */   nop
/* 9CBD0 800AC3D0 35004014 */  bnez       $v0, .L800AC4A8
/* 9CBD4 800AC3D4 05000324 */   addiu     $v1, $zero, 5
/* 9CBD8 800AC3D8 09000292 */  lbu        $v0, 9($s0)
.L800AC3DC:
/* 9CBDC 800AC3DC 00000000 */  nop
/* 9CBE0 800AC3E0 21100202 */  addu       $v0, $s0, $v0
.L800AC3E4:
/* 9CBE4 800AC3E4 2AB10208 */  j          .L800AC4A8
/* 9CBE8 800AC3E8 0B0043A0 */   sb        $v1, 0xb($v0)
/* 9CBEC 800AC3EC 58465026 */  addiu      $s0, $s2, 0x4658
/* 9CBF0 800AC3F0 0400048E */  lw         $a0, 4($s0)
/* 9CBF4 800AC3F4 FFFF1124 */  addiu      $s1, $zero, -1
/* 9CBF8 800AC3F8 0B009110 */  beq        $a0, $s1, .L800AC428
/* 9CBFC 800AC3FC 00000000 */   nop
.L800AC400:
/* 9CC00 800AC400 7A19030C */  jal        FUN_800c65e8
/* 9CC04 800AC404 00000000 */   nop
/* 9CC08 800AC408 FEFF0324 */  addiu      $v1, $zero, -2
/* 9CC0C 800AC40C 26004310 */  beq        $v0, $v1, .L800AC4A8
/* 9CC10 800AC410 00000000 */   nop
/* 9CC14 800AC414 0400048E */  lw         $a0, 4($s0)
/* 9CC18 800AC418 6618030C */  jal        FUN_800c6198
/* 9CC1C 800AC41C 00000000 */   nop
/* 9CC20 800AC420 2AB10208 */  j          .L800AC4A8
/* 9CC24 800AC424 040011AE */   sw        $s1, 4($s0)
.L800AC428:
/* 9CC28 800AC428 6BAC020C */  jal        FUN_800ab1ac
/* 9CC2C 800AC42C 00000000 */   nop
/* 9CC30 800AC430 1D004014 */  bnez       $v0, .L800AC4A8
/* 9CC34 800AC434 00000000 */   nop
/* 9CC38 800AC438 09000492 */  lbu        $a0, 9($s0)
/* 9CC3C 800AC43C 0A000292 */  lbu        $v0, 0xa($s0)
/* 9CC40 800AC440 40180400 */  sll        $v1, $a0, 1
/* 9CC44 800AC444 07106200 */  srav       $v0, $v0, $v1
/* 9CC48 800AC448 01004230 */  andi       $v0, $v0, 1
/* 9CC4C 800AC44C 04004010 */  beqz       $v0, .L800AC460
/* 9CC50 800AC450 21180402 */   addu      $v1, $s0, $a0
/* 9CC54 800AC454 08000224 */  addiu      $v0, $zero, 8
/* 9CC58 800AC458 2AB10208 */  j          .L800AC4A8
/* 9CC5C 800AC45C 0B0062A0 */   sb        $v0, 0xb($v1)
.L800AC460:
/* 9CC60 800AC460 14000224 */  addiu      $v0, $zero, 0x14
/* 9CC64 800AC464 2AB10208 */  j          .L800AC4A8
/* 9CC68 800AC468 0B0062A0 */   sb        $v0, 0xb($v1)
/* 9CC6C 800AC46C 58464426 */  addiu      $a0, $s2, 0x4658
/* 9CC70 800AC470 09008290 */  lbu        $v0, 9($a0)
/* 9CC74 800AC474 02000324 */  addiu      $v1, $zero, 2
/* 9CC78 800AC478 01004224 */  addiu      $v0, $v0, 1
/* 9CC7C 800AC47C 090082A0 */  sb         $v0, 9($a0)
/* 9CC80 800AC480 FF004230 */  andi       $v0, $v0, 0xff
/* 9CC84 800AC484 08004314 */  bne        $v0, $v1, .L800AC4A8
/* 9CC88 800AC488 01000224 */   addiu     $v0, $zero, 1
/* 9CC8C 800AC48C 49B10208 */  j          .L800AC524
/* 9CC90 800AC490 090080A0 */   sb        $zero, 9($a0)
.L800AC494:
/* 9CC94 800AC494 58464226 */  addiu      $v0, $s2, 0x4658
/* 9CC98 800AC498 09004390 */  lbu        $v1, 9($v0)
/* 9CC9C 800AC49C 11000424 */  addiu      $a0, $zero, 0x11
/* 9CCA0 800AC4A0 21104300 */  addu       $v0, $v0, $v1
/* 9CCA4 800AC4A4 0B0044A0 */  sb         $a0, 0xb($v0)
.L800AC4A8:
/* 9CCA8 800AC4A8 7CAA000C */  jal        vsync_8002a9f0
/* 9CCAC 800AC4AC 58465026 */   addiu     $s0, $s2, 0x4658
/* 9CCB0 800AC4B0 1000028E */  lw         $v0, 0x10($s0)
/* 9CCB4 800AC4B4 00000000 */  nop
/* 9CCB8 800AC4B8 01004224 */  addiu      $v0, $v0, 1
/* 9CCBC 800AC4BC 100002AE */  sw         $v0, 0x10($s0)
/* 9CCC0 800AC4C0 110E4228 */  slti       $v0, $v0, 0xe11
/* 9CCC4 800AC4C4 17004014 */  bnez       $v0, .L800AC524
/* 9CCC8 800AC4C8 21100000 */   addu      $v0, $zero, $zero
/* 9CCCC 800AC4CC 21200000 */  addu       $a0, $zero, $zero
/* 9CCD0 800AC4D0 08000292 */  lbu        $v0, 8($s0)
/* 9CCD4 800AC4D4 03000524 */  addiu      $a1, $zero, 3
/* 9CCD8 800AC4D8 FE004230 */  andi       $v0, $v0, 0xfe
/* 9CCDC 800AC4DC 69B9020C */  jal        FUN_800ae5a4
/* 9CCE0 800AC4E0 080002A2 */   sb        $v0, 8($s0)
/* 9CCE4 800AC4E4 01000424 */  addiu      $a0, $zero, 1
/* 9CCE8 800AC4E8 08000292 */  lbu        $v0, 8($s0)
/* 9CCEC 800AC4EC 03000524 */  addiu      $a1, $zero, 3
/* 9CCF0 800AC4F0 FD004230 */  andi       $v0, $v0, 0xfd
/* 9CCF4 800AC4F4 69B9020C */  jal        FUN_800ae5a4
/* 9CCF8 800AC4F8 080002A2 */   sb        $v0, 8($s0)
/* 9CCFC 800AC4FC 0400048E */  lw         $a0, 4($s0)
/* 9CD00 800AC500 FFFF0224 */  addiu      $v0, $zero, -1
/* 9CD04 800AC504 04008210 */  beq        $a0, $v0, .L800AC518
/* 9CD08 800AC508 14000224 */   addiu     $v0, $zero, 0x14
/* 9CD0C 800AC50C 6618030C */  jal        FUN_800c6198
/* 9CD10 800AC510 00000000 */   nop
/* 9CD14 800AC514 14000224 */  addiu      $v0, $zero, 0x14
.L800AC518:
/* 9CD18 800AC518 0B0002A2 */  sb         $v0, 0xb($s0)
/* 9CD1C 800AC51C 0C0002A2 */  sb         $v0, 0xc($s0)
/* 9CD20 800AC520 21100000 */  addu       $v0, $zero, $zero
.L800AC524:
/* 9CD24 800AC524 3400BF8F */  lw         $ra, 0x34($sp)
/* 9CD28 800AC528 3000B28F */  lw         $s2, 0x30($sp)
/* 9CD2C 800AC52C 2C00B18F */  lw         $s1, 0x2c($sp)
/* 9CD30 800AC530 2800B08F */  lw         $s0, 0x28($sp)
/* 9CD34 800AC534 0800E003 */  jr         $ra
/* 9CD38 800AC538 3800BD27 */   addiu     $sp, $sp, 0x38
