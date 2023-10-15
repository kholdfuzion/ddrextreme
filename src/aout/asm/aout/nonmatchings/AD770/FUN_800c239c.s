.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c239c
/* B2B9C 800C239C C8FEBD27 */  addiu      $sp, $sp, -0x138
/* B2BA0 800C23A0 3001BFAF */  sw         $ra, 0x130($sp)
/* B2BA4 800C23A4 2C01B7AF */  sw         $s7, 0x12c($sp)
/* B2BA8 800C23A8 2801B6AF */  sw         $s6, 0x128($sp)
/* B2BAC 800C23AC 2401B5AF */  sw         $s5, 0x124($sp)
/* B2BB0 800C23B0 2001B4AF */  sw         $s4, 0x120($sp)
/* B2BB4 800C23B4 1C01B3AF */  sw         $s3, 0x11c($sp)
/* B2BB8 800C23B8 1801B2AF */  sw         $s2, 0x118($sp)
/* B2BBC 800C23BC 1401B1AF */  sw         $s1, 0x114($sp)
/* B2BC0 800C23C0 6F0A030C */  jal        FUN_800c29bc
/* B2BC4 800C23C4 1001B0AF */   sw        $s0, 0x110($sp)
/* B2BC8 800C23C8 21804000 */  addu       $s0, $v0, $zero
/* B2BCC 800C23CC 1F80113C */  lui        $s1, %hi(D_801F71C0)
/* B2BD0 800C23D0 56000016 */  bnez       $s0, .L800C252C
/* B2BD4 800C23D4 C0713626 */   addiu     $s6, $s1, %lo(D_801F71C0)
/* B2BD8 800C23D8 EC0A030C */  jal        FUN_800c2bb0
/* B2BDC 800C23DC E8030424 */   addiu     $a0, $zero, 0x3e8
/* B2BE0 800C23E0 B206030C */  jal        FUN_800c1ac8
/* B2BE4 800C23E4 00000000 */   nop
/* B2BE8 800C23E8 50004010 */  beqz       $v0, .L800C252C
/* B2BEC 800C23EC FDFF0224 */   addiu     $v0, $zero, -3
/* B2BF0 800C23F0 9C0A030C */  jal        FUN_800c2a70
/* B2BF4 800C23F4 00000000 */   nop
/* B2BF8 800C23F8 21804000 */  addu       $s0, $v0, $zero
/* B2BFC 800C23FC 4B000006 */  bltz       $s0, .L800C252C
/* B2C00 800C2400 00000000 */   nop
/* B2C04 800C2404 0C01C392 */  lbu        $v1, 0x10c($s6)
/* B2C08 800C2408 FF000232 */  andi       $v0, $s0, 0xff
/* B2C0C 800C240C 2B106200 */  sltu       $v0, $v1, $v0
/* B2C10 800C2410 02004010 */  beqz       $v0, .L800C241C
/* B2C14 800C2414 0D01D0A2 */   sb        $s0, 0x10d($s6)
/* B2C18 800C2418 0D01C3A2 */  sb         $v1, 0x10d($s6)
.L800C241C:
/* B2C1C 800C241C 0D01C292 */  lbu        $v0, 0x10d($s6)
/* B2C20 800C2420 C071358E */  lw         $s5, 0x71c0($s1)
/* B2C24 800C2424 40004010 */  beqz       $v0, .L800C2528
/* B2C28 800C2428 01001424 */   addiu     $s4, $zero, 1
/* B2C2C 800C242C 21B88002 */  addu       $s7, $s4, $zero
/* B2C30 800C2430 7A00B126 */  addiu      $s1, $s5, 0x7a
.L800C2434:
/* B2C34 800C2434 1000B326 */  addiu      $s3, $s5, 0x10
/* B2C38 800C2438 21206002 */  addu       $a0, $s3, $zero
/* B2C3C 800C243C 21280000 */  addu       $a1, $zero, $zero
/* B2C40 800C2440 F6A2000C */  jal        memset
/* B2C44 800C2444 66000624 */   addiu     $a2, $zero, 0x66
/* B2C48 800C2448 21208002 */  addu       $a0, $s4, $zero
/* B2C4C 800C244C 0F80053C */  lui        $a1, %hi(D_800EE564)
/* B2C50 800C2450 64E5A524 */  addiu      $a1, $a1, %lo(D_800EE564)
/* B2C54 800C2454 01000624 */  addiu      $a2, $zero, 1
/* B2C58 800C2458 1000A727 */  addiu      $a3, $sp, 0x10
/* B2C5C 800C245C FDFF20A2 */  sb         $zero, -3($s1)
/* B2C60 800C2460 FEFF20A2 */  sb         $zero, -2($s1)
/* B2C64 800C2464 BF0A030C */  jal        FUN_800c2afc
/* B2C68 800C2468 000020A2 */   sb        $zero, ($s1)
/* B2C6C 800C246C 21804000 */  addu       $s0, $v0, $zero
/* B2C70 800C2470 2D000006 */  bltz       $s0, .L800C2528
/* B2C74 800C2474 21208002 */   addu      $a0, $s4, $zero
/* B2C78 800C2478 1200B293 */  lbu        $s2, 0x12($sp)
/* B2C7C 800C247C 0F80053C */  lui        $a1, %hi(D_800EE55C)
/* B2C80 800C2480 5CE5A524 */  addiu      $a1, $a1, %lo(D_800EE55C)
/* B2C84 800C2484 01000624 */  addiu      $a2, $zero, 1
/* B2C88 800C2488 BF0A030C */  jal        FUN_800c2afc
/* B2C8C 800C248C 1000A727 */   addiu     $a3, $sp, 0x10
/* B2C90 800C2490 21804000 */  addu       $s0, $v0, $zero
/* B2C94 800C2494 24000006 */  bltz       $s0, .L800C2528
/* B2C98 800C2498 21206002 */   addu      $a0, $s3, $zero
/* B2C9C 800C249C 1200A527 */  addiu      $a1, $sp, 0x12
/* B2CA0 800C24A0 55BB000C */  jal        strncpy
/* B2CA4 800C24A4 66000624 */   addiu     $a2, $zero, 0x66
/* B2CA8 800C24A8 FBFF20A2 */  sb         $zero, -5($s1)
/* B2CAC 800C24AC 21206002 */  addu       $a0, $s3, $zero
/* B2CB0 800C24B0 0F80053C */  lui        $a1, %hi(D_800EE59C)
/* B2CB4 800C24B4 DD5F000C */  jal        strcmp
/* B2CB8 800C24B8 9CE5A524 */   addiu     $a1, $a1, %lo(D_800EE59C)
/* B2CBC 800C24BC 0E004014 */  bnez       $v0, .L800C24F8
/* B2CC0 800C24C0 21208002 */   addu      $a0, $s4, $zero
/* B2CC4 800C24C4 0F80053C */  lui        $a1, %hi(D_800EE570)
/* B2CC8 800C24C8 70E5A524 */  addiu      $a1, $a1, %lo(D_800EE570)
/* B2CCC 800C24CC 04000624 */  addiu      $a2, $zero, 4
/* B2CD0 800C24D0 BF0A030C */  jal        FUN_800c2afc
/* B2CD4 800C24D4 1000A727 */   addiu     $a3, $sp, 0x10
/* B2CD8 800C24D8 21804000 */  addu       $s0, $v0, $zero
/* B2CDC 800C24DC 13000006 */  bltz       $s0, .L800C252C
/* B2CE0 800C24E0 21100002 */   addu      $v0, $s0, $zero
/* B2CE4 800C24E4 1100A293 */  lbu        $v0, 0x11($sp)
/* B2CE8 800C24E8 00000000 */  nop
/* B2CEC 800C24EC 02005714 */  bne        $v0, $s7, .L800C24F8
/* B2CF0 800C24F0 20001224 */   addiu     $s2, $zero, 0x20
/* B2CF4 800C24F4 10001224 */  addiu      $s2, $zero, 0x10
.L800C24F8:
/* B2CF8 800C24F8 01009426 */  addiu      $s4, $s4, 1
/* B2CFC 800C24FC 1000423A */  xori       $v0, $s2, 0x10
/* B2D00 800C2500 2B100200 */  sltu       $v0, $zero, $v0
/* B2D04 800C2504 FDFF32A2 */  sb         $s2, -3($s1)
/* B2D08 800C2508 FEFF22A2 */  sb         $v0, -2($s1)
/* B2D0C 800C250C 000037A2 */  sb         $s7, ($s1)
/* B2D10 800C2510 B4003126 */  addiu      $s1, $s1, 0xb4
/* B2D14 800C2514 0D01C292 */  lbu        $v0, 0x10d($s6)
/* B2D18 800C2518 00000000 */  nop
/* B2D1C 800C251C 2A105400 */  slt        $v0, $v0, $s4
/* B2D20 800C2520 C4FF4010 */  beqz       $v0, .L800C2434
/* B2D24 800C2524 B400B526 */   addiu     $s5, $s5, 0xb4
.L800C2528:
/* B2D28 800C2528 21100002 */  addu       $v0, $s0, $zero
.L800C252C:
/* B2D2C 800C252C 3001BF8F */  lw         $ra, 0x130($sp)
/* B2D30 800C2530 2C01B78F */  lw         $s7, 0x12c($sp)
/* B2D34 800C2534 2801B68F */  lw         $s6, 0x128($sp)
/* B2D38 800C2538 2401B58F */  lw         $s5, 0x124($sp)
/* B2D3C 800C253C 2001B48F */  lw         $s4, 0x120($sp)
/* B2D40 800C2540 1C01B38F */  lw         $s3, 0x11c($sp)
/* B2D44 800C2544 1801B28F */  lw         $s2, 0x118($sp)
/* B2D48 800C2548 1401B18F */  lw         $s1, 0x114($sp)
/* B2D4C 800C254C 1001B08F */  lw         $s0, 0x110($sp)
/* B2D50 800C2550 0800E003 */  jr         $ra
/* B2D54 800C2554 3801BD27 */   addiu     $sp, $sp, 0x138
