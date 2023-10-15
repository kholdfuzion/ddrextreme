.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007ba44
/* 6C244 8007BA44 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 6C248 8007BA48 21300000 */  addu       $a2, $zero, $zero
/* 6C24C 8007BA4C 0F80023C */  lui        $v0, %hi(D_800F02D4)
/* 6C250 8007BA50 2000B2AF */  sw         $s2, 0x20($sp)
/* 6C254 8007BA54 21904000 */  addu       $s2, $v0, $zero
/* 6C258 8007BA58 1800B0AF */  sw         $s0, 0x18($sp)
/* 6C25C 8007BA5C D4025024 */  addiu      $s0, $v0, %lo(D_800F02D4)
/* 6C260 8007BA60 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 6C264 8007BA64 08001126 */  addiu      $s1, $s0, 8
.L8007BA68:
/* 6C268 8007BA68 21380000 */  addu       $a3, $zero, $zero
/* 6C26C 8007BA6C 80200600 */  sll        $a0, $a2, 2
/* 6C270 8007BA70 21108600 */  addu       $v0, $a0, $a2
/* 6C274 8007BA74 C0190200 */  sll        $v1, $v0, 7
/* 6C278 8007BA78 21104300 */  addu       $v0, $v0, $v1
/* 6C27C 8007BA7C 40110200 */  sll        $v0, $v0, 5
/* 6C280 8007BA80 23104600 */  subu       $v0, $v0, $a2
/* 6C284 8007BA84 80280200 */  sll        $a1, $v0, 2
/* 6C288 8007BA88 2118B000 */  addu       $v1, $a1, $s0
/* 6C28C 8007BA8C 08006284 */  lh         $v0, 8($v1)
/* 6C290 8007BA90 00000000 */  nop
/* 6C294 8007BA94 07004104 */  bgez       $v0, .L8007BAB4
/* 6C298 8007BA98 0100D824 */   addiu     $t8, $a2, 1
/* 6C29C 8007BA9C 2118B100 */  addu       $v1, $a1, $s1
.L8007BAA0:
/* 6C2A0 8007BAA0 28006324 */  addiu      $v1, $v1, 0x28
/* 6C2A4 8007BAA4 00006284 */  lh         $v0, ($v1)
/* 6C2A8 8007BAA8 00000000 */  nop
/* 6C2AC 8007BAAC FCFF4004 */  bltz       $v0, .L8007BAA0
/* 6C2B0 8007BAB0 0100E724 */   addiu     $a3, $a3, 1
.L8007BAB4:
/* 6C2B4 8007BAB4 21580000 */  addu       $t3, $zero, $zero
/* 6C2B8 8007BAB8 21680000 */  addu       $t5, $zero, $zero
/* 6C2BC 8007BABC 21108600 */  addu       $v0, $a0, $a2
/* 6C2C0 8007BAC0 C0190200 */  sll        $v1, $v0, 7
/* 6C2C4 8007BAC4 21104300 */  addu       $v0, $v0, $v1
/* 6C2C8 8007BAC8 40110200 */  sll        $v0, $v0, 5
/* 6C2CC 8007BACC 23104600 */  subu       $v0, $v0, $a2
/* 6C2D0 8007BAD0 80700200 */  sll        $t6, $v0, 2
/* 6C2D4 8007BAD4 D4025926 */  addiu      $t9, $s2, 0x2d4
/* 6C2D8 8007BAD8 2160D901 */  addu       $t4, $t6, $t9
/* 6C2DC 8007BADC 21208001 */  addu       $a0, $t4, $zero
/* 6C2E0 8007BAE0 80100700 */  sll        $v0, $a3, 2
/* 6C2E4 8007BAE4 21104700 */  addu       $v0, $v0, $a3
/* 6C2E8 8007BAE8 C0100200 */  sll        $v0, $v0, 3
/* 6C2EC 8007BAEC 21308200 */  addu       $a2, $a0, $v0
/* 6C2F0 8007BAF0 0600C384 */  lh         $v1, 6($a2)
/* 6C2F4 8007BAF4 00000000 */  nop
/* 6C2F8 8007BAF8 90006010 */  beqz       $v1, .L8007BD3C
/* 6C2FC 8007BAFC 21788001 */   addu      $t7, $t4, $zero
/* 6C300 8007BB00 80100300 */  sll        $v0, $v1, 2
.L8007BB04:
/* 6C304 8007BB04 21104300 */  addu       $v0, $v0, $v1
/* 6C308 8007BB08 C0100200 */  sll        $v0, $v0, 3
/* 6C30C 8007BB0C 2A186301 */  slt        $v1, $t3, $v1
/* 6C310 8007BB10 40006010 */  beqz       $v1, .L8007BC14
/* 6C314 8007BB14 21408200 */   addu      $t0, $a0, $v0
/* 6C318 8007BB18 2148AF01 */  addu       $t1, $t5, $t7
.L8007BB1C:
/* 6C31C 8007BB1C 08002385 */  lh         $v1, 8($t1)
/* 6C320 8007BB20 FFFF0224 */  addiu      $v0, $zero, -1
/* 6C324 8007BB24 35006214 */  bne        $v1, $v0, .L8007BBFC
/* 6C328 8007BB28 00000000 */   nop
/* 6C32C 8007BB2C 0000238D */  lw         $v1, ($t1)
/* 6C330 8007BB30 0000C58C */  lw         $a1, ($a2)
/* 6C334 8007BB34 00000000 */  nop
/* 6C338 8007BB38 2A10A300 */  slt        $v0, $a1, $v1
/* 6C33C 8007BB3C 18004010 */  beqz       $v0, .L8007BBA0
/* 6C340 8007BB40 23386500 */   subu      $a3, $v1, $a1
/* 6C344 8007BB44 0800CA94 */  lhu        $t2, 8($a2)
/* 6C348 8007BB48 08000485 */  lh         $a0, 8($t0)
/* 6C34C 8007BB4C 0800C384 */  lh         $v1, 8($a2)
/* 6C350 8007BB50 0000028D */  lw         $v0, ($t0)
/* 6C354 8007BB54 23208300 */  subu       $a0, $a0, $v1
/* 6C358 8007BB58 23104500 */  subu       $v0, $v0, $a1
/* 6C35C 8007BB5C C2180200 */  srl        $v1, $v0, 3
/* 6C360 8007BB60 03006014 */  bnez       $v1, .L8007BB70
/* 6C364 8007BB64 00000000 */   nop
/* 6C368 8007BB68 E6EE0108 */  j          .L8007BB98
/* 6C36C 8007BB6C 21108000 */   addu      $v0, $a0, $zero
.L8007BB70:
/* 6C370 8007BB70 C2100700 */  srl        $v0, $a3, 3
/* 6C374 8007BB74 18004400 */  mult       $v0, $a0
/* 6C378 8007BB78 12100000 */  mflo       $v0
/* 6C37C 8007BB7C 00000000 */  nop
/* 6C380 8007BB80 00000000 */  nop
/* 6C384 8007BB84 1B004300 */  divu       $zero, $v0, $v1
/* 6C388 8007BB88 12100000 */  mflo       $v0
/* 6C38C 8007BB8C 02006014 */  bnez       $v1, .L8007BB98
/* 6C390 8007BB90 00000000 */   nop
/* 6C394 8007BB94 CD010000 */  break      0, 7
.L8007BB98:
/* 6C398 8007BB98 FEEE0108 */   j         .L8007BBF8
/* 6C39C 8007BB9C 21104201 */   addu      $v0, $t2, $v0
.L8007BBA0:
/* 6C3A0 8007BBA0 2338A300 */  subu       $a3, $a1, $v1
/* 6C3A4 8007BBA4 0800CA94 */  lhu        $t2, 8($a2)
/* 6C3A8 8007BBA8 08000485 */  lh         $a0, 8($t0)
/* 6C3AC 8007BBAC 0800C384 */  lh         $v1, 8($a2)
/* 6C3B0 8007BBB0 0000028D */  lw         $v0, ($t0)
/* 6C3B4 8007BBB4 23208300 */  subu       $a0, $a0, $v1
/* 6C3B8 8007BBB8 23104500 */  subu       $v0, $v0, $a1
/* 6C3BC 8007BBBC C2180200 */  srl        $v1, $v0, 3
/* 6C3C0 8007BBC0 03006014 */  bnez       $v1, .L8007BBD0
/* 6C3C4 8007BBC4 C2100700 */   srl       $v0, $a3, 3
/* 6C3C8 8007BBC8 FDEE0108 */  j          .L8007BBF4
/* 6C3CC 8007BBCC 21108000 */   addu      $v0, $a0, $zero
.L8007BBD0:
/* 6C3D0 8007BBD0 18004400 */  mult       $v0, $a0
/* 6C3D4 8007BBD4 12100000 */  mflo       $v0
/* 6C3D8 8007BBD8 00000000 */  nop
/* 6C3DC 8007BBDC 00000000 */  nop
/* 6C3E0 8007BBE0 1B004300 */  divu       $zero, $v0, $v1
/* 6C3E4 8007BBE4 12100000 */  mflo       $v0
/* 6C3E8 8007BBE8 02006014 */  bnez       $v1, .L8007BBF4
/* 6C3EC 8007BBEC 00000000 */   nop
/* 6C3F0 8007BBF0 CD010000 */  break      0, 7
.L8007BBF4:
/* 6C3F4 8007BBF4 23104201 */   subu      $v0, $t2, $v0
.L8007BBF8:
/* 6C3F8 8007BBF8 080022A5 */  sh         $v0, 8($t1)
.L8007BBFC:
/* 6C3FC 8007BBFC 28002925 */  addiu      $t1, $t1, 0x28
/* 6C400 8007BC00 0600C284 */  lh         $v0, 6($a2)
/* 6C404 8007BC04 01006B25 */  addiu      $t3, $t3, 1
/* 6C408 8007BC08 2A106201 */  slt        $v0, $t3, $v0
/* 6C40C 8007BC0C C3FF4014 */  bnez       $v0, .L8007BB1C
/* 6C410 8007BC10 2800AD25 */   addiu     $t5, $t5, 0x28
.L8007BC14:
/* 6C414 8007BC14 06000385 */  lh         $v1, 6($t0)
/* 6C418 8007BC18 00000000 */  nop
/* 6C41C 8007BC1C 47006010 */  beqz       $v1, .L8007BD3C
/* 6C420 8007BC20 80100300 */   sll       $v0, $v1, 2
/* 6C424 8007BC24 21104300 */  addu       $v0, $v0, $v1
/* 6C428 8007BC28 C0100200 */  sll        $v0, $v0, 3
/* 6C42C 8007BC2C 21488201 */  addu       $t1, $t4, $v0
/* 6C430 8007BC30 08002385 */  lh         $v1, 8($t1)
/* 6C434 8007BC34 FFFF0224 */  addiu      $v0, $zero, -1
/* 6C438 8007BC38 36006214 */  bne        $v1, $v0, .L8007BD14
/* 6C43C 8007BC3C 00086229 */   slti      $v0, $t3, 0x800
/* 6C440 8007BC40 0000238D */  lw         $v1, ($t1)
/* 6C444 8007BC44 0000C58C */  lw         $a1, ($a2)
/* 6C448 8007BC48 00000000 */  nop
/* 6C44C 8007BC4C 2A10A300 */  slt        $v0, $a1, $v1
/* 6C450 8007BC50 18004010 */  beqz       $v0, .L8007BCB4
/* 6C454 8007BC54 23386500 */   subu      $a3, $v1, $a1
/* 6C458 8007BC58 0800CA94 */  lhu        $t2, 8($a2)
/* 6C45C 8007BC5C 08000485 */  lh         $a0, 8($t0)
/* 6C460 8007BC60 0800C384 */  lh         $v1, 8($a2)
/* 6C464 8007BC64 0000028D */  lw         $v0, ($t0)
/* 6C468 8007BC68 23208300 */  subu       $a0, $a0, $v1
/* 6C46C 8007BC6C 23104500 */  subu       $v0, $v0, $a1
/* 6C470 8007BC70 C2180200 */  srl        $v1, $v0, 3
/* 6C474 8007BC74 03006014 */  bnez       $v1, .L8007BC84
/* 6C478 8007BC78 00000000 */   nop
/* 6C47C 8007BC7C 2BEF0108 */  j          .L8007BCAC
/* 6C480 8007BC80 21108000 */   addu      $v0, $a0, $zero
.L8007BC84:
/* 6C484 8007BC84 C2100700 */  srl        $v0, $a3, 3
/* 6C488 8007BC88 18004400 */  mult       $v0, $a0
/* 6C48C 8007BC8C 12100000 */  mflo       $v0
/* 6C490 8007BC90 00000000 */  nop
/* 6C494 8007BC94 00000000 */  nop
/* 6C498 8007BC98 1B004300 */  divu       $zero, $v0, $v1
/* 6C49C 8007BC9C 12100000 */  mflo       $v0
/* 6C4A0 8007BCA0 02006014 */  bnez       $v1, .L8007BCAC
/* 6C4A4 8007BCA4 00000000 */   nop
/* 6C4A8 8007BCA8 CD010000 */  break      0, 7
.L8007BCAC:
/* 6C4AC 8007BCAC 43EF0108 */   j         .L8007BD0C
/* 6C4B0 8007BCB0 21104201 */   addu      $v0, $t2, $v0
.L8007BCB4:
/* 6C4B4 8007BCB4 2338A300 */  subu       $a3, $a1, $v1
/* 6C4B8 8007BCB8 0800CA94 */  lhu        $t2, 8($a2)
/* 6C4BC 8007BCBC 08000485 */  lh         $a0, 8($t0)
/* 6C4C0 8007BCC0 0800C384 */  lh         $v1, 8($a2)
/* 6C4C4 8007BCC4 0000028D */  lw         $v0, ($t0)
/* 6C4C8 8007BCC8 23208300 */  subu       $a0, $a0, $v1
/* 6C4CC 8007BCCC 23104500 */  subu       $v0, $v0, $a1
/* 6C4D0 8007BCD0 C2180200 */  srl        $v1, $v0, 3
/* 6C4D4 8007BCD4 03006014 */  bnez       $v1, .L8007BCE4
/* 6C4D8 8007BCD8 C2100700 */   srl       $v0, $a3, 3
/* 6C4DC 8007BCDC 42EF0108 */  j          .L8007BD08
/* 6C4E0 8007BCE0 21108000 */   addu      $v0, $a0, $zero
.L8007BCE4:
/* 6C4E4 8007BCE4 18004400 */  mult       $v0, $a0
/* 6C4E8 8007BCE8 12100000 */  mflo       $v0
/* 6C4EC 8007BCEC 00000000 */  nop
/* 6C4F0 8007BCF0 00000000 */  nop
/* 6C4F4 8007BCF4 1B004300 */  divu       $zero, $v0, $v1
/* 6C4F8 8007BCF8 12100000 */  mflo       $v0
/* 6C4FC 8007BCFC 02006014 */  bnez       $v1, .L8007BD08
/* 6C500 8007BD00 00000000 */   nop
/* 6C504 8007BD04 CD010000 */  break      0, 7
.L8007BD08:
/* 6C508 8007BD08 23104201 */   subu      $v0, $t2, $v0
.L8007BD0C:
/* 6C50C 8007BD0C 080022A5 */  sh         $v0, 8($t1)
/* 6C510 8007BD10 00086229 */  slti       $v0, $t3, 0x800
.L8007BD14:
/* 6C514 8007BD14 09004010 */  beqz       $v0, .L8007BD3C
/* 6C518 8007BD18 80100B00 */   sll       $v0, $t3, 2
/* 6C51C 8007BD1C 2120D901 */  addu       $a0, $t6, $t9
/* 6C520 8007BD20 21104B00 */  addu       $v0, $v0, $t3
/* 6C524 8007BD24 C0100200 */  sll        $v0, $v0, 3
/* 6C528 8007BD28 21308200 */  addu       $a2, $a0, $v0
/* 6C52C 8007BD2C 0600C384 */  lh         $v1, 6($a2)
/* 6C530 8007BD30 00000000 */  nop
/* 6C534 8007BD34 73FF6014 */  bnez       $v1, .L8007BB04
/* 6C538 8007BD38 80100300 */   sll       $v0, $v1, 2
.L8007BD3C:
/* 6C53C 8007BD3C 21300003 */  addu       $a2, $t8, $zero
/* 6C540 8007BD40 0200C228 */  slti       $v0, $a2, 2
/* 6C544 8007BD44 48FF4014 */  bnez       $v0, .L8007BA68
/* 6C548 8007BD48 21106001 */   addu      $v0, $t3, $zero
/* 6C54C 8007BD4C 2000B28F */  lw         $s2, 0x20($sp)
/* 6C550 8007BD50 1C00B18F */  lw         $s1, 0x1c($sp)
/* 6C554 8007BD54 1800B08F */  lw         $s0, 0x18($sp)
/* 6C558 8007BD58 0800E003 */  jr         $ra
/* 6C55C 8007BD5C 2800BD27 */   addiu     $sp, $sp, 0x28
