.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d00a8
/* C08A8 800D00A8 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* C08AC 800D00AC 3000B4AF */  sw         $s4, 0x30($sp)
/* C08B0 800D00B0 21A08000 */  addu       $s4, $a0, $zero
/* C08B4 800D00B4 2000B0AF */  sw         $s0, 0x20($sp)
/* C08B8 800D00B8 1000B027 */  addiu      $s0, $sp, 0x10
/* C08BC 800D00BC 21200002 */  addu       $a0, $s0, $zero
/* C08C0 800D00C0 21280000 */  addu       $a1, $zero, $zero
/* C08C4 800D00C4 0C000624 */  addiu      $a2, $zero, 0xc
/* C08C8 800D00C8 3C00BFAF */  sw         $ra, 0x3c($sp)
/* C08CC 800D00CC 3800B6AF */  sw         $s6, 0x38($sp)
/* C08D0 800D00D0 3400B5AF */  sw         $s5, 0x34($sp)
/* C08D4 800D00D4 2C00B3AF */  sw         $s3, 0x2c($sp)
/* C08D8 800D00D8 2800B2AF */  sw         $s2, 0x28($sp)
/* C08DC 800D00DC F6A2000C */  jal        memset
/* C08E0 800D00E0 2400B1AF */   sw        $s1, 0x24($sp)
/* C08E4 800D00E4 CD6B000C */  jal        VSync
/* C08E8 800D00E8 FFFF0424 */   addiu     $a0, $zero, -1
/* C08EC 800D00EC E0011224 */  addiu      $s2, $zero, 0x1e0
/* C08F0 800D00F0 481F043C */  lui        $a0, 0x1f48
/* C08F4 800D00F4 21884000 */  addu       $s1, $v0, $zero
/* C08F8 800D00F8 21B00002 */  addu       $s6, $s0, $zero
/* C08FC 800D00FC 0E008390 */  lbu        $v1, 0xe($a0)
/* C0900 800D0100 00000000 */  nop
/* C0904 800D0104 88006330 */  andi       $v1, $v1, 0x88
/* C0908 800D0108 0F006010 */  beqz       $v1, .L800D0148
/* C090C 800D010C 21988000 */   addu      $s3, $a0, $zero
/* C0910 800D0110 21806002 */  addu       $s0, $s3, $zero
.L800D0114:
/* C0914 800D0114 CD6B000C */  jal        VSync
/* C0918 800D0118 FFFF0424 */   addiu     $a0, $zero, -1
/* C091C 800D011C 23105100 */  subu       $v0, $v0, $s1
/* C0920 800D0120 2A104202 */  slt        $v0, $s2, $v0
/* C0924 800D0124 09004014 */  bnez       $v0, .L800D014C
/* C0928 800D0128 FFFF0224 */   addiu     $v0, $zero, -1
/* C092C 800D012C 4A70000C */  jal        FUN_8001c128
/* C0930 800D0130 00000000 */   nop
/* C0934 800D0134 0E000292 */  lbu        $v0, 0xe($s0)
/* C0938 800D0138 00000000 */  nop
/* C093C 800D013C 88004230 */  andi       $v0, $v0, 0x88
/* C0940 800D0140 F4FF4014 */  bnez       $v0, .L800D0114
/* C0944 800D0144 00000000 */   nop
.L800D0148:
/* C0948 800D0148 21100000 */  addu       $v0, $zero, $zero
.L800D014C:
/* C094C 800D014C 6D004014 */  bnez       $v0, .L800D0304
/* C0950 800D0150 FFFF0224 */   addiu     $v0, $zero, -1
/* C0954 800D0154 E0011524 */  addiu      $s5, $zero, 0x1e0
/* C0958 800D0158 FFFF0424 */  addiu      $a0, $zero, -1
/* C095C 800D015C 481F053C */  lui        $a1, 0x1f48
/* C0960 800D0160 01008232 */  andi       $v0, $s4, 1
/* C0964 800D0164 00110200 */  sll        $v0, $v0, 4
/* C0968 800D0168 A0004234 */  ori        $v0, $v0, 0xa0
/* C096C 800D016C 481F033C */  lui        $v1, 0x1f48
/* C0970 800D0170 0C00A2A0 */  sb         $v0, 0xc($a1)
/* C0974 800D0174 481F053C */  lui        $a1, 0x1f48
/* C0978 800D0178 08000224 */  addiu      $v0, $zero, 8
/* C097C 800D017C 020060A0 */  sb         $zero, 2($v1)
/* C0980 800D0180 481F033C */  lui        $v1, 0x1f48
/* C0984 800D0184 2080103C */  lui        $s0, %hi(D_801FBD10)
/* C0988 800D0188 10BD1126 */  addiu      $s1, $s0, %lo(D_801FBD10)
/* C098C 800D018C 0A00A2A0 */  sb         $v0, 0xa($a1)
/* C0990 800D0190 080060A0 */  sb         $zero, 8($v1)
/* C0994 800D0194 481F033C */  lui        $v1, 0x1f48
/* C0998 800D0198 A0000224 */  addiu      $v0, $zero, 0xa0
/* C099C 800D019C DF1120A2 */  sb         $zero, 0x11df($s1)
/* C09A0 800D01A0 0E0062A0 */  sb         $v0, 0xe($v1)
/* C09A4 800D01A4 CD6B000C */  jal        VSync
/* C09A8 800D01A8 21A00002 */   addu      $s4, $s0, $zero
/* C09AC 800D01AC 21904000 */  addu       $s2, $v0, $zero
/* C09B0 800D01B0 481F103C */  lui        $s0, 0x1f48
.L800D01B4:
/* C09B4 800D01B4 0E006292 */  lbu        $v0, 0xe($s3)
/* C09B8 800D01B8 00000000 */  nop
/* C09BC 800D01BC D81122A2 */  sb         $v0, 0x11d8($s1)
/* C09C0 800D01C0 04000392 */  lbu        $v1, 4($s0)
/* C09C4 800D01C4 FFFF0424 */  addiu      $a0, $zero, -1
/* C09C8 800D01C8 DA1123A2 */  sb         $v1, 0x11da($s1)
/* C09CC 800D01CC CD6B000C */  jal        VSync
/* C09D0 800D01D0 00000000 */   nop
/* C09D4 800D01D4 D8112392 */  lbu        $v1, 0x11d8($s1)
/* C09D8 800D01D8 00000000 */  nop
/* C09DC 800D01DC 80006330 */  andi       $v1, $v1, 0x80
/* C09E0 800D01E0 10006014 */  bnez       $v1, .L800D0224
/* C09E4 800D01E4 21204000 */   addu      $a0, $v0, $zero
/* C09E8 800D01E8 D8112292 */  lbu        $v0, 0x11d8($s1)
/* C09EC 800D01EC 00000000 */  nop
/* C09F0 800D01F0 08004230 */  andi       $v0, $v0, 8
/* C09F4 800D01F4 0C004010 */  beqz       $v0, .L800D0228
/* C09F8 800D01F8 23109200 */   subu      $v0, $a0, $s2
/* C09FC 800D01FC DA112292 */  lbu        $v0, 0x11da($s1)
/* C0A00 800D0200 00000000 */  nop
/* C0A04 800D0204 01004230 */  andi       $v0, $v0, 1
/* C0A08 800D0208 07004010 */  beqz       $v0, .L800D0228
/* C0A0C 800D020C 23109200 */   subu      $v0, $a0, $s2
/* C0A10 800D0210 DA112292 */  lbu        $v0, 0x11da($s1)
/* C0A14 800D0214 00000000 */  nop
/* C0A18 800D0218 02004230 */  andi       $v0, $v0, 2
/* C0A1C 800D021C 09004010 */  beqz       $v0, .L800D0244
/* C0A20 800D0220 21100000 */   addu      $v0, $zero, $zero
.L800D0224:
/* C0A24 800D0224 23109200 */  subu       $v0, $a0, $s2
.L800D0228:
/* C0A28 800D0228 2A10A202 */  slt        $v0, $s5, $v0
/* C0A2C 800D022C 05004014 */  bnez       $v0, .L800D0244
/* C0A30 800D0230 FFFF0224 */   addiu     $v0, $zero, -1
/* C0A34 800D0234 4A70000C */  jal        FUN_8001c128
/* C0A38 800D0238 00000000 */   nop
/* C0A3C 800D023C 6D400308 */  j          .L800D01B4
/* C0A40 800D0240 00000000 */   nop
.L800D0244:
/* C0A44 800D0244 2F004014 */  bnez       $v0, .L800D0304
/* C0A48 800D0248 FFFF0224 */   addiu     $v0, $zero, -1
/* C0A4C 800D024C 2180C002 */  addu       $s0, $s6, $zero
/* C0A50 800D0250 06000424 */  addiu      $a0, $zero, 6
/* C0A54 800D0254 10BD8226 */  addiu      $v0, $s4, -0x42f0
/* C0A58 800D0258 D011438C */  lw         $v1, 0x11d0($v0)
/* C0A5C 800D025C 481F053C */  lui        $a1, 0x1f48
/* C0A60 800D0260 D41143AC */  sw         $v1, 0x11d4($v0)
.L800D0264:
/* C0A64 800D0264 00000296 */  lhu        $v0, ($s0)
/* C0A68 800D0268 02001026 */  addiu      $s0, $s0, 2
/* C0A6C 800D026C FFFF8424 */  addiu      $a0, $a0, -1
/* C0A70 800D0270 0000A2A4 */  sh         $v0, ($a1)
/* C0A74 800D0274 FBFF8014 */  bnez       $a0, .L800D0264
/* C0A78 800D0278 00000000 */   nop
/* C0A7C 800D027C CD6B000C */  jal        VSync
/* C0A80 800D0280 FFFF0424 */   addiu     $a0, $zero, -1
/* C0A84 800D0284 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C0A88 800D0288 10BD8526 */  addiu      $a1, $s4, -0x42f0
/* C0A8C 800D028C D411A48C */  lw         $a0, 0x11d4($a1)
/* C0A90 800D0290 D011A38C */  lw         $v1, 0x11d0($a1)
/* C0A94 800D0294 00000000 */  nop
/* C0A98 800D0298 0F008314 */  bne        $a0, $v1, .L800D02D8
/* C0A9C 800D029C 21804000 */   addu      $s0, $v0, $zero
/* C0AA0 800D02A0 2188A000 */  addu       $s1, $a1, $zero
.L800D02A4:
/* C0AA4 800D02A4 CD6B000C */  jal        VSync
/* C0AA8 800D02A8 FFFF0424 */   addiu     $a0, $zero, -1
/* C0AAC 800D02AC 23105000 */  subu       $v0, $v0, $s0
/* C0AB0 800D02B0 2A104202 */  slt        $v0, $s2, $v0
/* C0AB4 800D02B4 09004014 */  bnez       $v0, .L800D02DC
/* C0AB8 800D02B8 FFFF0224 */   addiu     $v0, $zero, -1
/* C0ABC 800D02BC 4A70000C */  jal        FUN_8001c128
/* C0AC0 800D02C0 00000000 */   nop
/* C0AC4 800D02C4 D411238E */  lw         $v1, 0x11d4($s1)
/* C0AC8 800D02C8 D011228E */  lw         $v0, 0x11d0($s1)
/* C0ACC 800D02CC 00000000 */  nop
/* C0AD0 800D02D0 F4FF6210 */  beq        $v1, $v0, .L800D02A4
/* C0AD4 800D02D4 00000000 */   nop
.L800D02D8:
/* C0AD8 800D02D8 21100000 */  addu       $v0, $zero, $zero
.L800D02DC:
/* C0ADC 800D02DC 08004014 */  bnez       $v0, .L800D0300
/* C0AE0 800D02E0 10BD8226 */   addiu     $v0, $s4, -0x42f0
/* C0AE4 800D02E4 D8114390 */  lbu        $v1, 0x11d8($v0)
/* C0AE8 800D02E8 00000000 */  nop
/* C0AEC 800D02EC 01006330 */  andi       $v1, $v1, 1
/* C0AF0 800D02F0 04006014 */  bnez       $v1, .L800D0304
/* C0AF4 800D02F4 F9FF0224 */   addiu     $v0, $zero, -7
/* C0AF8 800D02F8 C1400308 */  j          .L800D0304
/* C0AFC 800D02FC 21100000 */   addu      $v0, $zero, $zero
.L800D0300:
/* C0B00 800D0300 FFFF0224 */  addiu      $v0, $zero, -1
.L800D0304:
/* C0B04 800D0304 3C00BF8F */  lw         $ra, 0x3c($sp)
/* C0B08 800D0308 3800B68F */  lw         $s6, 0x38($sp)
/* C0B0C 800D030C 3400B58F */  lw         $s5, 0x34($sp)
/* C0B10 800D0310 3000B48F */  lw         $s4, 0x30($sp)
/* C0B14 800D0314 2C00B38F */  lw         $s3, 0x2c($sp)
/* C0B18 800D0318 2800B28F */  lw         $s2, 0x28($sp)
/* C0B1C 800D031C 2400B18F */  lw         $s1, 0x24($sp)
/* C0B20 800D0320 2000B08F */  lw         $s0, 0x20($sp)
/* C0B24 800D0324 0800E003 */  jr         $ra
/* C0B28 800D0328 4000BD27 */   addiu     $sp, $sp, 0x40
