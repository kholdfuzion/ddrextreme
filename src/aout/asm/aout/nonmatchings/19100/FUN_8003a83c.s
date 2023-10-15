.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003a83c
/* 2B03C 8003A83C B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 2B040 8003A840 2580063C */  lui        $a2, 0x8025
/* 2B044 8003A844 0080C634 */  ori        $a2, $a2, 0x8000
/* 2B048 8003A848 2580053C */  lui        $a1, 0x8025
/* 2B04C 8003A84C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 2B050 8003A850 A89D448C */  lw         $a0, %lo(D_80129DA8)($v0)
/* 2B054 8003A854 00CBA534 */  ori        $a1, $a1, 0xcb00
/* 2B058 8003A858 3000B2AF */  sw         $s2, 0x30($sp)
/* 2B05C 8003A85C FF001224 */  addiu      $s2, $zero, 0xff
/* 2B060 8003A860 3800B4AF */  sw         $s4, 0x38($sp)
/* 2B064 8003A864 88FF1424 */  addiu      $s4, $zero, -0x78
/* 2B068 8003A868 3400B3AF */  sw         $s3, 0x34($sp)
/* 2B06C 8003A86C 78001324 */  addiu      $s3, $zero, 0x78
/* 2B070 8003A870 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 2B074 8003A874 0F00113C */  lui        $s1, 0xf
/* 2B078 8003A878 4000B6AF */  sw         $s6, 0x40($sp)
/* 2B07C 8003A87C 12001624 */  addiu      $s6, $zero, 0x12
/* 2B080 8003A880 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 2B084 8003A884 4800BEAF */  sw         $fp, 0x48($sp)
/* 2B088 8003A888 4400B7AF */  sw         $s7, 0x44($sp)
/* 2B08C 8003A88C 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 2B090 8003A890 2800B0AF */  sw         $s0, 0x28($sp)
/* 2B094 8003A894 C0100400 */  sll        $v0, $a0, 3
/* 2B098 8003A898 23104400 */  subu       $v0, $v0, $a0
/* 2B09C 8003A89C C0110200 */  sll        $v0, $v0, 7
/* 2B0A0 8003A8A0 21104500 */  addu       $v0, $v0, $a1
/* 2B0A4 8003A8A4 80180400 */  sll        $v1, $a0, 2
/* 2B0A8 8003A8A8 21186400 */  addu       $v1, $v1, $a0
/* 2B0AC 8003A8AC 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 2B0B0 8003A8B0 00110300 */  sll        $v0, $v1, 4
/* 2B0B4 8003A8B4 23104300 */  subu       $v0, $v0, $v1
/* 2B0B8 8003A8B8 C0110200 */  sll        $v0, $v0, 7
/* 2B0BC 8003A8BC 21104600 */  addu       $v0, $v0, $a2
/* 2B0C0 8003A8C0 21804000 */  addu       $s0, $v0, $zero
/* 2B0C4 8003A8C4 1800A2AF */  sw         $v0, 0x18($sp)
.L8003A8C8:
/* 2B0C8 8003A8C8 21280002 */  addu       $a1, $s0, $zero
/* 2B0CC 8003A8CC 18001026 */  addiu      $s0, $s0, 0x18
/* 2B0D0 8003A8D0 05000224 */  addiu      $v0, $zero, 5
/* 2B0D4 8003A8D4 28000324 */  addiu      $v1, $zero, 0x28
/* 2B0D8 8003A8D8 EBFF02A2 */  sb         $v0, -0x15($s0)
/* 2B0DC 8003A8DC 03141100 */  sra        $v0, $s1, 0x10
/* 2B0E0 8003A8E0 EFFF03A2 */  sb         $v1, -0x11($s0)
/* 2B0E4 8003A8E4 60FF4324 */  addiu      $v1, $v0, -0xa0
/* 2B0E8 8003A8E8 62FF4224 */  addiu      $v0, $v0, -0x9e
/* 2B0EC 8003A8EC F0FF03A6 */  sh         $v1, -0x10($s0)
/* 2B0F0 8003A8F0 F8FF03A6 */  sh         $v1, -8($s0)
/* 2B0F4 8003A8F4 1380033C */  lui        $v1, %hi(D_80129DA8)
/* 2B0F8 8003A8F8 F4FF02A6 */  sh         $v0, -0xc($s0)
/* 2B0FC 8003A8FC FCFF02A6 */  sh         $v0, -4($s0)
/* 2B100 8003A900 A89D6224 */  addiu      $v0, $v1, %lo(D_80129DA8)
/* 2B104 8003A904 F2FF14A6 */  sh         $s4, -0xe($s0)
/* 2B108 8003A908 F6FF14A6 */  sh         $s4, -0xa($s0)
/* 2B10C 8003A90C FAFF13A6 */  sh         $s3, -6($s0)
/* 2B110 8003A910 FEFF13A6 */  sh         $s3, -2($s0)
/* 2B114 8003A914 ECFF12A2 */  sb         $s2, -0x14($s0)
/* 2B118 8003A918 EDFF12A2 */  sb         $s2, -0x13($s0)
/* 2B11C 8003A91C EEFF12A2 */  sb         $s2, -0x12($s0)
/* 2B120 8003A920 2C0C438C */  lw         $v1, 0xc2c($v0)
/* 2B124 8003A924 00000000 */  nop
/* 2B128 8003A928 0400648C */  lw         $a0, 4($v1)
/* 2B12C 8003A92C FFFFD626 */  addiu      $s6, $s6, -1
/* 2B130 8003A930 D685000C */  jal        AddPrim
/* 2B134 8003A934 18008424 */   addiu     $a0, $a0, 0x18
/* 2B138 8003A938 1000023C */  lui        $v0, 0x10
/* 2B13C 8003A93C E2FFC106 */  bgez       $s6, .L8003A8C8
/* 2B140 8003A940 21882202 */   addu      $s1, $s1, $v0
/* 2B144 8003A944 13001E24 */  addiu      $fp, $zero, 0x13
/* 2B148 8003A948 FF001224 */  addiu      $s2, $zero, 0xff
/* 2B14C 8003A94C 60FF1424 */  addiu      $s4, $zero, -0xa0
/* 2B150 8003A950 A0001324 */  addiu      $s3, $zero, 0xa0
/* 2B154 8003A954 0700113C */  lui        $s1, 7
/* 2B158 8003A958 1800A78F */  lw         $a3, 0x18($sp)
/* 2B15C 8003A95C 0E001624 */  addiu      $s6, $zero, 0xe
/* 2B160 8003A960 C801F024 */  addiu      $s0, $a3, 0x1c8
.L8003A964:
/* 2B164 8003A964 21280002 */  addu       $a1, $s0, $zero
/* 2B168 8003A968 18001026 */  addiu      $s0, $s0, 0x18
/* 2B16C 8003A96C 05000224 */  addiu      $v0, $zero, 5
/* 2B170 8003A970 28000324 */  addiu      $v1, $zero, 0x28
/* 2B174 8003A974 EBFF02A2 */  sb         $v0, -0x15($s0)
/* 2B178 8003A978 03141100 */  sra        $v0, $s1, 0x10
/* 2B17C 8003A97C EFFF03A2 */  sb         $v1, -0x11($s0)
/* 2B180 8003A980 88FF4324 */  addiu      $v1, $v0, -0x78
/* 2B184 8003A984 8AFF4224 */  addiu      $v0, $v0, -0x76
/* 2B188 8003A988 F2FF03A6 */  sh         $v1, -0xe($s0)
/* 2B18C 8003A98C F6FF03A6 */  sh         $v1, -0xa($s0)
/* 2B190 8003A990 1380033C */  lui        $v1, %hi(D_80129DA8)
/* 2B194 8003A994 FAFF02A6 */  sh         $v0, -6($s0)
/* 2B198 8003A998 FEFF02A6 */  sh         $v0, -2($s0)
/* 2B19C 8003A99C A89D6224 */  addiu      $v0, $v1, %lo(D_80129DA8)
/* 2B1A0 8003A9A0 F0FF14A6 */  sh         $s4, -0x10($s0)
/* 2B1A4 8003A9A4 F4FF13A6 */  sh         $s3, -0xc($s0)
/* 2B1A8 8003A9A8 F8FF14A6 */  sh         $s4, -8($s0)
/* 2B1AC 8003A9AC FCFF13A6 */  sh         $s3, -4($s0)
/* 2B1B0 8003A9B0 ECFF12A2 */  sb         $s2, -0x14($s0)
/* 2B1B4 8003A9B4 EDFF12A2 */  sb         $s2, -0x13($s0)
/* 2B1B8 8003A9B8 EEFF12A2 */  sb         $s2, -0x12($s0)
/* 2B1BC 8003A9BC 2C0C438C */  lw         $v1, 0xc2c($v0)
/* 2B1C0 8003A9C0 0100DE27 */  addiu      $fp, $fp, 1
/* 2B1C4 8003A9C4 0400648C */  lw         $a0, 4($v1)
/* 2B1C8 8003A9C8 FFFFD626 */  addiu      $s6, $s6, -1
/* 2B1CC 8003A9CC D685000C */  jal        AddPrim
/* 2B1D0 8003A9D0 18008424 */   addiu     $a0, $a0, 0x18
/* 2B1D4 8003A9D4 1000023C */  lui        $v0, 0x10
/* 2B1D8 8003A9D8 E2FFC106 */  bgez       $s6, .L8003A964
/* 2B1DC 8003A9DC 21882202 */   addu      $s1, $s1, $v0
/* 2B1E0 8003A9E0 21B00000 */  addu       $s6, $zero, $zero
/* 2B1E4 8003A9E4 40001724 */  addiu      $s7, $zero, 0x40
/* 2B1E8 8003A9E8 0300063C */  lui        $a2, 3
/* 2B1EC 8003A9EC 1000073C */  lui        $a3, 0x10
/* 2B1F0 8003A9F0 40101E00 */  sll        $v0, $fp, 1
/* 2B1F4 8003A9F4 21105E00 */  addu       $v0, $v0, $fp
/* 2B1F8 8003A9F8 C0A00200 */  sll        $s4, $v0, 3
.L8003A9FC:
/* 2B1FC 8003A9FC 03140600 */  sra        $v0, $a2, 0x10
/* 2B200 8003AA00 60FF5324 */  addiu      $s3, $v0, -0xa0
/* 2B204 8003AA04 6AFF5124 */  addiu      $s1, $v0, -0x96
/* 2B208 8003AA08 0B00153C */  lui        $s5, 0xb
/* 2B20C 8003AA0C 1800A28F */  lw         $v0, 0x18($sp)
/* 2B210 8003AA10 0D001224 */  addiu      $s2, $zero, 0xd
/* 2B214 8003AA14 21808202 */  addu       $s0, $s4, $v0
/* 2B218 8003AA18 21280002 */  addu       $a1, $s0, $zero
.L8003AA1C:
/* 2B21C 8003AA1C 18001026 */  addiu      $s0, $s0, 0x18
/* 2B220 8003AA20 18009426 */  addiu      $s4, $s4, 0x18
/* 2B224 8003AA24 0100DE27 */  addiu      $fp, $fp, 1
/* 2B228 8003AA28 05000224 */  addiu      $v0, $zero, 5
/* 2B22C 8003AA2C 28000324 */  addiu      $v1, $zero, 0x28
/* 2B230 8003AA30 EFFF03A2 */  sb         $v1, -0x11($s0)
/* 2B234 8003AA34 031C1500 */  sra        $v1, $s5, 0x10
/* 2B238 8003AA38 EBFF02A2 */  sb         $v0, -0x15($s0)
/* 2B23C 8003AA3C 88FF6224 */  addiu      $v0, $v1, -0x78
/* 2B240 8003AA40 92FF6324 */  addiu      $v1, $v1, -0x6e
/* 2B244 8003AA44 FAFF03A6 */  sh         $v1, -6($s0)
/* 2B248 8003AA48 FEFF03A6 */  sh         $v1, -2($s0)
/* 2B24C 8003AA4C 1380033C */  lui        $v1, %hi(D_80129DA8)
/* 2B250 8003AA50 F2FF02A6 */  sh         $v0, -0xe($s0)
/* 2B254 8003AA54 F6FF02A6 */  sh         $v0, -0xa($s0)
/* 2B258 8003AA58 A89D6224 */  addiu      $v0, $v1, %lo(D_80129DA8)
/* 2B25C 8003AA5C F0FF13A6 */  sh         $s3, -0x10($s0)
/* 2B260 8003AA60 F4FF11A6 */  sh         $s1, -0xc($s0)
/* 2B264 8003AA64 F8FF13A6 */  sh         $s3, -8($s0)
/* 2B268 8003AA68 FCFF11A6 */  sh         $s1, -4($s0)
/* 2B26C 8003AA6C ECFF17A2 */  sb         $s7, -0x14($s0)
/* 2B270 8003AA70 EDFF17A2 */  sb         $s7, -0x13($s0)
/* 2B274 8003AA74 EEFF17A2 */  sb         $s7, -0x12($s0)
/* 2B278 8003AA78 2C0C438C */  lw         $v1, 0xc2c($v0)
/* 2B27C 8003AA7C 21A8A702 */  addu       $s5, $s5, $a3
/* 2B280 8003AA80 0400648C */  lw         $a0, 4($v1)
/* 2B284 8003AA84 FFFF5226 */  addiu      $s2, $s2, -1
/* 2B288 8003AA88 2000A6AF */  sw         $a2, 0x20($sp)
/* 2B28C 8003AA8C 2400A7AF */  sw         $a3, 0x24($sp)
/* 2B290 8003AA90 D685000C */  jal        AddPrim
/* 2B294 8003AA94 14008424 */   addiu     $a0, $a0, 0x14
/* 2B298 8003AA98 2000A68F */  lw         $a2, 0x20($sp)
/* 2B29C 8003AA9C 2400A78F */  lw         $a3, 0x24($sp)
/* 2B2A0 8003AAA0 DEFF4106 */  bgez       $s2, .L8003AA1C
/* 2B2A4 8003AAA4 21280002 */   addu      $a1, $s0, $zero
/* 2B2A8 8003AAA8 0100D626 */  addiu      $s6, $s6, 1
/* 2B2AC 8003AAAC 1400C22A */  slti       $v0, $s6, 0x14
/* 2B2B0 8003AAB0 D2FF4014 */  bnez       $v0, .L8003A9FC
/* 2B2B4 8003AAB4 2130C700 */   addu      $a2, $a2, $a3
/* 2B2B8 8003AAB8 21B00000 */  addu       $s6, $zero, $zero
/* 2B2BC 8003AABC 40001724 */  addiu      $s7, $zero, 0x40
/* 2B2C0 8003AAC0 0300063C */  lui        $a2, 3
/* 2B2C4 8003AAC4 40101E00 */  sll        $v0, $fp, 1
/* 2B2C8 8003AAC8 21105E00 */  addu       $v0, $v0, $fp
/* 2B2CC 8003AACC C0A00200 */  sll        $s4, $v0, 3
/* 2B2D0 8003AAD0 03140600 */  sra        $v0, $a2, 0x10
.L8003AAD4:
/* 2B2D4 8003AAD4 60FF5324 */  addiu      $s3, $v0, -0xa0
/* 2B2D8 8003AAD8 6AFF5124 */  addiu      $s1, $v0, -0x96
/* 2B2DC 8003AADC 0300153C */  lui        $s5, 3
/* 2B2E0 8003AAE0 1800A78F */  lw         $a3, 0x18($sp)
/* 2B2E4 8003AAE4 01001224 */  addiu      $s2, $zero, 1
/* 2B2E8 8003AAE8 21808702 */  addu       $s0, $s4, $a3
.L8003AAEC:
/* 2B2EC 8003AAEC 21280002 */  addu       $a1, $s0, $zero
/* 2B2F0 8003AAF0 18001026 */  addiu      $s0, $s0, 0x18
/* 2B2F4 8003AAF4 18009426 */  addiu      $s4, $s4, 0x18
/* 2B2F8 8003AAF8 05000224 */  addiu      $v0, $zero, 5
/* 2B2FC 8003AAFC 28000324 */  addiu      $v1, $zero, 0x28
/* 2B300 8003AB00 EFFF03A2 */  sb         $v1, -0x11($s0)
/* 2B304 8003AB04 031C1500 */  sra        $v1, $s5, 0x10
/* 2B308 8003AB08 EBFF02A2 */  sb         $v0, -0x15($s0)
/* 2B30C 8003AB0C 88FF6224 */  addiu      $v0, $v1, -0x78
/* 2B310 8003AB10 8AFF6324 */  addiu      $v1, $v1, -0x76
/* 2B314 8003AB14 FAFF03A6 */  sh         $v1, -6($s0)
/* 2B318 8003AB18 FEFF03A6 */  sh         $v1, -2($s0)
/* 2B31C 8003AB1C 1380033C */  lui        $v1, %hi(D_80129DA8)
/* 2B320 8003AB20 F2FF02A6 */  sh         $v0, -0xe($s0)
/* 2B324 8003AB24 F6FF02A6 */  sh         $v0, -0xa($s0)
/* 2B328 8003AB28 A89D6224 */  addiu      $v0, $v1, %lo(D_80129DA8)
/* 2B32C 8003AB2C F0FF13A6 */  sh         $s3, -0x10($s0)
/* 2B330 8003AB30 F4FF11A6 */  sh         $s1, -0xc($s0)
/* 2B334 8003AB34 F8FF13A6 */  sh         $s3, -8($s0)
/* 2B338 8003AB38 FCFF11A6 */  sh         $s1, -4($s0)
/* 2B33C 8003AB3C ECFF17A2 */  sb         $s7, -0x14($s0)
/* 2B340 8003AB40 EDFF17A2 */  sb         $s7, -0x13($s0)
/* 2B344 8003AB44 EEFF17A2 */  sb         $s7, -0x12($s0)
/* 2B348 8003AB48 2C0C438C */  lw         $v1, 0xc2c($v0)
/* 2B34C 8003AB4C 0100DE27 */  addiu      $fp, $fp, 1
/* 2B350 8003AB50 0400648C */  lw         $a0, 4($v1)
/* 2B354 8003AB54 FFFF5226 */  addiu      $s2, $s2, -1
/* 2B358 8003AB58 2000A6AF */  sw         $a2, 0x20($sp)
/* 2B35C 8003AB5C D685000C */  jal        AddPrim
/* 2B360 8003AB60 14008424 */   addiu     $a0, $a0, 0x14
/* 2B364 8003AB64 E800023C */  lui        $v0, 0xe8
/* 2B368 8003AB68 2000A68F */  lw         $a2, 0x20($sp)
/* 2B36C 8003AB6C DFFF4106 */  bgez       $s2, .L8003AAEC
/* 2B370 8003AB70 21A8A202 */   addu      $s5, $s5, $v0
/* 2B374 8003AB74 1000023C */  lui        $v0, 0x10
/* 2B378 8003AB78 2130C200 */  addu       $a2, $a2, $v0
/* 2B37C 8003AB7C 0100D626 */  addiu      $s6, $s6, 1
/* 2B380 8003AB80 1400C22A */  slti       $v0, $s6, 0x14
/* 2B384 8003AB84 D3FF4014 */  bnez       $v0, .L8003AAD4
/* 2B388 8003AB88 03140600 */   sra       $v0, $a2, 0x10
/* 2B38C 8003AB8C 21B00000 */  addu       $s6, $zero, $zero
/* 2B390 8003AB90 40981E00 */  sll        $s3, $fp, 1
/* 2B394 8003AB94 0100D527 */  addiu      $s5, $fp, 1
/* 2B398 8003AB98 FF001424 */  addiu      $s4, $zero, 0xff
/* 2B39C 8003AB9C 0E80033C */  lui        $v1, %hi(D_800D8F40)
/* 2B3A0 8003ABA0 408F7124 */  addiu      $s1, $v1, %lo(D_800D8F40)
/* 2B3A4 8003ABA4 21100000 */  addu       $v0, $zero, $zero
/* 2B3A8 8003ABA8 1C00A78F */  lw         $a3, 0x1c($sp)
/* 2B3AC 8003ABAC 00110200 */  sll        $v0, $v0, 4
/* 2B3B0 8003ABB0 21804700 */  addu       $s0, $v0, $a3
/* 2B3B4 8003ABB4 21280002 */  addu       $a1, $s0, $zero
.L8003ABB8:
/* 2B3B8 8003ABB8 10001026 */  addiu      $s0, $s0, 0x10
/* 2B3BC 8003ABBC 40201600 */  sll        $a0, $s6, 1
/* 2B3C0 8003ABC0 0E80023C */  lui        $v0, %hi(D_800D8F90)
/* 2B3C4 8003ABC4 908F4624 */  addiu      $a2, $v0, %lo(D_800D8F90)
/* 2B3C8 8003ABC8 21308600 */  addu       $a2, $a0, $a2
/* 2B3CC 8003ABCC 0E80073C */  lui        $a3, %hi(D_800D8FE0)
/* 2B3D0 8003ABD0 E08FE324 */  addiu      $v1, $a3, %lo(D_800D8FE0)
/* 2B3D4 8003ABD4 21188300 */  addu       $v1, $a0, $v1
/* 2B3D8 8003ABD8 0E80073C */  lui        $a3, %hi(D_800D9030)
/* 2B3DC 8003ABDC 3090E224 */  addiu      $v0, $a3, %lo(D_800D9030)
/* 2B3E0 8003ABE0 21208200 */  addu       $a0, $a0, $v0
/* 2B3E4 8003ABE4 03000224 */  addiu      $v0, $zero, 3
/* 2B3E8 8003ABE8 00002786 */  lh         $a3, ($s1)
/* 2B3EC 8003ABEC 0000C884 */  lh         $t0, ($a2)
/* 2B3F0 8003ABF0 00006984 */  lh         $t1, ($v1)
/* 2B3F4 8003ABF4 00008684 */  lh         $a2, ($a0)
/* 2B3F8 8003ABF8 40000324 */  addiu      $v1, $zero, 0x40
/* 2B3FC 8003ABFC F3FF02A2 */  sb         $v0, -0xd($s0)
/* 2B400 8003AC00 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 2B404 8003AC04 A89D5224 */  addiu      $s2, $v0, %lo(D_80129DA8)
/* 2B408 8003AC08 F7FF03A2 */  sb         $v1, -9($s0)
/* 2B40C 8003AC0C F4FF14A2 */  sb         $s4, -0xc($s0)
/* 2B410 8003AC10 F5FF00A2 */  sb         $zero, -0xb($s0)
/* 2B414 8003AC14 F6FF00A2 */  sb         $zero, -0xa($s0)
/* 2B418 8003AC18 60FFE724 */  addiu      $a3, $a3, -0xa0
/* 2B41C 8003AC1C 88FF0825 */  addiu      $t0, $t0, -0x78
/* 2B420 8003AC20 60FF2925 */  addiu      $t1, $t1, -0xa0
/* 2B424 8003AC24 88FFC624 */  addiu      $a2, $a2, -0x78
/* 2B428 8003AC28 F8FF07A6 */  sh         $a3, -8($s0)
/* 2B42C 8003AC2C FAFF08A6 */  sh         $t0, -6($s0)
/* 2B430 8003AC30 FCFF09A6 */  sh         $t1, -4($s0)
/* 2B434 8003AC34 FEFF06A6 */  sh         $a2, -2($s0)
/* 2B438 8003AC38 2C0C428E */  lw         $v0, 0xc2c($s2)
/* 2B43C 8003AC3C 02003126 */  addiu      $s1, $s1, 2
/* 2B440 8003AC40 0400448C */  lw         $a0, 4($v0)
/* 2B444 8003AC44 0100D626 */  addiu      $s6, $s6, 1
/* 2B448 8003AC48 D685000C */  jal        AddPrim
/* 2B44C 8003AC4C 10008424 */   addiu     $a0, $a0, 0x10
/* 2B450 8003AC50 2800C22A */  slti       $v0, $s6, 0x28
/* 2B454 8003AC54 D8FF4014 */  bnez       $v0, .L8003ABB8
/* 2B458 8003AC58 21280002 */   addu      $a1, $s0, $zero
/* 2B45C 8003AC5C 21287E02 */  addu       $a1, $s3, $fp
/* 2B460 8003AC60 C0280500 */  sll        $a1, $a1, 3
/* 2B464 8003AC64 05001124 */  addiu      $s1, $zero, 5
/* 2B468 8003AC68 28001024 */  addiu      $s0, $zero, 0x28
/* 2B46C 8003AC6C BDFF0424 */  addiu      $a0, $zero, -0x43
/* 2B470 8003AC70 1800A38F */  lw         $v1, 0x18($sp)
/* 2B474 8003AC74 95FF0224 */  addiu      $v0, $zero, -0x6b
/* 2B478 8003AC78 2128A300 */  addu       $a1, $a1, $v1
/* 2B47C 8003AC7C 43000324 */  addiu      $v1, $zero, 0x43
/* 2B480 8003AC80 0A00A2A4 */  sh         $v0, 0xa($a1)
/* 2B484 8003AC84 0E00A2A4 */  sh         $v0, 0xe($a1)
/* 2B488 8003AC88 ABFF0224 */  addiu      $v0, $zero, -0x55
/* 2B48C 8003AC8C 0300B1A0 */  sb         $s1, 3($a1)
/* 2B490 8003AC90 0700B0A0 */  sb         $s0, 7($a1)
/* 2B494 8003AC94 0800A4A4 */  sh         $a0, 8($a1)
/* 2B498 8003AC98 0C00A3A4 */  sh         $v1, 0xc($a1)
/* 2B49C 8003AC9C 1000A4A4 */  sh         $a0, 0x10($a1)
/* 2B4A0 8003ACA0 1200A2A4 */  sh         $v0, 0x12($a1)
/* 2B4A4 8003ACA4 1400A3A4 */  sh         $v1, 0x14($a1)
/* 2B4A8 8003ACA8 1600A2A4 */  sh         $v0, 0x16($a1)
/* 2B4AC 8003ACAC 0400A0A0 */  sb         $zero, 4($a1)
/* 2B4B0 8003ACB0 0500A0A0 */  sb         $zero, 5($a1)
/* 2B4B4 8003ACB4 0600A0A0 */  sb         $zero, 6($a1)
/* 2B4B8 8003ACB8 2C0C428E */  lw         $v0, 0xc2c($s2)
/* 2B4BC 8003ACBC 00000000 */  nop
/* 2B4C0 8003ACC0 0400448C */  lw         $a0, 4($v0)
/* 2B4C4 8003ACC4 21F0A002 */  addu       $fp, $s5, $zero
/* 2B4C8 8003ACC8 D685000C */  jal        AddPrim
/* 2B4CC 8003ACCC 0C008424 */   addiu     $a0, $a0, 0xc
/* 2B4D0 8003ACD0 40281E00 */  sll        $a1, $fp, 1
/* 2B4D4 8003ACD4 2128BE00 */  addu       $a1, $a1, $fp
/* 2B4D8 8003ACD8 C0280500 */  sll        $a1, $a1, 3
/* 2B4DC 8003ACDC 8DFF0424 */  addiu      $a0, $zero, -0x73
/* 2B4E0 8003ACE0 55000224 */  addiu      $v0, $zero, 0x55
/* 2B4E4 8003ACE4 1800A78F */  lw         $a3, 0x18($sp)
/* 2B4E8 8003ACE8 73000324 */  addiu      $v1, $zero, 0x73
/* 2B4EC 8003ACEC 2128A700 */  addu       $a1, $a1, $a3
/* 2B4F0 8003ACF0 0A00A2A4 */  sh         $v0, 0xa($a1)
/* 2B4F4 8003ACF4 0E00A2A4 */  sh         $v0, 0xe($a1)
/* 2B4F8 8003ACF8 6B000224 */  addiu      $v0, $zero, 0x6b
/* 2B4FC 8003ACFC 0300B1A0 */  sb         $s1, 3($a1)
/* 2B500 8003AD00 0700B0A0 */  sb         $s0, 7($a1)
/* 2B504 8003AD04 0800A4A4 */  sh         $a0, 8($a1)
/* 2B508 8003AD08 0C00A3A4 */  sh         $v1, 0xc($a1)
/* 2B50C 8003AD0C 1000A4A4 */  sh         $a0, 0x10($a1)
/* 2B510 8003AD10 1200A2A4 */  sh         $v0, 0x12($a1)
/* 2B514 8003AD14 1400A3A4 */  sh         $v1, 0x14($a1)
/* 2B518 8003AD18 1600A2A4 */  sh         $v0, 0x16($a1)
/* 2B51C 8003AD1C 0400A0A0 */  sb         $zero, 4($a1)
/* 2B520 8003AD20 0500A0A0 */  sb         $zero, 5($a1)
/* 2B524 8003AD24 0600A0A0 */  sb         $zero, 6($a1)
/* 2B528 8003AD28 2C0C428E */  lw         $v0, 0xc2c($s2)
/* 2B52C 8003AD2C 00000000 */  nop
/* 2B530 8003AD30 0400448C */  lw         $a0, 4($v0)
/* 2B534 8003AD34 D685000C */  jal        AddPrim
/* 2B538 8003AD38 0C008424 */   addiu     $a0, $a0, 0xc
/* 2B53C 8003AD3C 7CAA000C */  jal        vsync_8002a9f0
/* 2B540 8003AD40 00101024 */   addiu     $s0, $zero, 0x1000
/* 2B544 8003AD44 21200000 */  addu       $a0, $zero, $zero
/* 2B548 8003AD48 D0FF0524 */  addiu      $a1, $zero, -0x30
/* 2B54C 8003AD4C 9EFF0624 */  addiu      $a2, $zero, -0x62
/* 2B550 8003AD50 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B554 8003AD54 0180023C */  lui        $v0, %hi(D_8001290C)
/* 2B558 8003AD58 0C294224 */  addiu      $v0, $v0, %lo(D_8001290C)
/* 2B55C 8003AD5C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B560 8003AD60 290A010C */  jal        PrintText_800428a4
/* 2B564 8003AD64 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B568 8003AD68 21200000 */  addu       $a0, $zero, $zero
/* 2B56C 8003AD6C 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2B570 8003AD70 5E000624 */  addiu      $a2, $zero, 0x5e
/* 2B574 8003AD74 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B578 8003AD78 0180023C */  lui        $v0, %hi(D_8001291C)
/* 2B57C 8003AD7C 1C294224 */  addiu      $v0, $v0, %lo(D_8001291C)
/* 2B580 8003AD80 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B584 8003AD84 290A010C */  jal        PrintText_800428a4
/* 2B588 8003AD88 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B58C 8003AD8C 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 2B590 8003AD90 4800BE8F */  lw         $fp, 0x48($sp)
/* 2B594 8003AD94 4400B78F */  lw         $s7, 0x44($sp)
/* 2B598 8003AD98 4000B68F */  lw         $s6, 0x40($sp)
/* 2B59C 8003AD9C 3C00B58F */  lw         $s5, 0x3c($sp)
/* 2B5A0 8003ADA0 3800B48F */  lw         $s4, 0x38($sp)
/* 2B5A4 8003ADA4 3400B38F */  lw         $s3, 0x34($sp)
/* 2B5A8 8003ADA8 3000B28F */  lw         $s2, 0x30($sp)
/* 2B5AC 8003ADAC 2C00B18F */  lw         $s1, 0x2c($sp)
/* 2B5B0 8003ADB0 2800B08F */  lw         $s0, 0x28($sp)
/* 2B5B4 8003ADB4 0800E003 */  jr         $ra
/* 2B5B8 8003ADB8 5000BD27 */   addiu     $sp, $sp, 0x50
