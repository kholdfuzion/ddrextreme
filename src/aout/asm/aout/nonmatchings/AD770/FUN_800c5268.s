.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c5268
/* B5A68 800C5268 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* B5A6C 800C526C 4800B4AF */  sw         $s4, 0x48($sp)
/* B5A70 800C5270 21A08000 */  addu       $s4, $a0, $zero
/* B5A74 800C5274 1000A427 */  addiu      $a0, $sp, 0x10
/* B5A78 800C5278 21280000 */  addu       $a1, $zero, $zero
/* B5A7C 800C527C 0F000624 */  addiu      $a2, $zero, 0xf
/* B5A80 800C5280 4000B2AF */  sw         $s2, 0x40($sp)
/* B5A84 800C5284 21908002 */  addu       $s2, $s4, $zero
/* B5A88 800C5288 3800B0AF */  sw         $s0, 0x38($sp)
/* B5A8C 800C528C 80009026 */  addiu      $s0, $s4, 0x80
/* B5A90 800C5290 5000BFAF */  sw         $ra, 0x50($sp)
/* B5A94 800C5294 4C00B5AF */  sw         $s5, 0x4c($sp)
/* B5A98 800C5298 4400B3AF */  sw         $s3, 0x44($sp)
/* B5A9C 800C529C F6A2000C */  jal        memset
/* B5AA0 800C52A0 3C00B1AF */   sw        $s1, 0x3c($sp)
/* B5AA4 800C52A4 2000A427 */  addiu      $a0, $sp, 0x20
/* B5AA8 800C52A8 21280000 */  addu       $a1, $zero, $zero
/* B5AAC 800C52AC F6A2000C */  jal        memset
/* B5AB0 800C52B0 0F000624 */   addiu     $a2, $zero, 0xf
/* B5AB4 800C52B4 00208426 */  addiu      $a0, $s4, 0x2000
/* B5AB8 800C52B8 21280000 */  addu       $a1, $zero, $zero
/* B5ABC 800C52BC F6A2000C */  jal        memset
/* B5AC0 800C52C0 40000624 */   addiu     $a2, $zero, 0x40
/* B5AC4 800C52C4 21880000 */  addu       $s1, $zero, $zero
/* B5AC8 800C52C8 21302002 */  addu       $a2, $s1, $zero
.L800C52CC:
/* B5ACC 800C52CC C0111100 */  sll        $v0, $s1, 7
/* B5AD0 800C52D0 21285400 */  addu       $a1, $v0, $s4
/* B5AD4 800C52D4 3000A6AF */  sw         $a2, 0x30($sp)
/* B5AD8 800C52D8 21200000 */  addu       $a0, $zero, $zero
.L800C52DC:
/* B5ADC 800C52DC 0000A28C */  lw         $v0, ($a1)
/* B5AE0 800C52E0 0400A524 */  addiu      $a1, $a1, 4
/* B5AE4 800C52E4 3000A38F */  lw         $v1, 0x30($sp)
/* B5AE8 800C52E8 01008424 */  addiu      $a0, $a0, 1
/* B5AEC 800C52EC 26186200 */  xor        $v1, $v1, $v0
/* B5AF0 800C52F0 2000822C */  sltiu      $v0, $a0, 0x20
/* B5AF4 800C52F4 F9FF4014 */  bnez       $v0, .L800C52DC
/* B5AF8 800C52F8 3000A3AF */   sw        $v1, 0x30($sp)
/* B5AFC 800C52FC 3000A327 */  addiu      $v1, $sp, 0x30
/* B5B00 800C5300 21289102 */  addu       $a1, $s4, $s1
/* B5B04 800C5304 3000A493 */  lbu        $a0, 0x30($sp)
/* B5B08 800C5308 01006290 */  lbu        $v0, 1($v1)
/* B5B0C 800C530C 01003126 */  addiu      $s1, $s1, 1
/* B5B10 800C5310 26208200 */  xor        $a0, $a0, $v0
/* B5B14 800C5314 02006290 */  lbu        $v0, 2($v1)
/* B5B18 800C5318 03006390 */  lbu        $v1, 3($v1)
/* B5B1C 800C531C 26104400 */  xor        $v0, $v0, $a0
/* B5B20 800C5320 26186200 */  xor        $v1, $v1, $v0
/* B5B24 800C5324 1000222A */  slti       $v0, $s1, 0x10
/* B5B28 800C5328 E8FF4014 */  bnez       $v0, .L800C52CC
/* B5B2C 800C532C 0020A3A0 */   sb        $v1, 0x2000($a1)
/* B5B30 800C5330 00004392 */  lbu        $v1, ($s2)
/* B5B34 800C5334 4D000224 */  addiu      $v0, $zero, 0x4d
/* B5B38 800C5338 A7006214 */  bne        $v1, $v0, .L800C55D8
/* B5B3C 800C533C FFFF0224 */   addiu     $v0, $zero, -1
/* B5B40 800C5340 01004392 */  lbu        $v1, 1($s2)
/* B5B44 800C5344 43000224 */  addiu      $v0, $zero, 0x43
/* B5B48 800C5348 A3006214 */  bne        $v1, $v0, .L800C55D8
/* B5B4C 800C534C FFFF0224 */   addiu     $v0, $zero, -1
/* B5B50 800C5350 00208292 */  lbu        $v0, 0x2000($s4)
/* B5B54 800C5354 00000000 */  nop
/* B5B58 800C5358 9F004014 */  bnez       $v0, .L800C55D8
/* B5B5C 800C535C FFFF0224 */   addiu     $v0, $zero, -1
/* B5B60 800C5360 21880000 */  addu       $s1, $zero, $zero
/* B5B64 800C5364 21280002 */  addu       $a1, $s0, $zero
/* B5B68 800C5368 51000824 */  addiu      $t0, $zero, 0x51
/* B5B6C 800C536C FFFF0734 */  ori        $a3, $zero, 0xffff
/* B5B70 800C5370 0800A424 */  addiu      $a0, $a1, 8
.L800C5374:
/* B5B74 800C5374 21103402 */  addu       $v0, $s1, $s4
/* B5B78 800C5378 01204290 */  lbu        $v0, 0x2001($v0)
/* B5B7C 800C537C 00000000 */  nop
/* B5B80 800C5380 3A004014 */  bnez       $v0, .L800C546C
/* B5B84 800C5384 01000624 */   addiu     $a2, $zero, 1
/* B5B88 800C5388 0000A38C */  lw         $v1, ($a1)
/* B5B8C 800C538C 00000000 */  nop
/* B5B90 800C5390 AFFF6224 */  addiu      $v0, $v1, -0x51
/* B5B94 800C5394 0300422C */  sltiu      $v0, $v0, 3
/* B5B98 800C5398 09004014 */  bnez       $v0, .L800C53C0
/* B5B9C 800C539C A0000224 */   addiu     $v0, $zero, 0xa0
/* B5BA0 800C53A0 07006210 */  beq        $v1, $v0, .L800C53C0
/* B5BA4 800C53A4 A1000224 */   addiu     $v0, $zero, 0xa1
/* B5BA8 800C53A8 05006210 */  beq        $v1, $v0, .L800C53C0
/* B5BAC 800C53AC A2000224 */   addiu     $v0, $zero, 0xa2
/* B5BB0 800C53B0 03006210 */  beq        $v1, $v0, .L800C53C0
/* B5BB4 800C53B4 A3000224 */   addiu     $v0, $zero, 0xa3
/* B5BB8 800C53B8 2D006214 */  bne        $v1, $v0, .L800C5470
/* B5BBC 800C53BC 2000A327 */   addiu     $v1, $sp, 0x20
.L800C53C0:
/* B5BC0 800C53C0 0000A28C */  lw         $v0, ($a1)
/* B5BC4 800C53C4 00000000 */  nop
/* B5BC8 800C53C8 18004814 */  bne        $v0, $t0, .L800C542C
/* B5BCC 800C53CC 21180000 */   addu      $v1, $zero, $zero
/* B5BD0 800C53D0 2110A300 */  addu       $v0, $a1, $v1
.L800C53D4:
/* B5BD4 800C53D4 0A004290 */  lbu        $v0, 0xa($v0)
/* B5BD8 800C53D8 00000000 */  nop
/* B5BDC 800C53DC 06004010 */  beqz       $v0, .L800C53F8
/* B5BE0 800C53E0 15006228 */   slti      $v0, $v1, 0x15
/* B5BE4 800C53E4 01006324 */  addiu      $v1, $v1, 1
/* B5BE8 800C53E8 15006228 */  slti       $v0, $v1, 0x15
/* B5BEC 800C53EC F9FF4014 */  bnez       $v0, .L800C53D4
/* B5BF0 800C53F0 2110A300 */   addu      $v0, $a1, $v1
/* B5BF4 800C53F4 15006228 */  slti       $v0, $v1, 0x15
.L800C53F8:
/* B5BF8 800C53F8 1D004010 */  beqz       $v0, .L800C5470
/* B5BFC 800C53FC 2000A327 */   addiu     $v1, $sp, 0x20
/* B5C00 800C5400 0000A28C */  lw         $v0, ($a1)
/* B5C04 800C5404 00000000 */  nop
/* B5C08 800C5408 08004814 */  bne        $v0, $t0, .L800C542C
/* B5C0C 800C540C 00000000 */   nop
/* B5C10 800C5410 00008394 */  lhu        $v1, ($a0)
/* B5C14 800C5414 00000000 */  nop
/* B5C18 800C5418 0F00622C */  sltiu      $v0, $v1, 0xf
/* B5C1C 800C541C 03004014 */  bnez       $v0, .L800C542C
/* B5C20 800C5420 00000000 */   nop
/* B5C24 800C5424 12006714 */  bne        $v1, $a3, .L800C5470
/* B5C28 800C5428 2000A327 */   addiu     $v1, $sp, 0x20
.L800C542C:
/* B5C2C 800C542C 0000A38C */  lw         $v1, ($a1)
/* B5C30 800C5430 52000224 */  addiu      $v0, $zero, 0x52
/* B5C34 800C5434 06006214 */  bne        $v1, $v0, .L800C5450
/* B5C38 800C5438 53000224 */   addiu     $v0, $zero, 0x53
/* B5C3C 800C543C 00008294 */  lhu        $v0, ($a0)
/* B5C40 800C5440 00000000 */  nop
/* B5C44 800C5444 0F00422C */  sltiu      $v0, $v0, 0xf
/* B5C48 800C5448 08004010 */  beqz       $v0, .L800C546C
/* B5C4C 800C544C 53000224 */   addiu     $v0, $zero, 0x53
.L800C5450:
/* B5C50 800C5450 05006214 */  bne        $v1, $v0, .L800C5468
/* B5C54 800C5454 00000000 */   nop
/* B5C58 800C5458 00008294 */  lhu        $v0, ($a0)
/* B5C5C 800C545C 00000000 */  nop
/* B5C60 800C5460 03004714 */  bne        $v0, $a3, .L800C5470
/* B5C64 800C5464 2000A327 */   addiu     $v1, $sp, 0x20
.L800C5468:
/* B5C68 800C5468 21300000 */  addu       $a2, $zero, $zero
.L800C546C:
/* B5C6C 800C546C 2000A327 */  addiu      $v1, $sp, 0x20
.L800C5470:
/* B5C70 800C5470 21107100 */  addu       $v0, $v1, $s1
/* B5C74 800C5474 000046A0 */  sb         $a2, ($v0)
/* B5C78 800C5478 01003126 */  addiu      $s1, $s1, 1
/* B5C7C 800C547C 80008424 */  addiu      $a0, $a0, 0x80
/* B5C80 800C5480 0F00222A */  slti       $v0, $s1, 0xf
/* B5C84 800C5484 BBFF4014 */  bnez       $v0, .L800C5374
/* B5C88 800C5488 8000A524 */   addiu     $a1, $a1, 0x80
/* B5C8C 800C548C 21880000 */  addu       $s1, $zero, $zero
/* B5C90 800C5490 21386000 */  addu       $a3, $v1, $zero
/* B5C94 800C5494 51000A24 */  addiu      $t2, $zero, 0x51
/* B5C98 800C5498 1000A827 */  addiu      $t0, $sp, 0x10
/* B5C9C 800C549C 01000624 */  addiu      $a2, $zero, 1
/* B5CA0 800C54A0 FFFF0934 */  ori        $t1, $zero, 0xffff
/* B5CA4 800C54A4 C0111100 */  sll        $v0, $s1, 7
.L800C54A8:
/* B5CA8 800C54A8 2118F100 */  addu       $v1, $a3, $s1
/* B5CAC 800C54AC 00006390 */  lbu        $v1, ($v1)
/* B5CB0 800C54B0 00000000 */  nop
/* B5CB4 800C54B4 1F006014 */  bnez       $v1, .L800C5534
/* B5CB8 800C54B8 21280202 */   addu      $a1, $s0, $v0
/* B5CBC 800C54BC 0000A28C */  lw         $v0, ($a1)
/* B5CC0 800C54C0 00000000 */  nop
/* B5CC4 800C54C4 1B004A14 */  bne        $v0, $t2, .L800C5534
/* B5CC8 800C54C8 21101101 */   addu      $v0, $t0, $s1
/* B5CCC 800C54CC 49150308 */  j          .L800C5524
/* B5CD0 800C54D0 000046A0 */   sb        $a2, ($v0)
.L800C54D4:
/* B5CD4 800C54D4 21280202 */  addu       $a1, $s0, $v0
/* B5CD8 800C54D8 0000A28C */  lw         $v0, ($a1)
/* B5CDC 800C54DC 00000000 */  nop
/* B5CE0 800C54E0 AEFF4224 */  addiu      $v0, $v0, -0x52
/* B5CE4 800C54E4 0200422C */  sltiu      $v0, $v0, 2
/* B5CE8 800C54E8 0D004014 */  bnez       $v0, .L800C5520
/* B5CEC 800C54EC 21100401 */   addu      $v0, $t0, $a0
/* B5CF0 800C54F0 10002412 */  beq        $s1, $a0, .L800C5534
/* B5CF4 800C54F4 21182002 */   addu      $v1, $s1, $zero
/* B5CF8 800C54F8 C0110300 */  sll        $v0, $v1, 7
.L800C54FC:
/* B5CFC 800C54FC 21280202 */  addu       $a1, $s0, $v0
/* B5D00 800C5500 2110E300 */  addu       $v0, $a3, $v1
/* B5D04 800C5504 000046A0 */  sb         $a2, ($v0)
/* B5D08 800C5508 0800A394 */  lhu        $v1, 8($a1)
/* B5D0C 800C550C 00000000 */  nop
/* B5D10 800C5510 FAFF6414 */  bne        $v1, $a0, .L800C54FC
/* B5D14 800C5514 C0110300 */   sll       $v0, $v1, 7
/* B5D18 800C5518 4E150308 */  j          .L800C5538
/* B5D1C 800C551C 01003126 */   addiu     $s1, $s1, 1
.L800C5520:
/* B5D20 800C5520 000046A0 */  sb         $a2, ($v0)
.L800C5524:
/* B5D24 800C5524 0800A494 */  lhu        $a0, 8($a1)
/* B5D28 800C5528 00000000 */  nop
/* B5D2C 800C552C E9FF8914 */  bne        $a0, $t1, .L800C54D4
/* B5D30 800C5530 C0110400 */   sll       $v0, $a0, 7
.L800C5534:
/* B5D34 800C5534 01003126 */  addiu      $s1, $s1, 1
.L800C5538:
/* B5D38 800C5538 0F00222A */  slti       $v0, $s1, 0xf
/* B5D3C 800C553C DAFF4014 */  bnez       $v0, .L800C54A8
/* B5D40 800C5540 C0111100 */   sll       $v0, $s1, 7
/* B5D44 800C5544 21880000 */  addu       $s1, $zero, $zero
/* B5D48 800C5548 1000B327 */  addiu      $s3, $sp, 0x10
/* B5D4C 800C554C A0001224 */  addiu      $s2, $zero, 0xa0
/* B5D50 800C5550 FFFF1534 */  ori        $s5, $zero, 0xffff
.L800C5554:
/* B5D54 800C5554 21107102 */  addu       $v0, $s3, $s1
/* B5D58 800C5558 00004290 */  lbu        $v0, ($v0)
/* B5D5C 800C555C 00000000 */  nop
/* B5D60 800C5560 0D004014 */  bnez       $v0, .L800C5598
/* B5D64 800C5564 00000000 */   nop
/* B5D68 800C5568 0000028E */  lw         $v0, ($s0)
/* B5D6C 800C556C 00000000 */  nop
/* B5D70 800C5570 AFFF4224 */  addiu      $v0, $v0, -0x51
/* B5D74 800C5574 0300422C */  sltiu      $v0, $v0, 3
/* B5D78 800C5578 07004010 */  beqz       $v0, .L800C5598
/* B5D7C 800C557C 21200002 */   addu      $a0, $s0, $zero
/* B5D80 800C5580 21280000 */  addu       $a1, $zero, $zero
/* B5D84 800C5584 F6A2000C */  jal        memset
/* B5D88 800C5588 80000624 */   addiu     $a2, $zero, 0x80
/* B5D8C 800C558C 000012AE */  sw         $s2, ($s0)
/* B5D90 800C5590 080015A6 */  sh         $s5, 8($s0)
/* B5D94 800C5594 7F0012A2 */  sb         $s2, 0x7f($s0)
.L800C5598:
/* B5D98 800C5598 01003126 */  addiu      $s1, $s1, 1
/* B5D9C 800C559C 0F00222A */  slti       $v0, $s1, 0xf
/* B5DA0 800C55A0 ECFF4014 */  bnez       $v0, .L800C5554
/* B5DA4 800C55A4 80001026 */   addiu     $s0, $s0, 0x80
/* B5DA8 800C55A8 21880000 */  addu       $s1, $zero, $zero
/* B5DAC 800C55AC 2000A427 */  addiu      $a0, $sp, 0x20
/* B5DB0 800C55B0 01002226 */  addiu      $v0, $s1, 1
.L800C55B4:
/* B5DB4 800C55B4 21189100 */  addu       $v1, $a0, $s1
/* B5DB8 800C55B8 21884000 */  addu       $s1, $v0, $zero
/* B5DBC 800C55BC 00006390 */  lbu        $v1, ($v1)
/* B5DC0 800C55C0 21109102 */  addu       $v0, $s4, $s1
/* B5DC4 800C55C4 002043A0 */  sb         $v1, 0x2000($v0)
/* B5DC8 800C55C8 0F00222A */  slti       $v0, $s1, 0xf
/* B5DCC 800C55CC F9FF4014 */  bnez       $v0, .L800C55B4
/* B5DD0 800C55D0 01002226 */   addiu     $v0, $s1, 1
/* B5DD4 800C55D4 21100000 */  addu       $v0, $zero, $zero
.L800C55D8:
/* B5DD8 800C55D8 5000BF8F */  lw         $ra, 0x50($sp)
/* B5DDC 800C55DC 4C00B58F */  lw         $s5, 0x4c($sp)
/* B5DE0 800C55E0 4800B48F */  lw         $s4, 0x48($sp)
/* B5DE4 800C55E4 4400B38F */  lw         $s3, 0x44($sp)
/* B5DE8 800C55E8 4000B28F */  lw         $s2, 0x40($sp)
/* B5DEC 800C55EC 3C00B18F */  lw         $s1, 0x3c($sp)
/* B5DF0 800C55F0 3800B08F */  lw         $s0, 0x38($sp)
/* B5DF4 800C55F4 0800E003 */  jr         $ra
/* B5DF8 800C55F8 5800BD27 */   addiu     $sp, $sp, 0x58
