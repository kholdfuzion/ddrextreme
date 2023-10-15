.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800acb60
/* 9D360 800ACB60 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 9D364 800ACB64 3000BFAF */  sw         $ra, 0x30($sp)
/* 9D368 800ACB68 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 9D36C 800ACB6C DEAE020C */  jal        FUN_800abb78
/* 9D370 800ACB70 2800B0AF */   sw        $s0, 0x28($sp)
/* 9D374 800ACB74 21204000 */  addu       $a0, $v0, $zero
/* 9D378 800ACB78 01008230 */  andi       $v0, $a0, 1
/* 9D37C 800ACB7C 06004010 */  beqz       $v0, .L800ACB98
/* 9D380 800ACB80 1C80113C */   lui       $s1, %hi(D_801C4658)
/* 9D384 800ACB84 58462326 */  addiu      $v1, $s1, %lo(D_801C4658)
/* 9D388 800ACB88 08006290 */  lbu        $v0, 8($v1)
/* 9D38C 800ACB8C 00000000 */  nop
/* 9D390 800ACB90 01004234 */  ori        $v0, $v0, 1
/* 9D394 800ACB94 080062A0 */  sb         $v0, 8($v1)
.L800ACB98:
/* 9D398 800ACB98 02008230 */  andi       $v0, $a0, 2
/* 9D39C 800ACB9C 05004010 */  beqz       $v0, .L800ACBB4
/* 9D3A0 800ACBA0 58462326 */   addiu     $v1, $s1, 0x4658
/* 9D3A4 800ACBA4 08006290 */  lbu        $v0, 8($v1)
/* 9D3A8 800ACBA8 00000000 */  nop
/* 9D3AC 800ACBAC 02004234 */  ori        $v0, $v0, 2
/* 9D3B0 800ACBB0 080062A0 */  sb         $v0, 8($v1)
.L800ACBB4:
/* 9D3B4 800ACBB4 58462226 */  addiu      $v0, $s1, 0x4658
/* 9D3B8 800ACBB8 08004390 */  lbu        $v1, 8($v0)
/* 9D3BC 800ACBBC 00000000 */  nop
/* 9D3C0 800ACBC0 03006014 */  bnez       $v1, .L800ACBD0
/* 9D3C4 800ACBC4 00000000 */   nop
/* 9D3C8 800ACBC8 58B30208 */  j          .L800ACD60
/* 9D3CC 800ACBCC 21100000 */   addu      $v0, $zero, $zero
.L800ACBD0:
/* 9D3D0 800ACBD0 08005090 */  lbu        $s0, 8($v0)
/* 9D3D4 800ACBD4 0180023C */  lui        $v0, %hi(D_80016DC8)
/* 9D3D8 800ACBD8 C86D4724 */  addiu      $a3, $v0, %lo(D_80016DC8)
/* 9D3DC 800ACBDC 0300E488 */  lwl        $a0, 3($a3)
/* 9D3E0 800ACBE0 0000E498 */  lwr        $a0, ($a3)
/* 9D3E4 800ACBE4 0700E588 */  lwl        $a1, 7($a3)
/* 9D3E8 800ACBE8 0400E598 */  lwr        $a1, 4($a3)
/* 9D3EC 800ACBEC 0B00E688 */  lwl        $a2, 0xb($a3)
/* 9D3F0 800ACBF0 0800E698 */  lwr        $a2, 8($a3)
/* 9D3F4 800ACBF4 1300A4AB */  swl        $a0, 0x13($sp)
/* 9D3F8 800ACBF8 1000A4BB */  swr        $a0, 0x10($sp)
/* 9D3FC 800ACBFC 1700A5AB */  swl        $a1, 0x17($sp)
/* 9D400 800ACC00 1400A5BB */  swr        $a1, 0x14($sp)
/* 9D404 800ACC04 1B00A6AB */  swl        $a2, 0x1b($sp)
/* 9D408 800ACC08 1800A6BB */  swr        $a2, 0x18($sp)
/* 9D40C 800ACC0C 0F00E488 */  lwl        $a0, 0xf($a3)
/* 9D410 800ACC10 0C00E498 */  lwr        $a0, 0xc($a3)
/* 9D414 800ACC14 1300E588 */  lwl        $a1, 0x13($a3)
/* 9D418 800ACC18 1000E598 */  lwr        $a1, 0x10($a3)
/* 9D41C 800ACC1C 1400E680 */  lb         $a2, 0x14($a3)
/* 9D420 800ACC20 1F00A4AB */  swl        $a0, 0x1f($sp)
/* 9D424 800ACC24 1C00A4BB */  swr        $a0, 0x1c($sp)
/* 9D428 800ACC28 2300A5AB */  swl        $a1, 0x23($sp)
/* 9D42C 800ACC2C 2000A5BB */  swr        $a1, 0x20($sp)
/* 9D430 800ACC30 2400A6A3 */  sb         $a2, 0x24($sp)
/* 9D434 800ACC34 1500E480 */  lb         $a0, 0x15($a3)
/* 9D438 800ACC38 1600E580 */  lb         $a1, 0x16($a3)
/* 9D43C 800ACC3C 2500A4A3 */  sb         $a0, 0x25($sp)
/* 9D440 800ACC40 2600A5A3 */  sb         $a1, 0x26($sp)
/* 9D444 800ACC44 01006230 */  andi       $v0, $v1, 1
/* 9D448 800ACC48 08004010 */  beqz       $v0, .L800ACC6C
/* 9D44C 800ACC4C 1000A427 */   addiu     $a0, $sp, 0x10
/* 9D450 800ACC50 7F10030C */  jal        FUN_800c41fc
/* 9D454 800ACC54 05000524 */   addiu     $a1, $zero, 5
/* 9D458 800ACC58 02004104 */  bgez       $v0, .L800ACC64
/* 9D45C 800ACC5C 00000000 */   nop
/* 9D460 800ACC60 0100103A */  xori       $s0, $s0, 1
.L800ACC64:
/* 9D464 800ACC64 6618030C */  jal        FUN_800c6198
/* 9D468 800ACC68 21204000 */   addu      $a0, $v0, $zero
.L800ACC6C:
/* 9D46C 800ACC6C 58462326 */  addiu      $v1, $s1, 0x4658
/* 9D470 800ACC70 08006290 */  lbu        $v0, 8($v1)
/* 9D474 800ACC74 00000000 */  nop
/* 9D478 800ACC78 02004230 */  andi       $v0, $v0, 2
/* 9D47C 800ACC7C 0A004010 */  beqz       $v0, .L800ACCA8
/* 9D480 800ACC80 32000224 */   addiu     $v0, $zero, 0x32
/* 9D484 800ACC84 1000A2A3 */  sb         $v0, 0x10($sp)
/* 9D488 800ACC88 1000A427 */  addiu      $a0, $sp, 0x10
/* 9D48C 800ACC8C 7F10030C */  jal        FUN_800c41fc
/* 9D490 800ACC90 05000524 */   addiu     $a1, $zero, 5
/* 9D494 800ACC94 02004104 */  bgez       $v0, .L800ACCA0
/* 9D498 800ACC98 00000000 */   nop
/* 9D49C 800ACC9C 0200103A */  xori       $s0, $s0, 2
.L800ACCA0:
/* 9D4A0 800ACCA0 6618030C */  jal        FUN_800c6198
/* 9D4A4 800ACCA4 21204000 */   addu      $a0, $v0, $zero
.L800ACCA8:
/* 9D4A8 800ACCA8 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 9D4AC 800ACCAC 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 9D4B0 800ACCB0 8A006490 */  lbu        $a0, 0x8a($v1)
/* 9D4B4 800ACCB4 02000524 */  addiu      $a1, $zero, 2
/* 9D4B8 800ACCB8 1A008510 */  beq        $a0, $a1, .L800ACD24
/* 9D4BC 800ACCBC 21304000 */   addu      $a2, $v0, $zero
/* 9D4C0 800ACCC0 0100023C */  lui        $v0, 1
/* 9D4C4 800ACCC4 21106200 */  addu       $v0, $v1, $v0
/* 9D4C8 800ACCC8 06434390 */  lbu        $v1, 0x4306($v0)
/* 9D4CC 800ACCCC 00000000 */  nop
/* 9D4D0 800ACCD0 14006510 */  beq        $v1, $a1, .L800ACD24
/* 9D4D4 800ACCD4 01000232 */   andi      $v0, $s0, 1
/* 9D4D8 800ACCD8 06004010 */  beqz       $v0, .L800ACCF4
/* 9D4DC 800ACCDC 07000224 */   addiu     $v0, $zero, 7
/* 9D4E0 800ACCE0 03008210 */  beq        $a0, $v0, .L800ACCF0
/* 9D4E4 800ACCE4 00000000 */   nop
/* 9D4E8 800ACCE8 03008014 */  bnez       $a0, .L800ACCF8
/* 9D4EC 800ACCEC 02000232 */   andi      $v0, $s0, 2
.L800ACCF0:
/* 9D4F0 800ACCF0 0100103A */  xori       $s0, $s0, 1
.L800ACCF4:
/* 9D4F4 800ACCF4 02000232 */  andi       $v0, $s0, 2
.L800ACCF8:
/* 9D4F8 800ACCF8 0A004010 */  beqz       $v0, .L800ACD24
/* 9D4FC 800ACCFC 2800C224 */   addiu     $v0, $a2, 0x28
/* 9D500 800ACD00 0100033C */  lui        $v1, 1
/* 9D504 800ACD04 21104300 */  addu       $v0, $v0, $v1
/* 9D508 800ACD08 06434290 */  lbu        $v0, 0x4306($v0)
/* 9D50C 800ACD0C 07000324 */  addiu      $v1, $zero, 7
/* 9D510 800ACD10 03004310 */  beq        $v0, $v1, .L800ACD20
/* 9D514 800ACD14 00000000 */   nop
/* 9D518 800ACD18 03004014 */  bnez       $v0, .L800ACD28
/* 9D51C 800ACD1C 01000232 */   andi      $v0, $s0, 1
.L800ACD20:
/* 9D520 800ACD20 0200103A */  xori       $s0, $s0, 2
.L800ACD24:
/* 9D524 800ACD24 01000232 */  andi       $v0, $s0, 1
.L800ACD28:
/* 9D528 800ACD28 05004010 */  beqz       $v0, .L800ACD40
/* 9D52C 800ACD2C 58462326 */   addiu     $v1, $s1, 0x4658
/* 9D530 800ACD30 0A006290 */  lbu        $v0, 0xa($v1)
/* 9D534 800ACD34 00000000 */  nop
/* 9D538 800ACD38 01004234 */  ori        $v0, $v0, 1
/* 9D53C 800ACD3C 0A0062A0 */  sb         $v0, 0xa($v1)
.L800ACD40:
/* 9D540 800ACD40 02000232 */  andi       $v0, $s0, 2
/* 9D544 800ACD44 05004010 */  beqz       $v0, .L800ACD5C
/* 9D548 800ACD48 58462326 */   addiu     $v1, $s1, 0x4658
/* 9D54C 800ACD4C 0A006290 */  lbu        $v0, 0xa($v1)
/* 9D550 800ACD50 00000000 */  nop
/* 9D554 800ACD54 04004234 */  ori        $v0, $v0, 4
/* 9D558 800ACD58 0A0062A0 */  sb         $v0, 0xa($v1)
.L800ACD5C:
/* 9D55C 800ACD5C 01000224 */  addiu      $v0, $zero, 1
.L800ACD60:
/* 9D560 800ACD60 3000BF8F */  lw         $ra, 0x30($sp)
/* 9D564 800ACD64 2C00B18F */  lw         $s1, 0x2c($sp)
/* 9D568 800ACD68 2800B08F */  lw         $s0, 0x28($sp)
/* 9D56C 800ACD6C 0800E003 */  jr         $ra
/* 9D570 800ACD70 3800BD27 */   addiu     $sp, $sp, 0x38
