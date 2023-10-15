.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SHOW_DIAG_DIPSW_8003b268
/* 2BA68 8003B268 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2BA6C 8003B26C 3400B5AF */  sw         $s5, 0x34($sp)
/* 2BA70 8003B270 21A88000 */  addu       $s5, $a0, $zero
/* 2BA74 8003B274 21200000 */  addu       $a0, $zero, $zero
/* 2BA78 8003B278 A8FF0524 */  addiu      $a1, $zero, -0x58
/* 2BA7C 8003B27C B0FF0624 */  addiu      $a2, $zero, -0x50
/* 2BA80 8003B280 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BA84 8003B284 2400B1AF */  sw         $s1, 0x24($sp)
/* 2BA88 8003B288 00101124 */  addiu      $s1, $zero, 0x1000
/* 2BA8C 8003B28C 0180023C */  lui        $v0, %hi(D_800129B8)
/* 2BA90 8003B290 B8294224 */  addiu      $v0, $v0, %lo(D_800129B8)
/* 2BA94 8003B294 3800BFAF */  sw         $ra, 0x38($sp)
/* 2BA98 8003B298 3000B4AF */  sw         $s4, 0x30($sp)
/* 2BA9C 8003B29C 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 2BAA0 8003B2A0 2800B2AF */  sw         $s2, 0x28($sp)
/* 2BAA4 8003B2A4 2000B0AF */  sw         $s0, 0x20($sp)
/* 2BAA8 8003B2A8 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BAAC 8003B2AC 290A010C */  jal        PrintText_800428a4
/* 2BAB0 8003B2B0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BAB4 8003B2B4 21200000 */  addu       $a0, $zero, $zero
/* 2BAB8 8003B2B8 A8FF0524 */  addiu      $a1, $zero, -0x58
/* 2BABC 8003B2BC BAFF0624 */  addiu      $a2, $zero, -0x46
/* 2BAC0 8003B2C0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BAC4 8003B2C4 0180023C */  lui        $v0, %hi(D_800129D0)
/* 2BAC8 8003B2C8 D0294224 */  addiu      $v0, $v0, %lo(D_800129D0)
/* 2BACC 8003B2CC 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BAD0 8003B2D0 290A010C */  jal        PrintText_800428a4
/* 2BAD4 8003B2D4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BAD8 8003B2D8 21200000 */  addu       $a0, $zero, $zero
/* 2BADC 8003B2DC A8FF0524 */  addiu      $a1, $zero, -0x58
/* 2BAE0 8003B2E0 C4FF0624 */  addiu      $a2, $zero, -0x3c
/* 2BAE4 8003B2E4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BAE8 8003B2E8 0180023C */  lui        $v0, %hi(D_800129E8)
/* 2BAEC 8003B2EC E8294224 */  addiu      $v0, $v0, %lo(D_800129E8)
/* 2BAF0 8003B2F0 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BAF4 8003B2F4 290A010C */  jal        PrintText_800428a4
/* 2BAF8 8003B2F8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BAFC 8003B2FC 21200000 */  addu       $a0, $zero, $zero
/* 2BB00 8003B300 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2BB04 8003B304 D0FF0624 */  addiu      $a2, $zero, -0x30
/* 2BB08 8003B308 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BB0C 8003B30C 0180023C */  lui        $v0, %hi(D_80012A00)
/* 2BB10 8003B310 002A4224 */  addiu      $v0, $v0, %lo(D_80012A00)
/* 2BB14 8003B314 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BB18 8003B318 290A010C */  jal        PrintText_800428a4
/* 2BB1C 8003B31C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BB20 8003B320 21200000 */  addu       $a0, $zero, $zero
/* 2BB24 8003B324 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2BB28 8003B328 D8FF0624 */  addiu      $a2, $zero, -0x28
/* 2BB2C 8003B32C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BB30 8003B330 0180023C */  lui        $v0, %hi(D_80012A1C)
/* 2BB34 8003B334 1C2A4224 */  addiu      $v0, $v0, %lo(D_80012A1C)
/* 2BB38 8003B338 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BB3C 8003B33C 290A010C */  jal        PrintText_800428a4
/* 2BB40 8003B340 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BB44 8003B344 21200000 */  addu       $a0, $zero, $zero
/* 2BB48 8003B348 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2BB4C 8003B34C E0FF0624 */  addiu      $a2, $zero, -0x20
/* 2BB50 8003B350 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BB54 8003B354 0180023C */  lui        $v0, %hi(D_80012A34)
/* 2BB58 8003B358 342A4224 */  addiu      $v0, $v0, %lo(D_80012A34)
/* 2BB5C 8003B35C 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BB60 8003B360 290A010C */  jal        PrintText_800428a4
/* 2BB64 8003B364 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BB68 8003B368 7CAA000C */  jal        vsync_8002a9f0
/* 2BB6C 8003B36C 0100B232 */   andi      $s2, $s5, 1
/* 2BB70 8003B370 02000424 */  addiu      $a0, $zero, 2
/* 2BB74 8003B374 6F000224 */  addiu      $v0, $zero, 0x6f
/* 2BB78 8003B378 1800A2A3 */  sb         $v0, 0x18($sp)
/* 2BB7C 8003B37C 02004012 */  beqz       $s2, .L8003B388
/* 2BB80 8003B380 1900A0A3 */   sb        $zero, 0x19($sp)
/* 2BB84 8003B384 03000424 */  addiu      $a0, $zero, 3
.L8003B388:
/* 2BB88 8003B388 02004016 */  bnez       $s2, .L8003B394
/* 2BB8C 8003B38C BAFF0624 */   addiu     $a2, $zero, -0x46
/* 2BB90 8003B390 C4FF0624 */  addiu      $a2, $zero, -0x3c
.L8003B394:
/* 2BB94 8003B394 D0FF0524 */  addiu      $a1, $zero, -0x30
/* 2BB98 8003B398 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BB9C 8003B39C 1800B027 */  addiu      $s0, $sp, 0x18
/* 2BBA0 8003B3A0 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BBA4 8003B3A4 290A010C */  jal        PrintText_800428a4
/* 2BBA8 8003B3A8 1400B0AF */   sw        $s0, 0x14($sp)
/* 2BBAC 8003B3AC 0200B332 */  andi       $s3, $s5, 2
/* 2BBB0 8003B3B0 02006012 */  beqz       $s3, .L8003B3BC
/* 2BBB4 8003B3B4 02000424 */   addiu     $a0, $zero, 2
/* 2BBB8 8003B3B8 03000424 */  addiu      $a0, $zero, 3
.L8003B3BC:
/* 2BBBC 8003B3BC 02006016 */  bnez       $s3, .L8003B3C8
/* 2BBC0 8003B3C0 BAFF0624 */   addiu     $a2, $zero, -0x46
/* 2BBC4 8003B3C4 C4FF0624 */  addiu      $a2, $zero, -0x3c
.L8003B3C8:
/* 2BBC8 8003B3C8 E8FF0524 */  addiu      $a1, $zero, -0x18
/* 2BBCC 8003B3CC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BBD0 8003B3D0 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BBD4 8003B3D4 290A010C */  jal        PrintText_800428a4
/* 2BBD8 8003B3D8 1400B0AF */   sw        $s0, 0x14($sp)
/* 2BBDC 8003B3DC 0400B432 */  andi       $s4, $s5, 4
/* 2BBE0 8003B3E0 02008012 */  beqz       $s4, .L8003B3EC
/* 2BBE4 8003B3E4 02000424 */   addiu     $a0, $zero, 2
/* 2BBE8 8003B3E8 03000424 */  addiu      $a0, $zero, 3
.L8003B3EC:
/* 2BBEC 8003B3EC 02008016 */  bnez       $s4, .L8003B3F8
/* 2BBF0 8003B3F0 BAFF0624 */   addiu     $a2, $zero, -0x46
/* 2BBF4 8003B3F4 C4FF0624 */  addiu      $a2, $zero, -0x3c
.L8003B3F8:
/* 2BBF8 8003B3F8 21280000 */  addu       $a1, $zero, $zero
/* 2BBFC 8003B3FC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BC00 8003B400 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BC04 8003B404 290A010C */  jal        PrintText_800428a4
/* 2BC08 8003B408 1400B0AF */   sw        $s0, 0x14($sp)
/* 2BC0C 8003B40C 0800B532 */  andi       $s5, $s5, 8
/* 2BC10 8003B410 0200A012 */  beqz       $s5, .L8003B41C
/* 2BC14 8003B414 02000424 */   addiu     $a0, $zero, 2
/* 2BC18 8003B418 03000424 */  addiu      $a0, $zero, 3
.L8003B41C:
/* 2BC1C 8003B41C 0200A016 */  bnez       $s5, .L8003B428
/* 2BC20 8003B420 BAFF0624 */   addiu     $a2, $zero, -0x46
/* 2BC24 8003B424 C4FF0624 */  addiu      $a2, $zero, -0x3c
.L8003B428:
/* 2BC28 8003B428 18000524 */  addiu      $a1, $zero, 0x18
/* 2BC2C 8003B42C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BC30 8003B430 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BC34 8003B434 290A010C */  jal        PrintText_800428a4
/* 2BC38 8003B438 1400B0AF */   sw        $s0, 0x14($sp)
/* 2BC3C 8003B43C 7CAA000C */  jal        vsync_8002a9f0
/* 2BC40 8003B440 00000000 */   nop
/* 2BC44 8003B444 21200000 */  addu       $a0, $zero, $zero
/* 2BC48 8003B448 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2BC4C 8003B44C F0FF0624 */  addiu      $a2, $zero, -0x10
/* 2BC50 8003B450 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BC54 8003B454 0180023C */  lui        $v0, %hi(D_80012A40)
/* 2BC58 8003B458 402A4224 */  addiu      $v0, $v0, %lo(D_80012A40)
/* 2BC5C 8003B45C 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BC60 8003B460 290A010C */  jal        PrintText_800428a4
/* 2BC64 8003B464 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BC68 8003B468 0B004012 */  beqz       $s2, .L8003B498
/* 2BC6C 8003B46C 21200000 */   addu      $a0, $zero, $zero
/* 2BC70 8003B470 B8FF0524 */  addiu      $a1, $zero, -0x48
/* 2BC74 8003B474 FAFF0624 */  addiu      $a2, $zero, -6
/* 2BC78 8003B478 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BC7C 8003B47C 0180103C */  lui        $s0, %hi(D_80012A50)
/* 2BC80 8003B480 502A0226 */  addiu      $v0, $s0, %lo(D_80012A50)
/* 2BC84 8003B484 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BC88 8003B488 290A010C */  jal        PrintText_800428a4
/* 2BC8C 8003B48C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BC90 8003B490 2EED0008 */  j          .L8003B4B8
/* 2BC94 8003B494 00000000 */   nop
.L8003B498:
/* 2BC98 8003B498 B8FF0524 */  addiu      $a1, $zero, -0x48
/* 2BC9C 8003B49C FAFF0624 */  addiu      $a2, $zero, -6
/* 2BCA0 8003B4A0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BCA4 8003B4A4 0180103C */  lui        $s0, %hi(D_80012A50)
/* 2BCA8 8003B4A8 502A0226 */  addiu      $v0, $s0, %lo(D_80012A50)
/* 2BCAC 8003B4AC 1000B1AF */  sw         $s1, 0x10($sp)
/* 2BCB0 8003B4B0 290A010C */  jal        PrintText_800428a4
/* 2BCB4 8003B4B4 1400A2AF */   sw        $v0, 0x14($sp)
.L8003B4B8:
/* 2BCB8 8003B4B8 7CAA000C */  jal        vsync_8002a9f0
/* 2BCBC 8003B4BC 21880002 */   addu      $s1, $s0, $zero
/* 2BCC0 8003B4C0 21200000 */  addu       $a0, $zero, $zero
/* 2BCC4 8003B4C4 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2BCC8 8003B4C8 08000624 */  addiu      $a2, $zero, 8
/* 2BCCC 8003B4CC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BCD0 8003B4D0 00101024 */  addiu      $s0, $zero, 0x1000
/* 2BCD4 8003B4D4 0180023C */  lui        $v0, %hi(D_80012A60)
/* 2BCD8 8003B4D8 602A4224 */  addiu      $v0, $v0, %lo(D_80012A60)
/* 2BCDC 8003B4DC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BCE0 8003B4E0 290A010C */  jal        PrintText_800428a4
/* 2BCE4 8003B4E4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BCE8 8003B4E8 0A006012 */  beqz       $s3, .L8003B514
/* 2BCEC 8003B4EC 21200000 */   addu      $a0, $zero, $zero
/* 2BCF0 8003B4F0 B8FF0524 */  addiu      $a1, $zero, -0x48
/* 2BCF4 8003B4F4 12000624 */  addiu      $a2, $zero, 0x12
/* 2BCF8 8003B4F8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BCFC 8003B4FC 502A2226 */  addiu      $v0, $s1, 0x2a50
/* 2BD00 8003B500 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BD04 8003B504 290A010C */  jal        PrintText_800428a4
/* 2BD08 8003B508 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BD0C 8003B50C 4CED0008 */  j          .L8003B530
/* 2BD10 8003B510 00000000 */   nop
.L8003B514:
/* 2BD14 8003B514 B8FF0524 */  addiu      $a1, $zero, -0x48
/* 2BD18 8003B518 12000624 */  addiu      $a2, $zero, 0x12
/* 2BD1C 8003B51C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BD20 8003B520 502A2226 */  addiu      $v0, $s1, 0x2a50
/* 2BD24 8003B524 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BD28 8003B528 290A010C */  jal        PrintText_800428a4
/* 2BD2C 8003B52C 1400A2AF */   sw        $v0, 0x14($sp)
.L8003B530:
/* 2BD30 8003B530 7CAA000C */  jal        vsync_8002a9f0
/* 2BD34 8003B534 00101024 */   addiu     $s0, $zero, 0x1000
/* 2BD38 8003B538 21200000 */  addu       $a0, $zero, $zero
/* 2BD3C 8003B53C 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2BD40 8003B540 20000624 */  addiu      $a2, $zero, 0x20
/* 2BD44 8003B544 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BD48 8003B548 0180023C */  lui        $v0, %hi(D_80012A70)
/* 2BD4C 8003B54C 702A4224 */  addiu      $v0, $v0, %lo(D_80012A70)
/* 2BD50 8003B550 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BD54 8003B554 290A010C */  jal        PrintText_800428a4
/* 2BD58 8003B558 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BD5C 8003B55C 0A008012 */  beqz       $s4, .L8003B588
/* 2BD60 8003B560 21200000 */   addu      $a0, $zero, $zero
/* 2BD64 8003B564 B8FF0524 */  addiu      $a1, $zero, -0x48
/* 2BD68 8003B568 2A000624 */  addiu      $a2, $zero, 0x2a
/* 2BD6C 8003B56C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BD70 8003B570 502A2226 */  addiu      $v0, $s1, 0x2a50
/* 2BD74 8003B574 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BD78 8003B578 290A010C */  jal        PrintText_800428a4
/* 2BD7C 8003B57C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BD80 8003B580 69ED0008 */  j          .L8003B5A4
/* 2BD84 8003B584 00000000 */   nop
.L8003B588:
/* 2BD88 8003B588 B8FF0524 */  addiu      $a1, $zero, -0x48
/* 2BD8C 8003B58C 2A000624 */  addiu      $a2, $zero, 0x2a
/* 2BD90 8003B590 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BD94 8003B594 502A2226 */  addiu      $v0, $s1, 0x2a50
/* 2BD98 8003B598 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BD9C 8003B59C 290A010C */  jal        PrintText_800428a4
/* 2BDA0 8003B5A0 1400A2AF */   sw        $v0, 0x14($sp)
.L8003B5A4:
/* 2BDA4 8003B5A4 7CAA000C */  jal        vsync_8002a9f0
/* 2BDA8 8003B5A8 00101024 */   addiu     $s0, $zero, 0x1000
/* 2BDAC 8003B5AC 21200000 */  addu       $a0, $zero, $zero
/* 2BDB0 8003B5B0 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2BDB4 8003B5B4 38000624 */  addiu      $a2, $zero, 0x38
/* 2BDB8 8003B5B8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BDBC 8003B5BC 0180023C */  lui        $v0, %hi(D_80012A80)
/* 2BDC0 8003B5C0 802A4224 */  addiu      $v0, $v0, %lo(D_80012A80)
/* 2BDC4 8003B5C4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BDC8 8003B5C8 290A010C */  jal        PrintText_800428a4
/* 2BDCC 8003B5CC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BDD0 8003B5D0 0B00A012 */  beqz       $s5, .L8003B600
/* 2BDD4 8003B5D4 21200000 */   addu      $a0, $zero, $zero
/* 2BDD8 8003B5D8 B8FF0524 */  addiu      $a1, $zero, -0x48
/* 2BDDC 8003B5DC 42000624 */  addiu      $a2, $zero, 0x42
/* 2BDE0 8003B5E0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BDE4 8003B5E4 0180023C */  lui        $v0, %hi(D_80012A94)
/* 2BDE8 8003B5E8 942A4224 */  addiu      $v0, $v0, %lo(D_80012A94)
/* 2BDEC 8003B5EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BDF0 8003B5F0 290A010C */  jal        PrintText_800428a4
/* 2BDF4 8003B5F4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BDF8 8003B5F8 88ED0008 */  j          .L8003B620
/* 2BDFC 8003B5FC 00000000 */   nop
.L8003B600:
/* 2BE00 8003B600 B8FF0524 */  addiu      $a1, $zero, -0x48
/* 2BE04 8003B604 42000624 */  addiu      $a2, $zero, 0x42
/* 2BE08 8003B608 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BE0C 8003B60C 0180023C */  lui        $v0, %hi(D_80012AA4)
/* 2BE10 8003B610 A42A4224 */  addiu      $v0, $v0, %lo(D_80012AA4)
/* 2BE14 8003B614 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BE18 8003B618 290A010C */  jal        PrintText_800428a4
/* 2BE1C 8003B61C 1400A2AF */   sw        $v0, 0x14($sp)
.L8003B620:
/* 2BE20 8003B620 7CAA000C */  jal        vsync_8002a9f0
/* 2BE24 8003B624 00101024 */   addiu     $s0, $zero, 0x1000
/* 2BE28 8003B628 21200000 */  addu       $a0, $zero, $zero
/* 2BE2C 8003B62C ACFF0524 */  addiu      $a1, $zero, -0x54
/* 2BE30 8003B630 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2BE34 8003B634 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BE38 8003B638 0180023C */  lui        $v0, %hi(D_80012AB4)
/* 2BE3C 8003B63C B42A4224 */  addiu      $v0, $v0, %lo(D_80012AB4)
/* 2BE40 8003B640 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BE44 8003B644 290A010C */  jal        PrintText_800428a4
/* 2BE48 8003B648 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BE4C 8003B64C 21200000 */  addu       $a0, $zero, $zero
/* 2BE50 8003B650 7CFF0524 */  addiu      $a1, $zero, -0x84
/* 2BE54 8003B654 62000624 */  addiu      $a2, $zero, 0x62
/* 2BE58 8003B658 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BE5C 8003B65C 0180023C */  lui        $v0, %hi(D_80012AC8)
/* 2BE60 8003B660 C82A4224 */  addiu      $v0, $v0, %lo(D_80012AC8)
/* 2BE64 8003B664 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BE68 8003B668 290A010C */  jal        PrintText_800428a4
/* 2BE6C 8003B66C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BE70 8003B670 7CAA000C */  jal        vsync_8002a9f0
/* 2BE74 8003B674 00000000 */   nop
/* 2BE78 8003B678 3800BF8F */  lw         $ra, 0x38($sp)
/* 2BE7C 8003B67C 3400B58F */  lw         $s5, 0x34($sp)
/* 2BE80 8003B680 3000B48F */  lw         $s4, 0x30($sp)
/* 2BE84 8003B684 2C00B38F */  lw         $s3, 0x2c($sp)
/* 2BE88 8003B688 2800B28F */  lw         $s2, 0x28($sp)
/* 2BE8C 8003B68C 2400B18F */  lw         $s1, 0x24($sp)
/* 2BE90 8003B690 2000B08F */  lw         $s0, 0x20($sp)
/* 2BE94 8003B694 0800E003 */  jr         $ra
/* 2BE98 8003B698 4000BD27 */   addiu     $sp, $sp, 0x40
