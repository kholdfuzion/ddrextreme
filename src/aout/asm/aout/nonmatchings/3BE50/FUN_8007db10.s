.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007db10
/* 6E310 8007DB10 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 6E314 8007DB14 4C00B7AF */  sw         $s7, 0x4c($sp)
/* 6E318 8007DB18 21B8A000 */  addu       $s7, $a1, $zero
/* 6E31C 8007DB1C 5800A4AF */  sw         $a0, 0x58($sp)
/* 6E320 8007DB20 7000A48F */  lw         $a0, 0x70($sp)
/* 6E324 8007DB24 6800A78F */  lw         $a3, 0x68($sp)
/* 6E328 8007DB28 6C00A58F */  lw         $a1, 0x6c($sp)
/* 6E32C 8007DB2C 3C00B3AF */  sw         $s3, 0x3c($sp)
/* 6E330 8007DB30 2198C000 */  addu       $s3, $a2, $zero
/* 6E334 8007DB34 5400BFAF */  sw         $ra, 0x54($sp)
/* 6E338 8007DB38 5000BEAF */  sw         $fp, 0x50($sp)
/* 6E33C 8007DB3C 4800B6AF */  sw         $s6, 0x48($sp)
/* 6E340 8007DB40 4400B5AF */  sw         $s5, 0x44($sp)
/* 6E344 8007DB44 4000B4AF */  sw         $s4, 0x40($sp)
/* 6E348 8007DB48 3800B2AF */  sw         $s2, 0x38($sp)
/* 6E34C 8007DB4C 3400B1AF */  sw         $s1, 0x34($sp)
/* 6E350 8007DB50 03008228 */  slti       $v0, $a0, 3
/* 6E354 8007DB54 02004010 */  beqz       $v0, .L8007DB60
/* 6E358 8007DB58 3000B0AF */   sw        $s0, 0x30($sp)
/* 6E35C 8007DB5C 03000424 */  addiu      $a0, $zero, 3
.L8007DB60:
/* 6E360 8007DB60 2A308500 */  slt        $a2, $a0, $a1
/* 6E364 8007DB64 1800C010 */  beqz       $a2, .L8007DBC8
/* 6E368 8007DB68 FEFF8324 */   addiu     $v1, $a0, -2
/* 6E36C 8007DB6C 2310A400 */  subu       $v0, $a1, $a0
/* 6E370 8007DB70 FFFF4424 */  addiu      $a0, $v0, -1
/* 6E374 8007DB74 2A106400 */  slt        $v0, $v1, $a0
/* 6E378 8007DB78 03004014 */  bnez       $v0, .L8007DB88
/* 6E37C 8007DB7C 00130300 */   sll       $v0, $v1, 0xc
/* 6E380 8007DB80 0F008004 */  bltz       $a0, .L8007DBC0
/* 6E384 8007DB84 00130400 */   sll       $v0, $a0, 0xc
.L8007DB88:
/* 6E388 8007DB88 1A004300 */  div        $zero, $v0, $v1
/* 6E38C 8007DB8C 02006014 */  bnez       $v1, .L8007DB98
/* 6E390 8007DB90 00000000 */   nop
/* 6E394 8007DB94 0D000700 */  break      7
.L8007DB98:
/* 6E398 8007DB98 FFFF0124 */   addiu     $at, $zero, -1
/* 6E39C 8007DB9C 04006114 */  bne        $v1, $at, .L8007DBB0
/* 6E3A0 8007DBA0 0080013C */   lui       $at, 0x8000
/* 6E3A4 8007DBA4 02004114 */  bne        $v0, $at, .L8007DBB0
/* 6E3A8 8007DBA8 00000000 */   nop
/* 6E3AC 8007DBAC 0D000600 */  break      6
.L8007DBB0:
/* 6E3B0 8007DBB0 12100000 */   mflo      $v0
/* 6E3B4 8007DBB4 00100324 */  addiu      $v1, $zero, 0x1000
/* 6E3B8 8007DBB8 13F70108 */  j          .L8007DC4C
/* 6E3BC 8007DBBC 23806200 */   subu      $s0, $v1, $v0
.L8007DBC0:
/* 6E3C0 8007DBC0 13F70108 */  j          .L8007DC4C
/* 6E3C4 8007DBC4 00101024 */   addiu     $s0, $zero, 0x1000
.L8007DBC8:
/* 6E3C8 8007DBC8 FFFFA424 */  addiu      $a0, $a1, -1
/* 6E3CC 8007DBCC 2A106400 */  slt        $v0, $v1, $a0
/* 6E3D0 8007DBD0 0E004010 */  beqz       $v0, .L8007DC0C
/* 6E3D4 8007DBD4 00130300 */   sll       $v0, $v1, 0xc
/* 6E3D8 8007DBD8 1A004300 */  div        $zero, $v0, $v1
/* 6E3DC 8007DBDC 02006014 */  bnez       $v1, .L8007DBE8
/* 6E3E0 8007DBE0 00000000 */   nop
/* 6E3E4 8007DBE4 0D000700 */  break      7
.L8007DBE8:
/* 6E3E8 8007DBE8 FFFF0124 */   addiu     $at, $zero, -1
/* 6E3EC 8007DBEC 04006114 */  bne        $v1, $at, .L8007DC00
/* 6E3F0 8007DBF0 0080013C */   lui       $at, 0x8000
/* 6E3F4 8007DBF4 02004114 */  bne        $v0, $at, .L8007DC00
/* 6E3F8 8007DBF8 00000000 */   nop
/* 6E3FC 8007DBFC 0D000600 */  break      6
.L8007DC00:
/* 6E400 8007DC00 12800000 */   mflo      $s0
/* 6E404 8007DC04 13F70108 */  j          .L8007DC4C
/* 6E408 8007DC08 00000000 */   nop
.L8007DC0C:
/* 6E40C 8007DC0C 0E008004 */  bltz       $a0, .L8007DC48
/* 6E410 8007DC10 00130400 */   sll       $v0, $a0, 0xc
/* 6E414 8007DC14 1A004300 */  div        $zero, $v0, $v1
/* 6E418 8007DC18 02006014 */  bnez       $v1, .L8007DC24
/* 6E41C 8007DC1C 00000000 */   nop
/* 6E420 8007DC20 0D000700 */  break      7
.L8007DC24:
/* 6E424 8007DC24 FFFF0124 */   addiu     $at, $zero, -1
/* 6E428 8007DC28 04006114 */  bne        $v1, $at, .L8007DC3C
/* 6E42C 8007DC2C 0080013C */   lui       $at, 0x8000
/* 6E430 8007DC30 02004114 */  bne        $v0, $at, .L8007DC3C
/* 6E434 8007DC34 00000000 */   nop
/* 6E438 8007DC38 0D000600 */  break      6
.L8007DC3C:
/* 6E43C 8007DC3C 12800000 */   mflo      $s0
/* 6E440 8007DC40 13F70108 */  j          .L8007DC4C
/* 6E444 8007DC44 00000000 */   nop
.L8007DC48:
/* 6E448 8007DC48 21800000 */  addu       $s0, $zero, $zero
.L8007DC4C:
/* 6E44C 8007DC4C CA00E010 */  beqz       $a3, .L8007DF78
/* 6E450 8007DC50 00100424 */   addiu     $a0, $zero, 0x1000
/* 6E454 8007DC54 1380023C */  lui        $v0, %hi(D_8012813C)
/* 6E458 8007DC58 3C814290 */  lbu        $v0, %lo(D_8012813C)($v0)
/* 6E45C 8007DC5C 23809000 */  subu       $s0, $a0, $s0
/* 6E460 8007DC60 C0180200 */  sll        $v1, $v0, 3
/* 6E464 8007DC64 23186200 */  subu       $v1, $v1, $v0
/* 6E468 8007DC68 80180300 */  sll        $v1, $v1, 2
/* 6E46C 8007DC6C 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6E470 8007DC70 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6E474 8007DC74 21886200 */  addu       $s1, $v1, $v0
/* 6E478 8007DC78 0A002286 */  lh         $v0, 0xa($s1)
/* 6E47C 8007DC7C 0100C62C */  sltiu      $a2, $a2, 1
/* 6E480 8007DC80 1400C010 */  beqz       $a2, .L8007DCD4
/* 6E484 8007DC84 FFFF5624 */   addiu     $s6, $v0, -1
/* 6E488 8007DC88 23189000 */  subu       $v1, $a0, $s0
/* 6E48C 8007DC8C 1800C302 */  mult       $s6, $v1
/* 6E490 8007DC90 12100000 */  mflo       $v0
/* 6E494 8007DC94 02004104 */  bgez       $v0, .L8007DCA0
/* 6E498 8007DC98 00000000 */   nop
/* 6E49C 8007DC9C FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8007DCA0:
/* 6E4A0 8007DCA0 03130200 */  sra        $v0, $v0, 0xc
/* 6E4A4 8007DCA4 18004300 */  mult       $v0, $v1
/* 6E4A8 8007DCA8 12100000 */  mflo       $v0
/* 6E4AC 8007DCAC 02004104 */  bgez       $v0, .L8007DCB8
/* 6E4B0 8007DCB0 00000000 */   nop
/* 6E4B4 8007DCB4 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8007DCB8:
/* 6E4B8 8007DCB8 03130200 */  sra        $v0, $v0, 0xc
/* 6E4BC 8007DCBC 23A8C202 */  subu       $s5, $s6, $v0
/* 6E4C0 8007DCC0 02000106 */  bgez       $s0, .L8007DCCC
/* 6E4C4 8007DCC4 21100002 */   addu      $v0, $s0, $zero
/* 6E4C8 8007DCC8 1F000226 */  addiu      $v0, $s0, 0x1f
.L8007DCCC:
/* 6E4CC 8007DCCC 5AF70108 */  j          .L8007DD68
/* 6E4D0 8007DCD0 43910200 */   sra       $s2, $v0, 5
.L8007DCD4:
/* 6E4D4 8007DCD4 0008022A */  slti       $v0, $s0, 0x800
/* 6E4D8 8007DCD8 10004010 */  beqz       $v0, .L8007DD1C
/* 6E4DC 8007DCDC 00080224 */   addiu     $v0, $zero, 0x800
/* 6E4E0 8007DCE0 23185000 */  subu       $v1, $v0, $s0
/* 6E4E4 8007DCE4 1800C302 */  mult       $s6, $v1
/* 6E4E8 8007DCE8 12100000 */  mflo       $v0
/* 6E4EC 8007DCEC 02004104 */  bgez       $v0, .L8007DCF8
/* 6E4F0 8007DCF0 00000000 */   nop
/* 6E4F4 8007DCF4 FF074224 */  addiu      $v0, $v0, 0x7ff
.L8007DCF8:
/* 6E4F8 8007DCF8 C3120200 */  sra        $v0, $v0, 0xb
/* 6E4FC 8007DCFC 18004300 */  mult       $v0, $v1
/* 6E500 8007DD00 12100000 */  mflo       $v0
/* 6E504 8007DD04 02004104 */  bgez       $v0, .L8007DD10
/* 6E508 8007DD08 00000000 */   nop
/* 6E50C 8007DD0C FF074224 */  addiu      $v0, $v0, 0x7ff
.L8007DD10:
/* 6E510 8007DD10 C3120200 */  sra        $v0, $v0, 0xb
/* 6E514 8007DD14 4FF70108 */  j          .L8007DD3C
/* 6E518 8007DD18 23A8C202 */   subu      $s5, $s6, $v0
.L8007DD1C:
/* 6E51C 8007DD1C 28F2000C */  jal        rcos
/* 6E520 8007DD20 40201000 */   sll       $a0, $s0, 1
/* 6E524 8007DD24 02004104 */  bgez       $v0, .L8007DD30
/* 6E528 8007DD28 00000000 */   nop
/* 6E52C 8007DD2C FF004224 */  addiu      $v0, $v0, 0xff
.L8007DD30:
/* 6E530 8007DD30 03120200 */  sra        $v0, $v0, 8
/* 6E534 8007DD34 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6E538 8007DD38 21A8C202 */  addu       $s5, $s6, $v0
.L8007DD3C:
/* 6E53C 8007DD3C AA2A023C */  lui        $v0, 0x2aaa
/* 6E540 8007DD40 ABAA4234 */  ori        $v0, $v0, 0xaaab
/* 6E544 8007DD44 18000202 */  mult       $s0, $v0
/* 6E548 8007DD48 C3171000 */  sra        $v0, $s0, 0x1f
/* 6E54C 8007DD4C 10480000 */  mfhi       $t1
/* 6E550 8007DD50 83180900 */  sra        $v1, $t1, 2
/* 6E554 8007DD54 23906200 */  subu       $s2, $v1, $v0
/* 6E558 8007DD58 8100422A */  slti       $v0, $s2, 0x81
/* 6E55C 8007DD5C 03004014 */  bnez       $v0, .L8007DD6C
/* 6E560 8007DD60 0500A22A */   slti      $v0, $s5, 5
/* 6E564 8007DD64 80001224 */  addiu      $s2, $zero, 0x80
.L8007DD68:
/* 6E568 8007DD68 0500A22A */  slti       $v0, $s5, 5
.L8007DD6C:
/* 6E56C 8007DD6C 80004014 */  bnez       $v0, .L8007DF70
/* 6E570 8007DD70 21A00000 */   addu      $s4, $zero, $zero
/* 6E574 8007DD74 E0010224 */  addiu      $v0, $zero, 0x1e0
/* 6E578 8007DD78 23F05500 */  subu       $fp, $v0, $s5
.L8007DD7C:
/* 6E57C 8007DD7C 2120E002 */  addu       $a0, $s7, $zero
/* 6E580 8007DD80 08002396 */  lhu        $v1, 8($s1)
/* 6E584 8007DD84 04002886 */  lh         $t0, 4($s1)
/* 6E588 8007DD88 001C0300 */  sll        $v1, $v1, 0x10
/* 6E58C 8007DD8C 03140300 */  sra        $v0, $v1, 0x10
/* 6E590 8007DD90 18005400 */  mult       $v0, $s4
/* 6E594 8007DD94 06002786 */  lh         $a3, 6($s1)
/* 6E598 8007DD98 21286002 */  addu       $a1, $s3, $zero
/* 6E59C 8007DD9C 1400B6AF */  sw         $s6, 0x14($sp)
/* 6E5A0 8007DDA0 C21F0300 */  srl        $v1, $v1, 0x1f
/* 6E5A4 8007DDA4 21104300 */  addu       $v0, $v0, $v1
/* 6E5A8 8007DDA8 43100200 */  sra        $v0, $v0, 1
/* 6E5AC 8007DDAC 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E5B0 8007DDB0 0C002386 */  lh         $v1, 0xc($s1)
/* 6E5B4 8007DDB4 01000224 */  addiu      $v0, $zero, 1
/* 6E5B8 8007DDB8 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6E5BC 8007DDBC 1800A3AF */  sw         $v1, 0x18($sp)
/* 6E5C0 8007DDC0 12300000 */  mflo       $a2
/* 6E5C4 8007DDC4 C2170600 */  srl        $v0, $a2, 0x1f
/* 6E5C8 8007DDC8 2130C200 */  addu       $a2, $a2, $v0
/* 6E5CC 8007DDCC 43300600 */  sra        $a2, $a2, 1
/* 6E5D0 8007DDD0 1769010C */  jal        FUN_8005a45c
/* 6E5D4 8007DDD4 21300601 */   addu      $a2, $t0, $a2
/* 6E5D8 8007DDD8 2120E002 */  addu       $a0, $s7, $zero
/* 6E5DC 8007DDDC 16002686 */  lh         $a2, 0x16($s1)
/* 6E5E0 8007DDE0 18002786 */  lh         $a3, 0x18($s1)
/* 6E5E4 8007DDE4 396D010C */  jal        FUN_8005b4e4
/* 6E5E8 8007DDE8 21286002 */   addu      $a1, $s3, $zero
/* 6E5EC 8007DDEC 2120E002 */  addu       $a0, $s7, $zero
/* 6E5F0 8007DDF0 21286002 */  addu       $a1, $s3, $zero
/* 6E5F4 8007DDF4 C2871E00 */  srl        $s0, $fp, 0x1f
/* 6E5F8 8007DDF8 2180D003 */  addu       $s0, $fp, $s0
/* 6E5FC 8007DDFC 43801000 */  sra        $s0, $s0, 1
/* 6E600 8007DE00 08002296 */  lhu        $v0, 8($s1)
/* 6E604 8007DE04 10FF1026 */  addiu      $s0, $s0, -0xf0
/* 6E608 8007DE08 00140200 */  sll        $v0, $v0, 0x10
/* 6E60C 8007DE0C 031C0200 */  sra        $v1, $v0, 0x10
/* 6E610 8007DE10 18007400 */  mult       $v1, $s4
/* 6E614 8007DE14 21380002 */  addu       $a3, $s0, $zero
/* 6E618 8007DE18 80020924 */  addiu      $t1, $zero, 0x280
/* 6E61C 8007DE1C 1400B5AF */  sw         $s5, 0x14($sp)
/* 6E620 8007DE20 C2170200 */  srl        $v0, $v0, 0x1f
/* 6E624 8007DE24 21106200 */  addu       $v0, $v1, $v0
/* 6E628 8007DE28 43100200 */  sra        $v0, $v0, 1
/* 6E62C 8007DE2C 23182301 */  subu       $v1, $t1, $v1
/* 6E630 8007DE30 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E634 8007DE34 C2170300 */  srl        $v0, $v1, 0x1f
/* 6E638 8007DE38 21186200 */  addu       $v1, $v1, $v0
/* 6E63C 8007DE3C 43180300 */  sra        $v1, $v1, 1
/* 6E640 8007DE40 12300000 */  mflo       $a2
/* 6E644 8007DE44 C2170600 */  srl        $v0, $a2, 0x1f
/* 6E648 8007DE48 2130C200 */  addu       $a2, $a2, $v0
/* 6E64C 8007DE4C 43300600 */  sra        $a2, $a2, 1
/* 6E650 8007DE50 C0FEC624 */  addiu      $a2, $a2, -0x140
/* 6E654 8007DE54 976D010C */  jal        FUN_8005b65c
/* 6E658 8007DE58 21306600 */   addu      $a2, $v1, $a2
/* 6E65C 8007DE5C 2120E002 */  addu       $a0, $s7, $zero
/* 6E660 8007DE60 21286002 */  addu       $a1, $s3, $zero
/* 6E664 8007DE64 21304002 */  addu       $a2, $s2, $zero
/* 6E668 8007DE68 21384002 */  addu       $a3, $s2, $zero
/* 6E66C 8007DE6C EB6C010C */  jal        FUN_8005b3ac
/* 6E670 8007DE70 1000B2AF */   sw        $s2, 0x10($sp)
/* 6E674 8007DE74 01007326 */  addiu      $s3, $s3, 1
/* 6E678 8007DE78 2120E002 */  addu       $a0, $s7, $zero
/* 6E67C 8007DE7C 08002396 */  lhu        $v1, 8($s1)
/* 6E680 8007DE80 04002886 */  lh         $t0, 4($s1)
/* 6E684 8007DE84 001C0300 */  sll        $v1, $v1, 0x10
/* 6E688 8007DE88 03140300 */  sra        $v0, $v1, 0x10
/* 6E68C 8007DE8C 18005400 */  mult       $v0, $s4
/* 6E690 8007DE90 06002786 */  lh         $a3, 6($s1)
/* 6E694 8007DE94 21286002 */  addu       $a1, $s3, $zero
/* 6E698 8007DE98 1400B6AF */  sw         $s6, 0x14($sp)
/* 6E69C 8007DE9C C21F0300 */  srl        $v1, $v1, 0x1f
/* 6E6A0 8007DEA0 21104300 */  addu       $v0, $v0, $v1
/* 6E6A4 8007DEA4 43100200 */  sra        $v0, $v0, 1
/* 6E6A8 8007DEA8 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E6AC 8007DEAC 0C002386 */  lh         $v1, 0xc($s1)
/* 6E6B0 8007DEB0 02000224 */  addiu      $v0, $zero, 2
/* 6E6B4 8007DEB4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6E6B8 8007DEB8 1800A3AF */  sw         $v1, 0x18($sp)
/* 6E6BC 8007DEBC 12300000 */  mflo       $a2
/* 6E6C0 8007DEC0 C2170600 */  srl        $v0, $a2, 0x1f
/* 6E6C4 8007DEC4 2130C200 */  addu       $a2, $a2, $v0
/* 6E6C8 8007DEC8 43300600 */  sra        $a2, $a2, 1
/* 6E6CC 8007DECC 1769010C */  jal        FUN_8005a45c
/* 6E6D0 8007DED0 21300601 */   addu      $a2, $t0, $a2
/* 6E6D4 8007DED4 2120E002 */  addu       $a0, $s7, $zero
/* 6E6D8 8007DED8 21286002 */  addu       $a1, $s3, $zero
/* 6E6DC 8007DEDC 00010624 */  addiu      $a2, $zero, 0x100
/* 6E6E0 8007DEE0 396D010C */  jal        FUN_8005b4e4
/* 6E6E4 8007DEE4 FD030724 */   addiu     $a3, $zero, 0x3fd
/* 6E6E8 8007DEE8 2120E002 */  addu       $a0, $s7, $zero
/* 6E6EC 8007DEEC 21286002 */  addu       $a1, $s3, $zero
/* 6E6F0 8007DEF0 08002296 */  lhu        $v0, 8($s1)
/* 6E6F4 8007DEF4 21380002 */  addu       $a3, $s0, $zero
/* 6E6F8 8007DEF8 00140200 */  sll        $v0, $v0, 0x10
/* 6E6FC 8007DEFC 03340200 */  sra        $a2, $v0, 0x10
/* 6E700 8007DF00 1800D400 */  mult       $a2, $s4
/* 6E704 8007DF04 80020924 */  addiu      $t1, $zero, 0x280
/* 6E708 8007DF08 1400B5AF */  sw         $s5, 0x14($sp)
/* 6E70C 8007DF0C 01009426 */  addiu      $s4, $s4, 1
/* 6E710 8007DF10 C2170200 */  srl        $v0, $v0, 0x1f
/* 6E714 8007DF14 2110C200 */  addu       $v0, $a2, $v0
/* 6E718 8007DF18 43100200 */  sra        $v0, $v0, 1
/* 6E71C 8007DF1C 23302601 */  subu       $a2, $t1, $a2
/* 6E720 8007DF20 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E724 8007DF24 C2170600 */  srl        $v0, $a2, 0x1f
/* 6E728 8007DF28 2130C200 */  addu       $a2, $a2, $v0
/* 6E72C 8007DF2C 43300600 */  sra        $a2, $a2, 1
/* 6E730 8007DF30 12180000 */  mflo       $v1
/* 6E734 8007DF34 C2170300 */  srl        $v0, $v1, 0x1f
/* 6E738 8007DF38 21186200 */  addu       $v1, $v1, $v0
/* 6E73C 8007DF3C 43180300 */  sra        $v1, $v1, 1
/* 6E740 8007DF40 C0FE6324 */  addiu      $v1, $v1, -0x140
/* 6E744 8007DF44 976D010C */  jal        FUN_8005b65c
/* 6E748 8007DF48 2130C300 */   addu      $a2, $a2, $v1
/* 6E74C 8007DF4C 2120E002 */  addu       $a0, $s7, $zero
/* 6E750 8007DF50 21286002 */  addu       $a1, $s3, $zero
/* 6E754 8007DF54 21304002 */  addu       $a2, $s2, $zero
/* 6E758 8007DF58 21384002 */  addu       $a3, $s2, $zero
/* 6E75C 8007DF5C EB6C010C */  jal        FUN_8005b3ac
/* 6E760 8007DF60 1000B2AF */   sw        $s2, 0x10($sp)
/* 6E764 8007DF64 0200822A */  slti       $v0, $s4, 2
/* 6E768 8007DF68 84FF4014 */  bnez       $v0, .L8007DD7C
/* 6E76C 8007DF6C 01007326 */   addiu     $s3, $s3, 1
.L8007DF70:
/* 6E770 8007DF70 E3F70108 */  j          .L8007DF8C
/* 6E774 8007DF74 80001224 */   addiu     $s2, $zero, 0x80
.L8007DF78:
/* 6E778 8007DF78 21100002 */  addu       $v0, $s0, $zero
/* 6E77C 8007DF7C 03004104 */  bgez       $v0, .L8007DF8C
/* 6E780 8007DF80 43910200 */   sra       $s2, $v0, 5
/* 6E784 8007DF84 1F004224 */  addiu      $v0, $v0, 0x1f
/* 6E788 8007DF88 43910200 */  sra        $s2, $v0, 5
.L8007DF8C:
/* 6E78C 8007DF8C FE000524 */  addiu      $a1, $zero, 0xfe
/* 6E790 8007DF90 21304002 */  addu       $a2, $s2, $zero
/* 6E794 8007DF94 10FF0224 */  addiu      $v0, $zero, -0xf0
/* 6E798 8007DF98 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E79C 8007DF9C 80020224 */  addiu      $v0, $zero, 0x280
/* 6E7A0 8007DFA0 2000A2AF */  sw         $v0, 0x20($sp)
/* 6E7A4 8007DFA4 1380023C */  lui        $v0, %hi(D_80128139)
/* 6E7A8 8007DFA8 39814490 */  lbu        $a0, %lo(D_80128139)($v0)
/* 6E7AC 8007DFAC E0010224 */  addiu      $v0, $zero, 0x1e0
/* 6E7B0 8007DFB0 2400A2AF */  sw         $v0, 0x24($sp)
/* 6E7B4 8007DFB4 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6E7B8 8007DFB8 5800A98F */  lw         $t1, 0x58($sp)
/* 6E7BC 8007DFBC E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6E7C0 8007DFC0 1800A0AF */  sw         $zero, 0x18($sp)
/* 6E7C4 8007DFC4 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 6E7C8 8007DFC8 C0180400 */  sll        $v1, $a0, 3
/* 6E7CC 8007DFCC 23186400 */  subu       $v1, $v1, $a0
/* 6E7D0 8007DFD0 80180300 */  sll        $v1, $v1, 2
/* 6E7D4 8007DFD4 21886200 */  addu       $s1, $v1, $v0
/* 6E7D8 8007DFD8 1400B1AF */  sw         $s1, 0x14($sp)
/* 6E7DC 8007DFDC 0000248D */  lw         $a0, ($t1)
/* 6E7E0 8007DFE0 3DAD010C */  jal        FUN_8006b4f4
/* 6E7E4 8007DFE4 C0FE0724 */   addiu     $a3, $zero, -0x140
/* 6E7E8 8007DFE8 5800A98F */  lw         $t1, 0x58($sp)
/* 6E7EC 8007DFEC 00000000 */  nop
/* 6E7F0 8007DFF0 000022AD */  sw         $v0, ($t1)
/* 6E7F4 8007DFF4 21106002 */  addu       $v0, $s3, $zero
/* 6E7F8 8007DFF8 5400BF8F */  lw         $ra, 0x54($sp)
/* 6E7FC 8007DFFC 5000BE8F */  lw         $fp, 0x50($sp)
/* 6E800 8007E000 4C00B78F */  lw         $s7, 0x4c($sp)
/* 6E804 8007E004 4800B68F */  lw         $s6, 0x48($sp)
/* 6E808 8007E008 4400B58F */  lw         $s5, 0x44($sp)
/* 6E80C 8007E00C 4000B48F */  lw         $s4, 0x40($sp)
/* 6E810 8007E010 3C00B38F */  lw         $s3, 0x3c($sp)
/* 6E814 8007E014 3800B28F */  lw         $s2, 0x38($sp)
/* 6E818 8007E018 3400B18F */  lw         $s1, 0x34($sp)
/* 6E81C 8007E01C 3000B08F */  lw         $s0, 0x30($sp)
/* 6E820 8007E020 0800E003 */  jr         $ra
/* 6E824 8007E024 5800BD27 */   addiu     $sp, $sp, 0x58
