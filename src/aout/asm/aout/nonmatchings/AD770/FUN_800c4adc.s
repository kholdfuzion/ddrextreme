.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c4adc
/* B52DC 800C4ADC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B52E0 800C4AE0 1800B2AF */  sw         $s2, 0x18($sp)
/* B52E4 800C4AE4 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B52E8 800C4AE8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B52EC 800C4AEC 1874538C */  lw         $s3, %lo(D_801F7418)($v0)
/* B52F0 800C4AF0 18744224 */  addiu      $v0, $v0, 0x7418
/* B52F4 800C4AF4 2000BFAF */  sw         $ra, 0x20($sp)
/* B52F8 800C4AF8 1400B1AF */  sw         $s1, 0x14($sp)
/* B52FC 800C4AFC 1000B0AF */  sw         $s0, 0x10($sp)
/* B5300 800C4B00 0400438C */  lw         $v1, 4($v0)
/* B5304 800C4B04 7043518C */  lw         $s1, 0x4370($v0)
/* B5308 800C4B08 0800622C */  sltiu      $v0, $v1, 8
/* B530C 800C4B0C 0C00308E */  lw         $s0, 0xc($s1)
/* B5310 800C4B10 C3004010 */  beqz       $v0, .L800C4E20
/* B5314 800C4B14 21900000 */   addu      $s2, $zero, $zero
/* B5318 800C4B18 0180023C */  lui        $v0, %hi(D_800178B8)
/* B531C 800C4B1C B8784224 */  addiu      $v0, $v0, %lo(D_800178B8)
/* B5320 800C4B20 80180300 */  sll        $v1, $v1, 2
/* B5324 800C4B24 21186200 */  addu       $v1, $v1, $v0
/* B5328 800C4B28 0000628C */  lw         $v0, ($v1)
/* B532C 800C4B2C 00000000 */  nop
/* B5330 800C4B30 08004000 */  jr         $v0
/* B5334 800C4B34 00000000 */   nop
/* B5338 800C4B38 0800038E */  lw         $v1, 8($s0)
/* B533C 800C4B3C 00000000 */  nop
/* B5340 800C4B40 02006104 */  bgez       $v1, .L800C4B4C
/* B5344 800C4B44 21106000 */   addu      $v0, $v1, $zero
/* B5348 800C4B48 7F006224 */  addiu      $v0, $v1, 0x7f
.L800C4B4C:
/* B534C 800C4B4C 21200002 */  addu       $a0, $s0, $zero
/* B5350 800C4B50 C3110200 */  sra        $v0, $v0, 7
/* B5354 800C4B54 C0110200 */  sll        $v0, $v0, 7
/* B5358 800C4B58 23106200 */  subu       $v0, $v1, $v0
/* B535C 800C4B5C 100002AE */  sw         $v0, 0x10($s0)
/* B5360 800C4B60 7D1C030C */  jal        FUN_800c71f4
/* B5364 800C4B64 180020AE */   sw        $zero, 0x18($s1)
/* B5368 800C4B68 08004104 */  bgez       $v0, .L800C4B8C
/* B536C 800C4B6C 200022AE */   sw        $v0, 0x20($s1)
/* B5370 800C4B70 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B5374 800C4B74 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B5378 800C4B78 0400628C */  lw         $v0, 4($v1)
/* B537C 800C4B7C 00000000 */  nop
/* B5380 800C4B80 07004224 */  addiu      $v0, $v0, 7
/* B5384 800C4B84 88130308 */  j          .L800C4E20
/* B5388 800C4B88 040062AC */   sw        $v0, 4($v1)
.L800C4B8C:
/* B538C 800C4B8C 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B5390 800C4B90 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B5394 800C4B94 0400628C */  lw         $v0, 4($v1)
/* B5398 800C4B98 00000000 */  nop
/* B539C 800C4B9C 01004224 */  addiu      $v0, $v0, 1
/* B53A0 800C4BA0 040062AC */  sw         $v0, 4($v1)
/* B53A4 800C4BA4 1800228E */  lw         $v0, 0x18($s1)
/* B53A8 800C4BA8 1400238E */  lw         $v1, 0x14($s1)
/* B53AC 800C4BAC 00000000 */  nop
/* B53B0 800C4BB0 2A104300 */  slt        $v0, $v0, $v1
/* B53B4 800C4BB4 0B004010 */  beqz       $v0, .L800C4BE4
/* B53B8 800C4BB8 1F80033C */   lui       $v1, 0x801f
/* B53BC 800C4BBC 0800038E */  lw         $v1, 8($s0)
/* B53C0 800C4BC0 00000000 */  nop
/* B53C4 800C4BC4 06006004 */  bltz       $v1, .L800C4BE0
/* B53C8 800C4BC8 00000000 */   nop
/* B53CC 800C4BCC A000028E */  lw         $v0, 0xa0($s0)
/* B53D0 800C4BD0 00000000 */  nop
/* B53D4 800C4BD4 2A106200 */  slt        $v0, $v1, $v0
/* B53D8 800C4BD8 08004014 */  bnez       $v0, .L800C4BFC
/* B53DC 800C4BDC 80000524 */   addiu     $a1, $zero, 0x80
.L800C4BE0:
/* B53E0 800C4BE0 1F80033C */  lui        $v1, %hi(D_801F7418)
.L800C4BE4:
/* B53E4 800C4BE4 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B53E8 800C4BE8 0400628C */  lw         $v0, 4($v1)
/* B53EC 800C4BEC 00000000 */  nop
/* B53F0 800C4BF0 06004224 */  addiu      $v0, $v0, 6
/* B53F4 800C4BF4 88130308 */  j          .L800C4E20
/* B53F8 800C4BF8 040062AC */   sw        $v0, 4($v1)
.L800C4BFC:
/* B53FC 800C4BFC 1000028E */  lw         $v0, 0x10($s0)
/* B5400 800C4C00 1400248E */  lw         $a0, 0x14($s1)
/* B5404 800C4C04 1800238E */  lw         $v1, 0x18($s1)
/* B5408 800C4C08 2310A200 */  subu       $v0, $a1, $v0
/* B540C 800C4C0C 23208300 */  subu       $a0, $a0, $v1
/* B5410 800C4C10 1C0022AE */  sw         $v0, 0x1c($s1)
/* B5414 800C4C14 2A108200 */  slt        $v0, $a0, $v0
/* B5418 800C4C18 02004010 */  beqz       $v0, .L800C4C24
/* B541C 800C4C1C 00000000 */   nop
/* B5420 800C4C20 1C0024AE */  sw         $a0, 0x1c($s1)
.L800C4C24:
/* B5424 800C4C24 1C00228E */  lw         $v0, 0x1c($s1)
/* B5428 800C4C28 00000000 */  nop
/* B542C 800C4C2C 07004514 */  bne        $v0, $a1, .L800C4C4C
/* B5430 800C4C30 1F80033C */   lui       $v1, %hi(D_801F7418)
/* B5434 800C4C34 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B5438 800C4C38 0400628C */  lw         $v0, 4($v1)
/* B543C 800C4C3C 00000000 */  nop
/* B5440 800C4C40 03004224 */  addiu      $v0, $v0, 3
/* B5444 800C4C44 88130308 */  j          .L800C4E20
/* B5448 800C4C48 040062AC */   sw        $v0, 4($v1)
.L800C4C4C:
/* B544C 800C4C4C 18746324 */  addiu      $v1, $v1, 0x7418
/* B5450 800C4C50 0400628C */  lw         $v0, 4($v1)
/* B5454 800C4C54 00000000 */  nop
/* B5458 800C4C58 01004224 */  addiu      $v0, $v0, 1
/* B545C 800C4C5C 040062AC */  sw         $v0, 4($v1)
/* B5460 800C4C60 0800058E */  lw         $a1, 8($s0)
/* B5464 800C4C64 00000000 */  nop
/* B5468 800C4C68 0200A104 */  bgez       $a1, .L800C4C74
/* B546C 800C4C6C 01000624 */   addiu     $a2, $zero, 1
/* B5470 800C4C70 7F00A524 */  addiu      $a1, $a1, 0x7f
.L800C4C74:
/* B5474 800C4C74 14000726 */  addiu      $a3, $s0, 0x14
/* B5478 800C4C78 C3290500 */  sra        $a1, $a1, 7
/* B547C 800C4C7C 2000228E */  lw         $v0, 0x20($s1)
/* B5480 800C4C80 9800048E */  lw         $a0, 0x98($s0)
/* B5484 800C4C84 851B030C */  jal        FUN_800c6e14
/* B5488 800C4C88 21284500 */   addu      $a1, $v0, $a1
/* B548C 800C4C8C 35004004 */  bltz       $v0, .L800C4D64
/* B5490 800C4C90 1F80033C */   lui       $v1, %hi(D_801F7418)
/* B5494 800C4C94 79130308 */  j          .L800C4DE4
/* B5498 800C4C98 18746324 */   addiu     $v1, $v1, %lo(D_801F7418)
/* B549C 800C4C9C F224030C */  jal        FUN_800c93c8
/* B54A0 800C4CA0 00000000 */   nop
/* B54A4 800C4CA4 21184000 */  addu       $v1, $v0, $zero
/* B54A8 800C4CA8 FEFF0224 */  addiu      $v0, $zero, -2
/* B54AC 800C4CAC 5C006210 */  beq        $v1, $v0, .L800C4E20
/* B54B0 800C4CB0 00000000 */   nop
/* B54B4 800C4CB4 2B006014 */  bnez       $v1, .L800C4D64
/* B54B8 800C4CB8 1F80033C */   lui       $v1, %hi(D_801F7418)
/* B54BC 800C4CBC 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B54C0 800C4CC0 0400628C */  lw         $v0, 4($v1)
/* B54C4 800C4CC4 00000000 */  nop
/* B54C8 800C4CC8 01004224 */  addiu      $v0, $v0, 1
/* B54CC 800C4CCC 040062AC */  sw         $v0, 4($v1)
/* B54D0 800C4CD0 1000048E */  lw         $a0, 0x10($s0)
/* B54D4 800C4CD4 1C00268E */  lw         $a2, 0x1c($s1)
/* B54D8 800C4CD8 1000228E */  lw         $v0, 0x10($s1)
/* B54DC 800C4CDC 1800258E */  lw         $a1, 0x18($s1)
/* B54E0 800C4CE0 21209000 */  addu       $a0, $a0, $s0
/* B54E4 800C4CE4 14008424 */  addiu      $a0, $a0, 0x14
/* B54E8 800C4CE8 BD6B000C */  jal        memcpy
/* B54EC 800C4CEC 21284500 */   addu      $a1, $v0, $a1
/* B54F0 800C4CF0 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B54F4 800C4CF4 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B54F8 800C4CF8 0400628C */  lw         $v0, 4($v1)
/* B54FC 800C4CFC 00000000 */  nop
/* B5500 800C4D00 01004224 */  addiu      $v0, $v0, 1
/* B5504 800C4D04 040062AC */  sw         $v0, 4($v1)
/* B5508 800C4D08 0800058E */  lw         $a1, 8($s0)
/* B550C 800C4D0C 00000000 */  nop
/* B5510 800C4D10 0200A104 */  bgez       $a1, .L800C4D1C
/* B5514 800C4D14 01000624 */   addiu     $a2, $zero, 1
/* B5518 800C4D18 7F00A524 */  addiu      $a1, $a1, 0x7f
.L800C4D1C:
/* B551C 800C4D1C 14000726 */  addiu      $a3, $s0, 0x14
/* B5520 800C4D20 C3290500 */  sra        $a1, $a1, 7
/* B5524 800C4D24 2000228E */  lw         $v0, 0x20($s1)
/* B5528 800C4D28 9800048E */  lw         $a0, 0x98($s0)
/* B552C 800C4D2C BA1B030C */  jal        FUN_800c6ee8
/* B5530 800C4D30 21284500 */   addu      $a1, $v0, $a1
/* B5534 800C4D34 0B004004 */  bltz       $v0, .L800C4D64
/* B5538 800C4D38 1F80033C */   lui       $v1, %hi(D_801F7418)
/* B553C 800C4D3C 79130308 */  j          .L800C4DE4
/* B5540 800C4D40 18746324 */   addiu     $v1, $v1, %lo(D_801F7418)
/* B5544 800C4D44 F224030C */  jal        FUN_800c93c8
/* B5548 800C4D48 00000000 */   nop
/* B554C 800C4D4C 21184000 */  addu       $v1, $v0, $zero
/* B5550 800C4D50 FEFF0224 */  addiu      $v0, $zero, -2
/* B5554 800C4D54 32006210 */  beq        $v1, $v0, .L800C4E20
/* B5558 800C4D58 00000000 */   nop
/* B555C 800C4D5C 03006010 */  beqz       $v1, .L800C4D6C
/* B5560 800C4D60 00000000 */   nop
.L800C4D64:
/* B5564 800C4D64 88130308 */  j          .L800C4E20
/* B5568 800C4D68 01001224 */   addiu     $s2, $zero, 1
.L800C4D6C:
/* B556C 800C4D6C 1800228E */  lw         $v0, 0x18($s1)
/* B5570 800C4D70 1C00238E */  lw         $v1, 0x1c($s1)
/* B5574 800C4D74 00000000 */  nop
/* B5578 800C4D78 21104300 */  addu       $v0, $v0, $v1
/* B557C 800C4D7C 180022AE */  sw         $v0, 0x18($s1)
/* B5580 800C4D80 1000038E */  lw         $v1, 0x10($s0)
/* B5584 800C4D84 1C00228E */  lw         $v0, 0x1c($s1)
/* B5588 800C4D88 00000000 */  nop
/* B558C 800C4D8C 21186200 */  addu       $v1, $v1, $v0
/* B5590 800C4D90 02006104 */  bgez       $v1, .L800C4D9C
/* B5594 800C4D94 21106000 */   addu      $v0, $v1, $zero
/* B5598 800C4D98 7F006224 */  addiu      $v0, $v1, 0x7f
.L800C4D9C:
/* B559C 800C4D9C C3110200 */  sra        $v0, $v0, 7
/* B55A0 800C4DA0 C0110200 */  sll        $v0, $v0, 7
/* B55A4 800C4DA4 23106200 */  subu       $v0, $v1, $v0
/* B55A8 800C4DA8 100002AE */  sw         $v0, 0x10($s0)
/* B55AC 800C4DAC 0800028E */  lw         $v0, 8($s0)
/* B55B0 800C4DB0 1C00238E */  lw         $v1, 0x1c($s1)
/* B55B4 800C4DB4 00000000 */  nop
/* B55B8 800C4DB8 21104300 */  addu       $v0, $v0, $v1
/* B55BC 800C4DBC 080002AE */  sw         $v0, 8($s0)
/* B55C0 800C4DC0 FF1F4230 */  andi       $v0, $v0, 0x1fff
/* B55C4 800C4DC4 0D004014 */  bnez       $v0, .L800C4DFC
/* B55C8 800C4DC8 1F80033C */   lui       $v1, 0x801f
/* B55CC 800C4DCC 7D1C030C */  jal        FUN_800c71f4
/* B55D0 800C4DD0 21200002 */   addu      $a0, $s0, $zero
/* B55D4 800C4DD4 08004104 */  bgez       $v0, .L800C4DF8
/* B55D8 800C4DD8 200022AE */   sw        $v0, 0x20($s1)
/* B55DC 800C4DDC 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B55E0 800C4DE0 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
.L800C4DE4:
/* B55E4 800C4DE4 0400628C */  lw         $v0, 4($v1)
/* B55E8 800C4DE8 00000000 */  nop
/* B55EC 800C4DEC 01004224 */  addiu      $v0, $v0, 1
/* B55F0 800C4DF0 88130308 */  j          .L800C4E20
/* B55F4 800C4DF4 040062AC */   sw        $v0, 4($v1)
.L800C4DF8:
/* B55F8 800C4DF8 1F80033C */  lui        $v1, %hi(D_801F7418)
.L800C4DFC:
/* B55FC 800C4DFC 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B5600 800C4E00 0400628C */  lw         $v0, 4($v1)
/* B5604 800C4E04 00000000 */  nop
/* B5608 800C4E08 FBFF4224 */  addiu      $v0, $v0, -5
/* B560C 800C4E0C 88130308 */  j          .L800C4E20
/* B5610 800C4E10 040062AC */   sw        $v0, 4($v1)
/* B5614 800C4E14 1800228E */  lw         $v0, 0x18($s1)
/* B5618 800C4E18 21980000 */  addu       $s3, $zero, $zero
/* B561C 800C4E1C 080022AE */  sw         $v0, 8($s1)
.L800C4E20:
/* B5620 800C4E20 03004012 */  beqz       $s2, .L800C4E30
/* B5624 800C4E24 FFFF0224 */   addiu     $v0, $zero, -1
/* B5628 800C4E28 21980000 */  addu       $s3, $zero, $zero
/* B562C 800C4E2C 080022AE */  sw         $v0, 8($s1)
.L800C4E30:
/* B5630 800C4E30 21106002 */  addu       $v0, $s3, $zero
/* B5634 800C4E34 2000BF8F */  lw         $ra, 0x20($sp)
/* B5638 800C4E38 1C00B38F */  lw         $s3, 0x1c($sp)
/* B563C 800C4E3C 1800B28F */  lw         $s2, 0x18($sp)
/* B5640 800C4E40 1400B18F */  lw         $s1, 0x14($sp)
/* B5644 800C4E44 1000B08F */  lw         $s0, 0x10($sp)
/* B5648 800C4E48 0800E003 */  jr         $ra
/* B564C 800C4E4C 2800BD27 */   addiu     $sp, $sp, 0x28
