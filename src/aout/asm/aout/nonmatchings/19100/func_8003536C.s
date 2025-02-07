.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8003536C
/* 25B6C 8003536C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 25B70 80035370 2800B6AF */  sw         $s6, 0x28($sp)
/* 25B74 80035374 2380163C */  lui        $s6, 0x8023
/* 25B78 80035378 0080D636 */  ori        $s6, $s6, 0x8000
/* 25B7C 8003537C 2380063C */  lui        $a2, 0x8023
/* 25B80 80035380 0080C634 */  ori        $a2, $a2, 0x8000
/* 25B84 80035384 00800734 */  ori        $a3, $zero, 0x8000
/* 25B88 80035388 2C00BFAF */  sw         $ra, 0x2c($sp)
/* 25B8C 8003538C 2400B5AF */  sw         $s5, 0x24($sp)
/* 25B90 80035390 2000B4AF */  sw         $s4, 0x20($sp)
/* 25B94 80035394 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 25B98 80035398 1800B2AF */  sw         $s2, 0x18($sp)
/* 25B9C 8003539C 1400B1AF */  sw         $s1, 0x14($sp)
/* 25BA0 800353A0 1000B0AF */  sw         $s0, 0x10($sp)
.L800353A4:
/* 25BA4 800353A4 0000C0AC */  sw         $zero, ($a2)
/* 25BA8 800353A8 FFFFE724 */  addiu      $a3, $a3, -1
/* 25BAC 800353AC FDFFE014 */  bnez       $a3, .L800353A4
/* 25BB0 800353B0 0400C624 */   addiu     $a2, $a2, 4
/* 25BB4 800353B4 40140500 */  sll        $v0, $a1, 0x11
/* 25BB8 800353B8 801E0400 */  sll        $v1, $a0, 0x1a
/* 25BBC 800353BC 21804300 */  addu       $s0, $v0, $v1
/* 25BC0 800353C0 82261000 */  srl        $a0, $s0, 0x1a
/* 25BC4 800353C4 822D1000 */  srl        $a1, $s0, 0x16
/* 25BC8 800353C8 0F00A530 */  andi       $a1, $a1, 0xf
/* 25BCC 800353CC 97F6020C */  jal        flash_library_related_800bda5c
/* 25BD0 800353D0 21300000 */   addu      $a2, $zero, $zero
/* 25BD4 800353D4 07004014 */  bnez       $v0, .L800353F4
/* 25BD8 800353D8 3F00023C */   lui       $v0, 0x3f
/* 25BDC 800353DC 0180043C */  lui        $a0, %hi(D_80011E44)
/* 25BE0 800353E0 441E8424 */  addiu      $a0, $a0, %lo(D_80011E44)
/* 25BE4 800353E4 FFFF0524 */  addiu      $a1, $zero, -1
/* 25BE8 800353E8 58AA000C */  jal        error_8002a960
/* 25BEC 800353EC 21300000 */   addu      $a2, $zero, $zero
/* 25BF0 800353F0 3F00023C */  lui        $v0, 0x3f
.L800353F4:
/* 25BF4 800353F4 FFFF4234 */  ori        $v0, $v0, 0xffff
/* 25BF8 800353F8 24100202 */  and        $v0, $s0, $v0
/* 25BFC 800353FC 001F033C */  lui        $v1, 0x1f00
/* 25C00 80035400 21984300 */  addu       $s3, $v0, $v1
/* 25C04 80035404 60F8020C */  jal        FUN_800be180
/* 25C08 80035408 21206002 */   addu      $a0, $s3, $zero
/* 25C0C 8003540C CD6B000C */  jal        VSync
/* 25C10 80035410 FFFF0424 */   addiu     $a0, $zero, -1
/* 25C14 80035414 21206002 */  addu       $a0, $s3, $zero
/* 25C18 80035418 FCF6020C */  jal        FUN_800bdbf0
/* 25C1C 8003541C 21804000 */   addu      $s0, $v0, $zero
/* 25C20 80035420 12D50008 */  j          .L80035448
/* 25C24 80035424 FEFF1124 */   addiu     $s1, $zero, -2
.L80035428:
/* 25C28 80035428 CD6B000C */  jal        VSync
/* 25C2C 8003542C FFFF0424 */   addiu     $a0, $zero, -1
/* 25C30 80035430 23105000 */  subu       $v0, $v0, $s0
/* 25C34 80035434 85034228 */  slti       $v0, $v0, 0x385
/* 25C38 80035438 07004010 */  beqz       $v0, .L80035458
/* 25C3C 8003543C 00000000 */   nop
/* 25C40 80035440 7CAA000C */  jal        vsync_8002a9f0
/* 25C44 80035444 00000000 */   nop
.L80035448:
/* 25C48 80035448 0EF7020C */  jal        FUN_800bdc38
/* 25C4C 8003544C 21206002 */   addu      $a0, $s3, $zero
/* 25C50 80035450 F5FF5110 */  beq        $v0, $s1, .L80035428
/* 25C54 80035454 00000000 */   nop
.L80035458:
/* 25C58 80035458 21886002 */  addu       $s1, $s3, $zero
/* 25C5C 8003545C 0180143C */  lui        $s4, 0x8001
/* 25C60 80035460 2180C002 */  addu       $s0, $s6, $zero
/* 25C64 80035464 0100123C */  lui        $s2, 1
.L80035468:
/* 25C68 80035468 00000596 */  lhu        $a1, ($s0)
/* 25C6C 8003546C 68F7020C */  jal        FUN_800bdda0
/* 25C70 80035470 21202002 */   addu      $a0, $s1, $zero
/* 25C74 80035474 04004010 */  beqz       $v0, .L80035488
/* 25C78 80035478 441E8426 */   addiu     $a0, $s4, 0x1e44
/* 25C7C 8003547C FFFF0524 */  addiu      $a1, $zero, -1
/* 25C80 80035480 58AA000C */  jal        error_8002a960
/* 25C84 80035484 21300000 */   addu      $a2, $zero, $zero
.L80035488:
/* 25C88 80035488 7CAA000C */  jal        vsync_8002a9f0
/* 25C8C 8003548C 02003126 */   addiu     $s1, $s1, 2
/* 25C90 80035490 FFFF5226 */  addiu      $s2, $s2, -1
/* 25C94 80035494 F4FF4016 */  bnez       $s2, .L80035468
/* 25C98 80035498 02001026 */   addiu     $s0, $s0, 2
/* 25C9C 8003549C 21A80000 */  addu       $s5, $zero, $zero
/* 25CA0 800354A0 21A00000 */  addu       $s4, $zero, $zero
/* 25CA4 800354A4 60F8020C */  jal        FUN_800be180
/* 25CA8 800354A8 21206002 */   addu      $a0, $s3, $zero
/* 25CAC 800354AC 21800000 */  addu       $s0, $zero, $zero
/* 25CB0 800354B0 DB68123C */  lui        $s2, 0x68db
/* 25CB4 800354B4 AD8B5236 */  ori        $s2, $s2, 0x8bad
/* 25CB8 800354B8 0100113C */  lui        $s1, 1
/* 25CBC 800354BC FFFF3136 */  ori        $s1, $s1, 0xffff
/* 25CC0 800354C0 18001202 */  mult       $s0, $s2
.L800354C4:
/* 25CC4 800354C4 2110D002 */  addu       $v0, $s6, $s0
/* 25CC8 800354C8 00004490 */  lbu        $a0, ($v0)
/* 25CCC 800354CC 21107002 */  addu       $v0, $s3, $s0
/* 25CD0 800354D0 00004390 */  lbu        $v1, ($v0)
/* 25CD4 800354D4 21208402 */  addu       $a0, $s4, $a0
/* 25CD8 800354D8 2118A302 */  addu       $v1, $s5, $v1
/* 25CDC 800354DC FFFF7530 */  andi       $s5, $v1, 0xffff
/* 25CE0 800354E0 C31F1000 */  sra        $v1, $s0, 0x1f
/* 25CE4 800354E4 10280000 */  mfhi       $a1
/* 25CE8 800354E8 032B0500 */  sra        $a1, $a1, 0xc
/* 25CEC 800354EC 2328A300 */  subu       $a1, $a1, $v1
/* 25CF0 800354F0 80100500 */  sll        $v0, $a1, 2
/* 25CF4 800354F4 21104500 */  addu       $v0, $v0, $a1
/* 25CF8 800354F8 C0100200 */  sll        $v0, $v0, 3
/* 25CFC 800354FC 23104500 */  subu       $v0, $v0, $a1
/* 25D00 80035500 00110200 */  sll        $v0, $v0, 4
/* 25D04 80035504 21104500 */  addu       $v0, $v0, $a1
/* 25D08 80035508 00110200 */  sll        $v0, $v0, 4
/* 25D0C 8003550C 03000216 */  bne        $s0, $v0, .L8003551C
/* 25D10 80035510 FFFF9430 */   andi      $s4, $a0, 0xffff
/* 25D14 80035514 7CAA000C */  jal        vsync_8002a9f0
/* 25D18 80035518 00000000 */   nop
.L8003551C:
/* 25D1C 8003551C 01001026 */  addiu      $s0, $s0, 1
/* 25D20 80035520 2A103002 */  slt        $v0, $s1, $s0
/* 25D24 80035524 E7FF4010 */  beqz       $v0, .L800354C4
/* 25D28 80035528 18001202 */   mult      $s0, $s2
/* 25D2C 8003552C 02009512 */  beq        $s4, $s5, .L80035538
/* 25D30 80035530 01000224 */   addiu     $v0, $zero, 1
/* 25D34 80035534 21100000 */  addu       $v0, $zero, $zero
.L80035538:
/* 25D38 80035538 FF004230 */  andi       $v0, $v0, 0xff
/* 25D3C 8003553C 14004010 */  beqz       $v0, .L80035590
/* 25D40 80035540 01000224 */   addiu     $v0, $zero, 1
/* 25D44 80035544 CD6B000C */  jal        VSync
/* 25D48 80035548 FFFF0424 */   addiu     $a0, $zero, -1
/* 25D4C 8003554C 21206002 */  addu       $a0, $s3, $zero
/* 25D50 80035550 FCF6020C */  jal        FUN_800bdbf0
/* 25D54 80035554 21804000 */   addu      $s0, $v0, $zero
/* 25D58 80035558 60D50008 */  j          .L80035580
/* 25D5C 8003555C FEFF1124 */   addiu     $s1, $zero, -2
.L80035560:
/* 25D60 80035560 CD6B000C */  jal        VSync
/* 25D64 80035564 FFFF0424 */   addiu     $a0, $zero, -1
/* 25D68 80035568 23105000 */  subu       $v0, $v0, $s0
/* 25D6C 8003556C 85034228 */  slti       $v0, $v0, 0x385
/* 25D70 80035570 07004010 */  beqz       $v0, .L80035590
/* 25D74 80035574 21100000 */   addu      $v0, $zero, $zero
/* 25D78 80035578 7CAA000C */  jal        vsync_8002a9f0
/* 25D7C 8003557C 00000000 */   nop
.L80035580:
/* 25D80 80035580 0EF7020C */  jal        FUN_800bdc38
/* 25D84 80035584 21206002 */   addu      $a0, $s3, $zero
/* 25D88 80035588 F5FF5110 */  beq        $v0, $s1, .L80035560
/* 25D8C 8003558C 21100000 */   addu      $v0, $zero, $zero
.L80035590:
/* 25D90 80035590 2C00BF8F */  lw         $ra, 0x2c($sp)
/* 25D94 80035594 2800B68F */  lw         $s6, 0x28($sp)
/* 25D98 80035598 2400B58F */  lw         $s5, 0x24($sp)
/* 25D9C 8003559C 2000B48F */  lw         $s4, 0x20($sp)
/* 25DA0 800355A0 1C00B38F */  lw         $s3, 0x1c($sp)
/* 25DA4 800355A4 1800B28F */  lw         $s2, 0x18($sp)
/* 25DA8 800355A8 1400B18F */  lw         $s1, 0x14($sp)
/* 25DAC 800355AC 1000B08F */  lw         $s0, 0x10($sp)
/* 25DB0 800355B0 0800E003 */  jr         $ra
/* 25DB4 800355B4 3000BD27 */   addiu     $sp, $sp, 0x30
