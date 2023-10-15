.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ce368
/* BEB68 800CE368 641F053C */  lui        $a1, 0x1f64
/* BEB6C 800CE36C EE00A294 */  lhu        $v0, 0xee($a1)
/* BEB70 800CE370 00000000 */  nop
/* BEB74 800CE374 00104230 */  andi       $v0, $v0, 0x1000
/* BEB78 800CE378 05004014 */  bnez       $v0, .L800CE390
/* BEB7C 800CE37C 21300000 */   addu      $a2, $zero, $zero
/* BEB80 800CE380 0800E003 */  jr         $ra
/* BEB84 800CE384 FFFF0224 */   addiu     $v0, $zero, -1
.L800CE388:
/* BEB88 800CE388 2B390308 */  j          .L800CE4AC
/* BEB8C 800CE38C 21280000 */   addu      $a1, $zero, $zero
.L800CE390:
/* BEB90 800CE390 2080043C */  lui        $a0, %hi(D_801FBD00)
/* BEB94 800CE394 00BD8394 */  lhu        $v1, %lo(D_801FBD00)($a0)
/* BEB98 800CE398 2080023C */  lui        $v0, %hi(D_801FBCF8)
/* BEB9C 800CE39C 00106334 */  ori        $v1, $v1, 0x1000
/* BEBA0 800CE3A0 EE00A3A4 */  sh         $v1, 0xee($a1)
/* BEBA4 800CE3A4 F8BC40AC */  sw         $zero, %lo(D_801FBCF8)($v0)
/* BEBA8 800CE3A8 F8BC428C */  lw         $v0, -0x4308($v0)
/* BEBAC 800CE3AC FFFF0734 */  ori        $a3, $zero, 0xffff
/* BEBB0 800CE3B0 00BD83A4 */  sh         $v1, -0x4300($a0)
.L800CE3B4:
/* BEBB4 800CE3B4 EE00A294 */  lhu        $v0, 0xee($a1)
/* BEBB8 800CE3B8 00000000 */  nop
/* BEBBC 800CE3BC 00104230 */  andi       $v0, $v0, 0x1000
/* BEBC0 800CE3C0 04004710 */  beq        $v0, $a3, .L800CE3D4
/* BEBC4 800CE3C4 00000000 */   nop
/* BEBC8 800CE3C8 0100C624 */  addiu      $a2, $a2, 1
/* BEBCC 800CE3CC F9FFC018 */  blez       $a2, .L800CE3B4
/* BEBD0 800CE3D0 00000000 */   nop
.L800CE3D4:
/* BEBD4 800CE3D4 21280000 */  addu       $a1, $zero, $zero
/* BEBD8 800CE3D8 641F023C */  lui        $v0, 0x1f64
/* BEBDC 800CE3DC 21384000 */  addu       $a3, $v0, $zero
/* BEBE0 800CE3E0 2080043C */  lui        $a0, %hi(D_801FBD00)
/* BEBE4 800CE3E4 FFFF0834 */  ori        $t0, $zero, 0xffff
/* BEBE8 800CE3E8 00BD8394 */  lhu        $v1, %lo(D_801FBD00)($a0)
/* BEBEC 800CE3EC 2080023C */  lui        $v0, %hi(D_801FBCF8)
/* BEBF0 800CE3F0 FFEF6330 */  andi       $v1, $v1, 0xefff
/* BEBF4 800CE3F4 EE00E3A4 */  sh         $v1, 0xee($a3)
/* BEBF8 800CE3F8 F8BC40AC */  sw         $zero, %lo(D_801FBCF8)($v0)
/* BEBFC 800CE3FC F8BC428C */  lw         $v0, -0x4308($v0)
/* BEC00 800CE400 2080023C */  lui        $v0, %hi(D_801FBD04)
/* BEC04 800CE404 04BD46AC */  sw         $a2, %lo(D_801FBD04)($v0)
/* BEC08 800CE408 00BD83A4 */  sh         $v1, -0x4300($a0)
.L800CE40C:
/* BEC0C 800CE40C EE00E294 */  lhu        $v0, 0xee($a3)
/* BEC10 800CE410 00000000 */  nop
/* BEC14 800CE414 00104230 */  andi       $v0, $v0, 0x1000
/* BEC18 800CE418 05004810 */  beq        $v0, $t0, .L800CE430
/* BEC1C 800CE41C 21200000 */   addu      $a0, $zero, $zero
/* BEC20 800CE420 0100A524 */  addiu      $a1, $a1, 1
/* BEC24 800CE424 0F00A228 */  slti       $v0, $a1, 0xf
/* BEC28 800CE428 F8FF4014 */  bnez       $v0, .L800CE40C
/* BEC2C 800CE42C 00000000 */   nop
.L800CE430:
/* BEC30 800CE430 641F023C */  lui        $v0, 0x1f64
/* BEC34 800CE434 21304000 */  addu       $a2, $v0, $zero
/* BEC38 800CE438 FFFF0734 */  ori        $a3, $zero, 0xffff
/* BEC3C 800CE43C EE00C294 */  lhu        $v0, 0xee($a2)
/* BEC40 800CE440 2080033C */  lui        $v1, %hi(D_801FBD04)
/* BEC44 800CE444 04BD65AC */  sw         $a1, %lo(D_801FBD04)($v1)
/* BEC48 800CE448 02130200 */  srl        $v0, $v0, 0xc
/* BEC4C 800CE44C 01004830 */  andi       $t0, $v0, 1
.L800CE450:
/* BEC50 800CE450 EE00C294 */  lhu        $v0, 0xee($a2)
/* BEC54 800CE454 00000000 */  nop
/* BEC58 800CE458 00104230 */  andi       $v0, $v0, 0x1000
/* BEC5C 800CE45C 05004710 */  beq        $v0, $a3, .L800CE474
/* BEC60 800CE460 2080023C */   lui       $v0, 0x8020
/* BEC64 800CE464 01008424 */  addiu      $a0, $a0, 1
/* BEC68 800CE468 17018228 */  slti       $v0, $a0, 0x117
/* BEC6C 800CE46C F8FF4014 */  bnez       $v0, .L800CE450
/* BEC70 800CE470 2080023C */   lui       $v0, %hi(D_801FBD04)
.L800CE474:
/* BEC74 800CE474 04BD44AC */  sw         $a0, %lo(D_801FBD04)($v0)
/* BEC78 800CE478 FFFF0524 */  addiu      $a1, $zero, -1
/* BEC7C 800CE47C 21180000 */  addu       $v1, $zero, $zero
/* BEC80 800CE480 641F063C */  lui        $a2, 0x1f64
/* BEC84 800CE484 00100424 */  addiu      $a0, $zero, 0x1000
.L800CE488:
/* BEC88 800CE488 EE00C294 */  lhu        $v0, 0xee($a2)
/* BEC8C 800CE48C 00000000 */  nop
/* BEC90 800CE490 00104230 */  andi       $v0, $v0, 0x1000
/* BEC94 800CE494 BCFF4410 */  beq        $v0, $a0, .L800CE388
/* BEC98 800CE498 00000000 */   nop
/* BEC9C 800CE49C 01006324 */  addiu      $v1, $v1, 1
/* BECA0 800CE4A0 0F006228 */  slti       $v0, $v1, 0xf
/* BECA4 800CE4A4 F8FF4014 */  bnez       $v0, .L800CE488
/* BECA8 800CE4A8 00000000 */   nop
.L800CE4AC:
/* BECAC 800CE4AC 2080023C */  lui        $v0, %hi(D_801FBD04)
/* BECB0 800CE4B0 04BD43AC */  sw         $v1, %lo(D_801FBD04)($v0)
/* BECB4 800CE4B4 0200A004 */  bltz       $a1, .L800CE4C0
/* BECB8 800CE4B8 FFFF0224 */   addiu     $v0, $zero, -1
/* BECBC 800CE4BC 21100001 */  addu       $v0, $t0, $zero
.L800CE4C0:
/* BECC0 800CE4C0 0800E003 */  jr         $ra
/* BECC4 800CE4C4 00000000 */   nop
