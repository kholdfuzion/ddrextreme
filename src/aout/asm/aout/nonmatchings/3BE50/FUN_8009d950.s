.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009d950
/* 8E150 8009D950 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8E154 8009D954 3800B4AF */  sw         $s4, 0x38($sp)
/* 8E158 8009D958 21A0C000 */  addu       $s4, $a2, $zero
/* 8E15C 8009D95C 4800BEAF */  sw         $fp, 0x48($sp)
/* 8E160 8009D960 21F08000 */  addu       $fp, $a0, $zero
/* 8E164 8009D964 4400B7AF */  sw         $s7, 0x44($sp)
/* 8E168 8009D968 21B8A000 */  addu       $s7, $a1, $zero
/* 8E16C 8009D96C 6000A38F */  lw         $v1, 0x60($sp)
/* 8E170 8009D970 2128E000 */  addu       $a1, $a3, $zero
/* 8E174 8009D974 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 8E178 8009D978 4000B6AF */  sw         $s6, 0x40($sp)
/* 8E17C 8009D97C 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 8E180 8009D980 3400B3AF */  sw         $s3, 0x34($sp)
/* 8E184 8009D984 3000B2AF */  sw         $s2, 0x30($sp)
/* 8E188 8009D988 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 8E18C 8009D98C 03006228 */  slti       $v0, $v1, 3
/* 8E190 8009D990 02004010 */  beqz       $v0, .L8009D99C
/* 8E194 8009D994 2800B0AF */   sw        $s0, 0x28($sp)
/* 8E198 8009D998 03000324 */  addiu      $v1, $zero, 3
.L8009D99C:
/* 8E19C 8009D99C 2A306500 */  slt        $a2, $v1, $a1
/* 8E1A0 8009D9A0 1400C010 */  beqz       $a2, .L8009D9F4
/* 8E1A4 8009D9A4 FEFF6424 */   addiu     $a0, $v1, -2
/* 8E1A8 8009D9A8 2310A300 */  subu       $v0, $a1, $v1
/* 8E1AC 8009D9AC FFFF4224 */  addiu      $v0, $v0, -1
/* 8E1B0 8009D9B0 2A188200 */  slt        $v1, $a0, $v0
/* 8E1B4 8009D9B4 03006010 */  beqz       $v1, .L8009D9C4
/* 8E1B8 8009D9B8 00000000 */   nop
/* 8E1BC 8009D9BC 75760208 */  j          .L8009D9D4
/* 8E1C0 8009D9C0 00130400 */   sll       $v0, $a0, 0xc
.L8009D9C4:
/* 8E1C4 8009D9C4 02004104 */  bgez       $v0, .L8009D9D0
/* 8E1C8 8009D9C8 00000000 */   nop
/* 8E1CC 8009D9CC 21100000 */  addu       $v0, $zero, $zero
.L8009D9D0:
/* 8E1D0 8009D9D0 00130200 */  sll        $v0, $v0, 0xc
.L8009D9D4:
/* 8E1D4 8009D9D4 1A004400 */  div        $zero, $v0, $a0
/* 8E1D8 8009D9D8 12100000 */  mflo       $v0
/* 8E1DC 8009D9DC 02008014 */  bnez       $a0, .L8009D9E8
/* 8E1E0 8009D9E0 00000000 */   nop
/* 8E1E4 8009D9E4 CD010000 */  break      0, 7
.L8009D9E8:
/* 8E1E8 8009D9E8 00100324 */   addiu     $v1, $zero, 0x1000
/* 8E1EC 8009D9EC 8C760208 */  j          .L8009DA30
/* 8E1F0 8009D9F0 23106200 */   subu      $v0, $v1, $v0
.L8009D9F4:
/* 8E1F4 8009D9F4 FEFF6724 */  addiu      $a3, $v1, -2
/* 8E1F8 8009D9F8 FFFFA324 */  addiu      $v1, $a1, -1
/* 8E1FC 8009D9FC 2A10E300 */  slt        $v0, $a3, $v1
/* 8E200 8009DA00 06004014 */  bnez       $v0, .L8009DA1C
/* 8E204 8009DA04 00130700 */   sll       $v0, $a3, 0xc
/* 8E208 8009DA08 21106000 */  addu       $v0, $v1, $zero
/* 8E20C 8009DA0C 03004104 */  bgez       $v0, .L8009DA1C
/* 8E210 8009DA10 00130200 */   sll       $v0, $v0, 0xc
/* 8E214 8009DA14 21100000 */  addu       $v0, $zero, $zero
/* 8E218 8009DA18 00130200 */  sll        $v0, $v0, 0xc
.L8009DA1C:
/* 8E21C 8009DA1C 1A004700 */  div        $zero, $v0, $a3
/* 8E220 8009DA20 12100000 */  mflo       $v0
/* 8E224 8009DA24 0200E014 */  bnez       $a3, .L8009DA30
/* 8E228 8009DA28 00000000 */   nop
/* 8E22C 8009DA2C CD010000 */  break      0, 7
.L8009DA30:
/* 8E230 8009DA30 0600C010 */   beqz      $a2, .L8009DA4C
/* 8E234 8009DA34 00100324 */   addiu     $v1, $zero, 0x1000
/* 8E238 8009DA38 23186200 */  subu       $v1, $v1, $v0
/* 8E23C 8009DA3C 80100300 */  sll        $v0, $v1, 2
/* 8E240 8009DA40 21104300 */  addu       $v0, $v0, $v1
/* 8E244 8009DA44 98760208 */  j          .L8009DA60
/* 8E248 8009DA48 C0110200 */   sll       $v0, $v0, 7
.L8009DA4C:
/* 8E24C 8009DA4C 23186200 */  subu       $v1, $v1, $v0
/* 8E250 8009DA50 80100300 */  sll        $v0, $v1, 2
/* 8E254 8009DA54 21104300 */  addu       $v0, $v0, $v1
/* 8E258 8009DA58 C0110200 */  sll        $v0, $v0, 7
/* 8E25C 8009DA5C 23100200 */  negu       $v0, $v0
.L8009DA60:
/* 8E260 8009DA60 02004104 */  bgez       $v0, .L8009DA6C
/* 8E264 8009DA64 00000000 */   nop
/* 8E268 8009DA68 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8009DA6C:
/* 8E26C 8009DA6C 03130200 */  sra        $v0, $v0, 0xc
/* 8E270 8009DA70 18004300 */  mult       $v0, $v1
/* 8E274 8009DA74 12100000 */  mflo       $v0
/* 8E278 8009DA78 03004104 */  bgez       $v0, .L8009DA88
/* 8E27C 8009DA7C 033B0200 */   sra       $a3, $v0, 0xc
/* 8E280 8009DA80 FF0F4224 */  addiu      $v0, $v0, 0xfff
/* 8E284 8009DA84 033B0200 */  sra        $a3, $v0, 0xc
.L8009DA88:
/* 8E288 8009DA88 0F80023C */  lui        $v0, %hi(D_800F0048)
/* 8E28C 8009DA8C 48004480 */  lb         $a0, %lo(D_800F0048)($v0)
/* 8E290 8009DA90 01000324 */  addiu      $v1, $zero, 1
/* 8E294 8009DA94 06008314 */  bne        $a0, $v1, .L8009DAB0
/* 8E298 8009DA98 02000224 */   addiu     $v0, $zero, 2
/* 8E29C 8009DA9C 1380023C */  lui        $v0, %hi(D_801280E0)
/* 8E2A0 8009DAA0 E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 8E2A4 8009DAA4 56004490 */  lbu        $a0, 0x56($v0)
/* 8E2A8 8009DAA8 B5760208 */  j          .L8009DAD4
/* 8E2AC 8009DAAC 1380033C */   lui       $v1, 0x8013
.L8009DAB0:
/* 8E2B0 8009DAB0 05008214 */  bne        $a0, $v0, .L8009DAC8
/* 8E2B4 8009DAB4 1380023C */   lui       $v0, %hi(D_801280E0)
/* 8E2B8 8009DAB8 E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 8E2BC 8009DABC 55004490 */  lbu        $a0, 0x55($v0)
/* 8E2C0 8009DAC0 B5760208 */  j          .L8009DAD4
/* 8E2C4 8009DAC4 1380033C */   lui       $v1, 0x8013
.L8009DAC8:
/* 8E2C8 8009DAC8 E0804224 */  addiu      $v0, $v0, -0x7f20
/* 8E2CC 8009DACC 5A004490 */  lbu        $a0, 0x5a($v0)
/* 8E2D0 8009DAD0 1380033C */  lui        $v1, %hi(D_801282E0)
.L8009DAD4:
/* 8E2D4 8009DAD4 E0826324 */  addiu      $v1, $v1, %lo(D_801282E0)
/* 8E2D8 8009DAD8 C0100400 */  sll        $v0, $a0, 3
/* 8E2DC 8009DADC 23104400 */  subu       $v0, $v0, $a0
/* 8E2E0 8009DAE0 80100200 */  sll        $v0, $v0, 2
/* 8E2E4 8009DAE4 21884300 */  addu       $s1, $v0, $v1
/* 8E2E8 8009DAE8 01000524 */  addiu      $a1, $zero, 1
/* 8E2EC 8009DAEC 80000624 */  addiu      $a2, $zero, 0x80
/* 8E2F0 8009DAF0 80020224 */  addiu      $v0, $zero, 0x280
/* 8E2F4 8009DAF4 0800C48F */  lw         $a0, 8($fp)
/* 8E2F8 8009DAF8 08003686 */  lh         $s6, 8($s1)
/* 8E2FC 8009DAFC 0A002886 */  lh         $t0, 0xa($s1)
/* 8E300 8009DB00 E0011024 */  addiu      $s0, $zero, 0x1e0
/* 8E304 8009DB04 1400B1AF */  sw         $s1, 0x14($sp)
/* 8E308 8009DB08 1800A0AF */  sw         $zero, 0x18($sp)
/* 8E30C 8009DB0C 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 8E310 8009DB10 23105600 */  subu       $v0, $v0, $s6
/* 8E314 8009DB14 C21F0200 */  srl        $v1, $v0, 0x1f
/* 8E318 8009DB18 21104300 */  addu       $v0, $v0, $v1
/* 8E31C 8009DB1C 43100200 */  sra        $v0, $v0, 1
/* 8E320 8009DB20 C0FEE324 */  addiu      $v1, $a3, -0x140
/* 8E324 8009DB24 21A84300 */  addu       $s5, $v0, $v1
/* 8E328 8009DB28 2138A002 */  addu       $a3, $s5, $zero
/* 8E32C 8009DB2C 23100802 */  subu       $v0, $s0, $t0
/* 8E330 8009DB30 C21F0200 */  srl        $v1, $v0, 0x1f
/* 8E334 8009DB34 21104300 */  addu       $v0, $v0, $v1
/* 8E338 8009DB38 43100200 */  sra        $v0, $v0, 1
/* 8E33C 8009DB3C 1FFF4224 */  addiu      $v0, $v0, -0xe1
/* 8E340 8009DB40 1000A2AF */  sw         $v0, 0x10($sp)
/* 8E344 8009DB44 2000B6AF */  sw         $s6, 0x20($sp)
/* 8E348 8009DB48 3DAD010C */  jal        FUN_8006b4f4
/* 8E34C 8009DB4C 2400A8AF */   sw        $t0, 0x24($sp)
/* 8E350 8009DB50 0800C2AF */  sw         $v0, 8($fp)
/* 8E354 8009DB54 1380023C */  lui        $v0, %hi(D_801280E0)
/* 8E358 8009DB58 E0804324 */  addiu      $v1, $v0, %lo(D_801280E0)
/* 8E35C 8009DB5C 5C006490 */  lbu        $a0, 0x5c($v1)
/* 8E360 8009DB60 00000000 */  nop
/* 8E364 8009DB64 C0100400 */  sll        $v0, $a0, 3
/* 8E368 8009DB68 23104400 */  subu       $v0, $v0, $a0
/* 8E36C 8009DB6C 80100200 */  sll        $v0, $v0, 2
/* 8E370 8009DB70 1380043C */  lui        $a0, %hi(D_801282E0)
/* 8E374 8009DB74 E0828324 */  addiu      $v1, $a0, %lo(D_801282E0)
/* 8E378 8009DB78 21884300 */  addu       $s1, $v0, $v1
/* 8E37C 8009DB7C 0A002486 */  lh         $a0, 0xa($s1)
/* 8E380 8009DB80 21900000 */  addu       $s2, $zero, $zero
/* 8E384 8009DB84 FFFF9324 */  addiu      $s3, $a0, -1
/* 8E388 8009DB88 23801302 */  subu       $s0, $s0, $s3
/* 8E38C 8009DB8C C2171000 */  srl        $v0, $s0, 0x1f
/* 8E390 8009DB90 21800202 */  addu       $s0, $s0, $v0
/* 8E394 8009DB94 43801000 */  sra        $s0, $s0, 1
.L8009DB98:
/* 8E398 8009DB98 2120E002 */  addu       $a0, $s7, $zero
/* 8E39C 8009DB9C 08002396 */  lhu        $v1, 8($s1)
/* 8E3A0 8009DBA0 04002886 */  lh         $t0, 4($s1)
/* 8E3A4 8009DBA4 001C0300 */  sll        $v1, $v1, 0x10
/* 8E3A8 8009DBA8 03140300 */  sra        $v0, $v1, 0x10
/* 8E3AC 8009DBAC 18005200 */  mult       $v0, $s2
/* 8E3B0 8009DBB0 06002786 */  lh         $a3, 6($s1)
/* 8E3B4 8009DBB4 21288002 */  addu       $a1, $s4, $zero
/* 8E3B8 8009DBB8 1400B3AF */  sw         $s3, 0x14($sp)
/* 8E3BC 8009DBBC C21F0300 */  srl        $v1, $v1, 0x1f
/* 8E3C0 8009DBC0 21104300 */  addu       $v0, $v0, $v1
/* 8E3C4 8009DBC4 43100200 */  sra        $v0, $v0, 1
/* 8E3C8 8009DBC8 1000A2AF */  sw         $v0, 0x10($sp)
/* 8E3CC 8009DBCC 0C002386 */  lh         $v1, 0xc($s1)
/* 8E3D0 8009DBD0 FFFF0224 */  addiu      $v0, $zero, -1
/* 8E3D4 8009DBD4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8E3D8 8009DBD8 1800A3AF */  sw         $v1, 0x18($sp)
/* 8E3DC 8009DBDC 12300000 */  mflo       $a2
/* 8E3E0 8009DBE0 C2170600 */  srl        $v0, $a2, 0x1f
/* 8E3E4 8009DBE4 2130C200 */  addu       $a2, $a2, $v0
/* 8E3E8 8009DBE8 43300600 */  sra        $a2, $a2, 1
/* 8E3EC 8009DBEC 1769010C */  jal        FUN_8005a45c
/* 8E3F0 8009DBF0 21300601 */   addu      $a2, $t0, $a2
/* 8E3F4 8009DBF4 2120E002 */  addu       $a0, $s7, $zero
/* 8E3F8 8009DBF8 16002686 */  lh         $a2, 0x16($s1)
/* 8E3FC 8009DBFC 18002786 */  lh         $a3, 0x18($s1)
/* 8E400 8009DC00 396D010C */  jal        FUN_8005b4e4
/* 8E404 8009DC04 21288002 */   addu      $a1, $s4, $zero
/* 8E408 8009DC08 2120E002 */  addu       $a0, $s7, $zero
/* 8E40C 8009DC0C 21288002 */  addu       $a1, $s4, $zero
/* 8E410 8009DC10 08002296 */  lhu        $v0, 8($s1)
/* 8E414 8009DC14 10FF0726 */  addiu      $a3, $s0, -0xf0
/* 8E418 8009DC18 00140200 */  sll        $v0, $v0, 0x10
/* 8E41C 8009DC1C 03440200 */  sra        $t0, $v0, 0x10
/* 8E420 8009DC20 18001201 */  mult       $t0, $s2
/* 8E424 8009DC24 80020624 */  addiu      $a2, $zero, 0x280
/* 8E428 8009DC28 1400B3AF */  sw         $s3, 0x14($sp)
/* 8E42C 8009DC2C 01005226 */  addiu      $s2, $s2, 1
/* 8E430 8009DC30 C2170200 */  srl        $v0, $v0, 0x1f
/* 8E434 8009DC34 21100201 */  addu       $v0, $t0, $v0
/* 8E438 8009DC38 43100200 */  sra        $v0, $v0, 1
/* 8E43C 8009DC3C 2330C800 */  subu       $a2, $a2, $t0
/* 8E440 8009DC40 1000A2AF */  sw         $v0, 0x10($sp)
/* 8E444 8009DC44 C2170600 */  srl        $v0, $a2, 0x1f
/* 8E448 8009DC48 2130C200 */  addu       $a2, $a2, $v0
/* 8E44C 8009DC4C 43300600 */  sra        $a2, $a2, 1
/* 8E450 8009DC50 12180000 */  mflo       $v1
/* 8E454 8009DC54 C2170300 */  srl        $v0, $v1, 0x1f
/* 8E458 8009DC58 21186200 */  addu       $v1, $v1, $v0
/* 8E45C 8009DC5C 43180300 */  sra        $v1, $v1, 1
/* 8E460 8009DC60 C0FE6324 */  addiu      $v1, $v1, -0x140
/* 8E464 8009DC64 976D010C */  jal        FUN_8005b65c
/* 8E468 8009DC68 2130C300 */   addu      $a2, $a2, $v1
/* 8E46C 8009DC6C 2120E002 */  addu       $a0, $s7, $zero
/* 8E470 8009DC70 21288002 */  addu       $a1, $s4, $zero
/* 8E474 8009DC74 80000624 */  addiu      $a2, $zero, 0x80
/* 8E478 8009DC78 80000724 */  addiu      $a3, $zero, 0x80
/* 8E47C 8009DC7C 80000224 */  addiu      $v0, $zero, 0x80
/* 8E480 8009DC80 EB6C010C */  jal        FUN_8005b3ac
/* 8E484 8009DC84 1000A2AF */   sw        $v0, 0x10($sp)
/* 8E488 8009DC88 0200422A */  slti       $v0, $s2, 2
/* 8E48C 8009DC8C C2FF4014 */  bnez       $v0, .L8009DB98
/* 8E490 8009DC90 01009426 */   addiu     $s4, $s4, 1
/* 8E494 8009DC94 1380033C */  lui        $v1, %hi(D_801280E0)
/* 8E498 8009DC98 E0806224 */  addiu      $v0, $v1, %lo(D_801280E0)
/* 8E49C 8009DC9C 59004390 */  lbu        $v1, 0x59($v0)
/* 8E4A0 8009DCA0 8001A826 */  addiu      $t0, $s5, 0x180
/* 8E4A4 8009DCA4 1380043C */  lui        $a0, 0x8013
/* 8E4A8 8009DCA8 10FF1024 */  addiu      $s0, $zero, -0xf0
/* 8E4AC 8009DCAC E0011224 */  addiu      $s2, $zero, 0x1e0
/* 8E4B0 8009DCB0 C0100300 */  sll        $v0, $v1, 3
/* 8E4B4 8009DCB4 23104300 */  subu       $v0, $v0, $v1
/* 8E4B8 8009DCB8 80100200 */  sll        $v0, $v0, 2
/* 8E4BC 8009DCBC E0828324 */  addiu      $v1, $a0, -0x7d20
/* 8E4C0 8009DCC0 0D000019 */  blez       $t0, .L8009DCF8
/* 8E4C4 8009DCC4 21884300 */   addu      $s1, $v0, $v1
/* 8E4C8 8009DCC8 FE000524 */  addiu      $a1, $zero, 0xfe
/* 8E4CC 8009DCCC 80000624 */  addiu      $a2, $zero, 0x80
/* 8E4D0 8009DCD0 0800C48F */  lw         $a0, 8($fp)
/* 8E4D4 8009DCD4 C0FE0724 */  addiu      $a3, $zero, -0x140
/* 8E4D8 8009DCD8 1000B0AF */  sw         $s0, 0x10($sp)
/* 8E4DC 8009DCDC 1400B1AF */  sw         $s1, 0x14($sp)
/* 8E4E0 8009DCE0 1800A0AF */  sw         $zero, 0x18($sp)
/* 8E4E4 8009DCE4 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 8E4E8 8009DCE8 2000A8AF */  sw         $t0, 0x20($sp)
/* 8E4EC 8009DCEC 3DAD010C */  jal        FUN_8006b4f4
/* 8E4F0 8009DCF0 2400B2AF */   sw        $s2, 0x24($sp)
/* 8E4F4 8009DCF4 0800C2AF */  sw         $v0, 8($fp)
.L8009DCF8:
/* 8E4F8 8009DCF8 2118B602 */  addu       $v1, $s5, $s6
/* 8E4FC 8009DCFC C0FF6724 */  addiu      $a3, $v1, -0x40
/* 8E500 8009DD00 40010224 */  addiu      $v0, $zero, 0x140
/* 8E504 8009DD04 23404700 */  subu       $t0, $v0, $a3
/* 8E508 8009DD08 0C000019 */  blez       $t0, .L8009DD3C
/* 8E50C 8009DD0C FE000524 */   addiu     $a1, $zero, 0xfe
/* 8E510 8009DD10 80000624 */  addiu      $a2, $zero, 0x80
/* 8E514 8009DD14 0800C48F */  lw         $a0, 8($fp)
/* 8E518 8009DD18 00016224 */  addiu      $v0, $v1, 0x100
/* 8E51C 8009DD1C 1000B0AF */  sw         $s0, 0x10($sp)
/* 8E520 8009DD20 1400B1AF */  sw         $s1, 0x14($sp)
/* 8E524 8009DD24 1800A2AF */  sw         $v0, 0x18($sp)
/* 8E528 8009DD28 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 8E52C 8009DD2C 2000A8AF */  sw         $t0, 0x20($sp)
/* 8E530 8009DD30 3DAD010C */  jal        FUN_8006b4f4
/* 8E534 8009DD34 2400B2AF */   sw        $s2, 0x24($sp)
/* 8E538 8009DD38 0800C2AF */  sw         $v0, 8($fp)
.L8009DD3C:
/* 8E53C 8009DD3C 21108002 */  addu       $v0, $s4, $zero
/* 8E540 8009DD40 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 8E544 8009DD44 4800BE8F */  lw         $fp, 0x48($sp)
/* 8E548 8009DD48 4400B78F */  lw         $s7, 0x44($sp)
/* 8E54C 8009DD4C 4000B68F */  lw         $s6, 0x40($sp)
/* 8E550 8009DD50 3C00B58F */  lw         $s5, 0x3c($sp)
/* 8E554 8009DD54 3800B48F */  lw         $s4, 0x38($sp)
/* 8E558 8009DD58 3400B38F */  lw         $s3, 0x34($sp)
/* 8E55C 8009DD5C 3000B28F */  lw         $s2, 0x30($sp)
/* 8E560 8009DD60 2C00B18F */  lw         $s1, 0x2c($sp)
/* 8E564 8009DD64 2800B08F */  lw         $s0, 0x28($sp)
/* 8E568 8009DD68 0800E003 */  jr         $ra
/* 8E56C 8009DD6C 5000BD27 */   addiu     $sp, $sp, 0x50
