.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002D924
/* 1E124 8002D924 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 1E128 8002D928 2800BFAF */  sw         $ra, 0x28($sp)
/* 1E12C 8002D92C 2400B5AF */  sw         $s5, 0x24($sp)
/* 1E130 8002D930 2000B4AF */  sw         $s4, 0x20($sp)
/* 1E134 8002D934 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 1E138 8002D938 1800B2AF */  sw         $s2, 0x18($sp)
/* 1E13C 8002D93C 1400B1AF */  sw         $s1, 0x14($sp)
/* 1E140 8002D940 6709030C */  jal        FUN_800c259c
/* 1E144 8002D944 1000B0AF */   sw        $s0, 0x10($sp)
/* 1E148 8002D948 1580023C */  lui        $v0, %hi(D_8014CB80)
/* 1E14C 8002D94C 80CB448C */  lw         $a0, %lo(D_8014CB80)($v0)
/* 1E150 8002D950 00000000 */  nop
/* 1E154 8002D954 0E00832C */  sltiu      $v1, $a0, 0xe
/* 1E158 8002D958 7D026010 */  beqz       $v1, .L8002E350
/* 1E15C 8002D95C 21904000 */   addu      $s2, $v0, $zero
/* 1E160 8002D960 0180023C */  lui        $v0, %hi(D_80011048)
/* 1E164 8002D964 48104224 */  addiu      $v0, $v0, %lo(D_80011048)
/* 1E168 8002D968 80180400 */  sll        $v1, $a0, 2
/* 1E16C 8002D96C 21186200 */  addu       $v1, $v1, $v0
/* 1E170 8002D970 0000648C */  lw         $a0, ($v1)
/* 1E174 8002D974 00000000 */  nop
/* 1E178 8002D978 08008000 */  jr         $a0
/* 1E17C 8002D97C 00000000 */   nop
/* 1E180 8002D980 02000224 */  addiu      $v0, $zero, 2
/* 1E184 8002D984 D4B80008 */  j          .L8002E350
/* 1E188 8002D988 80CB42AE */   sw        $v0, -0x3480($s2)
/* 1E18C 8002D98C 1580023C */  lui        $v0, %hi(D_8014CB88)
/* 1E190 8002D990 88CB448C */  lw         $a0, %lo(D_8014CB88)($v0)
/* 1E194 8002D994 00000000 */  nop
/* 1E198 8002D998 A7008004 */  bltz       $a0, .L8002DC38
/* 1E19C 8002D99C 1580023C */   lui       $v0, %hi(D_8014CB90)
/* 1E1A0 8002D9A0 90CB438C */  lw         $v1, %lo(D_8014CB90)($v0)
/* 1E1A4 8002D9A4 00000000 */  nop
/* 1E1A8 8002D9A8 03006010 */  beqz       $v1, .L8002D9B8
/* 1E1AC 8002D9AC 07000224 */   addiu     $v0, $zero, 7
/* 1E1B0 8002D9B0 D4B80008 */  j          .L8002E350
/* 1E1B4 8002D9B4 80CB42AE */   sw        $v0, -0x3480($s2)
.L8002D9B8:
/* 1E1B8 8002D9B8 0E80053C */  lui        $a1, %hi(D_800D8D5C)
/* 1E1BC 8002D9BC 5C8DA524 */  addiu      $a1, $a1, %lo(D_800D8D5C)
/* 1E1C0 8002D9C0 E905030C */  jal        FUN_800c17a4
/* 1E1C4 8002D9C4 03000624 */   addiu     $a2, $zero, 3
/* 1E1C8 8002D9C8 04004010 */  beqz       $v0, .L8002D9DC
/* 1E1CC 8002D9CC 21100000 */   addu      $v0, $zero, $zero
/* 1E1D0 8002D9D0 1580043C */  lui        $a0, 0x8015
/* 1E1D4 8002D9D4 18B70008 */  j          .L8002DC60
/* 1E1D8 8002D9D8 03000324 */   addiu     $v1, $zero, 3
.L8002D9DC:
/* 1E1DC 8002D9DC 1580023C */  lui        $v0, 0x8015
/* 1E1E0 8002D9E0 4AB80008 */  j          .L8002E128
/* 1E1E4 8002D9E4 04000324 */   addiu     $v1, $zero, 4
/* 1E1E8 8002D9E8 1580113C */  lui        $s1, %hi(D_8014CBA0)
/* 1E1EC 8002D9EC A0CB3026 */  addiu      $s0, $s1, %lo(D_8014CBA0)
/* 1E1F0 8002D9F0 3B06030C */  jal        FUN_800c18ec
/* 1E1F4 8002D9F4 21200002 */   addu      $a0, $s0, $zero
/* 1E1F8 8002D9F8 21304000 */  addu       $a2, $v0, $zero
/* 1E1FC 8002D9FC 2900C018 */  blez       $a2, .L8002DAA4
/* 1E200 8002DA00 01000224 */   addiu     $v0, $zero, 1
/* 1E204 8002DA04 A0CB2392 */  lbu        $v1, -0x3460($s1)
/* 1E208 8002DA08 00000000 */  nop
/* 1E20C 8002DA0C 1C006214 */  bne        $v1, $v0, .L8002DA80
/* 1E210 8002DA10 00000000 */   nop
/* 1E214 8002DA14 01000792 */  lbu        $a3, 1($s0)
/* 1E218 8002DA18 00000000 */  nop
/* 1E21C 8002DA1C 1900E314 */  bne        $a3, $v1, .L8002DA84
/* 1E220 8002DA20 1580033C */   lui       $v1, 0x8015
/* 1E224 8002DA24 1580043C */  lui        $a0, %hi(D_8014DEC8)
/* 1E228 8002DA28 1580053C */  lui        $a1, 0x8015
/* 1E22C 8002DA2C C8DE828C */  lw         $v0, %lo(D_8014DEC8)($a0)
/* 1E230 8002DA30 02000392 */  lbu        $v1, 2($s0)
/* 1E234 8002DA34 00FF4230 */  andi       $v0, $v0, 0xff00
/* 1E238 8002DA38 25104300 */  or         $v0, $v0, $v1
/* 1E23C 8002DA3C C8DE82AC */  sw         $v0, -0x2138($a0)
/* 1E240 8002DA40 1580043C */  lui        $a0, 0x8015
/* 1E244 8002DA44 03000292 */  lbu        $v0, 3($s0)
/* 1E248 8002DA48 04000392 */  lbu        $v1, 4($s0)
/* 1E24C 8002DA4C 00120200 */  sll        $v0, $v0, 8
/* 1E250 8002DA50 25104300 */  or         $v0, $v0, $v1
/* 1E254 8002DA54 C0DEA2AC */  sw         $v0, -0x2140($a1)
/* 1E258 8002DA58 1580023C */  lui        $v0, %hi(D_8014CB88)
/* 1E25C 8002DA5C 88CB438C */  lw         $v1, %lo(D_8014CB88)($v0)
/* 1E260 8002DA60 C0CC8424 */  addiu      $a0, $a0, -0x3340
/* 1E264 8002DA64 FFFF6324 */  addiu      $v1, $v1, -1
/* 1E268 8002DA68 C0100300 */  sll        $v0, $v1, 3
/* 1E26C 8002DA6C 21104300 */  addu       $v0, $v0, $v1
/* 1E270 8002DA70 00110200 */  sll        $v0, $v0, 4
/* 1E274 8002DA74 21104400 */  addu       $v0, $v0, $a0
/* 1E278 8002DA78 BFB60008 */  j          .L8002DAFC
/* 1E27C 8002DA7C 840047A4 */   sh        $a3, 0x84($v0)
.L8002DA80:
/* 1E280 8002DA80 1580033C */  lui        $v1, %hi(D_8014DF08)
.L8002DA84:
/* 1E284 8002DA84 08DF6324 */  addiu      $v1, $v1, %lo(D_8014DF08)
/* 1E288 8002DA88 80200600 */  sll        $a0, $a2, 2
/* 1E28C 8002DA8C 23186400 */  subu       $v1, $v1, $a0
/* 1E290 8002DA90 0000628C */  lw         $v0, ($v1)
/* 1E294 8002DA94 1580043C */  lui        $a0, 0x8015
/* 1E298 8002DA98 01004224 */  addiu      $v0, $v0, 1
/* 1E29C 8002DA9C B5B60008 */  j          .L8002DAD4
/* 1E2A0 8002DAA0 000062AC */   sw        $v0, ($v1)
.L8002DAA4:
/* 1E2A4 8002DAA4 FBFF0224 */  addiu      $v0, $zero, -5
/* 1E2A8 8002DAA8 0A00C214 */  bne        $a2, $v0, .L8002DAD4
/* 1E2AC 8002DAAC 1580043C */   lui       $a0, 0x8015
/* 1E2B0 8002DAB0 1580023C */  lui        $v0, %hi(D_8014CB94)
/* 1E2B4 8002DAB4 94CB438C */  lw         $v1, %lo(D_8014CB94)($v0)
/* 1E2B8 8002DAB8 00000000 */  nop
/* 1E2BC 8002DABC 21206000 */  addu       $a0, $v1, $zero
/* 1E2C0 8002DAC0 01006324 */  addiu      $v1, $v1, 1
/* 1E2C4 8002DAC4 05008428 */  slti       $a0, $a0, 5
/* 1E2C8 8002DAC8 21028014 */  bnez       $a0, .L8002E350
/* 1E2CC 8002DACC 94CB43AC */   sw        $v1, -0x346c($v0)
/* 1E2D0 8002DAD0 1580043C */  lui        $a0, %hi(D_8014CCC0)
.L8002DAD4:
/* 1E2D4 8002DAD4 1580023C */  lui        $v0, %hi(D_8014CB88)
/* 1E2D8 8002DAD8 88CB438C */  lw         $v1, %lo(D_8014CB88)($v0)
/* 1E2DC 8002DADC C0CC8424 */  addiu      $a0, $a0, %lo(D_8014CCC0)
/* 1E2E0 8002DAE0 FFFF6324 */  addiu      $v1, $v1, -1
/* 1E2E4 8002DAE4 C0100300 */  sll        $v0, $v1, 3
/* 1E2E8 8002DAE8 21104300 */  addu       $v0, $v0, $v1
/* 1E2EC 8002DAEC 00110200 */  sll        $v0, $v0, 4
/* 1E2F0 8002DAF0 21104400 */  addu       $v0, $v0, $a0
/* 1E2F4 8002DAF4 02000324 */  addiu      $v1, $zero, 2
/* 1E2F8 8002DAF8 840043A4 */  sh         $v1, 0x84($v0)
.L8002DAFC:
/* 1E2FC 8002DAFC 6CB70008 */  j          .L8002DDB0
/* 1E300 8002DB00 05000224 */   addiu     $v0, $zero, 5
/* 1E304 8002DB04 1580023C */  lui        $v0, %hi(D_8014CB8C)
/* 1E308 8002DB08 8CCB448C */  lw         $a0, %lo(D_8014CB8C)($v0)
/* 1E30C 8002DB0C 00000000 */  nop
/* 1E310 8002DB10 49008004 */  bltz       $a0, .L8002DC38
/* 1E314 8002DB14 0E80053C */   lui       $a1, %hi(D_800D8D5C)
/* 1E318 8002DB18 5C8DA524 */  addiu      $a1, $a1, %lo(D_800D8D5C)
/* 1E31C 8002DB1C E905030C */  jal        FUN_800c17a4
/* 1E320 8002DB20 03000624 */   addiu     $a2, $zero, 3
/* 1E324 8002DB24 04004010 */  beqz       $v0, .L8002DB38
/* 1E328 8002DB28 21100000 */   addu      $v0, $zero, $zero
/* 1E32C 8002DB2C 1580043C */  lui        $a0, 0x8015
/* 1E330 8002DB30 18B70008 */  j          .L8002DC60
/* 1E334 8002DB34 05000324 */   addiu     $v1, $zero, 5
.L8002DB38:
/* 1E338 8002DB38 1580023C */  lui        $v0, 0x8015
/* 1E33C 8002DB3C 4AB80008 */  j          .L8002E128
/* 1E340 8002DB40 06000324 */   addiu     $v1, $zero, 6
/* 1E344 8002DB44 1580113C */  lui        $s1, %hi(D_8014CBA0)
/* 1E348 8002DB48 A0CB3026 */  addiu      $s0, $s1, %lo(D_8014CBA0)
/* 1E34C 8002DB4C 3B06030C */  jal        FUN_800c18ec
/* 1E350 8002DB50 21200002 */   addu      $a0, $s0, $zero
/* 1E354 8002DB54 21304000 */  addu       $a2, $v0, $zero
/* 1E358 8002DB58 2200C018 */  blez       $a2, .L8002DBE4
/* 1E35C 8002DB5C 01000224 */   addiu     $v0, $zero, 1
/* 1E360 8002DB60 A0CB2392 */  lbu        $v1, -0x3460($s1)
/* 1E364 8002DB64 00000000 */  nop
/* 1E368 8002DB68 15006214 */  bne        $v1, $v0, .L8002DBC0
/* 1E36C 8002DB6C 00000000 */   nop
/* 1E370 8002DB70 01000792 */  lbu        $a3, 1($s0)
/* 1E374 8002DB74 00000000 */  nop
/* 1E378 8002DB78 1200E314 */  bne        $a3, $v1, .L8002DBC4
/* 1E37C 8002DB7C 1580033C */   lui       $v1, 0x8015
/* 1E380 8002DB80 1580043C */  lui        $a0, %hi(D_8014DEC8)
/* 1E384 8002DB84 1580053C */  lui        $a1, 0x8015
/* 1E388 8002DB88 02000292 */  lbu        $v0, 2($s0)
/* 1E38C 8002DB8C C8DE8390 */  lbu        $v1, %lo(D_8014DEC8)($a0)
/* 1E390 8002DB90 00120200 */  sll        $v0, $v0, 8
/* 1E394 8002DB94 25186200 */  or         $v1, $v1, $v0
/* 1E398 8002DB98 C8DE83AC */  sw         $v1, -0x2138($a0)
/* 1E39C 8002DB9C 03000292 */  lbu        $v0, 3($s0)
/* 1E3A0 8002DBA0 04000392 */  lbu        $v1, 4($s0)
/* 1E3A4 8002DBA4 00120200 */  sll        $v0, $v0, 8
/* 1E3A8 8002DBA8 25104300 */  or         $v0, $v0, $v1
/* 1E3AC 8002DBAC C4DEA2AC */  sw         $v0, -0x213c($a1)
/* 1E3B0 8002DBB0 1580023C */  lui        $v0, %hi(D_8014CB8C)
/* 1E3B4 8002DBB4 8CCB438C */  lw         $v1, %lo(D_8014CB8C)($v0)
/* 1E3B8 8002DBB8 44B70008 */  j          .L8002DD10
/* 1E3BC 8002DBBC 1580043C */   lui       $a0, 0x8015
.L8002DBC0:
/* 1E3C0 8002DBC0 1580033C */  lui        $v1, %hi(D_8014DF08)
.L8002DBC4:
/* 1E3C4 8002DBC4 08DF6324 */  addiu      $v1, $v1, %lo(D_8014DF08)
/* 1E3C8 8002DBC8 80200600 */  sll        $a0, $a2, 2
/* 1E3CC 8002DBCC 23186400 */  subu       $v1, $v1, $a0
/* 1E3D0 8002DBD0 0000628C */  lw         $v0, ($v1)
/* 1E3D4 8002DBD4 1580043C */  lui        $a0, 0x8015
/* 1E3D8 8002DBD8 01004224 */  addiu      $v0, $v0, 1
/* 1E3DC 8002DBDC 05B70008 */  j          .L8002DC14
/* 1E3E0 8002DBE0 000062AC */   sw        $v0, ($v1)
.L8002DBE4:
/* 1E3E4 8002DBE4 FBFF0224 */  addiu      $v0, $zero, -5
/* 1E3E8 8002DBE8 0A00C214 */  bne        $a2, $v0, .L8002DC14
/* 1E3EC 8002DBEC 1580043C */   lui       $a0, 0x8015
/* 1E3F0 8002DBF0 1580023C */  lui        $v0, %hi(D_8014CB94)
/* 1E3F4 8002DBF4 94CB438C */  lw         $v1, %lo(D_8014CB94)($v0)
/* 1E3F8 8002DBF8 00000000 */  nop
/* 1E3FC 8002DBFC 21206000 */  addu       $a0, $v1, $zero
/* 1E400 8002DC00 01006324 */  addiu      $v1, $v1, 1
/* 1E404 8002DC04 05008428 */  slti       $a0, $a0, 5
/* 1E408 8002DC08 D1018014 */  bnez       $a0, .L8002E350
/* 1E40C 8002DC0C 94CB43AC */   sw        $v1, -0x346c($v0)
/* 1E410 8002DC10 1580043C */  lui        $a0, %hi(D_8014CCC0)
.L8002DC14:
/* 1E414 8002DC14 1580023C */  lui        $v0, %hi(D_8014CB8C)
/* 1E418 8002DC18 8CCB438C */  lw         $v1, %lo(D_8014CB8C)($v0)
/* 1E41C 8002DC1C 64B70008 */  j          .L8002DD90
/* 1E420 8002DC20 C0CC8424 */   addiu     $a0, $a0, %lo(D_8014CCC0)
/* 1E424 8002DC24 1580023C */  lui        $v0, %hi(D_8014CB88)
/* 1E428 8002DC28 88CB448C */  lw         $a0, %lo(D_8014CB88)($v0)
/* 1E42C 8002DC2C 00000000 */  nop
/* 1E430 8002DC30 04008104 */  bgez       $a0, .L8002DC44
/* 1E434 8002DC34 0E80053C */   lui       $a1, %hi(D_800D8D60)
.L8002DC38:
/* 1E438 8002DC38 09000224 */  addiu      $v0, $zero, 9
/* 1E43C 8002DC3C D4B80008 */  j          .L8002E350
/* 1E440 8002DC40 80CB42AE */   sw        $v0, -0x3480($s2)
.L8002DC44:
/* 1E444 8002DC44 608DA524 */  addiu      $a1, $a1, %lo(D_800D8D60)
/* 1E448 8002DC48 E905030C */  jal        FUN_800c17a4
/* 1E44C 8002DC4C 03000624 */   addiu     $a2, $zero, 3
/* 1E450 8002DC50 0B004010 */  beqz       $v0, .L8002DC80
/* 1E454 8002DC54 21100000 */   addu      $v0, $zero, $zero
/* 1E458 8002DC58 1580043C */  lui        $a0, %hi(D_8014CB84)
/* 1E45C 8002DC5C 07000324 */  addiu      $v1, $zero, 7
.L8002DC60:
/* 1E460 8002DC60 1580053C */  lui        $a1, %hi(D_8014DED0)
/* 1E464 8002DC64 84CB83AC */  sw         $v1, %lo(D_8014CB84)($a0)
/* 1E468 8002DC68 D0DEA38C */  lw         $v1, %lo(D_8014DED0)($a1)
/* 1E46C 8002DC6C 01000424 */  addiu      $a0, $zero, 1
/* 1E470 8002DC70 80CB44AE */  sw         $a0, -0x3480($s2)
/* 1E474 8002DC74 01006324 */  addiu      $v1, $v1, 1
/* 1E478 8002DC78 D5B80008 */  j          .L8002E354
/* 1E47C 8002DC7C D0DEA3AC */   sw        $v1, -0x2130($a1)
.L8002DC80:
/* 1E480 8002DC80 1580023C */  lui        $v0, 0x8015
/* 1E484 8002DC84 4AB80008 */  j          .L8002E128
/* 1E488 8002DC88 08000324 */   addiu     $v1, $zero, 8
/* 1E48C 8002DC8C 1580113C */  lui        $s1, %hi(D_8014CBA0)
/* 1E490 8002DC90 A0CB3026 */  addiu      $s0, $s1, %lo(D_8014CBA0)
/* 1E494 8002DC94 3B06030C */  jal        FUN_800c18ec
/* 1E498 8002DC98 21200002 */   addu      $a0, $s0, $zero
/* 1E49C 8002DC9C 21304000 */  addu       $a2, $v0, $zero
/* 1E4A0 8002DCA0 2C00C018 */  blez       $a2, .L8002DD54
/* 1E4A4 8002DCA4 01000224 */   addiu     $v0, $zero, 1
/* 1E4A8 8002DCA8 A0CB2392 */  lbu        $v1, -0x3460($s1)
/* 1E4AC 8002DCAC 00000000 */  nop
/* 1E4B0 8002DCB0 1F006214 */  bne        $v1, $v0, .L8002DD30
/* 1E4B4 8002DCB4 00000000 */   nop
/* 1E4B8 8002DCB8 01000792 */  lbu        $a3, 1($s0)
/* 1E4BC 8002DCBC 00000000 */  nop
/* 1E4C0 8002DCC0 1C00E314 */  bne        $a3, $v1, .L8002DD34
/* 1E4C4 8002DCC4 1580033C */   lui       $v1, 0x8015
/* 1E4C8 8002DCC8 1580023C */  lui        $v0, %hi(D_8014DEC8)
/* 1E4CC 8002DCCC 1580053C */  lui        $a1, 0x8015
/* 1E4D0 8002DCD0 02000392 */  lbu        $v1, 2($s0)
/* 1E4D4 8002DCD4 1580043C */  lui        $a0, 0x8015
/* 1E4D8 8002DCD8 C8DE43AC */  sw         $v1, %lo(D_8014DEC8)($v0)
/* 1E4DC 8002DCDC 03000292 */  lbu        $v0, 3($s0)
/* 1E4E0 8002DCE0 04000392 */  lbu        $v1, 4($s0)
/* 1E4E4 8002DCE4 00120200 */  sll        $v0, $v0, 8
/* 1E4E8 8002DCE8 25104300 */  or         $v0, $v0, $v1
/* 1E4EC 8002DCEC C0DEA2AC */  sw         $v0, -0x2140($a1)
/* 1E4F0 8002DCF0 C0DEA524 */  addiu      $a1, $a1, -0x2140
/* 1E4F4 8002DCF4 05000292 */  lbu        $v0, 5($s0)
/* 1E4F8 8002DCF8 06000392 */  lbu        $v1, 6($s0)
/* 1E4FC 8002DCFC 00120200 */  sll        $v0, $v0, 8
/* 1E500 8002DD00 25104300 */  or         $v0, $v0, $v1
/* 1E504 8002DD04 0400A2AC */  sw         $v0, 4($a1)
/* 1E508 8002DD08 1580023C */  lui        $v0, %hi(D_8014CB88)
/* 1E50C 8002DD0C 88CB438C */  lw         $v1, %lo(D_8014CB88)($v0)
.L8002DD10:
/* 1E510 8002DD10 C0CC8424 */  addiu      $a0, $a0, -0x3340
/* 1E514 8002DD14 FFFF6324 */  addiu      $v1, $v1, -1
/* 1E518 8002DD18 C0100300 */  sll        $v0, $v1, 3
/* 1E51C 8002DD1C 21104300 */  addu       $v0, $v0, $v1
/* 1E520 8002DD20 00110200 */  sll        $v0, $v0, 4
/* 1E524 8002DD24 21104400 */  addu       $v0, $v0, $a0
/* 1E528 8002DD28 6BB70008 */  j          .L8002DDAC
/* 1E52C 8002DD2C 840047A4 */   sh        $a3, 0x84($v0)
.L8002DD30:
/* 1E530 8002DD30 1580033C */  lui        $v1, %hi(D_8014DF08)
.L8002DD34:
/* 1E534 8002DD34 08DF6324 */  addiu      $v1, $v1, %lo(D_8014DF08)
/* 1E538 8002DD38 80200600 */  sll        $a0, $a2, 2
/* 1E53C 8002DD3C 23186400 */  subu       $v1, $v1, $a0
/* 1E540 8002DD40 0000628C */  lw         $v0, ($v1)
/* 1E544 8002DD44 1580043C */  lui        $a0, 0x8015
/* 1E548 8002DD48 01004224 */  addiu      $v0, $v0, 1
/* 1E54C 8002DD4C 61B70008 */  j          .L8002DD84
/* 1E550 8002DD50 000062AC */   sw        $v0, ($v1)
.L8002DD54:
/* 1E554 8002DD54 FBFF0224 */  addiu      $v0, $zero, -5
/* 1E558 8002DD58 0A00C214 */  bne        $a2, $v0, .L8002DD84
/* 1E55C 8002DD5C 1580043C */   lui       $a0, 0x8015
/* 1E560 8002DD60 1580023C */  lui        $v0, %hi(D_8014CB94)
/* 1E564 8002DD64 94CB438C */  lw         $v1, %lo(D_8014CB94)($v0)
/* 1E568 8002DD68 00000000 */  nop
/* 1E56C 8002DD6C 21206000 */  addu       $a0, $v1, $zero
/* 1E570 8002DD70 01006324 */  addiu      $v1, $v1, 1
/* 1E574 8002DD74 05008428 */  slti       $a0, $a0, 5
/* 1E578 8002DD78 75018014 */  bnez       $a0, .L8002E350
/* 1E57C 8002DD7C 94CB43AC */   sw        $v1, -0x346c($v0)
/* 1E580 8002DD80 1580043C */  lui        $a0, %hi(D_8014CCC0)
.L8002DD84:
/* 1E584 8002DD84 1580023C */  lui        $v0, %hi(D_8014CB88)
/* 1E588 8002DD88 88CB438C */  lw         $v1, %lo(D_8014CB88)($v0)
/* 1E58C 8002DD8C C0CC8424 */  addiu      $a0, $a0, %lo(D_8014CCC0)
.L8002DD90:
/* 1E590 8002DD90 FFFF6324 */  addiu      $v1, $v1, -1
/* 1E594 8002DD94 C0100300 */  sll        $v0, $v1, 3
/* 1E598 8002DD98 21104300 */  addu       $v0, $v0, $v1
/* 1E59C 8002DD9C 00110200 */  sll        $v0, $v0, 4
/* 1E5A0 8002DDA0 21104400 */  addu       $v0, $v0, $a0
/* 1E5A4 8002DDA4 02000324 */  addiu      $v1, $zero, 2
/* 1E5A8 8002DDA8 840043A4 */  sh         $v1, 0x84($v0)
.L8002DDAC:
/* 1E5AC 8002DDAC 09000224 */  addiu      $v0, $zero, 9
.L8002DDB0:
/* 1E5B0 8002DDB0 1580033C */  lui        $v1, %hi(D_8014CB98)
/* 1E5B4 8002DDB4 80CB42AE */  sw         $v0, -0x3480($s2)
/* 1E5B8 8002DDB8 D4B80008 */  j          .L8002E350
/* 1E5BC 8002DDBC 98CB60AC */   sw        $zero, %lo(D_8014CB98)($v1)
/* 1E5C0 8002DDC0 1580023C */  lui        $v0, %hi(D_8014DEE0)
/* 1E5C4 8002DDC4 E0DE438C */  lw         $v1, %lo(D_8014DEE0)($v0)
/* 1E5C8 8002DDC8 00000000 */  nop
/* 1E5CC 8002DDCC 22006004 */  bltz       $v1, .L8002DE58
/* 1E5D0 8002DDD0 E0DE4424 */   addiu     $a0, $v0, -0x2120
/* 1E5D4 8002DDD4 1580103C */  lui        $s0, %hi(D_8014CCA0)
/* 1E5D8 8002DDD8 A0CC028E */  lw         $v0, %lo(D_8014CCA0)($s0)
/* 1E5DC 8002DDDC 00000000 */  nop
/* 1E5E0 8002DDE0 01004224 */  addiu      $v0, $v0, 1
/* 1E5E4 8002DDE4 A0CC02AE */  sw         $v0, -0x3360($s0)
/* 1E5E8 8002DDE8 02004228 */  slti       $v0, $v0, 2
/* 1E5EC 8002DDEC 02004014 */  bnez       $v0, .L8002DDF8
/* 1E5F0 8002DDF0 00000000 */   nop
/* 1E5F4 8002DDF4 A0CC00AE */  sw         $zero, -0x3360($s0)
.L8002DDF8:
/* 1E5F8 8002DDF8 A0CC028E */  lw         $v0, -0x3360($s0)
/* 1E5FC 8002DDFC 00000000 */  nop
/* 1E600 8002DE00 C0100200 */  sll        $v0, $v0, 3
/* 1E604 8002DE04 21104400 */  addu       $v0, $v0, $a0
/* 1E608 8002DE08 0000438C */  lw         $v1, ($v0)
/* 1E60C 8002DE0C 00000000 */  nop
/* 1E610 8002DE10 02006104 */  bgez       $v1, .L8002DE1C
/* 1E614 8002DE14 00000000 */   nop
/* 1E618 8002DE18 A0CC00AE */  sw         $zero, -0x3360($s0)
.L8002DE1C:
/* 1E61C 8002DE1C A0CC028E */  lw         $v0, -0x3360($s0)
/* 1E620 8002DE20 00000000 */  nop
/* 1E624 8002DE24 C0100200 */  sll        $v0, $v0, 3
/* 1E628 8002DE28 21104400 */  addu       $v0, $v0, $a0
/* 1E62C 8002DE2C 1580043C */  lui        $a0, %hi(D_8014CCC0)
/* 1E630 8002DE30 0000458C */  lw         $a1, ($v0)
/* 1E634 8002DE34 C0CC8424 */  addiu      $a0, $a0, %lo(D_8014CCC0)
/* 1E638 8002DE38 C0100500 */  sll        $v0, $a1, 3
/* 1E63C 8002DE3C 21104500 */  addu       $v0, $v0, $a1
/* 1E640 8002DE40 00110200 */  sll        $v0, $v0, 4
/* 1E644 8002DE44 21304400 */  addu       $a2, $v0, $a0
/* 1E648 8002DE48 8400C384 */  lh         $v1, 0x84($a2)
/* 1E64C 8002DE4C 00000000 */  nop
/* 1E650 8002DE50 0400601C */  bgtz       $v1, .L8002DE64
/* 1E654 8002DE54 00000000 */   nop
.L8002DE58:
/* 1E658 8002DE58 03000224 */  addiu      $v0, $zero, 3
/* 1E65C 8002DE5C D4B80008 */  j          .L8002E350
/* 1E660 8002DE60 80CB42AE */   sw        $v0, -0x3480($s2)
.L8002DE64:
/* 1E664 8002DE64 8A00C284 */  lh         $v0, 0x8a($a2)
/* 1E668 8002DE68 00000000 */  nop
/* 1E66C 8002DE6C 38014010 */  beqz       $v0, .L8002E350
/* 1E670 8002DE70 0E80023C */   lui       $v0, %hi(D_800D8D64)
/* 1E674 8002DE74 0100A424 */  addiu      $a0, $a1, 1
/* 1E678 8002DE78 648D4224 */  addiu      $v0, $v0, %lo(D_800D8D64)
/* 1E67C 8002DE7C 21284000 */  addu       $a1, $v0, $zero
/* 1E680 8002DE80 8A00C390 */  lbu        $v1, 0x8a($a2)
/* 1E684 8002DE84 02000624 */  addiu      $a2, $zero, 2
/* 1E688 8002DE88 E905030C */  jal        FUN_800c17a4
/* 1E68C 8002DE8C 010043A0 */   sb        $v1, 1($v0)
/* 1E690 8002DE90 0F004010 */  beqz       $v0, .L8002DED0
/* 1E694 8002DE94 21100000 */   addu      $v0, $zero, $zero
/* 1E698 8002DE98 1580053C */  lui        $a1, %hi(D_8014CB84)
/* 1E69C 8002DE9C 09000324 */  addiu      $v1, $zero, 9
/* 1E6A0 8002DEA0 84CBA3AC */  sw         $v1, %lo(D_8014CB84)($a1)
/* 1E6A4 8002DEA4 1580053C */  lui        $a1, %hi(D_8014DED0)
/* 1E6A8 8002DEA8 D0DEA524 */  addiu      $a1, $a1, %lo(D_8014DED0)
/* 1E6AC 8002DEAC 0400A38C */  lw         $v1, 4($a1)
/* 1E6B0 8002DEB0 01000424 */  addiu      $a0, $zero, 1
/* 1E6B4 8002DEB4 80CB44AE */  sw         $a0, -0x3480($s2)
/* 1E6B8 8002DEB8 A0CC048E */  lw         $a0, -0x3360($s0)
/* 1E6BC 8002DEBC 01006324 */  addiu      $v1, $v1, 1
/* 1E6C0 8002DEC0 FFFF8424 */  addiu      $a0, $a0, -1
/* 1E6C4 8002DEC4 0400A3AC */  sw         $v1, 4($a1)
/* 1E6C8 8002DEC8 D5B80008 */  j          .L8002E354
/* 1E6CC 8002DECC A0CC04AE */   sw        $a0, -0x3360($s0)
.L8002DED0:
/* 1E6D0 8002DED0 1580023C */  lui        $v0, 0x8015
/* 1E6D4 8002DED4 4AB80008 */  j          .L8002E128
/* 1E6D8 8002DED8 0A000324 */   addiu     $v1, $zero, 0xa
/* 1E6DC 8002DEDC 1580133C */  lui        $s3, %hi(D_8014CBA0)
/* 1E6E0 8002DEE0 A0CB7126 */  addiu      $s1, $s3, %lo(D_8014CBA0)
/* 1E6E4 8002DEE4 1580033C */  lui        $v1, %hi(D_8014DEE0)
/* 1E6E8 8002DEE8 1580143C */  lui        $s4, %hi(D_8014CCA0)
/* 1E6EC 8002DEEC A0CC828E */  lw         $v0, %lo(D_8014CCA0)($s4)
/* 1E6F0 8002DEF0 E0DE7524 */  addiu      $s5, $v1, %lo(D_8014DEE0)
/* 1E6F4 8002DEF4 C0100200 */  sll        $v0, $v0, 3
/* 1E6F8 8002DEF8 21105500 */  addu       $v0, $v0, $s5
/* 1E6FC 8002DEFC 0000508C */  lw         $s0, ($v0)
/* 1E700 8002DF00 3B06030C */  jal        FUN_800c18ec
/* 1E704 8002DF04 21202002 */   addu      $a0, $s1, $zero
/* 1E708 8002DF08 21304000 */  addu       $a2, $v0, $zero
/* 1E70C 8002DF0C 3C00C018 */  blez       $a2, .L8002E000
/* 1E710 8002DF10 01000224 */   addiu     $v0, $zero, 1
/* 1E714 8002DF14 A0CB6392 */  lbu        $v1, -0x3460($s3)
/* 1E718 8002DF18 00000000 */  nop
/* 1E71C 8002DF1C 27006214 */  bne        $v1, $v0, .L8002DFBC
/* 1E720 8002DF20 1580043C */   lui       $a0, 0x8015
/* 1E724 8002DF24 01002492 */  lbu        $a0, 1($s1)
/* 1E728 8002DF28 00000000 */  nop
/* 1E72C 8002DF2C 22008314 */  bne        $a0, $v1, .L8002DFB8
/* 1E730 8002DF30 03000224 */   addiu     $v0, $zero, 3
/* 1E734 8002DF34 1580033C */  lui        $v1, %hi(D_8014CCC0)
/* 1E738 8002DF38 C0CC6324 */  addiu      $v1, $v1, %lo(D_8014CCC0)
/* 1E73C 8002DF3C 80CB42AE */  sw         $v0, -0x3480($s2)
/* 1E740 8002DF40 C0101000 */  sll        $v0, $s0, 3
/* 1E744 8002DF44 21105000 */  addu       $v0, $v0, $s0
/* 1E748 8002DF48 00110200 */  sll        $v0, $v0, 4
/* 1E74C 8002DF4C 21104300 */  addu       $v0, $v0, $v1
/* 1E750 8002DF50 1580053C */  lui        $a1, %hi(D_8014CCB8)
/* 1E754 8002DF54 A0CC868E */  lw         $a2, -0x3360($s4)
/* 1E758 8002DF58 B8CCA524 */  addiu      $a1, $a1, %lo(D_8014CCB8)
/* 1E75C 8002DF5C 840044A4 */  sh         $a0, 0x84($v0)
/* 1E760 8002DF60 C0180600 */  sll        $v1, $a2, 3
/* 1E764 8002DF64 2118A302 */  addu       $v1, $s5, $v1
/* 1E768 8002DF68 80300600 */  sll        $a2, $a2, 2
/* 1E76C 8002DF6C 0400648C */  lw         $a0, 4($v1)
/* 1E770 8002DF70 2130C500 */  addu       $a2, $a2, $a1
/* 1E774 8002DF74 40200400 */  sll        $a0, $a0, 1
/* 1E778 8002DF78 02008324 */  addiu      $v1, $a0, 2
/* 1E77C 8002DF7C 21187100 */  addu       $v1, $v1, $s1
/* 1E780 8002DF80 00006290 */  lbu        $v0, ($v1)
/* 1E784 8002DF84 21209100 */  addu       $a0, $a0, $s1
/* 1E788 8002DF88 82110200 */  srl        $v0, $v0, 6
/* 1E78C 8002DF8C 01004230 */  andi       $v0, $v0, 1
/* 1E790 8002DF90 0000C2AC */  sw         $v0, ($a2)
/* 1E794 8002DF94 00006290 */  lbu        $v0, ($v1)
/* 1E798 8002DF98 03008590 */  lbu        $a1, 3($a0)
/* 1E79C 8002DF9C 00120200 */  sll        $v0, $v0, 8
/* 1E7A0 8002DFA0 25104500 */  or         $v0, $v0, $a1
/* 1E7A4 8002DFA4 FF0F4230 */  andi       $v0, $v0, 0xfff
/* 1E7A8 8002DFA8 E9004010 */  beqz       $v0, .L8002E350
/* 1E7AC 8002DFAC 0B000224 */   addiu     $v0, $zero, 0xb
/* 1E7B0 8002DFB0 D4B80008 */  j          .L8002E350
/* 1E7B4 8002DFB4 80CB42AE */   sw        $v0, -0x3480($s2)
.L8002DFB8:
/* 1E7B8 8002DFB8 1580043C */  lui        $a0, %hi(D_8014CCC0)
.L8002DFBC:
/* 1E7BC 8002DFBC C0CC8424 */  addiu      $a0, $a0, %lo(D_8014CCC0)
/* 1E7C0 8002DFC0 C0101000 */  sll        $v0, $s0, 3
/* 1E7C4 8002DFC4 21105000 */  addu       $v0, $v0, $s0
/* 1E7C8 8002DFC8 00110200 */  sll        $v0, $v0, 4
/* 1E7CC 8002DFCC 21104400 */  addu       $v0, $v0, $a0
/* 1E7D0 8002DFD0 02000324 */  addiu      $v1, $zero, 2
/* 1E7D4 8002DFD4 1580043C */  lui        $a0, %hi(D_8014DF08)
/* 1E7D8 8002DFD8 08DF8424 */  addiu      $a0, $a0, %lo(D_8014DF08)
/* 1E7DC 8002DFDC 840043A4 */  sh         $v1, 0x84($v0)
/* 1E7E0 8002DFE0 80100600 */  sll        $v0, $a2, 2
/* 1E7E4 8002DFE4 23208200 */  subu       $a0, $a0, $v0
/* 1E7E8 8002DFE8 0000838C */  lw         $v1, ($a0)
/* 1E7EC 8002DFEC 09000224 */  addiu      $v0, $zero, 9
/* 1E7F0 8002DFF0 80CB42AE */  sw         $v0, -0x3480($s2)
/* 1E7F4 8002DFF4 01006324 */  addiu      $v1, $v1, 1
/* 1E7F8 8002DFF8 D4B80008 */  j          .L8002E350
/* 1E7FC 8002DFFC 000083AC */   sw        $v1, ($a0)
.L8002E000:
/* 1E800 8002E000 FBFF0224 */  addiu      $v0, $zero, -5
/* 1E804 8002E004 0A00C214 */  bne        $a2, $v0, .L8002E030
/* 1E808 8002E008 1580043C */   lui       $a0, 0x8015
/* 1E80C 8002E00C 1580023C */  lui        $v0, %hi(D_8014CB94)
/* 1E810 8002E010 94CB438C */  lw         $v1, %lo(D_8014CB94)($v0)
/* 1E814 8002E014 00000000 */  nop
/* 1E818 8002E018 21206000 */  addu       $a0, $v1, $zero
/* 1E81C 8002E01C 01006324 */  addiu      $v1, $v1, 1
/* 1E820 8002E020 05008428 */  slti       $a0, $a0, 5
/* 1E824 8002E024 CA008014 */  bnez       $a0, .L8002E350
/* 1E828 8002E028 94CB43AC */   sw        $v1, -0x346c($v0)
/* 1E82C 8002E02C 1580043C */  lui        $a0, %hi(D_8014CCC0)
.L8002E030:
/* 1E830 8002E030 C0CC8424 */  addiu      $a0, $a0, %lo(D_8014CCC0)
/* 1E834 8002E034 C0101000 */  sll        $v0, $s0, 3
/* 1E838 8002E038 21105000 */  addu       $v0, $v0, $s0
/* 1E83C 8002E03C 00110200 */  sll        $v0, $v0, 4
/* 1E840 8002E040 21104400 */  addu       $v0, $v0, $a0
/* 1E844 8002E044 02000324 */  addiu      $v1, $zero, 2
/* 1E848 8002E048 09000424 */  addiu      $a0, $zero, 9
/* 1E84C 8002E04C 840043A4 */  sh         $v1, 0x84($v0)
/* 1E850 8002E050 D4B80008 */  j          .L8002E350
/* 1E854 8002E054 80CB44AE */   sw        $a0, -0x3480($s2)
/* 1E858 8002E058 09000224 */  addiu      $v0, $zero, 9
/* 1E85C 8002E05C 1580053C */  lui        $a1, %hi(D_8014DEE0)
/* 1E860 8002E060 1580033C */  lui        $v1, %hi(D_8014CCA0)
/* 1E864 8002E064 E0DEA524 */  addiu      $a1, $a1, %lo(D_8014DEE0)
/* 1E868 8002E068 80CB42AE */  sw         $v0, -0x3480($s2)
/* 1E86C 8002E06C A0CC628C */  lw         $v0, %lo(D_8014CCA0)($v1)
/* 1E870 8002E070 1580043C */  lui        $a0, %hi(D_8014CBA0)
/* 1E874 8002E074 C0100200 */  sll        $v0, $v0, 3
/* 1E878 8002E078 21304500 */  addu       $a2, $v0, $a1
/* 1E87C 8002E07C 2128A200 */  addu       $a1, $a1, $v0
/* 1E880 8002E080 0400A88C */  lw         $t0, 4($a1)
/* 1E884 8002E084 A0CB8424 */  addiu      $a0, $a0, %lo(D_8014CBA0)
/* 1E888 8002E088 40180800 */  sll        $v1, $t0, 1
/* 1E88C 8002E08C 21286400 */  addu       $a1, $v1, $a0
/* 1E890 8002E090 2118A000 */  addu       $v1, $a1, $zero
/* 1E894 8002E094 0200A290 */  lbu        $v0, 2($a1)
/* 1E898 8002E098 03006490 */  lbu        $a0, 3($v1)
/* 1E89C 8002E09C 0000C38C */  lw         $v1, ($a2)
/* 1E8A0 8002E0A0 00120200 */  sll        $v0, $v0, 8
/* 1E8A4 8002E0A4 25104400 */  or         $v0, $v0, $a0
/* 1E8A8 8002E0A8 FF0F4230 */  andi       $v0, $v0, 0xfff
/* 1E8AC 8002E0AC A8004010 */  beqz       $v0, .L8002E350
/* 1E8B0 8002E0B0 0E80073C */   lui       $a3, %hi(D_800D8D68)
/* 1E8B4 8002E0B4 01006424 */  addiu      $a0, $v1, 1
/* 1E8B8 8002E0B8 688DE724 */  addiu      $a3, $a3, %lo(D_800D8D68)
/* 1E8BC 8002E0BC 2128E000 */  addu       $a1, $a3, $zero
/* 1E8C0 8002E0C0 1580063C */  lui        $a2, %hi(D_8014CCC0)
/* 1E8C4 8002E0C4 C0CCC624 */  addiu      $a2, $a2, %lo(D_8014CCC0)
/* 1E8C8 8002E0C8 C0100300 */  sll        $v0, $v1, 3
/* 1E8CC 8002E0CC 21104300 */  addu       $v0, $v0, $v1
/* 1E8D0 8002E0D0 00110200 */  sll        $v0, $v0, 4
/* 1E8D4 8002E0D4 21104600 */  addu       $v0, $v0, $a2
/* 1E8D8 8002E0D8 8C004390 */  lbu        $v1, 0x8c($v0)
/* 1E8DC 8002E0DC 04000624 */  addiu      $a2, $zero, 4
/* 1E8E0 8002E0E0 21186800 */  addu       $v1, $v1, $t0
/* 1E8E4 8002E0E4 E905030C */  jal        FUN_800c17a4
/* 1E8E8 8002E0E8 0100E3A0 */   sb        $v1, 1($a3)
/* 1E8EC 8002E0EC 0C004010 */  beqz       $v0, .L8002E120
/* 1E8F0 8002E0F0 21100000 */   addu      $v0, $zero, $zero
/* 1E8F4 8002E0F4 1580043C */  lui        $a0, %hi(D_8014CB84)
/* 1E8F8 8002E0F8 0B000324 */  addiu      $v1, $zero, 0xb
/* 1E8FC 8002E0FC 1580053C */  lui        $a1, %hi(D_8014DED0)
/* 1E900 8002E100 D0DEA524 */  addiu      $a1, $a1, %lo(D_8014DED0)
/* 1E904 8002E104 84CB83AC */  sw         $v1, %lo(D_8014CB84)($a0)
/* 1E908 8002E108 0800A38C */  lw         $v1, 8($a1)
/* 1E90C 8002E10C 01000424 */  addiu      $a0, $zero, 1
/* 1E910 8002E110 80CB44AE */  sw         $a0, -0x3480($s2)
/* 1E914 8002E114 01006324 */  addiu      $v1, $v1, 1
/* 1E918 8002E118 D5B80008 */  j          .L8002E354
/* 1E91C 8002E11C 0800A3AC */   sw        $v1, 8($a1)
.L8002E120:
/* 1E920 8002E120 1580023C */  lui        $v0, %hi(D_8014CB94)
/* 1E924 8002E124 0C000324 */  addiu      $v1, $zero, 0xc
.L8002E128:
/* 1E928 8002E128 94CB40AC */  sw         $zero, %lo(D_8014CB94)($v0)
/* 1E92C 8002E12C D4B80008 */  j          .L8002E350
/* 1E930 8002E130 80CB43AE */   sw        $v1, -0x3480($s2)
/* 1E934 8002E134 1580113C */  lui        $s1, %hi(D_8014CBA0)
/* 1E938 8002E138 A0CB3326 */  addiu      $s3, $s1, %lo(D_8014CBA0)
/* 1E93C 8002E13C 1580023C */  lui        $v0, %hi(D_8014DEE0)
/* 1E940 8002E140 1580103C */  lui        $s0, %hi(D_8014CCA0)
/* 1E944 8002E144 A0CC038E */  lw         $v1, %lo(D_8014CCA0)($s0)
/* 1E948 8002E148 E0DE4224 */  addiu      $v0, $v0, %lo(D_8014DEE0)
/* 1E94C 8002E14C C0180300 */  sll        $v1, $v1, 3
/* 1E950 8002E150 21186200 */  addu       $v1, $v1, $v0
/* 1E954 8002E154 0000748C */  lw         $s4, ($v1)
/* 1E958 8002E158 3B06030C */  jal        FUN_800c18ec
/* 1E95C 8002E15C 21206002 */   addu      $a0, $s3, $zero
/* 1E960 8002E160 21304000 */  addu       $a2, $v0, $zero
/* 1E964 8002E164 3000C018 */  blez       $a2, .L8002E228
/* 1E968 8002E168 02000224 */   addiu     $v0, $zero, 2
/* 1E96C 8002E16C 0B00C210 */  beq        $a2, $v0, .L8002E19C
/* 1E970 8002E170 1580023C */   lui       $v0, %hi(D_8014CB98)
/* 1E974 8002E174 98CB438C */  lw         $v1, %lo(D_8014CB98)($v0)
/* 1E978 8002E178 00000000 */  nop
/* 1E97C 8002E17C 21206000 */  addu       $a0, $v1, $zero
/* 1E980 8002E180 01006324 */  addiu      $v1, $v1, 1
/* 1E984 8002E184 05008428 */  slti       $a0, $a0, 5
/* 1E988 8002E188 23008010 */  beqz       $a0, .L8002E218
/* 1E98C 8002E18C 98CB43AC */   sw        $v1, -0x3468($v0)
/* 1E990 8002E190 0B000224 */  addiu      $v0, $zero, 0xb
/* 1E994 8002E194 D4B80008 */  j          .L8002E350
/* 1E998 8002E198 80CB42AE */   sw        $v0, -0x3480($s2)
.L8002E19C:
/* 1E99C 8002E19C A0CB2392 */  lbu        $v1, -0x3460($s1)
/* 1E9A0 8002E1A0 01000224 */  addiu      $v0, $zero, 1
/* 1E9A4 8002E1A4 0F006214 */  bne        $v1, $v0, .L8002E1E4
/* 1E9A8 8002E1A8 1580023C */   lui       $v0, 0x8015
/* 1E9AC 8002E1AC 01006292 */  lbu        $v0, 1($s3)
/* 1E9B0 8002E1B0 00000000 */  nop
/* 1E9B4 8002E1B4 0B004314 */  bne        $v0, $v1, .L8002E1E4
/* 1E9B8 8002E1B8 1580023C */   lui       $v0, 0x8015
/* 1E9BC 8002E1BC 1580023C */  lui        $v0, %hi(D_8014DEF8)
/* 1E9C0 8002E1C0 A0CC048E */  lw         $a0, -0x3360($s0)
/* 1E9C4 8002E1C4 F8DE4224 */  addiu      $v0, $v0, %lo(D_8014DEF8)
/* 1E9C8 8002E1C8 80200400 */  sll        $a0, $a0, 2
/* 1E9CC 8002E1CC 21208200 */  addu       $a0, $a0, $v0
/* 1E9D0 8002E1D0 0000838C */  lw         $v1, ($a0)
/* 1E9D4 8002E1D4 1580103C */  lui        $s0, 0x8015
/* 1E9D8 8002E1D8 01006324 */  addiu      $v1, $v1, 1
/* 1E9DC 8002E1DC ACB80008 */  j          .L8002E2B0
/* 1E9E0 8002E1E0 000083AC */   sw        $v1, ($a0)
.L8002E1E4:
/* 1E9E4 8002E1E4 98CB438C */  lw         $v1, -0x3468($v0)
/* 1E9E8 8002E1E8 00000000 */  nop
/* 1E9EC 8002E1EC 21206000 */  addu       $a0, $v1, $zero
/* 1E9F0 8002E1F0 01006324 */  addiu      $v1, $v1, 1
/* 1E9F4 8002E1F4 05008428 */  slti       $a0, $a0, 5
/* 1E9F8 8002E1F8 07008010 */  beqz       $a0, .L8002E218
/* 1E9FC 8002E1FC 98CB43AC */   sw        $v1, -0x3468($v0)
/* 1EA00 8002E200 A0CC028E */  lw         $v0, -0x3360($s0)
/* 1EA04 8002E204 09000324 */  addiu      $v1, $zero, 9
/* 1EA08 8002E208 80CB43AE */  sw         $v1, -0x3480($s2)
/* 1EA0C 8002E20C FFFF4224 */  addiu      $v0, $v0, -1
/* 1EA10 8002E210 D4B80008 */  j          .L8002E350
/* 1EA14 8002E214 A0CC02AE */   sw        $v0, -0x3360($s0)
.L8002E218:
/* 1EA18 8002E218 DFB9000C */  jal        FUN_8002e77c
/* 1EA1C 8002E21C 06000424 */   addiu     $a0, $zero, 6
/* 1EA20 8002E220 D5B80008 */  j          .L8002E354
/* 1EA24 8002E224 21100000 */   addu      $v0, $zero, $zero
.L8002E228:
/* 1EA28 8002E228 1580073C */  lui        $a3, %hi(D_8014CB94)
/* 1EA2C 8002E22C 1580033C */  lui        $v1, %hi(D_8014DF08)
/* 1EA30 8002E230 08DF6324 */  addiu      $v1, $v1, %lo(D_8014DF08)
/* 1EA34 8002E234 80100600 */  sll        $v0, $a2, 2
/* 1EA38 8002E238 23186200 */  subu       $v1, $v1, $v0
/* 1EA3C 8002E23C 94CBE58C */  lw         $a1, %lo(D_8014CB94)($a3)
/* 1EA40 8002E240 0000628C */  lw         $v0, ($v1)
/* 1EA44 8002E244 2120A000 */  addu       $a0, $a1, $zero
/* 1EA48 8002E248 0100A524 */  addiu      $a1, $a1, 1
/* 1EA4C 8002E24C 01004224 */  addiu      $v0, $v0, 1
/* 1EA50 8002E250 05008428 */  slti       $a0, $a0, 5
/* 1EA54 8002E254 000062AC */  sw         $v0, ($v1)
/* 1EA58 8002E258 3D008014 */  bnez       $a0, .L8002E350
/* 1EA5C 8002E25C 94CBE5AC */   sw        $a1, -0x346c($a3)
/* 1EA60 8002E260 1580023C */  lui        $v0, %hi(D_8014CB98)
/* 1EA64 8002E264 98CB438C */  lw         $v1, %lo(D_8014CB98)($v0)
/* 1EA68 8002E268 21804000 */  addu       $s0, $v0, $zero
/* 1EA6C 8002E26C 94CBE0AC */  sw         $zero, -0x346c($a3)
/* 1EA70 8002E270 21206000 */  addu       $a0, $v1, $zero
/* 1EA74 8002E274 01006324 */  addiu      $v1, $v1, 1
/* 1EA78 8002E278 05008428 */  slti       $a0, $a0, 5
/* 1EA7C 8002E27C 0A008010 */  beqz       $a0, .L8002E2A8
/* 1EA80 8002E280 98CB43AC */   sw        $v1, -0x3468($v0)
/* 1EA84 8002E284 01008426 */  addiu      $a0, $s4, 1
/* 1EA88 8002E288 0E80053C */  lui        $a1, %hi(D_800D8D4C)
/* 1EA8C 8002E28C 4C8DA524 */  addiu      $a1, $a1, %lo(D_800D8D4C)
/* 1EA90 8002E290 E905030C */  jal        FUN_800c17a4
/* 1EA94 8002E294 01000624 */   addiu     $a2, $zero, 1
/* 1EA98 8002E298 2D004010 */  beqz       $v0, .L8002E350
/* 1EA9C 8002E29C 1580033C */   lui       $v1, 0x8015
/* 1EAA0 8002E2A0 C6B80008 */  j          .L8002E318
/* 1EAA4 8002E2A4 0D000224 */   addiu     $v0, $zero, 0xd
.L8002E2A8:
/* 1EAA8 8002E2A8 DFB9000C */  jal        FUN_8002e77c
/* 1EAAC 8002E2AC 06000424 */   addiu     $a0, $zero, 6
.L8002E2B0:
/* 1EAB0 8002E2B0 03000224 */  addiu      $v0, $zero, 3
/* 1EAB4 8002E2B4 80CB42AE */  sw         $v0, -0x3480($s2)
/* 1EAB8 8002E2B8 D4B80008 */  j          .L8002E350
/* 1EABC 8002E2BC 98CB00AE */   sw        $zero, -0x3468($s0)
/* 1EAC0 8002E2C0 1580033C */  lui        $v1, %hi(D_8014CB98)
/* 1EAC4 8002E2C4 1580043C */  lui        $a0, %hi(D_8014DEE0)
/* 1EAC8 8002E2C8 98CB628C */  lw         $v0, %lo(D_8014CB98)($v1)
/* 1EACC 8002E2CC E0DE8424 */  addiu      $a0, $a0, %lo(D_8014DEE0)
/* 1EAD0 8002E2D0 21284000 */  addu       $a1, $v0, $zero
/* 1EAD4 8002E2D4 01004224 */  addiu      $v0, $v0, 1
/* 1EAD8 8002E2D8 98CB62AC */  sw         $v0, -0x3468($v1)
/* 1EADC 8002E2DC 1580033C */  lui        $v1, %hi(D_8014CCA0)
/* 1EAE0 8002E2E0 A0CC628C */  lw         $v0, %lo(D_8014CCA0)($v1)
/* 1EAE4 8002E2E4 0500A528 */  slti       $a1, $a1, 5
/* 1EAE8 8002E2E8 C0100200 */  sll        $v0, $v0, 3
/* 1EAEC 8002E2EC 21104400 */  addu       $v0, $v0, $a0
/* 1EAF0 8002E2F0 0000428C */  lw         $v0, ($v0)
/* 1EAF4 8002E2F4 1400A010 */  beqz       $a1, .L8002E348
/* 1EAF8 8002E2F8 01004424 */   addiu     $a0, $v0, 1
/* 1EAFC 8002E2FC 0E80053C */  lui        $a1, %hi(D_800D8D4C)
/* 1EB00 8002E300 4C8DA524 */  addiu      $a1, $a1, %lo(D_800D8D4C)
/* 1EB04 8002E304 E905030C */  jal        FUN_800c17a4
/* 1EB08 8002E308 01000624 */   addiu     $a2, $zero, 1
/* 1EB0C 8002E30C 0B004010 */  beqz       $v0, .L8002E33C
/* 1EB10 8002E310 1580033C */   lui       $v1, %hi(D_8014CB84)
/* 1EB14 8002E314 0D000224 */  addiu      $v0, $zero, 0xd
.L8002E318:
/* 1EB18 8002E318 1580043C */  lui        $a0, %hi(D_8014DED0)
/* 1EB1C 8002E31C D0DE8424 */  addiu      $a0, $a0, %lo(D_8014DED0)
/* 1EB20 8002E320 84CB62AC */  sw         $v0, %lo(D_8014CB84)($v1)
/* 1EB24 8002E324 0C00828C */  lw         $v0, 0xc($a0)
/* 1EB28 8002E328 01000324 */  addiu      $v1, $zero, 1
/* 1EB2C 8002E32C 80CB43AE */  sw         $v1, -0x3480($s2)
/* 1EB30 8002E330 01004224 */  addiu      $v0, $v0, 1
/* 1EB34 8002E334 D4B80008 */  j          .L8002E350
/* 1EB38 8002E338 0C0082AC */   sw        $v0, 0xc($a0)
.L8002E33C:
/* 1EB3C 8002E33C 0C000224 */  addiu      $v0, $zero, 0xc
/* 1EB40 8002E340 D4B80008 */  j          .L8002E350
/* 1EB44 8002E344 80CB42AE */   sw        $v0, -0x3480($s2)
.L8002E348:
/* 1EB48 8002E348 DFB9000C */  jal        FUN_8002e77c
/* 1EB4C 8002E34C 07000424 */   addiu     $a0, $zero, 7
.L8002E350:
/* 1EB50 8002E350 21100000 */  addu       $v0, $zero, $zero
.L8002E354:
/* 1EB54 8002E354 2800BF8F */  lw         $ra, 0x28($sp)
/* 1EB58 8002E358 2400B58F */  lw         $s5, 0x24($sp)
/* 1EB5C 8002E35C 2000B48F */  lw         $s4, 0x20($sp)
/* 1EB60 8002E360 1C00B38F */  lw         $s3, 0x1c($sp)
/* 1EB64 8002E364 1800B28F */  lw         $s2, 0x18($sp)
/* 1EB68 8002E368 1400B18F */  lw         $s1, 0x14($sp)
/* 1EB6C 8002E36C 1000B08F */  lw         $s0, 0x10($sp)
/* 1EB70 8002E370 0800E003 */  jr         $ra
/* 1EB74 8002E374 3000BD27 */   addiu     $sp, $sp, 0x30
