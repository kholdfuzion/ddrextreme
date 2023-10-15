.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002bb34
/* 1C334 8002BB34 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 1C338 8002BB38 1000A427 */  addiu      $a0, $sp, 0x10
/* 1C33C 8002BB3C 1580023C */  lui        $v0, %hi(D_8014C1F0)
/* 1C340 8002BB40 3800B0AF */  sw         $s0, 0x38($sp)
/* 1C344 8002BB44 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 1C348 8002BB48 5EB1000C */  jal        FUN_8002c578
/* 1C34C 8002BB4C F0C15024 */   addiu     $s0, $v0, %lo(D_8014C1F0)
/* 1C350 8002BB50 2400A497 */  lhu        $a0, 0x24($sp)
/* 1C354 8002BB54 2000A587 */  lh         $a1, 0x20($sp)
/* 1C358 8002BB58 1C00A687 */  lh         $a2, 0x1c($sp)
/* 1C35C 8002BB5C 6C078424 */  addiu      $a0, $a0, 0x76c
/* 1C360 8002BB60 00240400 */  sll        $a0, $a0, 0x10
/* 1C364 8002BB64 44B2000C */  jal        FUN_8002c910
/* 1C368 8002BB68 03240400 */   sra       $a0, $a0, 0x10
/* 1C36C 8002BB6C 21404000 */  addu       $t0, $v0, $zero
/* 1C370 8002BB70 8CB3033C */  lui        $v1, 0xb38c
/* 1C374 8002BB74 B1F96334 */  ori        $v1, $v1, 0xf9b1
/* 1C378 8002BB78 18000301 */  mult       $t0, $v1
/* 1C37C 8002BB7C C3270800 */  sra        $a0, $t0, 0x1f
/* 1C380 8002BB80 10180000 */  mfhi       $v1
/* 1C384 8002BB84 21186800 */  addu       $v1, $v1, $t0
/* 1C388 8002BB88 031A0300 */  sra        $v1, $v1, 8
/* 1C38C 8002BB8C 23186400 */  subu       $v1, $v1, $a0
/* 1C390 8002BB90 C0100300 */  sll        $v0, $v1, 3
/* 1C394 8002BB94 21104300 */  addu       $v0, $v0, $v1
/* 1C398 8002BB98 C0100200 */  sll        $v0, $v0, 3
/* 1C39C 8002BB9C 21104300 */  addu       $v0, $v0, $v1
/* 1C3A0 8002BBA0 80200200 */  sll        $a0, $v0, 2
/* 1C3A4 8002BBA4 21104400 */  addu       $v0, $v0, $a0
/* 1C3A8 8002BBA8 0C000396 */  lhu        $v1, 0xc($s0)
/* 1C3AC 8002BBAC 23400201 */  subu       $t0, $t0, $v0
/* 1C3B0 8002BBB0 23300301 */  subu       $a2, $t0, $v1
/* 1C3B4 8002BBB4 0200C104 */  bgez       $a2, .L8002BBC0
/* 1C3B8 8002BBB8 6C010324 */   addiu     $v1, $zero, 0x16c
/* 1C3BC 8002BBBC 6D01C624 */  addiu      $a2, $a2, 0x16d
.L8002BBC0:
/* 1C3C0 8002BBC0 23106600 */  subu       $v0, $v1, $a2
/* 1C3C4 8002BBC4 12004004 */  bltz       $v0, .L8002BC10
/* 1C3C8 8002BBC8 80100300 */   sll       $v0, $v1, 2
/* 1C3CC 8002BBCC C4000926 */  addiu      $t1, $s0, 0xc4
.L8002BBD0:
/* 1C3D0 8002BBD0 FFFF6724 */  addiu      $a3, $v1, -1
/* 1C3D4 8002BBD4 21284900 */  addu       $a1, $v0, $t1
/* 1C3D8 8002BBD8 23106600 */  subu       $v0, $v1, $a2
/* 1C3DC 8002BBDC 80100200 */  sll        $v0, $v0, 2
/* 1C3E0 8002BBE0 21184900 */  addu       $v1, $v0, $t1
/* 1C3E4 8002BBE4 01000424 */  addiu      $a0, $zero, 1
.L8002BBE8:
/* 1C3E8 8002BBE8 00006294 */  lhu        $v0, ($v1)
/* 1C3EC 8002BBEC 02006324 */  addiu      $v1, $v1, 2
/* 1C3F0 8002BBF0 FFFF8424 */  addiu      $a0, $a0, -1
/* 1C3F4 8002BBF4 0000A2A4 */  sh         $v0, ($a1)
/* 1C3F8 8002BBF8 FBFF8104 */  bgez       $a0, .L8002BBE8
/* 1C3FC 8002BBFC 0200A524 */   addiu     $a1, $a1, 2
/* 1C400 8002BC00 2118E000 */  addu       $v1, $a3, $zero
/* 1C404 8002BC04 23106600 */  subu       $v0, $v1, $a2
/* 1C408 8002BC08 F1FF4104 */  bgez       $v0, .L8002BBD0
/* 1C40C 8002BC0C 80100300 */   sll       $v0, $v1, 2
.L8002BC10:
/* 1C410 8002BC10 0F00C018 */  blez       $a2, .L8002BC50
/* 1C414 8002BC14 21180000 */   addu      $v1, $zero, $zero
/* 1C418 8002BC18 C4000926 */  addiu      $t1, $s0, 0xc4
/* 1C41C 8002BC1C FFFF0524 */  addiu      $a1, $zero, -1
/* 1C420 8002BC20 80100300 */  sll        $v0, $v1, 2
.L8002BC24:
/* 1C424 8002BC24 01006324 */  addiu      $v1, $v1, 1
/* 1C428 8002BC28 01000424 */  addiu      $a0, $zero, 1
/* 1C42C 8002BC2C 21104900 */  addu       $v0, $v0, $t1
/* 1C430 8002BC30 02004224 */  addiu      $v0, $v0, 2
.L8002BC34:
/* 1C434 8002BC34 000045A4 */  sh         $a1, ($v0)
/* 1C438 8002BC38 FFFF8424 */  addiu      $a0, $a0, -1
/* 1C43C 8002BC3C FDFF8104 */  bgez       $a0, .L8002BC34
/* 1C440 8002BC40 FEFF4224 */   addiu     $v0, $v0, -2
/* 1C444 8002BC44 2A106600 */  slt        $v0, $v1, $a2
/* 1C448 8002BC48 F6FF4014 */  bnez       $v0, .L8002BC24
/* 1C44C 8002BC4C 80100300 */   sll       $v0, $v1, 2
.L8002BC50:
/* 1C450 8002BC50 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 1C454 8002BC54 0C0008A6 */  sh         $t0, 0xc($s0)
/* 1C458 8002BC58 3800B08F */  lw         $s0, 0x38($sp)
/* 1C45C 8002BC5C 0800E003 */  jr         $ra
/* 1C460 8002BC60 4000BD27 */   addiu     $sp, $sp, 0x40
