.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80024bf0
/* 153F0 80024BF0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 153F4 80024BF4 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 153F8 80024BF8 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 153FC 80024BFC 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 15400 80024C00 05000224 */  addiu      $v0, $zero, 5
/* 15404 80024C04 28006424 */  addiu      $a0, $v1, %lo(D_800F0028)
/* 15408 80024C08 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 1540C 80024C0C 1800B2AF */  sw         $s2, 0x18($sp)
/* 15410 80024C10 1400B1AF */  sw         $s1, 0x14($sp)
/* 15414 80024C14 1000B0AF */  sw         $s0, 0x10($sp)
/* 15418 80024C18 280062A4 */  sh         $v0, 0x28($v1)
/* 1541C 80024C1C 0E008280 */  lb         $v0, 0xe($a0)
/* 15420 80024C20 00000000 */  nop
/* 15424 80024C24 07004014 */  bnez       $v0, .L80024C44
/* 15428 80024C28 21906000 */   addu      $s2, $v1, $zero
/* 1542C 80024C2C 20008280 */  lb         $v0, 0x20($a0)
/* 15430 80024C30 00000000 */  nop
/* 15434 80024C34 04004014 */  bnez       $v0, .L80024C48
/* 15438 80024C38 21300000 */   addu      $a2, $zero, $zero
/* 1543C 80024C3C 12CB020C */  jal        FUN_800b2c48
/* 15440 80024C40 04000424 */   addiu     $a0, $zero, 4
.L80024C44:
/* 15444 80024C44 21300000 */  addu       $a2, $zero, $zero
.L80024C48:
/* 15448 80024C48 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 1544C 80024C4C 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 15450 80024C50 21388000 */  addu       $a3, $a0, $zero
/* 15454 80024C54 0100053C */  lui        $a1, 1
/* 15458 80024C58 7C42A534 */  ori        $a1, $a1, 0x427c
.L80024C5C:
/* 1545C 80024C5C 8A008390 */  lbu        $v1, 0x8a($a0)
/* 15460 80024C60 07000224 */  addiu      $v0, $zero, 7
/* 15464 80024C64 14006210 */  beq        $v1, $v0, .L80024CB8
/* 15468 80024C68 00000000 */   nop
/* 1546C 80024C6C 12006010 */  beqz       $v1, .L80024CB8
/* 15470 80024C70 00000000 */   nop
/* 15474 80024C74 46008284 */  lh         $v0, 0x46($a0)
/* 15478 80024C78 00000000 */  nop
/* 1547C 80024C7C F4014228 */  slti       $v0, $v0, 0x1f4
/* 15480 80024C80 09004010 */  beqz       $v0, .L80024CA8
/* 15484 80024C84 00000000 */   nop
/* 15488 80024C88 2000E280 */  lb         $v0, 0x20($a3)
/* 1548C 80024C8C 00000000 */  nop
/* 15490 80024C90 09004010 */  beqz       $v0, .L80024CB8
/* 15494 80024C94 00000000 */   nop
/* 15498 80024C98 0E00E280 */  lb         $v0, 0xe($a3)
/* 1549C 80024C9C 00000000 */  nop
/* 154A0 80024CA0 06004014 */  bnez       $v0, .L80024CBC
/* 154A4 80024CA4 0100C624 */   addiu     $a2, $a2, 1
.L80024CA8:
/* 154A8 80024CA8 12CB020C */  jal        FUN_800b2c48
/* 154AC 80024CAC 03000424 */   addiu     $a0, $zero, 3
/* 154B0 80024CB0 33930008 */  j          .L80024CCC
/* 154B4 80024CB4 28005026 */   addiu     $s0, $s2, 0x28
.L80024CB8:
/* 154B8 80024CB8 0100C624 */  addiu      $a2, $a2, 1
.L80024CBC:
/* 154BC 80024CBC 0200C228 */  slti       $v0, $a2, 2
/* 154C0 80024CC0 E6FF4014 */  bnez       $v0, .L80024C5C
/* 154C4 80024CC4 21208500 */   addu      $a0, $a0, $a1
/* 154C8 80024CC8 28005026 */  addiu      $s0, $s2, 0x28
.L80024CCC:
/* 154CC 80024CCC 0C000292 */  lbu        $v0, 0xc($s0)
/* 154D0 80024CD0 00000000 */  nop
/* 154D4 80024CD4 01004224 */  addiu      $v0, $v0, 1
/* 154D8 80024CD8 DB8F000C */  jal        FUN_80023f6c
/* 154DC 80024CDC 0D0002A2 */   sb        $v0, 0xd($s0)
/* 154E0 80024CE0 21204000 */  addu       $a0, $v0, $zero
/* 154E4 80024CE4 08008010 */  beqz       $a0, .L80024D08
/* 154E8 80024CE8 00000000 */   nop
/* 154EC 80024CEC 09000292 */  lbu        $v0, 9($s0)
/* 154F0 80024CF0 17000392 */  lbu        $v1, 0x17($s0)
/* 154F4 80024CF4 21104400 */  addu       $v0, $v0, $a0
/* 154F8 80024CF8 01006324 */  addiu      $v1, $v1, 1
/* 154FC 80024CFC 090002A2 */  sb         $v0, 9($s0)
/* 15500 80024D00 43930008 */  j          .L80024D0C
/* 15504 80024D04 170003A2 */   sb        $v1, 0x17($s0)
.L80024D08:
/* 15508 80024D08 170000A2 */  sb         $zero, 0x17($s0)
.L80024D0C:
/* 1550C 80024D0C 28005126 */  addiu      $s1, $s2, 0x28
/* 15510 80024D10 20002282 */  lb         $v0, 0x20($s1)
/* 15514 80024D14 00000000 */  nop
/* 15518 80024D18 0E004010 */  beqz       $v0, .L80024D54
/* 1551C 80024D1C 00000000 */   nop
/* 15520 80024D20 0E002282 */  lb         $v0, 0xe($s1)
/* 15524 80024D24 00000000 */  nop
/* 15528 80024D28 08004014 */  bnez       $v0, .L80024D4C
/* 1552C 80024D2C FFFF0224 */   addiu     $v0, $zero, -1
/* 15530 80024D30 0C003082 */  lb         $s0, 0xc($s1)
/* 15534 80024D34 12002482 */  lb         $a0, 0x12($s1)
/* 15538 80024D38 F389020C */  jal        FUN_800a27cc
/* 1553C 80024D3C 01001026 */   addiu     $s0, $s0, 1
/* 15540 80024D40 2A800202 */  slt        $s0, $s0, $v0
/* 15544 80024D44 16000016 */  bnez       $s0, .L80024DA0
/* 15548 80024D48 FFFF0224 */   addiu     $v0, $zero, -1
.L80024D4C:
/* 1554C 80024D4C 68930008 */  j          .L80024DA0
/* 15550 80024D50 0D0022A2 */   sb        $v0, 0xd($s1)
.L80024D54:
/* 15554 80024D54 08002482 */  lb         $a0, 8($s1)
/* 15558 80024D58 09002382 */  lb         $v1, 9($s1)
/* 1555C 80024D5C 0A002282 */  lb         $v0, 0xa($s1)
/* 15560 80024D60 21288300 */  addu       $a1, $a0, $v1
/* 15564 80024D64 2310A200 */  subu       $v0, $a1, $v0
/* 15568 80024D68 0B002382 */  lb         $v1, 0xb($s1)
/* 1556C 80024D6C 0E002482 */  lb         $a0, 0xe($s1)
/* 15570 80024D70 00000000 */  nop
/* 15574 80024D74 06008010 */  beqz       $a0, .L80024D90
/* 15578 80024D78 23104300 */   subu      $v0, $v0, $v1
/* 1557C 80024D7C 2A10A200 */  slt        $v0, $a1, $v0
/* 15580 80024D80 05004010 */  beqz       $v0, .L80024D98
/* 15584 80024D84 28004326 */   addiu     $v1, $s2, 0x28
/* 15588 80024D88 68930008 */  j          .L80024DA0
/* 1558C 80024D8C 00000000 */   nop
.L80024D90:
/* 15590 80024D90 0300401C */  bgtz       $v0, .L80024DA0
/* 15594 80024D94 28004326 */   addiu     $v1, $s2, 0x28
.L80024D98:
/* 15598 80024D98 FFFF0224 */  addiu      $v0, $zero, -1
/* 1559C 80024D9C 0D0062A0 */  sb         $v0, 0xd($v1)
.L80024DA0:
/* 155A0 80024DA0 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 155A4 80024DA4 1800B28F */  lw         $s2, 0x18($sp)
/* 155A8 80024DA8 1400B18F */  lw         $s1, 0x14($sp)
/* 155AC 80024DAC 1000B08F */  lw         $s0, 0x10($sp)
/* 155B0 80024DB0 0800E003 */  jr         $ra
/* 155B4 80024DB4 2000BD27 */   addiu     $sp, $sp, 0x20
