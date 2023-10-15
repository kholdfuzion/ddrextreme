.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005dab8
/* 4E2B8 8005DAB8 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4E2BC 8005DABC 1800B0AF */  sw         $s0, 0x18($sp)
/* 4E2C0 8005DAC0 21808000 */  addu       $s0, $a0, $zero
/* 4E2C4 8005DAC4 1380023C */  lui        $v0, %hi(D_80128156)
/* 4E2C8 8005DAC8 56814490 */  lbu        $a0, %lo(D_80128156)($v0)
/* 4E2CC 8005DACC 3000B6AF */  sw         $s6, 0x30($sp)
/* 4E2D0 8005DAD0 21B0A000 */  addu       $s6, $a1, $zero
/* 4E2D4 8005DAD4 2C00B5AF */  sw         $s5, 0x2c($sp)
/* 4E2D8 8005DAD8 21A8C000 */  addu       $s5, $a2, $zero
/* 4E2DC 8005DADC 2000B2AF */  sw         $s2, 0x20($sp)
/* 4E2E0 8005DAE0 2190E000 */  addu       $s2, $a3, $zero
/* 4E2E4 8005DAE4 3400B7AF */  sw         $s7, 0x34($sp)
/* 4E2E8 8005DAE8 5000B78F */  lw         $s7, 0x50($sp)
/* 4E2EC 8005DAEC 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4E2F0 8005DAF0 3800BEAF */  sw         $fp, 0x38($sp)
/* 4E2F4 8005DAF4 5400BE8F */  lw         $fp, 0x54($sp)
/* 4E2F8 8005DAF8 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4E2FC 8005DAFC 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 4E300 8005DB00 2800B4AF */  sw         $s4, 0x28($sp)
/* 4E304 8005DB04 2400B3AF */  sw         $s3, 0x24($sp)
/* 4E308 8005DB08 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 4E30C 8005DB0C C0180400 */  sll        $v1, $a0, 3
/* 4E310 8005DB10 23186400 */  subu       $v1, $v1, $a0
/* 4E314 8005DB14 80180300 */  sll        $v1, $v1, 2
/* 4E318 8005DB18 F8AE020C */  jal        FUN_800abbe0
/* 4E31C 8005DB1C 21886200 */   addu      $s1, $v1, $v0
/* 4E320 8005DB20 01014010 */  beqz       $v0, .L8005DF28
/* 4E324 8005DB24 21100002 */   addu      $v0, $s0, $zero
/* 4E328 8005DB28 00002286 */  lh         $v0, ($s1)
/* 4E32C 8005DB2C 00000000 */  nop
/* 4E330 8005DB30 FC004010 */  beqz       $v0, .L8005DF24
/* 4E334 8005DB34 1580023C */   lui       $v0, %hi(D_8014BA8A)
/* 4E338 8005DB38 8ABA4484 */  lh         $a0, %lo(D_8014BA8A)($v0)
/* 4E33C 8005DB3C 01000324 */  addiu      $v1, $zero, 1
/* 4E340 8005DB40 F9008314 */  bne        $a0, $v1, .L8005DF28
/* 4E344 8005DB44 21100002 */   addu      $v0, $s0, $zero
/* 4E348 8005DB48 0700422E */  sltiu      $v0, $s2, 7
/* 4E34C 8005DB4C F5004010 */  beqz       $v0, .L8005DF24
/* 4E350 8005DB50 0180023C */   lui       $v0, %hi(D_80014434)
/* 4E354 8005DB54 34444224 */  addiu      $v0, $v0, %lo(D_80014434)
/* 4E358 8005DB58 80181200 */  sll        $v1, $s2, 2
/* 4E35C 8005DB5C 21186200 */  addu       $v1, $v1, $v0
/* 4E360 8005DB60 0000648C */  lw         $a0, ($v1)
/* 4E364 8005DB64 00000000 */  nop
/* 4E368 8005DB68 08008000 */  jr         $a0
/* 4E36C 8005DB6C 00000000 */   nop
/* 4E370 8005DB70 21900002 */  addu       $s2, $s0, $zero
/* 4E374 8005DB74 FFFF0424 */  addiu      $a0, $zero, -1
/* 4E378 8005DB78 21280000 */  addu       $a1, $zero, $zero
/* 4E37C 8005DB7C 21300000 */  addu       $a2, $zero, $zero
/* 4E380 8005DB80 21380000 */  addu       $a3, $zero, $zero
/* 4E384 8005DB84 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E388 8005DB88 4476010C */  jal        FUN_8005d910
/* 4E38C 8005DB8C 1400A0AF */   sw        $zero, 0x14($sp)
/* 4E390 8005DB90 FFFF0424 */  addiu      $a0, $zero, -1
/* 4E394 8005DB94 21280000 */  addu       $a1, $zero, $zero
/* 4E398 8005DB98 21300000 */  addu       $a2, $zero, $zero
/* 4E39C 8005DB9C 21380000 */  addu       $a3, $zero, $zero
/* 4E3A0 8005DBA0 01000324 */  addiu      $v1, $zero, 1
/* 4E3A4 8005DBA4 21884000 */  addu       $s1, $v0, $zero
/* 4E3A8 8005DBA8 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E3AC 8005DBAC 4476010C */  jal        FUN_8005d910
/* 4E3B0 8005DBB0 1400A3AF */   sw        $v1, 0x14($sp)
/* 4E3B4 8005DBB4 21A04000 */  addu       $s4, $v0, $zero
/* 4E3B8 8005DBB8 80020424 */  addiu      $a0, $zero, 0x280
/* 4E3BC 8005DBBC 23109400 */  subu       $v0, $a0, $s4
/* 4E3C0 8005DBC0 23105100 */  subu       $v0, $v0, $s1
/* 4E3C4 8005DBC4 C21F0200 */  srl        $v1, $v0, 0x1f
/* 4E3C8 8005DBC8 21104300 */  addu       $v0, $v0, $v1
/* 4E3CC 8005DBCC 43100200 */  sra        $v0, $v0, 1
/* 4E3D0 8005DBD0 0900201A */  blez       $s1, .L8005DBF8
/* 4E3D4 8005DBD4 C0FE5324 */   addiu     $s3, $v0, -0x140
/* 4E3D8 8005DBD8 21200002 */  addu       $a0, $s0, $zero
/* 4E3DC 8005DBDC 21287602 */  addu       $a1, $s3, $s6
/* 4E3E0 8005DBE0 2130A002 */  addu       $a2, $s5, $zero
/* 4E3E4 8005DBE4 2138E002 */  addu       $a3, $s7, $zero
/* 4E3E8 8005DBE8 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E3EC 8005DBEC 4476010C */  jal        FUN_8005d910
/* 4E3F0 8005DBF0 1400A0AF */   sw        $zero, 0x14($sp)
/* 4E3F4 8005DBF4 21904000 */  addu       $s2, $v0, $zero
.L8005DBF8:
/* 4E3F8 8005DBF8 0A00801A */  blez       $s4, .L8005DC24
/* 4E3FC 8005DBFC 21204002 */   addu      $a0, $s2, $zero
/* 4E400 8005DC00 21287602 */  addu       $a1, $s3, $s6
/* 4E404 8005DC04 2128B100 */  addu       $a1, $a1, $s1
/* 4E408 8005DC08 2130A002 */  addu       $a2, $s5, $zero
/* 4E40C 8005DC0C 2138E002 */  addu       $a3, $s7, $zero
/* 4E410 8005DC10 01000224 */  addiu      $v0, $zero, 1
/* 4E414 8005DC14 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E418 8005DC18 4476010C */  jal        FUN_8005d910
/* 4E41C 8005DC1C 1400A2AF */   sw        $v0, 0x14($sp)
/* 4E420 8005DC20 21904000 */  addu       $s2, $v0, $zero
.L8005DC24:
/* 4E424 8005DC24 21804002 */  addu       $s0, $s2, $zero
/* 4E428 8005DC28 FFFF0424 */  addiu      $a0, $zero, -1
/* 4E42C 8005DC2C 21280000 */  addu       $a1, $zero, $zero
/* 4E430 8005DC30 21300000 */  addu       $a2, $zero, $zero
/* 4E434 8005DC34 21380000 */  addu       $a3, $zero, $zero
/* 4E438 8005DC38 02001324 */  addiu      $s3, $zero, 2
/* 4E43C 8005DC3C 2800B126 */  addiu      $s1, $s5, 0x28
/* 4E440 8005DC40 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E444 8005DC44 4476010C */  jal        FUN_8005d910
/* 4E448 8005DC48 1400B3AF */   sw        $s3, 0x14($sp)
/* 4E44C 8005DC4C 80020424 */  addiu      $a0, $zero, 0x280
/* 4E450 8005DC50 BA770108 */  j          .L8005DEE8
/* 4E454 8005DC54 23188200 */   subu      $v1, $a0, $v0
/* 4E458 8005DC58 21880002 */  addu       $s1, $s0, $zero
/* 4E45C 8005DC5C FFFF0424 */  addiu      $a0, $zero, -1
/* 4E460 8005DC60 21280000 */  addu       $a1, $zero, $zero
/* 4E464 8005DC64 21300000 */  addu       $a2, $zero, $zero
/* 4E468 8005DC68 21380000 */  addu       $a3, $zero, $zero
/* 4E46C 8005DC6C 2A770108 */  j          .L8005DCA8
/* 4E470 8005DC70 03001224 */   addiu     $s2, $zero, 3
/* 4E474 8005DC74 21880002 */  addu       $s1, $s0, $zero
/* 4E478 8005DC78 FFFF0424 */  addiu      $a0, $zero, -1
/* 4E47C 8005DC7C 21280000 */  addu       $a1, $zero, $zero
/* 4E480 8005DC80 21300000 */  addu       $a2, $zero, $zero
/* 4E484 8005DC84 21380000 */  addu       $a3, $zero, $zero
/* 4E488 8005DC88 2A770108 */  j          .L8005DCA8
/* 4E48C 8005DC8C 08001224 */   addiu     $s2, $zero, 8
/* 4E490 8005DC90 21880002 */  addu       $s1, $s0, $zero
/* 4E494 8005DC94 FFFF0424 */  addiu      $a0, $zero, -1
/* 4E498 8005DC98 21280000 */  addu       $a1, $zero, $zero
/* 4E49C 8005DC9C 21300000 */  addu       $a2, $zero, $zero
/* 4E4A0 8005DCA0 21380000 */  addu       $a3, $zero, $zero
/* 4E4A4 8005DCA4 04001224 */  addiu      $s2, $zero, 4
.L8005DCA8:
/* 4E4A8 8005DCA8 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E4AC 8005DCAC 4476010C */  jal        FUN_8005d910
/* 4E4B0 8005DCB0 1400B2AF */   sw        $s2, 0x14($sp)
/* 4E4B4 8005DCB4 80020324 */  addiu      $v1, $zero, 0x280
/* 4E4B8 8005DCB8 23186200 */  subu       $v1, $v1, $v0
/* 4E4BC 8005DCBC C2270300 */  srl        $a0, $v1, 0x1f
/* 4E4C0 8005DCC0 21186400 */  addu       $v1, $v1, $a0
/* 4E4C4 8005DCC4 43180300 */  sra        $v1, $v1, 1
/* 4E4C8 8005DCC8 09004018 */  blez       $v0, .L8005DCF0
/* 4E4CC 8005DCCC C0FE6324 */   addiu     $v1, $v1, -0x140
/* 4E4D0 8005DCD0 21200002 */  addu       $a0, $s0, $zero
/* 4E4D4 8005DCD4 21287600 */  addu       $a1, $v1, $s6
/* 4E4D8 8005DCD8 2130A002 */  addu       $a2, $s5, $zero
/* 4E4DC 8005DCDC 2138E002 */  addu       $a3, $s7, $zero
/* 4E4E0 8005DCE0 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E4E4 8005DCE4 4476010C */  jal        FUN_8005d910
/* 4E4E8 8005DCE8 1400B2AF */   sw        $s2, 0x14($sp)
/* 4E4EC 8005DCEC 21884000 */  addu       $s1, $v0, $zero
.L8005DCF0:
/* 4E4F0 8005DCF0 C9770108 */  j          .L8005DF24
/* 4E4F4 8005DCF4 21802002 */   addu      $s0, $s1, $zero
/* 4E4F8 8005DCF8 21900002 */  addu       $s2, $s0, $zero
/* 4E4FC 8005DCFC FFFF0424 */  addiu      $a0, $zero, -1
/* 4E500 8005DD00 21280000 */  addu       $a1, $zero, $zero
/* 4E504 8005DD04 21300000 */  addu       $a2, $zero, $zero
/* 4E508 8005DD08 21380000 */  addu       $a3, $zero, $zero
/* 4E50C 8005DD0C 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E510 8005DD10 4476010C */  jal        FUN_8005d910
/* 4E514 8005DD14 1400A0AF */   sw        $zero, 0x14($sp)
/* 4E518 8005DD18 FFFF0424 */  addiu      $a0, $zero, -1
/* 4E51C 8005DD1C 21280000 */  addu       $a1, $zero, $zero
/* 4E520 8005DD20 21300000 */  addu       $a2, $zero, $zero
/* 4E524 8005DD24 21380000 */  addu       $a3, $zero, $zero
/* 4E528 8005DD28 05000324 */  addiu      $v1, $zero, 5
/* 4E52C 8005DD2C 21884000 */  addu       $s1, $v0, $zero
/* 4E530 8005DD30 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E534 8005DD34 4476010C */  jal        FUN_8005d910
/* 4E538 8005DD38 1400A3AF */   sw        $v1, 0x14($sp)
/* 4E53C 8005DD3C 21A04000 */  addu       $s4, $v0, $zero
/* 4E540 8005DD40 80020224 */  addiu      $v0, $zero, 0x280
/* 4E544 8005DD44 23105400 */  subu       $v0, $v0, $s4
/* 4E548 8005DD48 23105100 */  subu       $v0, $v0, $s1
/* 4E54C 8005DD4C C21F0200 */  srl        $v1, $v0, 0x1f
/* 4E550 8005DD50 21104300 */  addu       $v0, $v0, $v1
/* 4E554 8005DD54 43100200 */  sra        $v0, $v0, 1
/* 4E558 8005DD58 0900201A */  blez       $s1, .L8005DD80
/* 4E55C 8005DD5C C0FE5324 */   addiu     $s3, $v0, -0x140
/* 4E560 8005DD60 21200002 */  addu       $a0, $s0, $zero
/* 4E564 8005DD64 21287602 */  addu       $a1, $s3, $s6
/* 4E568 8005DD68 2130A002 */  addu       $a2, $s5, $zero
/* 4E56C 8005DD6C 2138E002 */  addu       $a3, $s7, $zero
/* 4E570 8005DD70 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E574 8005DD74 4476010C */  jal        FUN_8005d910
/* 4E578 8005DD78 1400A0AF */   sw        $zero, 0x14($sp)
/* 4E57C 8005DD7C 21904000 */  addu       $s2, $v0, $zero
.L8005DD80:
/* 4E580 8005DD80 6700801A */  blez       $s4, .L8005DF20
/* 4E584 8005DD84 21204002 */   addu      $a0, $s2, $zero
/* 4E588 8005DD88 21287602 */  addu       $a1, $s3, $s6
/* 4E58C 8005DD8C 2128B100 */  addu       $a1, $a1, $s1
/* 4E590 8005DD90 2130A002 */  addu       $a2, $s5, $zero
/* 4E594 8005DD94 2138E002 */  addu       $a3, $s7, $zero
/* 4E598 8005DD98 05000224 */  addiu      $v0, $zero, 5
/* 4E59C 8005DD9C 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E5A0 8005DDA0 C5770108 */  j          .L8005DF14
/* 4E5A4 8005DDA4 1400A2AF */   sw        $v0, 0x14($sp)
/* 4E5A8 8005DDA8 21900002 */  addu       $s2, $s0, $zero
/* 4E5AC 8005DDAC FFFF0424 */  addiu      $a0, $zero, -1
/* 4E5B0 8005DDB0 21280000 */  addu       $a1, $zero, $zero
/* 4E5B4 8005DDB4 21300000 */  addu       $a2, $zero, $zero
/* 4E5B8 8005DDB8 21380000 */  addu       $a3, $zero, $zero
/* 4E5BC 8005DDBC 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E5C0 8005DDC0 4476010C */  jal        FUN_8005d910
/* 4E5C4 8005DDC4 1400A0AF */   sw        $zero, 0x14($sp)
/* 4E5C8 8005DDC8 FFFF0424 */  addiu      $a0, $zero, -1
/* 4E5CC 8005DDCC 21280000 */  addu       $a1, $zero, $zero
/* 4E5D0 8005DDD0 21300000 */  addu       $a2, $zero, $zero
/* 4E5D4 8005DDD4 21380000 */  addu       $a3, $zero, $zero
/* 4E5D8 8005DDD8 09000324 */  addiu      $v1, $zero, 9
/* 4E5DC 8005DDDC 21884000 */  addu       $s1, $v0, $zero
/* 4E5E0 8005DDE0 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E5E4 8005DDE4 4476010C */  jal        FUN_8005d910
/* 4E5E8 8005DDE8 1400A3AF */   sw        $v1, 0x14($sp)
/* 4E5EC 8005DDEC 21A04000 */  addu       $s4, $v0, $zero
/* 4E5F0 8005DDF0 80020224 */  addiu      $v0, $zero, 0x280
/* 4E5F4 8005DDF4 23105400 */  subu       $v0, $v0, $s4
/* 4E5F8 8005DDF8 23105100 */  subu       $v0, $v0, $s1
/* 4E5FC 8005DDFC C21F0200 */  srl        $v1, $v0, 0x1f
/* 4E600 8005DE00 21104300 */  addu       $v0, $v0, $v1
/* 4E604 8005DE04 43100200 */  sra        $v0, $v0, 1
/* 4E608 8005DE08 0900201A */  blez       $s1, .L8005DE30
/* 4E60C 8005DE0C C0FE5324 */   addiu     $s3, $v0, -0x140
/* 4E610 8005DE10 21200002 */  addu       $a0, $s0, $zero
/* 4E614 8005DE14 21287602 */  addu       $a1, $s3, $s6
/* 4E618 8005DE18 2130A002 */  addu       $a2, $s5, $zero
/* 4E61C 8005DE1C 2138E002 */  addu       $a3, $s7, $zero
/* 4E620 8005DE20 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E624 8005DE24 4476010C */  jal        FUN_8005d910
/* 4E628 8005DE28 1400A0AF */   sw        $zero, 0x14($sp)
/* 4E62C 8005DE2C 21904000 */  addu       $s2, $v0, $zero
.L8005DE30:
/* 4E630 8005DE30 3B00801A */  blez       $s4, .L8005DF20
/* 4E634 8005DE34 21204002 */   addu      $a0, $s2, $zero
/* 4E638 8005DE38 21287602 */  addu       $a1, $s3, $s6
/* 4E63C 8005DE3C 2128B100 */  addu       $a1, $a1, $s1
/* 4E640 8005DE40 2130A002 */  addu       $a2, $s5, $zero
/* 4E644 8005DE44 2138E002 */  addu       $a3, $s7, $zero
/* 4E648 8005DE48 09000224 */  addiu      $v0, $zero, 9
/* 4E64C 8005DE4C 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E650 8005DE50 C5770108 */  j          .L8005DF14
/* 4E654 8005DE54 1400A2AF */   sw        $v0, 0x14($sp)
/* 4E658 8005DE58 21880002 */  addu       $s1, $s0, $zero
/* 4E65C 8005DE5C FFFF0424 */  addiu      $a0, $zero, -1
/* 4E660 8005DE60 21280000 */  addu       $a1, $zero, $zero
/* 4E664 8005DE64 21300000 */  addu       $a2, $zero, $zero
/* 4E668 8005DE68 21380000 */  addu       $a3, $zero, $zero
/* 4E66C 8005DE6C 06001224 */  addiu      $s2, $zero, 6
/* 4E670 8005DE70 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E674 8005DE74 4476010C */  jal        FUN_8005d910
/* 4E678 8005DE78 1400B2AF */   sw        $s2, 0x14($sp)
/* 4E67C 8005DE7C 80021424 */  addiu      $s4, $zero, 0x280
/* 4E680 8005DE80 23188202 */  subu       $v1, $s4, $v0
/* 4E684 8005DE84 C2270300 */  srl        $a0, $v1, 0x1f
/* 4E688 8005DE88 21186400 */  addu       $v1, $v1, $a0
/* 4E68C 8005DE8C 43180300 */  sra        $v1, $v1, 1
/* 4E690 8005DE90 09004018 */  blez       $v0, .L8005DEB8
/* 4E694 8005DE94 C0FE6324 */   addiu     $v1, $v1, -0x140
/* 4E698 8005DE98 21200002 */  addu       $a0, $s0, $zero
/* 4E69C 8005DE9C 21287600 */  addu       $a1, $v1, $s6
/* 4E6A0 8005DEA0 2130A002 */  addu       $a2, $s5, $zero
/* 4E6A4 8005DEA4 2138E002 */  addu       $a3, $s7, $zero
/* 4E6A8 8005DEA8 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E6AC 8005DEAC 4476010C */  jal        FUN_8005d910
/* 4E6B0 8005DEB0 1400B2AF */   sw        $s2, 0x14($sp)
/* 4E6B4 8005DEB4 21884000 */  addu       $s1, $v0, $zero
.L8005DEB8:
/* 4E6B8 8005DEB8 21802002 */  addu       $s0, $s1, $zero
/* 4E6BC 8005DEBC 21900002 */  addu       $s2, $s0, $zero
/* 4E6C0 8005DEC0 FFFF0424 */  addiu      $a0, $zero, -1
/* 4E6C4 8005DEC4 21280000 */  addu       $a1, $zero, $zero
/* 4E6C8 8005DEC8 21300000 */  addu       $a2, $zero, $zero
/* 4E6CC 8005DECC 21380000 */  addu       $a3, $zero, $zero
/* 4E6D0 8005DED0 07001324 */  addiu      $s3, $zero, 7
/* 4E6D4 8005DED4 2800B126 */  addiu      $s1, $s5, 0x28
/* 4E6D8 8005DED8 1000A0AF */  sw         $zero, 0x10($sp)
/* 4E6DC 8005DEDC 4476010C */  jal        FUN_8005d910
/* 4E6E0 8005DEE0 1400B3AF */   sw        $s3, 0x14($sp)
/* 4E6E4 8005DEE4 23188202 */  subu       $v1, $s4, $v0
.L8005DEE8:
/* 4E6E8 8005DEE8 C2270300 */  srl        $a0, $v1, 0x1f
/* 4E6EC 8005DEEC 21186400 */  addu       $v1, $v1, $a0
/* 4E6F0 8005DEF0 43180300 */  sra        $v1, $v1, 1
/* 4E6F4 8005DEF4 0A004018 */  blez       $v0, .L8005DF20
/* 4E6F8 8005DEF8 C0FE6324 */   addiu     $v1, $v1, -0x140
/* 4E6FC 8005DEFC 21200002 */  addu       $a0, $s0, $zero
/* 4E700 8005DF00 21287600 */  addu       $a1, $v1, $s6
/* 4E704 8005DF04 21302002 */  addu       $a2, $s1, $zero
/* 4E708 8005DF08 2138E002 */  addu       $a3, $s7, $zero
/* 4E70C 8005DF0C 1000BEAF */  sw         $fp, 0x10($sp)
/* 4E710 8005DF10 1400B3AF */  sw         $s3, 0x14($sp)
.L8005DF14:
/* 4E714 8005DF14 4476010C */  jal        FUN_8005d910
/* 4E718 8005DF18 00000000 */   nop
/* 4E71C 8005DF1C 21904000 */  addu       $s2, $v0, $zero
.L8005DF20:
/* 4E720 8005DF20 21804002 */  addu       $s0, $s2, $zero
.L8005DF24:
/* 4E724 8005DF24 21100002 */  addu       $v0, $s0, $zero
.L8005DF28:
/* 4E728 8005DF28 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 4E72C 8005DF2C 3800BE8F */  lw         $fp, 0x38($sp)
/* 4E730 8005DF30 3400B78F */  lw         $s7, 0x34($sp)
/* 4E734 8005DF34 3000B68F */  lw         $s6, 0x30($sp)
/* 4E738 8005DF38 2C00B58F */  lw         $s5, 0x2c($sp)
/* 4E73C 8005DF3C 2800B48F */  lw         $s4, 0x28($sp)
/* 4E740 8005DF40 2400B38F */  lw         $s3, 0x24($sp)
/* 4E744 8005DF44 2000B28F */  lw         $s2, 0x20($sp)
/* 4E748 8005DF48 1C00B18F */  lw         $s1, 0x1c($sp)
/* 4E74C 8005DF4C 1800B08F */  lw         $s0, 0x18($sp)
/* 4E750 8005DF50 0800E003 */  jr         $ra
/* 4E754 8005DF54 4000BD27 */   addiu     $sp, $sp, 0x40
