.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001da20
/* E220 8001DA20 78FFBD27 */  addiu      $sp, $sp, -0x88
/* E224 8001DA24 1280023C */  lui        $v0, %hi(D_801222B0)
/* E228 8001DA28 7000B0AF */  sw         $s0, 0x70($sp)
/* E22C 8001DA2C B0225024 */  addiu      $s0, $v0, %lo(D_801222B0)
/* E230 8001DA30 B0224284 */  lh         $v0, 0x22b0($v0)
/* E234 8001DA34 7C00B3AF */  sw         $s3, 0x7c($sp)
/* E238 8001DA38 2198A000 */  addu       $s3, $a1, $zero
/* E23C 8001DA3C 8000B4AF */  sw         $s4, 0x80($sp)
/* E240 8001DA40 21A0C000 */  addu       $s4, $a2, $zero
/* E244 8001DA44 8400BFAF */  sw         $ra, 0x84($sp)
/* E248 8001DA48 7800B2AF */  sw         $s2, 0x78($sp)
/* E24C 8001DA4C 2A004004 */  bltz       $v0, .L8001DAF8
/* E250 8001DA50 7400B1AF */   sw        $s1, 0x74($sp)
/* E254 8001DA54 09004410 */  beq        $v0, $a0, .L8001DA7C
/* E258 8001DA58 00000000 */   nop
/* E25C 8001DA5C 30001026 */  addiu      $s0, $s0, 0x30
.L8001DA60:
/* E260 8001DA60 00000286 */  lh         $v0, ($s0)
/* E264 8001DA64 00000000 */  nop
/* E268 8001DA68 23004004 */  bltz       $v0, .L8001DAF8
/* E26C 8001DA6C 00000000 */   nop
/* E270 8001DA70 FBFF4414 */  bne        $v0, $a0, .L8001DA60
/* E274 8001DA74 30001026 */   addiu     $s0, $s0, 0x30
/* E278 8001DA78 D0FF1026 */  addiu      $s0, $s0, -0x30
.L8001DA7C:
/* E27C 8001DA7C 00000286 */  lh         $v0, ($s0)
/* E280 8001DA80 00000000 */  nop
/* E284 8001DA84 1C004004 */  bltz       $v0, .L8001DAF8
/* E288 8001DA88 1380023C */   lui       $v0, %hi(D_801280E0)
/* E28C 8001DA8C E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* E290 8001DA90 21908200 */  addu       $s2, $a0, $v0
/* E294 8001DA94 00004392 */  lbu        $v1, ($s2)
/* E298 8001DA98 00000000 */  nop
/* E29C 8001DA9C 5000632C */  sltiu      $v1, $v1, 0x50
/* E2A0 8001DAA0 0F006010 */  beqz       $v1, .L8001DAE0
/* E2A4 8001DAA4 1380053C */   lui       $a1, %hi(D_801282E0)
/* E2A8 8001DAA8 E082A524 */  addiu      $a1, $a1, %lo(D_801282E0)
/* E2AC 8001DAAC 00004292 */  lbu        $v0, ($s2)
/* E2B0 8001DAB0 FFFF0424 */  addiu      $a0, $zero, -1
/* E2B4 8001DAB4 C0180200 */  sll        $v1, $v0, 3
/* E2B8 8001DAB8 23186200 */  subu       $v1, $v1, $v0
/* E2BC 8001DABC 80180300 */  sll        $v1, $v1, 2
/* E2C0 8001DAC0 21186500 */  addu       $v1, $v1, $a1
/* E2C4 8001DAC4 21304000 */  addu       $a2, $v0, $zero
/* E2C8 8001DAC8 C0100600 */  sll        $v0, $a2, 3
/* E2CC 8001DACC 23104600 */  subu       $v0, $v0, $a2
/* E2D0 8001DAD0 80100200 */  sll        $v0, $v0, 2
/* E2D4 8001DAD4 21104500 */  addu       $v0, $v0, $a1
/* E2D8 8001DAD8 000064A4 */  sh         $a0, ($v1)
/* E2DC 8001DADC 140040A4 */  sh         $zero, 0x14($v0)
.L8001DAE0:
/* E2E0 8001DAE0 AD7B000C */  jal        FUN_8001eeb4
/* E2E4 8001DAE4 21200000 */   addu      $a0, $zero, $zero
/* E2E8 8001DAE8 21584000 */  addu       $t3, $v0, $zero
/* E2EC 8001DAEC 50006229 */  slti       $v0, $t3, 0x50
/* E2F0 8001DAF0 03004014 */  bnez       $v0, .L8001DB00
/* E2F4 8001DAF4 C0180B00 */   sll       $v1, $t3, 3
.L8001DAF8:
/* E2F8 8001DAF8 35770008 */  j          .L8001DCD4
/* E2FC 8001DAFC FFFF0224 */   addiu     $v0, $zero, -1
.L8001DB00:
/* E300 8001DB00 23186B00 */  subu       $v1, $v1, $t3
/* E304 8001DB04 80180300 */  sll        $v1, $v1, 2
/* E308 8001DB08 1380023C */  lui        $v0, %hi(D_801282E0)
/* E30C 8001DB0C E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* E310 8001DB10 21886200 */  addu       $s1, $v1, $v0
/* E314 8001DB14 10000426 */  addiu      $a0, $s0, 0x10
/* E318 8001DB18 100024AE */  sw         $a0, 0x10($s1)
/* E31C 8001DB1C 00000396 */  lhu        $v1, ($s0)
/* E320 8001DB20 04000496 */  lhu        $a0, 4($s0)
/* E324 8001DB24 06000596 */  lhu        $a1, 6($s0)
/* E328 8001DB28 08000696 */  lhu        $a2, 8($s0)
/* E32C 8001DB2C 0A000796 */  lhu        $a3, 0xa($s0)
/* E330 8001DB30 0C000896 */  lhu        $t0, 0xc($s0)
/* E334 8001DB34 0E000992 */  lbu        $t1, 0xe($s0)
/* E338 8001DB38 0F000A92 */  lbu        $t2, 0xf($s0)
/* E33C 8001DB3C 01000224 */  addiu      $v0, $zero, 1
/* E340 8001DB40 140022A6 */  sh         $v0, 0x14($s1)
/* E344 8001DB44 000023A6 */  sh         $v1, ($s1)
/* E348 8001DB48 040024A6 */  sh         $a0, 4($s1)
/* E34C 8001DB4C 060025A6 */  sh         $a1, 6($s1)
/* E350 8001DB50 080026A6 */  sh         $a2, 8($s1)
/* E354 8001DB54 0A0027A6 */  sh         $a3, 0xa($s1)
/* E358 8001DB58 0C0028A6 */  sh         $t0, 0xc($s1)
/* E35C 8001DB5C 0E0029A2 */  sb         $t1, 0xe($s1)
/* E360 8001DB60 02006006 */  bltz       $s3, .L8001DB6C
/* E364 8001DB64 0F002AA2 */   sb        $t2, 0xf($s1)
/* E368 8001DB68 040033A6 */  sh         $s3, 4($s1)
.L8001DB6C:
/* E36C 8001DB6C 02008006 */  bltz       $s4, .L8001DB78
/* E370 8001DB70 3000A427 */   addiu     $a0, $sp, 0x30
/* E374 8001DB74 060034A6 */  sh         $s4, 6($s1)
.L8001DB78:
/* E378 8001DB78 0180023C */  lui        $v0, %hi(D_800107D0)
/* E37C 8001DB7C D0074324 */  addiu      $v1, $v0, %lo(D_800107D0)
/* E380 8001DB80 00004BA2 */  sb         $t3, ($s2)
/* E384 8001DB84 1000258E */  lw         $a1, 0x10($s1)
/* E388 8001DB88 D007468C */  lw         $a2, 0x7d0($v0)
/* E38C 8001DB8C 04006794 */  lhu        $a3, 4($v1)
/* E390 8001DB90 1000B027 */  addiu      $s0, $sp, 0x10
/* E394 8001DB94 3000A6AF */  sw         $a2, 0x30($sp)
/* E398 8001DB98 3F71000C */  jal        FUN_8001c4fc
/* E39C 8001DB9C 3400A7A7 */   sh        $a3, 0x34($sp)
/* E3A0 8001DBA0 3000A427 */  addiu      $a0, $sp, 0x30
/* E3A4 8001DBA4 0180053C */  lui        $a1, %hi(D_800107D8)
/* E3A8 8001DBA8 3F71000C */  jal        FUN_8001c4fc
/* E3AC 8001DBAC D807A524 */   addiu     $a1, $a1, %lo(D_800107D8)
/* E3B0 8001DBB0 3000A427 */  addiu      $a0, $sp, 0x30
/* E3B4 8001DBB4 2380053C */  lui        $a1, 0x8023
/* E3B8 8001DBB8 DDB3000C */  jal        decodefile_8002cf74
/* E3BC 8001DBBC 0080A534 */   ori       $a1, $a1, 0x8000
/* E3C0 8001DBC0 2380043C */  lui        $a0, 0x8023
/* E3C4 8001DBC4 04808434 */  ori        $a0, $a0, 0x8004
/* E3C8 8001DBC8 197C000C */  jal        GsGetTimInfo
/* E3CC 8001DBCC 21280002 */   addu      $a1, $s0, $zero
/* E3D0 8001DBD0 08000296 */  lhu        $v0, 8($s0)
/* E3D4 8001DBD4 0A000396 */  lhu        $v1, 0xa($s0)
/* E3D8 8001DBD8 00000000 */  nop
/* E3DC 8001DBDC 18004300 */  mult       $v0, $v1
/* E3E0 8001DBE0 0200043C */  lui        $a0, 2
/* E3E4 8001DBE4 12100000 */  mflo       $v0
/* E3E8 8001DBE8 40100200 */  sll        $v0, $v0, 1
/* E3EC 8001DBEC 2C014224 */  addiu      $v0, $v0, 0x12c
/* E3F0 8001DBF0 2B104400 */  sltu       $v0, $v0, $a0
/* E3F4 8001DBF4 0F004014 */  bnez       $v0, .L8001DC34
/* E3F8 8001DBF8 3000A427 */   addiu     $a0, $sp, 0x30
/* E3FC 8001DBFC 0E000524 */  addiu      $a1, $zero, 0xe
/* E400 8001DC00 01000424 */  addiu      $a0, $zero, 1
/* E404 8001DC04 0100033C */  lui        $v1, 1
/* E408 8001DC08 BC426334 */  ori        $v1, $v1, 0x42bc
/* E40C 8001DC0C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* E410 8001DC10 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* E414 8001DC14 21104300 */  addu       $v0, $v0, $v1
/* E418 8001DC18 FEFF033C */  lui        $v1, 0xfffe
/* E41C 8001DC1C 84BD6334 */  ori        $v1, $v1, 0xbd84
.L8001DC20:
/* E420 8001DC20 000045A0 */  sb         $a1, ($v0)
/* E424 8001DC24 FFFF8424 */  addiu      $a0, $a0, -1
/* E428 8001DC28 FDFF8104 */  bgez       $a0, .L8001DC20
/* E42C 8001DC2C 21104300 */   addu      $v0, $v0, $v1
/* E430 8001DC30 3000A427 */  addiu      $a0, $sp, 0x30
.L8001DC34:
/* E434 8001DC34 0C00068E */  lw         $a2, 0xc($s0)
/* E438 8001DC38 04002296 */  lhu        $v0, 4($s1)
/* E43C 8001DC3C 06002396 */  lhu        $v1, 6($s1)
/* E440 8001DC40 08000796 */  lhu        $a3, 8($s0)
/* E444 8001DC44 0A000896 */  lhu        $t0, 0xa($s0)
/* E448 8001DC48 16002996 */  lhu        $t1, 0x16($s1)
/* E44C 8001DC4C 18002A96 */  lhu        $t2, 0x18($s1)
/* E450 8001DC50 14000B96 */  lhu        $t3, 0x14($s0)
/* E454 8001DC54 16000C96 */  lhu        $t4, 0x16($s0)
/* E458 8001DC58 21282002 */  addu       $a1, $s1, $zero
/* E45C 8001DC5C 3000A2A7 */  sh         $v0, 0x30($sp)
/* E460 8001DC60 3200A3A7 */  sh         $v1, 0x32($sp)
/* E464 8001DC64 3400A7A7 */  sh         $a3, 0x34($sp)
/* E468 8001DC68 3600A8A7 */  sh         $t0, 0x36($sp)
/* E46C 8001DC6C 3800A9A7 */  sh         $t1, 0x38($sp)
/* E470 8001DC70 3A00AAA7 */  sh         $t2, 0x3a($sp)
/* E474 8001DC74 3C00ABA7 */  sh         $t3, 0x3c($sp)
/* E478 8001DC78 AF73000C */  jal        FUN_8001cebc
/* E47C 8001DC7C 3E00ACA7 */   sh        $t4, 0x3e($sp)
/* E480 8001DC80 3800A427 */  addiu      $a0, $sp, 0x38
/* E484 8001DC84 1800068E */  lw         $a2, 0x18($s0)
/* E488 8001DC88 2774000C */  jal        FUN_8001d09c
/* E48C 8001DC8C 21282002 */   addu      $a1, $s1, $zero
/* E490 8001DC90 D860000C */  jal        DrawSync
/* E494 8001DC94 21200000 */   addu      $a0, $zero, $zero
/* E498 8001DC98 0C002386 */  lh         $v1, 0xc($s1)
/* E49C 8001DC9C 0C002296 */  lhu        $v0, 0xc($s1)
/* E4A0 8001DCA0 03006328 */  slti       $v1, $v1, 3
/* E4A4 8001DCA4 02006010 */  beqz       $v1, .L8001DCB0
/* E4A8 8001DCA8 01000424 */   addiu     $a0, $zero, 1
/* E4AC 8001DCAC 21204000 */  addu       $a0, $v0, $zero
.L8001DCB0:
/* E4B0 8001DCB0 21100000 */  addu       $v0, $zero, $zero
/* E4B4 8001DCB4 001C0400 */  sll        $v1, $a0, 0x10
/* E4B8 8001DCB8 031C0300 */  sra        $v1, $v1, 0x10
/* E4BC 8001DCBC 0C0024A6 */  sh         $a0, 0xc($s1)
/* E4C0 8001DCC0 02000424 */  addiu      $a0, $zero, 2
/* E4C4 8001DCC4 04002586 */  lh         $a1, 4($s1)
/* E4C8 8001DCC8 23208300 */  subu       $a0, $a0, $v1
/* E4CC 8001DCCC 04288500 */  sllv       $a1, $a1, $a0
/* E4D0 8001DCD0 040025A6 */  sh         $a1, 4($s1)
.L8001DCD4:
/* E4D4 8001DCD4 8400BF8F */  lw         $ra, 0x84($sp)
/* E4D8 8001DCD8 8000B48F */  lw         $s4, 0x80($sp)
/* E4DC 8001DCDC 7C00B38F */  lw         $s3, 0x7c($sp)
/* E4E0 8001DCE0 7800B28F */  lw         $s2, 0x78($sp)
/* E4E4 8001DCE4 7400B18F */  lw         $s1, 0x74($sp)
/* E4E8 8001DCE8 7000B08F */  lw         $s0, 0x70($sp)
/* E4EC 8001DCEC 0800E003 */  jr         $ra
/* E4F0 8001DCF0 8800BD27 */   addiu     $sp, $sp, 0x88
