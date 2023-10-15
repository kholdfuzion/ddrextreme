.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ccc30
/* BD430 800CCC30 F8FFBD27 */  addiu      $sp, $sp, -8
/* BD434 800CCC34 80000424 */  addiu      $a0, $zero, 0x80
/* BD438 800CCC38 21380000 */  addu       $a3, $zero, $zero
/* BD43C 800CCC3C 2080063C */  lui        $a2, %hi(D_801FBD08)
/* BD440 800CCC40 6A1F083C */  lui        $t0, 0x1f6a
/* BD444 800CCC44 401F053C */  lui        $a1, 0x1f40
.L800CCC48:
/* BD448 800CCC48 08BDC294 */  lhu        $v0, %lo(D_801FBD08)($a2)
/* BD44C 800CCC4C 00000000 */  nop
/* BD450 800CCC50 02004234 */  ori        $v0, $v0, 2
/* BD454 800CCC54 000002A5 */  sh         $v0, ($t0)
/* BD458 800CCC58 0000A0AF */  sw         $zero, ($sp)
/* BD45C 800CCC5C 0000A38F */  lw         $v1, ($sp)
/* BD460 800CCC60 21180000 */  addu       $v1, $zero, $zero
/* BD464 800CCC64 08BDC2A4 */  sh         $v0, -0x42f8($a2)
.L800CCC68:
/* BD468 800CCC68 0600A294 */  lhu        $v0, 6($a1)
/* BD46C 800CCC6C 01006324 */  addiu      $v1, $v1, 1
/* BD470 800CCC70 3C006228 */  slti       $v0, $v1, 0x3c
/* BD474 800CCC74 FCFF4014 */  bnez       $v0, .L800CCC68
/* BD478 800CCC78 00000000 */   nop
/* BD47C 800CCC7C 21180000 */  addu       $v1, $zero, $zero
.L800CCC80:
/* BD480 800CCC80 0600A294 */  lhu        $v0, 6($a1)
/* BD484 800CCC84 01006324 */  addiu      $v1, $v1, 1
/* BD488 800CCC88 3C006228 */  slti       $v0, $v1, 0x3c
/* BD48C 800CCC8C FCFF4014 */  bnez       $v0, .L800CCC80
/* BD490 800CCC90 00000000 */   nop
/* BD494 800CCC94 0600A294 */  lhu        $v0, 6($a1)
/* BD498 800CCC98 00000000 */  nop
/* BD49C 800CCC9C 82100200 */  srl        $v0, $v0, 2
/* BD4A0 800CCCA0 01004230 */  andi       $v0, $v0, 1
/* BD4A4 800CCCA4 02004010 */  beqz       $v0, .L800CCCB0
/* BD4A8 800CCCA8 00000000 */   nop
/* BD4AC 800CCCAC 2538E400 */  or         $a3, $a3, $a0
.L800CCCB0:
/* BD4B0 800CCCB0 08BDC294 */  lhu        $v0, -0x42f8($a2)
/* BD4B4 800CCCB4 00000000 */  nop
/* BD4B8 800CCCB8 FDFF4230 */  andi       $v0, $v0, 0xfffd
/* BD4BC 800CCCBC 000002A5 */  sh         $v0, ($t0)
/* BD4C0 800CCCC0 0000A0AF */  sw         $zero, ($sp)
/* BD4C4 800CCCC4 0000A38F */  lw         $v1, ($sp)
/* BD4C8 800CCCC8 21180000 */  addu       $v1, $zero, $zero
/* BD4CC 800CCCCC 08BDC2A4 */  sh         $v0, -0x42f8($a2)
.L800CCCD0:
/* BD4D0 800CCCD0 0600A294 */  lhu        $v0, 6($a1)
/* BD4D4 800CCCD4 01006324 */  addiu      $v1, $v1, 1
/* BD4D8 800CCCD8 3C006228 */  slti       $v0, $v1, 0x3c
/* BD4DC 800CCCDC FCFF4014 */  bnez       $v0, .L800CCCD0
/* BD4E0 800CCCE0 00000000 */   nop
/* BD4E4 800CCCE4 21180000 */  addu       $v1, $zero, $zero
.L800CCCE8:
/* BD4E8 800CCCE8 0600A294 */  lhu        $v0, 6($a1)
/* BD4EC 800CCCEC 01006324 */  addiu      $v1, $v1, 1
/* BD4F0 800CCCF0 3C006228 */  slti       $v0, $v1, 0x3c
/* BD4F4 800CCCF4 FCFF4014 */  bnez       $v0, .L800CCCE8
/* BD4F8 800CCCF8 00000000 */   nop
/* BD4FC 800CCCFC 43200400 */  sra        $a0, $a0, 1
/* BD500 800CCD00 D1FF8014 */  bnez       $a0, .L800CCC48
/* BD504 800CCD04 2110E000 */   addu      $v0, $a3, $zero
/* BD508 800CCD08 0800E003 */  jr         $ra
/* BD50C 800CCD0C 0800BD27 */   addiu     $sp, $sp, 8
