.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d089c
/* C109C 800D089C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* C10A0 800D08A0 2C00B7AF */  sw         $s7, 0x2c($sp)
/* C10A4 800D08A4 21B88000 */  addu       $s7, $a0, $zero
/* C10A8 800D08A8 FFFF0424 */  addiu      $a0, $zero, -1
/* C10AC 800D08AC 2800B6AF */  sw         $s6, 0x28($sp)
/* C10B0 800D08B0 21B0A000 */  addu       $s6, $a1, $zero
/* C10B4 800D08B4 3000BEAF */  sw         $fp, 0x30($sp)
/* C10B8 800D08B8 21F0C000 */  addu       $fp, $a2, $zero
/* C10BC 800D08BC 3400BFAF */  sw         $ra, 0x34($sp)
/* C10C0 800D08C0 2400B5AF */  sw         $s5, 0x24($sp)
/* C10C4 800D08C4 2000B4AF */  sw         $s4, 0x20($sp)
/* C10C8 800D08C8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* C10CC 800D08CC 1800B2AF */  sw         $s2, 0x18($sp)
/* C10D0 800D08D0 1400B1AF */  sw         $s1, 0x14($sp)
/* C10D4 800D08D4 1000B0AF */  sw         $s0, 0x10($sp)
/* C10D8 800D08D8 CD6B000C */  jal        VSync
/* C10DC 800D08DC 4400A7AF */   sw        $a3, 0x44($sp)
/* C10E0 800D08E0 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C10E4 800D08E4 481F043C */  lui        $a0, 0x1f48
/* C10E8 800D08E8 21804000 */  addu       $s0, $v0, $zero
/* C10EC 800D08EC 21A08000 */  addu       $s4, $a0, $zero
/* C10F0 800D08F0 0E008390 */  lbu        $v1, 0xe($a0)
/* C10F4 800D08F4 00000000 */  nop
/* C10F8 800D08F8 88006330 */  andi       $v1, $v1, 0x88
/* C10FC 800D08FC 0F006010 */  beqz       $v1, .L800D093C
/* C1100 800D0900 2080133C */   lui       $s3, 0x8020
/* C1104 800D0904 21888002 */  addu       $s1, $s4, $zero
.L800D0908:
/* C1108 800D0908 CD6B000C */  jal        VSync
/* C110C 800D090C FFFF0424 */   addiu     $a0, $zero, -1
/* C1110 800D0910 23105000 */  subu       $v0, $v0, $s0
/* C1114 800D0914 2A104202 */  slt        $v0, $s2, $v0
/* C1118 800D0918 09004014 */  bnez       $v0, .L800D0940
/* C111C 800D091C FFFF0224 */   addiu     $v0, $zero, -1
/* C1120 800D0920 4A70000C */  jal        FUN_8001c128
/* C1124 800D0924 00000000 */   nop
/* C1128 800D0928 0E002292 */  lbu        $v0, 0xe($s1)
/* C112C 800D092C 00000000 */  nop
/* C1130 800D0930 88004230 */  andi       $v0, $v0, 0x88
/* C1134 800D0934 F4FF4014 */  bnez       $v0, .L800D0908
/* C1138 800D0938 00000000 */   nop
.L800D093C:
/* C113C 800D093C 21100000 */  addu       $v0, $zero, $zero
.L800D0940:
/* C1140 800D0940 04004010 */  beqz       $v0, .L800D0954
/* C1144 800D0944 10BD6226 */   addiu     $v0, $s3, -0x42f0
/* C1148 800D0948 DF1140A0 */  sb         $zero, 0x11df($v0)
/* C114C 800D094C 11430308 */  j          .L800D0C44
/* C1150 800D0950 FFFF0224 */   addiu     $v0, $zero, -1
.L800D0954:
/* C1154 800D0954 E0011524 */  addiu      $s5, $zero, 0x1e0
/* C1158 800D0958 FFFF0424 */  addiu      $a0, $zero, -1
/* C115C 800D095C 481F053C */  lui        $a1, 0x1f48
/* C1160 800D0960 0100E232 */  andi       $v0, $s7, 1
/* C1164 800D0964 00110200 */  sll        $v0, $v0, 4
/* C1168 800D0968 A0004234 */  ori        $v0, $v0, 0xa0
/* C116C 800D096C 481F033C */  lui        $v1, 0x1f48
/* C1170 800D0970 0C00A2A0 */  sb         $v0, 0xc($a1)
/* C1174 800D0974 481F053C */  lui        $a1, 0x1f48
/* C1178 800D0978 08000224 */  addiu      $v0, $zero, 8
/* C117C 800D097C 020060A0 */  sb         $zero, 2($v1)
/* C1180 800D0980 481F033C */  lui        $v1, 0x1f48
/* C1184 800D0984 10BD7026 */  addiu      $s0, $s3, -0x42f0
/* C1188 800D0988 0A00A2A0 */  sb         $v0, 0xa($a1)
/* C118C 800D098C 080060A0 */  sb         $zero, 8($v1)
/* C1190 800D0990 481F033C */  lui        $v1, 0x1f48
/* C1194 800D0994 A0000224 */  addiu      $v0, $zero, 0xa0
/* C1198 800D0998 DF1100A2 */  sb         $zero, 0x11df($s0)
/* C119C 800D099C 0E0062A0 */  sb         $v0, 0xe($v1)
/* C11A0 800D09A0 CD6B000C */  jal        VSync
/* C11A4 800D09A4 481F123C */   lui       $s2, 0x1f48
/* C11A8 800D09A8 21884000 */  addu       $s1, $v0, $zero
.L800D09AC:
/* C11AC 800D09AC 0E008292 */  lbu        $v0, 0xe($s4)
/* C11B0 800D09B0 00000000 */  nop
/* C11B4 800D09B4 D81102A2 */  sb         $v0, 0x11d8($s0)
/* C11B8 800D09B8 04004392 */  lbu        $v1, 4($s2)
/* C11BC 800D09BC FFFF0424 */  addiu      $a0, $zero, -1
/* C11C0 800D09C0 DA1103A2 */  sb         $v1, 0x11da($s0)
/* C11C4 800D09C4 CD6B000C */  jal        VSync
/* C11C8 800D09C8 00000000 */   nop
/* C11CC 800D09CC D8110392 */  lbu        $v1, 0x11d8($s0)
/* C11D0 800D09D0 00000000 */  nop
/* C11D4 800D09D4 80006330 */  andi       $v1, $v1, 0x80
/* C11D8 800D09D8 10006014 */  bnez       $v1, .L800D0A1C
/* C11DC 800D09DC 21204000 */   addu      $a0, $v0, $zero
/* C11E0 800D09E0 D8110292 */  lbu        $v0, 0x11d8($s0)
/* C11E4 800D09E4 00000000 */  nop
/* C11E8 800D09E8 08004230 */  andi       $v0, $v0, 8
/* C11EC 800D09EC 0C004010 */  beqz       $v0, .L800D0A20
/* C11F0 800D09F0 23109100 */   subu      $v0, $a0, $s1
/* C11F4 800D09F4 DA110292 */  lbu        $v0, 0x11da($s0)
/* C11F8 800D09F8 00000000 */  nop
/* C11FC 800D09FC 01004230 */  andi       $v0, $v0, 1
/* C1200 800D0A00 07004010 */  beqz       $v0, .L800D0A20
/* C1204 800D0A04 23109100 */   subu      $v0, $a0, $s1
/* C1208 800D0A08 DA110292 */  lbu        $v0, 0x11da($s0)
/* C120C 800D0A0C 00000000 */  nop
/* C1210 800D0A10 02004230 */  andi       $v0, $v0, 2
/* C1214 800D0A14 09004010 */  beqz       $v0, .L800D0A3C
/* C1218 800D0A18 21100000 */   addu      $v0, $zero, $zero
.L800D0A1C:
/* C121C 800D0A1C 23109100 */  subu       $v0, $a0, $s1
.L800D0A20:
/* C1220 800D0A20 2A10A202 */  slt        $v0, $s5, $v0
/* C1224 800D0A24 05004014 */  bnez       $v0, .L800D0A3C
/* C1228 800D0A28 FFFF0224 */   addiu     $v0, $zero, -1
/* C122C 800D0A2C 4A70000C */  jal        FUN_8001c128
/* C1230 800D0A30 00000000 */   nop
/* C1234 800D0A34 6B420308 */  j          .L800D09AC
/* C1238 800D0A38 00000000 */   nop
.L800D0A3C:
/* C123C 800D0A3C 81004014 */  bnez       $v0, .L800D0C44
/* C1240 800D0A40 FFFF0224 */   addiu     $v0, $zero, -1
/* C1244 800D0A44 2128C002 */  addu       $a1, $s6, $zero
/* C1248 800D0A48 06000424 */  addiu      $a0, $zero, 6
/* C124C 800D0A4C 10BD6326 */  addiu      $v1, $s3, -0x42f0
/* C1250 800D0A50 481F143C */  lui        $s4, 0x1f48
/* C1254 800D0A54 D011628C */  lw         $v0, 0x11d0($v1)
/* C1258 800D0A58 21308002 */  addu       $a2, $s4, $zero
/* C125C 800D0A5C D41162AC */  sw         $v0, 0x11d4($v1)
.L800D0A60:
/* C1260 800D0A60 0000A294 */  lhu        $v0, ($a1)
/* C1264 800D0A64 0200A524 */  addiu      $a1, $a1, 2
/* C1268 800D0A68 FFFF8424 */  addiu      $a0, $a0, -1
/* C126C 800D0A6C 0000C2A4 */  sh         $v0, ($a2)
/* C1270 800D0A70 FBFF8014 */  bnez       $a0, .L800D0A60
/* C1274 800D0A74 00000000 */   nop
/* C1278 800D0A78 CD6B000C */  jal        VSync
/* C127C 800D0A7C FFFF0424 */   addiu     $a0, $zero, -1
/* C1280 800D0A80 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C1284 800D0A84 10BD6526 */  addiu      $a1, $s3, -0x42f0
/* C1288 800D0A88 D411A48C */  lw         $a0, 0x11d4($a1)
/* C128C 800D0A8C D011A38C */  lw         $v1, 0x11d0($a1)
/* C1290 800D0A90 00000000 */  nop
/* C1294 800D0A94 0F008314 */  bne        $a0, $v1, .L800D0AD4
/* C1298 800D0A98 21884000 */   addu      $s1, $v0, $zero
/* C129C 800D0A9C 2180A000 */  addu       $s0, $a1, $zero
.L800D0AA0:
/* C12A0 800D0AA0 CD6B000C */  jal        VSync
/* C12A4 800D0AA4 FFFF0424 */   addiu     $a0, $zero, -1
/* C12A8 800D0AA8 23105100 */  subu       $v0, $v0, $s1
/* C12AC 800D0AAC 2A104202 */  slt        $v0, $s2, $v0
/* C12B0 800D0AB0 09004014 */  bnez       $v0, .L800D0AD8
/* C12B4 800D0AB4 FFFF0224 */   addiu     $v0, $zero, -1
/* C12B8 800D0AB8 4A70000C */  jal        FUN_8001c128
/* C12BC 800D0ABC 00000000 */   nop
/* C12C0 800D0AC0 D411038E */  lw         $v1, 0x11d4($s0)
/* C12C4 800D0AC4 D011028E */  lw         $v0, 0x11d0($s0)
/* C12C8 800D0AC8 00000000 */  nop
/* C12CC 800D0ACC F4FF6210 */  beq        $v1, $v0, .L800D0AA0
/* C12D0 800D0AD0 00000000 */   nop
.L800D0AD4:
/* C12D4 800D0AD4 21100000 */  addu       $v0, $zero, $zero
.L800D0AD8:
/* C12D8 800D0AD8 5A004014 */  bnez       $v0, .L800D0C44
/* C12DC 800D0ADC FFFF0224 */   addiu     $v0, $zero, -1
/* C12E0 800D0AE0 10BD6326 */  addiu      $v1, $s3, -0x42f0
/* C12E4 800D0AE4 D8116290 */  lbu        $v0, 0x11d8($v1)
/* C12E8 800D0AE8 00000000 */  nop
/* C12EC 800D0AEC 08004230 */  andi       $v0, $v0, 8
/* C12F0 800D0AF0 54004010 */  beqz       $v0, .L800D0C44
/* C12F4 800D0AF4 F8FF0224 */   addiu     $v0, $zero, -8
/* C12F8 800D0AF8 DC116294 */  lhu        $v0, 0x11dc($v1)
/* C12FC 800D0AFC 00000000 */  nop
/* C1300 800D0B00 FFFF4230 */  andi       $v0, $v0, 0xffff
/* C1304 800D0B04 4F005E14 */  bne        $v0, $fp, .L800D0C44
/* C1308 800D0B08 F8FF0224 */   addiu     $v0, $zero, -8
/* C130C 800D0B0C 4400A78F */  lw         $a3, 0x44($sp)
/* C1310 800D0B10 D011628C */  lw         $v0, 0x11d0($v1)
/* C1314 800D0B14 21200000 */  addu       $a0, $zero, $zero
/* C1318 800D0B18 D41162AC */  sw         $v0, 0x11d4($v1)
/* C131C 800D0B1C DC116394 */  lhu        $v1, 0x11dc($v1)
/* C1320 800D0B20 00000000 */  nop
/* C1324 800D0B24 82280300 */  srl        $a1, $v1, 2
/* C1328 800D0B28 0A00A010 */  beqz       $a1, .L800D0B54
/* C132C 800D0B2C 00008626 */   addiu     $a2, $s4, 0
.L800D0B30:
/* C1330 800D0B30 0000C294 */  lhu        $v0, ($a2)
/* C1334 800D0B34 01008424 */  addiu      $a0, $a0, 1
/* C1338 800D0B38 0000E2A4 */  sh         $v0, ($a3)
/* C133C 800D0B3C 0200E724 */  addiu      $a3, $a3, 2
/* C1340 800D0B40 0000C394 */  lhu        $v1, ($a2)
/* C1344 800D0B44 2B108500 */  sltu       $v0, $a0, $a1
/* C1348 800D0B48 0000E3A4 */  sh         $v1, ($a3)
/* C134C 800D0B4C F8FF4014 */  bnez       $v0, .L800D0B30
/* C1350 800D0B50 0200E724 */   addiu     $a3, $a3, 2
.L800D0B54:
/* C1354 800D0B54 CD6B000C */  jal        VSync
/* C1358 800D0B58 FFFF0424 */   addiu     $a0, $zero, -1
/* C135C 800D0B5C E0011224 */  addiu      $s2, $zero, 0x1e0
/* C1360 800D0B60 10BD6526 */  addiu      $a1, $s3, -0x42f0
/* C1364 800D0B64 D411A48C */  lw         $a0, 0x11d4($a1)
/* C1368 800D0B68 D011A38C */  lw         $v1, 0x11d0($a1)
/* C136C 800D0B6C 00000000 */  nop
/* C1370 800D0B70 0F008314 */  bne        $a0, $v1, .L800D0BB0
/* C1374 800D0B74 21884000 */   addu      $s1, $v0, $zero
/* C1378 800D0B78 2180A000 */  addu       $s0, $a1, $zero
.L800D0B7C:
/* C137C 800D0B7C CD6B000C */  jal        VSync
/* C1380 800D0B80 FFFF0424 */   addiu     $a0, $zero, -1
/* C1384 800D0B84 23105100 */  subu       $v0, $v0, $s1
/* C1388 800D0B88 2A104202 */  slt        $v0, $s2, $v0
/* C138C 800D0B8C 09004014 */  bnez       $v0, .L800D0BB4
/* C1390 800D0B90 FFFF0224 */   addiu     $v0, $zero, -1
/* C1394 800D0B94 4A70000C */  jal        FUN_8001c128
/* C1398 800D0B98 00000000 */   nop
/* C139C 800D0B9C D411038E */  lw         $v1, 0x11d4($s0)
/* C13A0 800D0BA0 D011028E */  lw         $v0, 0x11d0($s0)
/* C13A4 800D0BA4 00000000 */  nop
/* C13A8 800D0BA8 F4FF6210 */  beq        $v1, $v0, .L800D0B7C
/* C13AC 800D0BAC 00000000 */   nop
.L800D0BB0:
/* C13B0 800D0BB0 21100000 */  addu       $v0, $zero, $zero
.L800D0BB4:
/* C13B4 800D0BB4 23004014 */  bnez       $v0, .L800D0C44
/* C13B8 800D0BB8 FFFF0224 */   addiu     $v0, $zero, -1
/* C13BC 800D0BBC 10BD7026 */  addiu      $s0, $s3, -0x42f0
/* C13C0 800D0BC0 D8110292 */  lbu        $v0, 0x11d8($s0)
/* C13C4 800D0BC4 00000000 */  nop
/* C13C8 800D0BC8 01004230 */  andi       $v0, $v0, 1
/* C13CC 800D0BCC 1D004010 */  beqz       $v0, .L800D0C44
/* C13D0 800D0BD0 21100000 */   addu      $v0, $zero, $zero
/* C13D4 800D0BD4 CB40030C */  jal        FUN_800d032c
/* C13D8 800D0BD8 2120E002 */   addu      $a0, $s7, $zero
/* C13DC 800D0BDC 19004014 */  bnez       $v0, .L800D0C44
/* C13E0 800D0BE0 00000000 */   nop
/* C13E4 800D0BE4 96010392 */  lbu        $v1, 0x196($s0)
/* C13E8 800D0BE8 03000224 */  addiu      $v0, $zero, 3
/* C13EC 800D0BEC 10006210 */  beq        $v1, $v0, .L800D0C30
/* C13F0 800D0BF0 04006228 */   slti      $v0, $v1, 4
/* C13F4 800D0BF4 05004010 */  beqz       $v0, .L800D0C0C
/* C13F8 800D0BF8 02000224 */   addiu     $v0, $zero, 2
/* C13FC 800D0BFC 0A006210 */  beq        $v1, $v0, .L800D0C28
/* C1400 800D0C00 FAFF0224 */   addiu     $v0, $zero, -6
/* C1404 800D0C04 11430308 */  j          .L800D0C44
/* C1408 800D0C08 00000000 */   nop
.L800D0C0C:
/* C140C 800D0C0C 04000224 */  addiu      $v0, $zero, 4
/* C1410 800D0C10 09006210 */  beq        $v1, $v0, .L800D0C38
/* C1414 800D0C14 05000224 */   addiu     $v0, $zero, 5
/* C1418 800D0C18 09006210 */  beq        $v1, $v0, .L800D0C40
/* C141C 800D0C1C FAFF0224 */   addiu     $v0, $zero, -6
/* C1420 800D0C20 11430308 */  j          .L800D0C44
/* C1424 800D0C24 00000000 */   nop
.L800D0C28:
/* C1428 800D0C28 11430308 */  j          .L800D0C44
/* C142C 800D0C2C FEFF0224 */   addiu     $v0, $zero, -2
.L800D0C30:
/* C1430 800D0C30 11430308 */  j          .L800D0C44
/* C1434 800D0C34 FDFF0224 */   addiu     $v0, $zero, -3
.L800D0C38:
/* C1438 800D0C38 11430308 */  j          .L800D0C44
/* C143C 800D0C3C FCFF0224 */   addiu     $v0, $zero, -4
.L800D0C40:
/* C1440 800D0C40 FBFF0224 */  addiu      $v0, $zero, -5
.L800D0C44:
/* C1444 800D0C44 3400BF8F */  lw         $ra, 0x34($sp)
/* C1448 800D0C48 3000BE8F */  lw         $fp, 0x30($sp)
/* C144C 800D0C4C 2C00B78F */  lw         $s7, 0x2c($sp)
/* C1450 800D0C50 2800B68F */  lw         $s6, 0x28($sp)
/* C1454 800D0C54 2400B58F */  lw         $s5, 0x24($sp)
/* C1458 800D0C58 2000B48F */  lw         $s4, 0x20($sp)
/* C145C 800D0C5C 1C00B38F */  lw         $s3, 0x1c($sp)
/* C1460 800D0C60 1800B28F */  lw         $s2, 0x18($sp)
/* C1464 800D0C64 1400B18F */  lw         $s1, 0x14($sp)
/* C1468 800D0C68 1000B08F */  lw         $s0, 0x10($sp)
/* C146C 800D0C6C 0800E003 */  jr         $ra
/* C1470 800D0C70 3800BD27 */   addiu     $sp, $sp, 0x38
