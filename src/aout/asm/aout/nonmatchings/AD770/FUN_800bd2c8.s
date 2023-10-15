.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd2c8
/* ADAC8 800BD2C8 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* ADACC 800BD2CC 5C00BFAF */  sw         $ra, 0x5c($sp)
/* ADAD0 800BD2D0 5800BEAF */  sw         $fp, 0x58($sp)
/* ADAD4 800BD2D4 5400B7AF */  sw         $s7, 0x54($sp)
/* ADAD8 800BD2D8 5000B6AF */  sw         $s6, 0x50($sp)
/* ADADC 800BD2DC 4C00B5AF */  sw         $s5, 0x4c($sp)
/* ADAE0 800BD2E0 4800B4AF */  sw         $s4, 0x48($sp)
/* ADAE4 800BD2E4 4400B3AF */  sw         $s3, 0x44($sp)
/* ADAE8 800BD2E8 4000B2AF */  sw         $s2, 0x40($sp)
/* ADAEC 800BD2EC 3C00B1AF */  sw         $s1, 0x3c($sp)
/* ADAF0 800BD2F0 3800B0AF */  sw         $s0, 0x38($sp)
/* ADAF4 800BD2F4 1E80023C */  lui        $v0, %hi(D_801E1C40)
/* ADAF8 800BD2F8 401C5324 */  addiu      $s3, $v0, %lo(D_801E1C40)
/* ADAFC 800BD2FC 3000A0A7 */  sh         $zero, 0x30($sp)
/* ADB00 800BD300 80001E24 */  addiu      $fp, $zero, 0x80
.L800BD304:
/* ADB04 800BD304 00006386 */  lh         $v1, ($s3)
/* ADB08 800BD308 01000224 */  addiu      $v0, $zero, 1
/* ADB0C 800BD30C 07006210 */  beq        $v1, $v0, .L800BD32C
/* ADB10 800BD310 02006228 */   slti      $v0, $v1, 2
/* ADB14 800BD314 DF004014 */  bnez       $v0, .L800BD694
/* ADB18 800BD318 02000224 */   addiu     $v0, $zero, 2
/* ADB1C 800BD31C 5A006210 */  beq        $v1, $v0, .L800BD488
/* ADB20 800BD320 00000000 */   nop
/* ADB24 800BD324 A5F50208 */  j          .L800BD694
/* ADB28 800BD328 00000000 */   nop
.L800BD32C:
/* ADB2C 800BD32C 1000708E */  lw         $s0, 0x10($s3)
/* ADB30 800BD330 14006292 */  lbu        $v0, 0x14($s3)
/* ADB34 800BD334 00000000 */  nop
/* ADB38 800BD338 80005230 */  andi       $s2, $v0, 0x80
/* ADB3C 800BD33C 0C006896 */  lhu        $t0, 0xc($s3)
/* ADB40 800BD340 00000000 */  nop
/* ADB44 800BD344 2000A8A7 */  sh         $t0, 0x20($sp)
/* ADB48 800BD348 0E006896 */  lhu        $t0, 0xe($s3)
/* ADB4C 800BD34C 00000000 */  nop
/* ADB50 800BD350 2800A8A7 */  sh         $t0, 0x28($sp)
/* ADB54 800BD354 CF000012 */  beqz       $s0, .L800BD694
/* ADB58 800BD358 21A80000 */   addu      $s5, $zero, $zero
/* ADB5C 800BD35C 00000292 */  lbu        $v0, ($s0)
/* ADB60 800BD360 00000000 */  nop
/* ADB64 800BD364 CB004010 */  beqz       $v0, .L800BD694
/* ADB68 800BD368 00000000 */   nop
.L800BD36C:
/* ADB6C 800BD36C 12F6020C */  jal        FUN_800bd848
/* ADB70 800BD370 10000424 */   addiu     $a0, $zero, 0x10
/* ADB74 800BD374 21884000 */  addu       $s1, $v0, $zero
/* ADB78 800BD378 67F6020C */  jal        FUN_800bd99c
/* ADB7C 800BD37C 21202002 */   addu      $a0, $s1, $zero
/* ADB80 800BD380 21202002 */  addu       $a0, $s1, $zero
/* ADB84 800BD384 4FF6020C */  jal        FUN_800bd93c
/* ADB88 800BD388 01000524 */   addiu     $a1, $zero, 1
/* ADB8C 800BD38C 21202002 */  addu       $a0, $s1, $zero
/* ADB90 800BD390 5BF6020C */  jal        FUN_800bd96c
/* ADB94 800BD394 01000524 */   addiu     $a1, $zero, 1
/* ADB98 800BD398 04003EA2 */  sb         $fp, 4($s1)
/* ADB9C 800BD39C 05003EA2 */  sb         $fp, 5($s1)
/* ADBA0 800BD3A0 06003EA2 */  sb         $fp, 6($s1)
/* ADBA4 800BD3A4 2000A897 */  lhu        $t0, 0x20($sp)
/* ADBA8 800BD3A8 00000000 */  nop
/* ADBAC 800BD3AC 21101501 */  addu       $v0, $t0, $s5
/* ADBB0 800BD3B0 080022A6 */  sh         $v0, 8($s1)
/* ADBB4 800BD3B4 2800A897 */  lhu        $t0, 0x28($sp)
/* ADBB8 800BD3B8 00000000 */  nop
/* ADBBC 800BD3BC 0A0028A6 */  sh         $t0, 0xa($s1)
/* ADBC0 800BD3C0 00000492 */  lbu        $a0, ($s0)
/* ADBC4 800BD3C4 14006592 */  lbu        $a1, 0x14($s3)
/* ADBC8 800BD3C8 D9F5020C */  jal        FUN_800bd764
/* ADBCC 800BD3CC 00000000 */   nop
/* ADBD0 800BD3D0 08006386 */  lh         $v1, 8($s3)
/* ADBD4 800BD3D4 00140200 */  sll        $v0, $v0, 0x10
/* ADBD8 800BD3D8 03140200 */  sra        $v0, $v0, 0x10
/* ADBDC 800BD3DC 21186200 */  addu       $v1, $v1, $v0
/* ADBE0 800BD3E0 3F006330 */  andi       $v1, $v1, 0x3f
/* ADBE4 800BD3E4 80180300 */  sll        $v1, $v1, 2
/* ADBE8 800BD3E8 0C0023A2 */  sb         $v1, 0xc($s1)
/* ADBEC 800BD3EC 00000492 */  lbu        $a0, ($s0)
/* ADBF0 800BD3F0 14006592 */  lbu        $a1, 0x14($s3)
/* ADBF4 800BD3F4 EAF5020C */  jal        FUN_800bd7a8
/* ADBF8 800BD3F8 00000000 */   nop
/* ADBFC 800BD3FC 0A006392 */  lbu        $v1, 0xa($s3)
/* ADC00 800BD400 00000000 */  nop
/* ADC04 800BD404 21186200 */  addu       $v1, $v1, $v0
/* ADC08 800BD408 0D0023A2 */  sb         $v1, 0xd($s1)
/* ADC0C 800BD40C 15006292 */  lbu        $v0, 0x15($s3)
/* ADC10 800BD410 00000000 */  nop
/* ADC14 800BD414 80100200 */  sll        $v0, $v0, 2
/* ADC18 800BD418 1E80083C */  lui        $t0, %hi(D_801E17A8)
/* ADC1C 800BD41C A8170825 */  addiu      $t0, $t0, %lo(D_801E17A8)
/* ADC20 800BD420 21104800 */  addu       $v0, $v0, $t0
/* ADC24 800BD424 1A0C4484 */  lh         $a0, 0xc1a($v0)
/* ADC28 800BD428 180C4584 */  lh         $a1, 0xc18($v0)
/* ADC2C 800BD42C 47F6020C */  jal        GetClut
/* ADC30 800BD430 00000000 */   nop
/* ADC34 800BD434 0E0022A6 */  sh         $v0, 0xe($s1)
/* ADC38 800BD438 1E80083C */  lui        $t0, %hi(D_801E17A8)
/* ADC3C 800BD43C A8170825 */  addiu      $t0, $t0, %lo(D_801E17A8)
/* ADC40 800BD440 2C18048D */  lw         $a0, 0x182c($t0)
/* ADC44 800BD444 00000000 */  nop
/* ADC48 800BD448 F8038424 */  addiu      $a0, $a0, 0x3f8
/* ADC4C 800BD44C D685000C */  jal        AddPrim
/* ADC50 800BD450 21282002 */   addu      $a1, $s1, $zero
/* ADC54 800BD454 00141500 */  sll        $v0, $s5, 0x10
/* ADC58 800BD458 03004016 */  bnez       $s2, .L800BD468
/* ADC5C 800BD45C 03140200 */   sra       $v0, $v0, 0x10
/* ADC60 800BD460 1BF50208 */  j          .L800BD46C
/* ADC64 800BD464 08005524 */   addiu     $s5, $v0, 8
.L800BD468:
/* ADC68 800BD468 10005524 */  addiu      $s5, $v0, 0x10
.L800BD46C:
/* ADC6C 800BD46C 01001026 */  addiu      $s0, $s0, 1
/* ADC70 800BD470 00000292 */  lbu        $v0, ($s0)
/* ADC74 800BD474 00000000 */  nop
/* ADC78 800BD478 86004010 */  beqz       $v0, .L800BD694
/* ADC7C 800BD47C 00000000 */   nop
/* ADC80 800BD480 DBF40208 */  j          .L800BD36C
/* ADC84 800BD484 00000000 */   nop
.L800BD488:
/* ADC88 800BD488 1000648E */  lw         $a0, 0x10($s3)
/* ADC8C 800BD48C 14006292 */  lbu        $v0, 0x14($s3)
/* ADC90 800BD490 00000000 */  nop
/* ADC94 800BD494 80005230 */  andi       $s2, $v0, 0x80
/* ADC98 800BD498 0F004230 */  andi       $v0, $v0, 0xf
/* ADC9C 800BD49C 02004014 */  bnez       $v0, .L800BD4A8
/* ADCA0 800BD4A0 21804000 */   addu      $s0, $v0, $zero
/* ADCA4 800BD4A4 08001024 */  addiu      $s0, $zero, 8
.L800BD4A8:
/* ADCA8 800BD4A8 0C006896 */  lhu        $t0, 0xc($s3)
/* ADCAC 800BD4AC 00000000 */  nop
/* ADCB0 800BD4B0 2000A8A7 */  sh         $t0, 0x20($sp)
/* ADCB4 800BD4B4 0E006896 */  lhu        $t0, 0xe($s3)
/* ADCB8 800BD4B8 00000000 */  nop
/* ADCBC 800BD4BC 2800A8A7 */  sh         $t0, 0x28($sp)
/* ADCC0 800BD4C0 14006292 */  lbu        $v0, 0x14($s3)
/* ADCC4 800BD4C4 00000000 */  nop
/* ADCC8 800BD4C8 40004230 */  andi       $v0, $v0, 0x40
/* ADCCC 800BD4CC 05004010 */  beqz       $v0, .L800BD4E4
/* ADCD0 800BD4D0 21A80000 */   addu      $s5, $zero, $zero
/* ADCD4 800BD4D4 FCF5020C */  jal        FUN_800bd7f0
/* ADCD8 800BD4D8 21B80000 */   addu      $s7, $zero, $zero
/* ADCDC 800BD4DC 3BF50208 */  j          .L800BD4EC
/* ADCE0 800BD4E0 1800A2AF */   sw        $v0, 0x18($sp)
.L800BD4E4:
/* ADCE4 800BD4E4 1800A4AF */  sw         $a0, 0x18($sp)
/* ADCE8 800BD4E8 21B80000 */  addu       $s7, $zero, $zero
.L800BD4EC:
/* ADCEC 800BD4EC FF001632 */  andi       $s6, $s0, 0xff
/* ADCF0 800BD4F0 6800C012 */  beqz       $s6, .L800BD694
/* ADCF4 800BD4F4 00000000 */   nop
/* ADCF8 800BD4F8 FF005432 */  andi       $s4, $s2, 0xff
.L800BD4FC:
/* ADCFC 800BD4FC 12F6020C */  jal        FUN_800bd848
/* ADD00 800BD500 10000424 */   addiu     $a0, $zero, 0x10
/* ADD04 800BD504 21884000 */  addu       $s1, $v0, $zero
/* ADD08 800BD508 67F6020C */  jal        FUN_800bd99c
/* ADD0C 800BD50C 21202002 */   addu      $a0, $s1, $zero
/* ADD10 800BD510 21202002 */  addu       $a0, $s1, $zero
/* ADD14 800BD514 4FF6020C */  jal        FUN_800bd93c
/* ADD18 800BD518 01000524 */   addiu     $a1, $zero, 1
/* ADD1C 800BD51C 21202002 */  addu       $a0, $s1, $zero
/* ADD20 800BD520 5BF6020C */  jal        FUN_800bd96c
/* ADD24 800BD524 01000524 */   addiu     $a1, $zero, 1
/* ADD28 800BD528 04003EA2 */  sb         $fp, 4($s1)
/* ADD2C 800BD52C 05003EA2 */  sb         $fp, 5($s1)
/* ADD30 800BD530 06003EA2 */  sb         $fp, 6($s1)
/* ADD34 800BD534 00141600 */  sll        $v0, $s6, 0x10
/* ADD38 800BD538 83130200 */  sra        $v0, $v0, 0xe
/* ADD3C 800BD53C FCFF4224 */  addiu      $v0, $v0, -4
/* ADD40 800BD540 1800A88F */  lw         $t0, 0x18($sp)
/* ADD44 800BD544 00000000 */  nop
/* ADD48 800BD548 06104800 */  srlv       $v0, $t0, $v0
/* ADD4C 800BD54C 0F004430 */  andi       $a0, $v0, 0xf
/* ADD50 800BD550 02008010 */  beqz       $a0, .L800BD55C
/* ADD54 800BD554 00000000 */   nop
/* ADD58 800BD558 01001724 */  addiu      $s7, $zero, 1
.L800BD55C:
/* ADD5C 800BD55C 2000A897 */  lhu        $t0, 0x20($sp)
/* ADD60 800BD560 00000000 */  nop
/* ADD64 800BD564 21101501 */  addu       $v0, $t0, $s5
/* ADD68 800BD568 080022A6 */  sh         $v0, 8($s1)
/* ADD6C 800BD56C 2800A897 */  lhu        $t0, 0x28($sp)
/* ADD70 800BD570 16008014 */  bnez       $a0, .L800BD5CC
/* ADD74 800BD574 0A0028A6 */   sh        $t0, 0xa($s1)
/* ADD78 800BD578 14006292 */  lbu        $v0, 0x14($s3)
/* ADD7C 800BD57C 00000000 */  nop
/* ADD80 800BD580 20004230 */  andi       $v0, $v0, 0x20
/* ADD84 800BD584 12004010 */  beqz       $v0, .L800BD5D0
/* ADD88 800BD588 0F80103C */   lui       $s0, %hi(D_800EDDFC)
/* ADD8C 800BD58C 1100E016 */  bnez       $s7, .L800BD5D4
/* ADD90 800BD590 FCDD1026 */   addiu     $s0, $s0, %lo(D_800EDDFC)
/* ADD94 800BD594 00141600 */  sll        $v0, $s6, 0x10
/* ADD98 800BD598 03140200 */  sra        $v0, $v0, 0x10
/* ADD9C 800BD59C 01000324 */  addiu      $v1, $zero, 1
/* ADDA0 800BD5A0 0B004310 */  beq        $v0, $v1, .L800BD5D0
/* ADDA4 800BD5A4 0F80103C */   lui       $s0, 0x800f
/* ADDA8 800BD5A8 20000424 */  addiu      $a0, $zero, 0x20
/* ADDAC 800BD5AC D9F5020C */  jal        FUN_800bd764
/* ADDB0 800BD5B0 21288002 */   addu      $a1, $s4, $zero
/* ADDB4 800BD5B4 08007286 */  lh         $s2, 8($s3)
/* ADDB8 800BD5B8 00140200 */  sll        $v0, $v0, 0x10
/* ADDBC 800BD5BC 03140200 */  sra        $v0, $v0, 0x10
/* ADDC0 800BD5C0 21904202 */  addu       $s2, $s2, $v0
/* ADDC4 800BD5C4 7EF50208 */  j          .L800BD5F8
/* ADDC8 800BD5C8 20000424 */   addiu     $a0, $zero, 0x20
.L800BD5CC:
/* ADDCC 800BD5CC 0F80103C */  lui        $s0, %hi(D_800EDDFC)
.L800BD5D0:
/* ADDD0 800BD5D0 FCDD1026 */  addiu      $s0, $s0, %lo(D_800EDDFC)
.L800BD5D4:
/* ADDD4 800BD5D4 21809000 */  addu       $s0, $a0, $s0
/* ADDD8 800BD5D8 00000492 */  lbu        $a0, ($s0)
/* ADDDC 800BD5DC D9F5020C */  jal        FUN_800bd764
/* ADDE0 800BD5E0 21288002 */   addu      $a1, $s4, $zero
/* ADDE4 800BD5E4 08007286 */  lh         $s2, 8($s3)
/* ADDE8 800BD5E8 00140200 */  sll        $v0, $v0, 0x10
/* ADDEC 800BD5EC 03140200 */  sra        $v0, $v0, 0x10
/* ADDF0 800BD5F0 21904202 */  addu       $s2, $s2, $v0
/* ADDF4 800BD5F4 00000492 */  lbu        $a0, ($s0)
.L800BD5F8:
/* ADDF8 800BD5F8 EAF5020C */  jal        FUN_800bd7a8
/* ADDFC 800BD5FC 21288002 */   addu      $a1, $s4, $zero
/* ADE00 800BD600 0A006386 */  lh         $v1, 0xa($s3)
/* ADE04 800BD604 00140200 */  sll        $v0, $v0, 0x10
/* ADE08 800BD608 03140200 */  sra        $v0, $v0, 0x10
/* ADE0C 800BD60C 21186200 */  addu       $v1, $v1, $v0
/* ADE10 800BD610 3F004232 */  andi       $v0, $s2, 0x3f
/* ADE14 800BD614 80100200 */  sll        $v0, $v0, 2
/* ADE18 800BD618 0C0022A2 */  sb         $v0, 0xc($s1)
/* ADE1C 800BD61C 0D0023A2 */  sb         $v1, 0xd($s1)
/* ADE20 800BD620 15006292 */  lbu        $v0, 0x15($s3)
/* ADE24 800BD624 00000000 */  nop
/* ADE28 800BD628 80100200 */  sll        $v0, $v0, 2
/* ADE2C 800BD62C 1E80083C */  lui        $t0, %hi(D_801E17A8)
/* ADE30 800BD630 A8170825 */  addiu      $t0, $t0, %lo(D_801E17A8)
/* ADE34 800BD634 21104800 */  addu       $v0, $v0, $t0
/* ADE38 800BD638 1A0C4484 */  lh         $a0, 0xc1a($v0)
/* ADE3C 800BD63C 180C4584 */  lh         $a1, 0xc18($v0)
/* ADE40 800BD640 47F6020C */  jal        GetClut
/* ADE44 800BD644 00000000 */   nop
/* ADE48 800BD648 0E0022A6 */  sh         $v0, 0xe($s1)
/* ADE4C 800BD64C 1E80083C */  lui        $t0, %hi(D_801E17A8)
/* ADE50 800BD650 A8170825 */  addiu      $t0, $t0, %lo(D_801E17A8)
/* ADE54 800BD654 2C18048D */  lw         $a0, 0x182c($t0)
/* ADE58 800BD658 00000000 */  nop
/* ADE5C 800BD65C F8038424 */  addiu      $a0, $a0, 0x3f8
/* ADE60 800BD660 D685000C */  jal        AddPrim
/* ADE64 800BD664 21282002 */   addu      $a1, $s1, $zero
/* ADE68 800BD668 00141500 */  sll        $v0, $s5, 0x10
/* ADE6C 800BD66C 03008016 */  bnez       $s4, .L800BD67C
/* ADE70 800BD670 03140200 */   sra       $v0, $v0, 0x10
/* ADE74 800BD674 A0F50208 */  j          .L800BD680
/* ADE78 800BD678 08005524 */   addiu     $s5, $v0, 8
.L800BD67C:
/* ADE7C 800BD67C 10005524 */  addiu      $s5, $v0, 0x10
.L800BD680:
/* ADE80 800BD680 FFFFC226 */  addiu      $v0, $s6, -1
/* ADE84 800BD684 21B04000 */  addu       $s6, $v0, $zero
/* ADE88 800BD688 00140200 */  sll        $v0, $v0, 0x10
/* ADE8C 800BD68C 9BFF4014 */  bnez       $v0, .L800BD4FC
/* ADE90 800BD690 00000000 */   nop
.L800BD694:
/* ADE94 800BD694 3000A897 */  lhu        $t0, 0x30($sp)
/* ADE98 800BD698 00000000 */  nop
/* ADE9C 800BD69C 01000225 */  addiu      $v0, $t0, 1
/* ADEA0 800BD6A0 3000A2A7 */  sh         $v0, 0x30($sp)
/* ADEA4 800BD6A4 00140200 */  sll        $v0, $v0, 0x10
/* ADEA8 800BD6A8 03140200 */  sra        $v0, $v0, 0x10
/* ADEAC 800BD6AC 50004228 */  slti       $v0, $v0, 0x50
/* ADEB0 800BD6B0 14FF4014 */  bnez       $v0, .L800BD304
/* ADEB4 800BD6B4 18007326 */   addiu     $s3, $s3, 0x18
/* ADEB8 800BD6B8 21200000 */  addu       $a0, $zero, $zero
/* ADEBC 800BD6BC 21288000 */  addu       $a1, $a0, $zero
/* ADEC0 800BD6C0 00030624 */  addiu      $a2, $zero, 0x300
/* ADEC4 800BD6C4 0DAE010C */  jal        GetTPage
/* ADEC8 800BD6C8 00010724 */   addiu     $a3, $zero, 0x100
/* ADECC 800BD6CC 21904000 */  addu       $s2, $v0, $zero
/* ADED0 800BD6D0 12F6020C */  jal        FUN_800bd848
/* ADED4 800BD6D4 0C000424 */   addiu     $a0, $zero, 0xc
/* ADED8 800BD6D8 21884000 */  addu       $s1, $v0, $zero
/* ADEDC 800BD6DC 1E80103C */  lui        $s0, %hi(D_801E17A8)
/* ADEE0 800BD6E0 A8171026 */  addiu      $s0, $s0, %lo(D_801E17A8)
/* ADEE4 800BD6E4 2810038E */  lw         $v1, 0x1028($s0)
/* ADEE8 800BD6E8 00000000 */  nop
/* ADEEC 800BD6EC 40100300 */  sll        $v0, $v1, 1
/* ADEF0 800BD6F0 21104300 */  addu       $v0, $v0, $v1
/* ADEF4 800BD6F4 C0100200 */  sll        $v0, $v0, 3
/* ADEF8 800BD6F8 23104300 */  subu       $v0, $v0, $v1
/* ADEFC 800BD6FC 80100200 */  sll        $v0, $v0, 2
/* ADF00 800BD700 0C000326 */  addiu      $v1, $s0, 0xc
/* ADF04 800BD704 21104300 */  addu       $v0, $v0, $v1
/* ADF08 800BD708 1000A2AF */  sw         $v0, 0x10($sp)
/* ADF0C 800BD70C 21202002 */  addu       $a0, $s1, $zero
/* ADF10 800BD710 21280000 */  addu       $a1, $zero, $zero
/* ADF14 800BD714 01000624 */  addiu      $a2, $zero, 1
/* ADF18 800BD718 6FF6020C */  jal        SetDrawMode
/* ADF1C 800BD71C FFFF4732 */   andi      $a3, $s2, 0xffff
/* ADF20 800BD720 2C18048E */  lw         $a0, 0x182c($s0)
/* ADF24 800BD724 00000000 */  nop
/* ADF28 800BD728 F8038424 */  addiu      $a0, $a0, 0x3f8
/* ADF2C 800BD72C D685000C */  jal        AddPrim
/* ADF30 800BD730 21282002 */   addu      $a1, $s1, $zero
/* ADF34 800BD734 5C00BF8F */  lw         $ra, 0x5c($sp)
/* ADF38 800BD738 5800BE8F */  lw         $fp, 0x58($sp)
/* ADF3C 800BD73C 5400B78F */  lw         $s7, 0x54($sp)
/* ADF40 800BD740 5000B68F */  lw         $s6, 0x50($sp)
/* ADF44 800BD744 4C00B58F */  lw         $s5, 0x4c($sp)
/* ADF48 800BD748 4800B48F */  lw         $s4, 0x48($sp)
/* ADF4C 800BD74C 4400B38F */  lw         $s3, 0x44($sp)
/* ADF50 800BD750 4000B28F */  lw         $s2, 0x40($sp)
/* ADF54 800BD754 3C00B18F */  lw         $s1, 0x3c($sp)
/* ADF58 800BD758 3800B08F */  lw         $s0, 0x38($sp)
/* ADF5C 800BD75C 0800E003 */  jr         $ra
/* ADF60 800BD760 6000BD27 */   addiu     $sp, $sp, 0x60
