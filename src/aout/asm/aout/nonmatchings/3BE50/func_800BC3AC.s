.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC3AC
/* ACBAC 800BC3AC 21508000 */  addu       $t2, $a0, $zero
/* ACBB0 800BC3B0 1400438D */  lw         $v1, 0x14($t2)
/* ACBB4 800BC3B4 00000000 */  nop
/* ACBB8 800BC3B8 64006228 */  slti       $v0, $v1, 0x64
/* ACBBC 800BC3BC 03004014 */  bnez       $v0, .L800BC3CC
/* ACBC0 800BC3C0 6666083C */   lui       $t0, 0x6666
/* ACBC4 800BC3C4 9CFF6224 */  addiu      $v0, $v1, -0x64
/* ACBC8 800BC3C8 140042AD */  sw         $v0, 0x14($t2)
.L800BC3CC:
/* ACBCC 800BC3CC 0000458D */  lw         $a1, ($t2)
/* ACBD0 800BC3D0 67660835 */  ori        $t0, $t0, 0x6667
/* ACBD4 800BC3D4 1800A800 */  mult       $a1, $t0
/* ACBD8 800BC3D8 621F093C */  lui        $t1, 0x1f62
/* ACBDC 800BC3DC 621F073C */  lui        $a3, 0x1f62
/* ACBE0 800BC3E0 F03F2295 */  lhu        $v0, 0x3ff0($t1)
/* ACBE4 800BC3E4 0400468D */  lw         $a2, 4($t2)
/* ACBE8 800BC3E8 80004234 */  ori        $v0, $v0, 0x80
/* ACBEC 800BC3EC F03F22A5 */  sh         $v0, 0x3ff0($t1)
/* ACBF0 800BC3F0 C3170500 */  sra        $v0, $a1, 0x1f
/* ACBF4 800BC3F4 10580000 */  mfhi       $t3
/* ACBF8 800BC3F8 83200B00 */  sra        $a0, $t3, 2
/* ACBFC 800BC3FC 23208200 */  subu       $a0, $a0, $v0
/* ACC00 800BC400 1800C800 */  mult       $a2, $t0
/* ACC04 800BC404 0F008330 */  andi       $v1, $a0, 0xf
/* ACC08 800BC408 00190300 */  sll        $v1, $v1, 4
/* ACC0C 800BC40C 80100400 */  sll        $v0, $a0, 2
/* ACC10 800BC410 21104400 */  addu       $v0, $v0, $a0
/* ACC14 800BC414 40100200 */  sll        $v0, $v0, 1
/* ACC18 800BC418 2328A200 */  subu       $a1, $a1, $v0
/* ACC1C 800BC41C 25186500 */  or         $v1, $v1, $a1
/* ACC20 800BC420 621F053C */  lui        $a1, 0x1f62
/* ACC24 800BC424 C3170600 */  sra        $v0, $a2, 0x1f
/* ACC28 800BC428 F23FE3A4 */  sh         $v1, 0x3ff2($a3)
/* ACC2C 800BC42C 0800478D */  lw         $a3, 8($t2)
/* ACC30 800BC430 10580000 */  mfhi       $t3
/* ACC34 800BC434 83180B00 */  sra        $v1, $t3, 2
/* ACC38 800BC438 23186200 */  subu       $v1, $v1, $v0
/* ACC3C 800BC43C 0F006430 */  andi       $a0, $v1, 0xf
/* ACC40 800BC440 1800E800 */  mult       $a3, $t0
/* ACC44 800BC444 00210400 */  sll        $a0, $a0, 4
/* ACC48 800BC448 80100300 */  sll        $v0, $v1, 2
/* ACC4C 800BC44C 21104300 */  addu       $v0, $v0, $v1
/* ACC50 800BC450 40100200 */  sll        $v0, $v0, 1
/* ACC54 800BC454 2330C200 */  subu       $a2, $a2, $v0
/* ACC58 800BC458 25208600 */  or         $a0, $a0, $a2
/* ACC5C 800BC45C 621F063C */  lui        $a2, 0x1f62
/* ACC60 800BC460 F43FA4A4 */  sh         $a0, 0x3ff4($a1)
/* ACC64 800BC464 1800458D */  lw         $a1, 0x18($t2)
/* ACC68 800BC468 C3170700 */  sra        $v0, $a3, 0x1f
/* ACC6C 800BC46C 0100A524 */  addiu      $a1, $a1, 1
/* ACC70 800BC470 10580000 */  mfhi       $t3
/* ACC74 800BC474 83200B00 */  sra        $a0, $t3, 2
/* ACC78 800BC478 23208200 */  subu       $a0, $a0, $v0
/* ACC7C 800BC47C 1800A800 */  mult       $a1, $t0
/* ACC80 800BC480 0F008330 */  andi       $v1, $a0, 0xf
/* ACC84 800BC484 00190300 */  sll        $v1, $v1, 4
/* ACC88 800BC488 80100400 */  sll        $v0, $a0, 2
/* ACC8C 800BC48C 21104400 */  addu       $v0, $v0, $a0
/* ACC90 800BC490 40100200 */  sll        $v0, $v0, 1
/* ACC94 800BC494 2338E200 */  subu       $a3, $a3, $v0
/* ACC98 800BC498 25186700 */  or         $v1, $v1, $a3
/* ACC9C 800BC49C 621F073C */  lui        $a3, 0x1f62
/* ACCA0 800BC4A0 C3170500 */  sra        $v0, $a1, 0x1f
/* ACCA4 800BC4A4 F63FC3A4 */  sh         $v1, 0x3ff6($a2)
/* ACCA8 800BC4A8 0C00468D */  lw         $a2, 0xc($t2)
/* ACCAC 800BC4AC 10580000 */  mfhi       $t3
/* ACCB0 800BC4B0 83180B00 */  sra        $v1, $t3, 2
/* ACCB4 800BC4B4 23186200 */  subu       $v1, $v1, $v0
/* ACCB8 800BC4B8 1800C800 */  mult       $a2, $t0
/* ACCBC 800BC4BC 0F006430 */  andi       $a0, $v1, 0xf
/* ACCC0 800BC4C0 00210400 */  sll        $a0, $a0, 4
/* ACCC4 800BC4C4 80100300 */  sll        $v0, $v1, 2
/* ACCC8 800BC4C8 21104300 */  addu       $v0, $v0, $v1
/* ACCCC 800BC4CC 40100200 */  sll        $v0, $v0, 1
/* ACCD0 800BC4D0 2328A200 */  subu       $a1, $a1, $v0
/* ACCD4 800BC4D4 25208500 */  or         $a0, $a0, $a1
/* ACCD8 800BC4D8 F83FE4A4 */  sh         $a0, 0x3ff8($a3)
/* ACCDC 800BC4DC 621F073C */  lui        $a3, 0x1f62
/* ACCE0 800BC4E0 C3170600 */  sra        $v0, $a2, 0x1f
/* ACCE4 800BC4E4 1000458D */  lw         $a1, 0x10($t2)
/* ACCE8 800BC4E8 10580000 */  mfhi       $t3
/* ACCEC 800BC4EC 0100A524 */  addiu      $a1, $a1, 1
/* ACCF0 800BC4F0 83200B00 */  sra        $a0, $t3, 2
/* ACCF4 800BC4F4 1800A800 */  mult       $a1, $t0
/* ACCF8 800BC4F8 23208200 */  subu       $a0, $a0, $v0
/* ACCFC 800BC4FC 0F008330 */  andi       $v1, $a0, 0xf
/* ACD00 800BC500 00190300 */  sll        $v1, $v1, 4
/* ACD04 800BC504 80100400 */  sll        $v0, $a0, 2
/* ACD08 800BC508 21104400 */  addu       $v0, $v0, $a0
/* ACD0C 800BC50C 40100200 */  sll        $v0, $v0, 1
/* ACD10 800BC510 2330C200 */  subu       $a2, $a2, $v0
/* ACD14 800BC514 25186600 */  or         $v1, $v1, $a2
/* ACD18 800BC518 FA3FE3A4 */  sh         $v1, 0x3ffa($a3)
/* ACD1C 800BC51C 621F073C */  lui        $a3, 0x1f62
/* ACD20 800BC520 C3170500 */  sra        $v0, $a1, 0x1f
/* ACD24 800BC524 10580000 */  mfhi       $t3
/* ACD28 800BC528 1400468D */  lw         $a2, 0x14($t2)
/* ACD2C 800BC52C 83180B00 */  sra        $v1, $t3, 2
/* ACD30 800BC530 1800C800 */  mult       $a2, $t0
/* ACD34 800BC534 23186200 */  subu       $v1, $v1, $v0
/* ACD38 800BC538 0F006430 */  andi       $a0, $v1, 0xf
/* ACD3C 800BC53C 00210400 */  sll        $a0, $a0, 4
/* ACD40 800BC540 80100300 */  sll        $v0, $v1, 2
/* ACD44 800BC544 21104300 */  addu       $v0, $v0, $v1
/* ACD48 800BC548 40100200 */  sll        $v0, $v0, 1
/* ACD4C 800BC54C 2328A200 */  subu       $a1, $a1, $v0
/* ACD50 800BC550 25208500 */  or         $a0, $a0, $a1
/* ACD54 800BC554 621F053C */  lui        $a1, 0x1f62
/* ACD58 800BC558 C3170600 */  sra        $v0, $a2, 0x1f
/* ACD5C 800BC55C FC3FE4A4 */  sh         $a0, 0x3ffc($a3)
/* ACD60 800BC560 10580000 */  mfhi       $t3
/* ACD64 800BC564 83180B00 */  sra        $v1, $t3, 2
/* ACD68 800BC568 23186200 */  subu       $v1, $v1, $v0
/* ACD6C 800BC56C 0F006430 */  andi       $a0, $v1, 0xf
/* ACD70 800BC570 00210400 */  sll        $a0, $a0, 4
/* ACD74 800BC574 80100300 */  sll        $v0, $v1, 2
/* ACD78 800BC578 21104300 */  addu       $v0, $v0, $v1
/* ACD7C 800BC57C 40100200 */  sll        $v0, $v0, 1
/* ACD80 800BC580 2330C200 */  subu       $a2, $a2, $v0
/* ACD84 800BC584 25208600 */  or         $a0, $a0, $a2
/* ACD88 800BC588 FE3FA4A4 */  sh         $a0, 0x3ffe($a1)
/* ACD8C 800BC58C F03F2295 */  lhu        $v0, 0x3ff0($t1)
/* ACD90 800BC590 00000000 */  nop
/* ACD94 800BC594 7F004230 */  andi       $v0, $v0, 0x7f
/* ACD98 800BC598 F03F22A5 */  sh         $v0, 0x3ff0($t1)
/* ACD9C 800BC59C 0800E003 */  jr         $ra
/* ACDA0 800BC5A0 00000000 */   nop
