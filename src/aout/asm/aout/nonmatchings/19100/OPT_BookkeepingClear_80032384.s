.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel OPT_BookkeepingClear_80032384
/* 22B84 80032384 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 22B88 80032388 2800B2AF */  sw         $s2, 0x28($sp)
/* 22B8C 8003238C 21908000 */  addu       $s2, $a0, $zero
/* 22B90 80032390 3000BFAF */  sw         $ra, 0x30($sp)
/* 22B94 80032394 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 22B98 80032398 2400B1AF */  sw         $s1, 0x24($sp)
/* 22B9C 8003239C 7DC4000C */  jal        get_astruct_800311f4
/* 22BA0 800323A0 2000B0AF */   sw        $s0, 0x20($sp)
/* 22BA4 800323A4 21200000 */  addu       $a0, $zero, $zero
/* 22BA8 800323A8 90FF0524 */  addiu      $a1, $zero, -0x70
/* 22BAC 800323AC A0FF0624 */  addiu      $a2, $zero, -0x60
/* 22BB0 800323B0 00100724 */  addiu      $a3, $zero, 0x1000
/* 22BB4 800323B4 00101024 */  addiu      $s0, $zero, 0x1000
/* 22BB8 800323B8 0180033C */  lui        $v1, %hi(D_80011634)
/* 22BBC 800323BC 34166324 */  addiu      $v1, $v1, %lo(D_80011634)
/* 22BC0 800323C0 21884000 */  addu       $s1, $v0, $zero
/* 22BC4 800323C4 1000B0AF */  sw         $s0, 0x10($sp)
/* 22BC8 800323C8 290A010C */  jal        PrintText_800428a4
/* 22BCC 800323CC 1400A3AF */   sw        $v1, 0x14($sp)
/* 22BD0 800323D0 21200000 */  addu       $a0, $zero, $zero
/* 22BD4 800323D4 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 22BD8 800323D8 52000624 */  addiu      $a2, $zero, 0x52
/* 22BDC 800323DC 00100724 */  addiu      $a3, $zero, 0x1000
/* 22BE0 800323E0 0180023C */  lui        $v0, %hi(D_80011670)
/* 22BE4 800323E4 70164224 */  addiu      $v0, $v0, %lo(D_80011670)
/* 22BE8 800323E8 1000B0AF */  sw         $s0, 0x10($sp)
/* 22BEC 800323EC 290A010C */  jal        PrintText_800428a4
/* 22BF0 800323F0 1400A2AF */   sw        $v0, 0x14($sp)
/* 22BF4 800323F4 21200000 */  addu       $a0, $zero, $zero
/* 22BF8 800323F8 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 22BFC 800323FC 62000624 */  addiu      $a2, $zero, 0x62
/* 22C00 80032400 00100724 */  addiu      $a3, $zero, 0x1000
/* 22C04 80032404 0180023C */  lui        $v0, %hi(D_80011694)
/* 22C08 80032408 94164224 */  addiu      $v0, $v0, %lo(D_80011694)
/* 22C0C 8003240C 1000B0AF */  sw         $s0, 0x10($sp)
/* 22C10 80032410 290A010C */  jal        PrintText_800428a4
/* 22C14 80032414 1400A2AF */   sw        $v0, 0x14($sp)
/* 22C18 80032418 7CAA000C */  jal        vsync_8002a9f0
/* 22C1C 8003241C 00000000 */   nop
/* 22C20 80032420 1800A827 */  addiu      $t0, $sp, 0x18
/* 22C24 80032424 01000324 */  addiu      $v1, $zero, 1
/* 22C28 80032428 1C00A227 */  addiu      $v0, $sp, 0x1c
.L8003242C:
/* 22C2C 8003242C 000040AC */  sw         $zero, ($v0)
/* 22C30 80032430 FFFF6324 */  addiu      $v1, $v1, -1
/* 22C34 80032434 FDFF6104 */  bgez       $v1, .L8003242C
/* 22C38 80032438 FCFF4224 */   addiu     $v0, $v0, -4
/* 22C3C 8003243C 21200000 */  addu       $a0, $zero, $zero
/* 22C40 80032440 88FF0524 */  addiu      $a1, $zero, -0x78
/* 22C44 80032444 C4FF0624 */  addiu      $a2, $zero, -0x3c
/* 22C48 80032448 00100724 */  addiu      $a3, $zero, 0x1000
/* 22C4C 8003244C 80101200 */  sll        $v0, $s2, 2
/* 22C50 80032450 21100201 */  addu       $v0, $t0, $v0
/* 22C54 80032454 02000324 */  addiu      $v1, $zero, 2
/* 22C58 80032458 00101024 */  addiu      $s0, $zero, 0x1000
/* 22C5C 8003245C 000043AC */  sw         $v1, ($v0)
/* 22C60 80032460 0180023C */  lui        $v0, %hi(D_800116B8)
/* 22C64 80032464 B8164224 */  addiu      $v0, $v0, %lo(D_800116B8)
/* 22C68 80032468 1000B0AF */  sw         $s0, 0x10($sp)
/* 22C6C 8003246C 290A010C */  jal        PrintText_800428a4
/* 22C70 80032470 1400A2AF */   sw        $v0, 0x14($sp)
/* 22C74 80032474 21200000 */  addu       $a0, $zero, $zero
/* 22C78 80032478 88FF0524 */  addiu      $a1, $zero, -0x78
/* 22C7C 8003247C CCFF0624 */  addiu      $a2, $zero, -0x34
/* 22C80 80032480 00100724 */  addiu      $a3, $zero, 0x1000
/* 22C84 80032484 0180023C */  lui        $v0, %hi(D_800116D0)
/* 22C88 80032488 D0164224 */  addiu      $v0, $v0, %lo(D_800116D0)
/* 22C8C 8003248C 1000B0AF */  sw         $s0, 0x10($sp)
/* 22C90 80032490 290A010C */  jal        PrintText_800428a4
/* 22C94 80032494 1400A2AF */   sw        $v0, 0x14($sp)
/* 22C98 80032498 28000524 */  addiu      $a1, $zero, 0x28
/* 22C9C 8003249C DAFF0624 */  addiu      $a2, $zero, -0x26
/* 22CA0 800324A0 00100724 */  addiu      $a3, $zero, 0x1000
/* 22CA4 800324A4 0180023C */  lui        $v0, %hi(D_800116E8)
/* 22CA8 800324A8 1800A48F */  lw         $a0, 0x18($sp)
/* 22CAC 800324AC E8165324 */  addiu      $s3, $v0, %lo(D_800116E8)
/* 22CB0 800324B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 22CB4 800324B4 290A010C */  jal        PrintText_800428a4
/* 22CB8 800324B8 1400B3AF */   sw        $s3, 0x14($sp)
/* 22CBC 800324BC 28000524 */  addiu      $a1, $zero, 0x28
/* 22CC0 800324C0 E4FF0624 */  addiu      $a2, $zero, -0x1c
/* 22CC4 800324C4 00100724 */  addiu      $a3, $zero, 0x1000
/* 22CC8 800324C8 0180023C */  lui        $v0, %hi(D_800116EC)
/* 22CCC 800324CC 1C00A48F */  lw         $a0, 0x1c($sp)
/* 22CD0 800324D0 EC165224 */  addiu      $s2, $v0, %lo(D_800116EC)
/* 22CD4 800324D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 22CD8 800324D8 290A010C */  jal        PrintText_800428a4
/* 22CDC 800324DC 1400B2AF */   sw        $s2, 0x14($sp)
/* 22CE0 800324E0 06002386 */  lh         $v1, 6($s1)
/* 22CE4 800324E4 01000224 */  addiu      $v0, $zero, 1
/* 22CE8 800324E8 31006214 */  bne        $v1, $v0, .L800325B0
/* 22CEC 800324EC 02000224 */   addiu     $v0, $zero, 2
/* 22CF0 800324F0 04000424 */  addiu      $a0, $zero, 4
/* 22CF4 800324F4 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 22CF8 800324F8 42000624 */  addiu      $a2, $zero, 0x42
/* 22CFC 800324FC 00100724 */  addiu      $a3, $zero, 0x1000
/* 22D00 80032500 0180023C */  lui        $v0, %hi(D_800116F0)
/* 22D04 80032504 F0164224 */  addiu      $v0, $v0, %lo(D_800116F0)
/* 22D08 80032508 1000B0AF */  sw         $s0, 0x10($sp)
/* 22D0C 8003250C 290A010C */  jal        PrintText_800428a4
/* 22D10 80032510 1400A2AF */   sw        $v0, 0x14($sp)
/* 22D14 80032514 16002286 */  lh         $v0, 0x16($s1)
/* 22D18 80032518 00000000 */  nop
/* 22D1C 8003251C 13004014 */  bnez       $v0, .L8003256C
/* 22D20 80032520 21200000 */   addu      $a0, $zero, $zero
/* 22D24 80032524 02000424 */  addiu      $a0, $zero, 2
/* 22D28 80032528 34000524 */  addiu      $a1, $zero, 0x34
/* 22D2C 8003252C 42000624 */  addiu      $a2, $zero, 0x42
/* 22D30 80032530 00100724 */  addiu      $a3, $zero, 0x1000
/* 22D34 80032534 1000B0AF */  sw         $s0, 0x10($sp)
/* 22D38 80032538 290A010C */  jal        PrintText_800428a4
/* 22D3C 8003253C 1400B2AF */   sw        $s2, 0x14($sp)
/* 22D40 80032540 21200000 */  addu       $a0, $zero, $zero
/* 22D44 80032544 4C000524 */  addiu      $a1, $zero, 0x4c
/* 22D48 80032548 42000624 */  addiu      $a2, $zero, 0x42
/* 22D4C 8003254C 00100724 */  addiu      $a3, $zero, 0x1000
/* 22D50 80032550 0180023C */  lui        $v0, %hi(D_800116F8)
/* 22D54 80032554 F8164224 */  addiu      $v0, $v0, %lo(D_800116F8)
/* 22D58 80032558 1000B0AF */  sw         $s0, 0x10($sp)
/* 22D5C 8003255C 290A010C */  jal        PrintText_800428a4
/* 22D60 80032560 1400A2AF */   sw        $v0, 0x14($sp)
/* 22D64 80032564 6AC90008 */  j          .L800325A8
/* 22D68 80032568 00000000 */   nop
.L8003256C:
/* 22D6C 8003256C 34000524 */  addiu      $a1, $zero, 0x34
/* 22D70 80032570 42000624 */  addiu      $a2, $zero, 0x42
/* 22D74 80032574 00100724 */  addiu      $a3, $zero, 0x1000
/* 22D78 80032578 0180023C */  lui        $v0, %hi(D_800116FC)
/* 22D7C 8003257C FC164224 */  addiu      $v0, $v0, %lo(D_800116FC)
/* 22D80 80032580 1000B0AF */  sw         $s0, 0x10($sp)
/* 22D84 80032584 290A010C */  jal        PrintText_800428a4
/* 22D88 80032588 1400A2AF */   sw        $v0, 0x14($sp)
/* 22D8C 8003258C 02000424 */  addiu      $a0, $zero, 2
/* 22D90 80032590 54000524 */  addiu      $a1, $zero, 0x54
/* 22D94 80032594 42000624 */  addiu      $a2, $zero, 0x42
/* 22D98 80032598 00100724 */  addiu      $a3, $zero, 0x1000
/* 22D9C 8003259C 1000B0AF */  sw         $s0, 0x10($sp)
/* 22DA0 800325A0 290A010C */  jal        PrintText_800428a4
/* 22DA4 800325A4 1400B3AF */   sw        $s3, 0x14($sp)
.L800325A8:
/* 22DA8 800325A8 06002386 */  lh         $v1, 6($s1)
/* 22DAC 800325AC 02000224 */  addiu      $v0, $zero, 2
.L800325B0:
/* 22DB0 800325B0 19006214 */  bne        $v1, $v0, .L80032618
/* 22DB4 800325B4 00000000 */   nop
/* 22DB8 800325B8 16002286 */  lh         $v0, 0x16($s1)
/* 22DBC 800325BC 00000000 */  nop
/* 22DC0 800325C0 0C004014 */  bnez       $v0, .L800325F4
/* 22DC4 800325C4 02000424 */   addiu     $a0, $zero, 2
/* 22DC8 800325C8 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 22DCC 800325CC 3A000624 */  addiu      $a2, $zero, 0x3a
/* 22DD0 800325D0 00200724 */  addiu      $a3, $zero, 0x2000
/* 22DD4 800325D4 00200324 */  addiu      $v1, $zero, 0x2000
/* 22DD8 800325D8 0180023C */  lui        $v0, %hi(D_80011704)
/* 22DDC 800325DC 04174224 */  addiu      $v0, $v0, %lo(D_80011704)
/* 22DE0 800325E0 1000A3AF */  sw         $v1, 0x10($sp)
/* 22DE4 800325E4 290A010C */  jal        PrintText_800428a4
/* 22DE8 800325E8 1400A2AF */   sw        $v0, 0x14($sp)
/* 22DEC 800325EC 86C90008 */  j          .L80032618
/* 22DF0 800325F0 00000000 */   nop
.L800325F4:
/* 22DF4 800325F4 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 22DF8 800325F8 3A000624 */  addiu      $a2, $zero, 0x3a
/* 22DFC 800325FC 00200724 */  addiu      $a3, $zero, 0x2000
/* 22E00 80032600 00200324 */  addiu      $v1, $zero, 0x2000
/* 22E04 80032604 0180023C */  lui        $v0, %hi(D_80011718)
/* 22E08 80032608 18174224 */  addiu      $v0, $v0, %lo(D_80011718)
/* 22E0C 8003260C 1000A3AF */  sw         $v1, 0x10($sp)
/* 22E10 80032610 290A010C */  jal        PrintText_800428a4
/* 22E14 80032614 1400A2AF */   sw        $v0, 0x14($sp)
.L80032618:
/* 22E18 80032618 7CAA000C */  jal        vsync_8002a9f0
/* 22E1C 8003261C 00000000 */   nop
/* 22E20 80032620 3000BF8F */  lw         $ra, 0x30($sp)
/* 22E24 80032624 2C00B38F */  lw         $s3, 0x2c($sp)
/* 22E28 80032628 2800B28F */  lw         $s2, 0x28($sp)
/* 22E2C 8003262C 2400B18F */  lw         $s1, 0x24($sp)
/* 22E30 80032630 2000B08F */  lw         $s0, 0x20($sp)
/* 22E34 80032634 0800E003 */  jr         $ra
/* 22E38 80032638 3800BD27 */   addiu     $sp, $sp, 0x38
