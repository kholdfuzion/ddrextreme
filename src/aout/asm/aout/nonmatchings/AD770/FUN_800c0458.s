.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0458
/* B0C58 800C0458 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B0C5C 800C045C 2400BFAF */  sw         $ra, 0x24($sp)
/* B0C60 800C0460 2000B2AF */  sw         $s2, 0x20($sp)
/* B0C64 800C0464 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B0C68 800C0468 1800B0AF */  sw         $s0, 0x18($sp)
/* B0C6C 800C046C 2188A000 */  addu       $s1, $a1, $zero
/* B0C70 800C0470 F6FF020C */  jal        FUN_800bffd8
/* B0C74 800C0474 FF009030 */   andi      $s0, $a0, 0xff
/* B0C78 800C0478 FEFF0324 */  addiu      $v1, $zero, -2
/* B0C7C 800C047C 03004314 */  bne        $v0, $v1, .L800C048C
/* B0C80 800C0480 01000424 */   addiu     $a0, $zero, 1
/* B0C84 800C0484 50010308 */  j          .L800C0540
/* B0C88 800C0488 FEFF0224 */   addiu     $v0, $zero, -2
.L800C048C:
/* B0C8C 800C048C 21280002 */  addu       $a1, $s0, $zero
/* B0C90 800C0490 0901030C */  jal        FUN_800c0424
/* B0C94 800C0494 1000A627 */   addiu     $a2, $sp, 0x10
/* B0C98 800C0498 0F002332 */  andi       $v1, $s1, 0xf
/* B0C9C 800C049C 1100A293 */  lbu        $v0, 0x11($sp)
/* B0CA0 800C04A0 00000000 */  nop
/* B0CA4 800C04A4 25104300 */  or         $v0, $v0, $v1
/* B0CA8 800C04A8 1100A2A3 */  sb         $v0, 0x11($sp)
/* B0CAC 800C04AC 021B1100 */  srl        $v1, $s1, 0xc
/* B0CB0 800C04B0 1200A3A3 */  sb         $v1, 0x12($sp)
/* B0CB4 800C04B4 02191100 */  srl        $v1, $s1, 4
/* B0CB8 800C04B8 1300A3A3 */  sb         $v1, 0x13($sp)
/* B0CBC 800C04BC 55FE020C */  jal        FUN_800bf954
/* B0CC0 800C04C0 21900000 */   addu      $s2, $zero, $zero
/* B0CC4 800C04C4 5AFF020C */  jal        FUN_800bfd68
/* B0CC8 800C04C8 3A000424 */   addiu     $a0, $zero, 0x3a
/* B0CCC 800C04CC E0FF020C */  jal        FUN_800bff80
/* B0CD0 800C04D0 00000000 */   nop
/* B0CD4 800C04D4 07004014 */  bnez       $v0, .L800C04F4
/* B0CD8 800C04D8 00000000 */   nop
/* B0CDC 800C04DC 5AFF020C */  jal        FUN_800bfd68
/* B0CE0 800C04E0 68000424 */   addiu     $a0, $zero, 0x68
/* B0CE4 800C04E4 E0FF020C */  jal        FUN_800bff80
/* B0CE8 800C04E8 00000000 */   nop
/* B0CEC 800C04EC 03004010 */  beqz       $v0, .L800C04FC
/* B0CF0 800C04F0 21800000 */   addu      $s0, $zero, $zero
.L800C04F4:
/* B0CF4 800C04F4 4B010308 */  j          .L800C052C
/* B0CF8 800C04F8 FDFF1224 */   addiu     $s2, $zero, -3
.L800C04FC:
/* B0CFC 800C04FC 1000B127 */  addiu      $s1, $sp, 0x10
/* B0D00 800C0500 21103002 */  addu       $v0, $s1, $s0
.L800C0504:
/* B0D04 800C0504 00004490 */  lbu        $a0, ($v0)
/* B0D08 800C0508 5AFF020C */  jal        FUN_800bfd68
/* B0D0C 800C050C 00000000 */   nop
/* B0D10 800C0510 E0FF020C */  jal        FUN_800bff80
/* B0D14 800C0514 00000000 */   nop
/* B0D18 800C0518 F6FF4014 */  bnez       $v0, .L800C04F4
/* B0D1C 800C051C 01001026 */   addiu     $s0, $s0, 1
/* B0D20 800C0520 0400022A */  slti       $v0, $s0, 4
/* B0D24 800C0524 F7FF4014 */  bnez       $v0, .L800C0504
/* B0D28 800C0528 21103002 */   addu      $v0, $s1, $s0
.L800C052C:
/* B0D2C 800C052C A7FE020C */  jal        FUN_800bfa9c
/* B0D30 800C0530 00000000 */   nop
/* B0D34 800C0534 0C00030C */  jal        FUN_800c0030
/* B0D38 800C0538 00000000 */   nop
/* B0D3C 800C053C 21104002 */  addu       $v0, $s2, $zero
.L800C0540:
/* B0D40 800C0540 2400BF8F */  lw         $ra, 0x24($sp)
/* B0D44 800C0544 2000B28F */  lw         $s2, 0x20($sp)
/* B0D48 800C0548 1C00B18F */  lw         $s1, 0x1c($sp)
/* B0D4C 800C054C 1800B08F */  lw         $s0, 0x18($sp)
/* B0D50 800C0550 0800E003 */  jr         $ra
/* B0D54 800C0554 2800BD27 */   addiu     $sp, $sp, 0x28
