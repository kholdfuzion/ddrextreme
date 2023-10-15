.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002c270
/* 1CA70 8002C270 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 1CA74 8002C274 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 1CA78 8002C278 28004384 */  lh         $v1, %lo(D_800F0028)($v0)
/* 1CA7C 8002C27C 1580053C */  lui        $a1, %hi(D_8014C1F0)
/* 1CA80 8002C280 3800B0AF */  sw         $s0, 0x38($sp)
/* 1CA84 8002C284 F0C1B024 */  addiu      $s0, $a1, %lo(D_8014C1F0)
/* 1CA88 8002C288 4000B2AF */  sw         $s2, 0x40($sp)
/* 1CA8C 8002C28C 21904000 */  addu       $s2, $v0, $zero
/* 1CA90 8002C290 4800BFAF */  sw         $ra, 0x48($sp)
/* 1CA94 8002C294 4400B3AF */  sw         $s3, 0x44($sp)
/* 1CA98 8002C298 B0006010 */  beqz       $v1, .L8002C55C
/* 1CA9C 8002C29C 3C00B1AF */   sw        $s1, 0x3c($sp)
/* 1CAA0 8002C2A0 0E80023C */  lui        $v0, %hi(D_800D8D3C)
/* 1CAA4 8002C2A4 3C8D438C */  lw         $v1, %lo(D_800D8D3C)($v0)
/* 1CAA8 8002C2A8 FDFF0424 */  addiu      $a0, $zero, -3
/* 1CAAC 8002C2AC 24186400 */  and        $v1, $v1, $a0
/* 1CAB0 8002C2B0 AA006014 */  bnez       $v1, .L8002C55C
/* 1CAB4 8002C2B4 21884000 */   addu      $s1, $v0, $zero
/* 1CAB8 8002C2B8 0F80133C */  lui        $s3, 0x800f
/* 1CABC 8002C2BC 3C8D228E */  lw         $v0, -0x72c4($s1)
/* 1CAC0 8002C2C0 F0C1A384 */  lh         $v1, -0x3e10($a1)
/* 1CAC4 8002C2C4 02004234 */  ori        $v0, $v0, 2
/* 1CAC8 8002C2C8 3C8D22AE */  sw         $v0, -0x72c4($s1)
/* 1CACC 8002C2CC 43006010 */  beqz       $v1, .L8002C3DC
/* 1CAD0 8002C2D0 FFFF0234 */   ori       $v0, $zero, 0xffff
/* 1CAD4 8002C2D4 10000396 */  lhu        $v1, 0x10($s0)
/* 1CAD8 8002C2D8 00000000 */  nop
/* 1CADC 8002C2DC 05006214 */  bne        $v1, $v0, .L8002C2F4
/* 1CAE0 8002C2E0 00000000 */   nop
/* 1CAE4 8002C2E4 12000296 */  lhu        $v0, 0x12($s0)
/* 1CAE8 8002C2E8 00000000 */  nop
/* 1CAEC 8002C2EC 01004224 */  addiu      $v0, $v0, 1
/* 1CAF0 8002C2F0 120002A6 */  sh         $v0, 0x12($s0)
.L8002C2F4:
/* 1CAF4 8002C2F4 10000296 */  lhu        $v0, 0x10($s0)
/* 1CAF8 8002C2F8 28004396 */  lhu        $v1, 0x28($s2)
/* 1CAFC 8002C2FC 01004224 */  addiu      $v0, $v0, 1
/* 1CB00 8002C300 FFFF6324 */  addiu      $v1, $v1, -1
/* 1CB04 8002C304 1D00632C */  sltiu      $v1, $v1, 0x1d
/* 1CB08 8002C308 34006010 */  beqz       $v1, .L8002C3DC
/* 1CB0C 8002C30C 100002A6 */   sh        $v0, 0x10($s0)
/* 1CB10 8002C310 21400000 */  addu       $t0, $zero, $zero
/* 1CB14 8002C314 21380000 */  addu       $a3, $zero, $zero
/* 1CB18 8002C318 07000A24 */  addiu      $t2, $zero, 7
/* 1CB1C 8002C31C FFFF0934 */  ori        $t1, $zero, 0xffff
/* 1CB20 8002C320 1A000326 */  addiu      $v1, $s0, 0x1a
/* 1CB24 8002C324 18000526 */  addiu      $a1, $s0, 0x18
/* 1CB28 8002C328 28004426 */  addiu      $a0, $s2, 0x28
/* 1CB2C 8002C32C 0100063C */  lui        $a2, 1
/* 1CB30 8002C330 7C42C634 */  ori        $a2, $a2, 0x427c
.L8002C334:
/* 1CB34 8002C334 8A008290 */  lbu        $v0, 0x8a($a0)
/* 1CB38 8002C338 00000000 */  nop
/* 1CB3C 8002C33C 13004A10 */  beq        $v0, $t2, .L8002C38C
/* 1CB40 8002C340 00000000 */   nop
/* 1CB44 8002C344 11004010 */  beqz       $v0, .L8002C38C
/* 1CB48 8002C348 00000000 */   nop
/* 1CB4C 8002C34C 3C008280 */  lb         $v0, 0x3c($a0)
/* 1CB50 8002C350 00000000 */  nop
/* 1CB54 8002C354 0D004010 */  beqz       $v0, .L8002C38C
/* 1CB58 8002C358 00000000 */   nop
/* 1CB5C 8002C35C FEFF6294 */  lhu        $v0, -2($v1)
/* 1CB60 8002C360 00000000 */  nop
/* 1CB64 8002C364 05004914 */  bne        $v0, $t1, .L8002C37C
/* 1CB68 8002C368 00000000 */   nop
/* 1CB6C 8002C36C 00006294 */  lhu        $v0, ($v1)
/* 1CB70 8002C370 00000000 */  nop
/* 1CB74 8002C374 01004224 */  addiu      $v0, $v0, 1
/* 1CB78 8002C378 000062A4 */  sh         $v0, ($v1)
.L8002C37C:
/* 1CB7C 8002C37C 0000A294 */  lhu        $v0, ($a1)
/* 1CB80 8002C380 01000825 */  addiu      $t0, $t0, 1
/* 1CB84 8002C384 01004224 */  addiu      $v0, $v0, 1
/* 1CB88 8002C388 0000A2A4 */  sh         $v0, ($a1)
.L8002C38C:
/* 1CB8C 8002C38C 04006324 */  addiu      $v1, $v1, 4
/* 1CB90 8002C390 0400A524 */  addiu      $a1, $a1, 4
/* 1CB94 8002C394 0100E724 */  addiu      $a3, $a3, 1
/* 1CB98 8002C398 0200E228 */  slti       $v0, $a3, 2
/* 1CB9C 8002C39C E5FF4014 */  bnez       $v0, .L8002C334
/* 1CBA0 8002C3A0 21208600 */   addu      $a0, $a0, $a2
/* 1CBA4 8002C3A4 0D000011 */  beqz       $t0, .L8002C3DC
/* 1CBA8 8002C3A8 FFFF0234 */   ori       $v0, $zero, 0xffff
/* 1CBAC 8002C3AC 14000396 */  lhu        $v1, 0x14($s0)
/* 1CBB0 8002C3B0 00000000 */  nop
/* 1CBB4 8002C3B4 05006214 */  bne        $v1, $v0, .L8002C3CC
/* 1CBB8 8002C3B8 00000000 */   nop
/* 1CBBC 8002C3BC 16000296 */  lhu        $v0, 0x16($s0)
/* 1CBC0 8002C3C0 00000000 */  nop
/* 1CBC4 8002C3C4 01004224 */  addiu      $v0, $v0, 1
/* 1CBC8 8002C3C8 160002A6 */  sh         $v0, 0x16($s0)
.L8002C3CC:
/* 1CBCC 8002C3CC 14000296 */  lhu        $v0, 0x14($s0)
/* 1CBD0 8002C3D0 00000000 */  nop
/* 1CBD4 8002C3D4 01004224 */  addiu      $v0, $v0, 1
/* 1CBD8 8002C3D8 140002A6 */  sh         $v0, 0x14($s0)
.L8002C3DC:
/* 1CBDC 8002C3DC 5EB1000C */  jal        FUN_8002c578
/* 1CBE0 8002C3E0 1000A427 */   addiu     $a0, $sp, 0x10
/* 1CBE4 8002C3E4 2400A497 */  lhu        $a0, 0x24($sp)
/* 1CBE8 8002C3E8 2000A587 */  lh         $a1, 0x20($sp)
/* 1CBEC 8002C3EC 1C00A687 */  lh         $a2, 0x1c($sp)
/* 1CBF0 8002C3F0 6C078424 */  addiu      $a0, $a0, 0x76c
/* 1CBF4 8002C3F4 00240400 */  sll        $a0, $a0, 0x10
/* 1CBF8 8002C3F8 44B2000C */  jal        FUN_8002c910
/* 1CBFC 8002C3FC 03240400 */   sra       $a0, $a0, 0x10
/* 1CC00 8002C400 8CB3043C */  lui        $a0, 0xb38c
/* 1CC04 8002C404 B1F98434 */  ori        $a0, $a0, 0xf9b1
/* 1CC08 8002C408 18004400 */  mult       $v0, $a0
/* 1CC0C 8002C40C C32F0200 */  sra        $a1, $v0, 0x1f
/* 1CC10 8002C410 10200000 */  mfhi       $a0
/* 1CC14 8002C414 21208200 */  addu       $a0, $a0, $v0
/* 1CC18 8002C418 03220400 */  sra        $a0, $a0, 8
/* 1CC1C 8002C41C 23208500 */  subu       $a0, $a0, $a1
/* 1CC20 8002C420 C0180400 */  sll        $v1, $a0, 3
/* 1CC24 8002C424 21186400 */  addu       $v1, $v1, $a0
/* 1CC28 8002C428 C0180300 */  sll        $v1, $v1, 3
/* 1CC2C 8002C42C 21186400 */  addu       $v1, $v1, $a0
/* 1CC30 8002C430 80280300 */  sll        $a1, $v1, 2
/* 1CC34 8002C434 21186500 */  addu       $v1, $v1, $a1
/* 1CC38 8002C438 0C000496 */  lhu        $a0, 0xc($s0)
/* 1CC3C 8002C43C 23104300 */  subu       $v0, $v0, $v1
/* 1CC40 8002C440 26004410 */  beq        $v0, $a0, .L8002C4DC
/* 1CC44 8002C444 C4000826 */   addiu     $t0, $s0, 0xc4
/* 1CC48 8002C448 0C0002A6 */  sh         $v0, 0xc($s0)
/* 1CC4C 8002C44C 6C010324 */  addiu      $v1, $zero, 0x16c
/* 1CC50 8002C450 21380001 */  addu       $a3, $t0, $zero
.L8002C454:
/* 1CC54 8002C454 80100300 */  sll        $v0, $v1, 2
/* 1CC58 8002C458 21204700 */  addu       $a0, $v0, $a3
/* 1CC5C 8002C45C FFFF6624 */  addiu      $a2, $v1, -1
/* 1CC60 8002C460 80100600 */  sll        $v0, $a2, 2
/* 1CC64 8002C464 21184700 */  addu       $v1, $v0, $a3
/* 1CC68 8002C468 01000524 */  addiu      $a1, $zero, 1
.L8002C46C:
/* 1CC6C 8002C46C 00006294 */  lhu        $v0, ($v1)
/* 1CC70 8002C470 02006324 */  addiu      $v1, $v1, 2
/* 1CC74 8002C474 FFFFA524 */  addiu      $a1, $a1, -1
/* 1CC78 8002C478 000082A4 */  sh         $v0, ($a0)
/* 1CC7C 8002C47C FBFFA104 */  bgez       $a1, .L8002C46C
/* 1CC80 8002C480 02008424 */   addiu     $a0, $a0, 2
/* 1CC84 8002C484 2118C000 */  addu       $v1, $a2, $zero
/* 1CC88 8002C488 FFFF6224 */  addiu      $v0, $v1, -1
/* 1CC8C 8002C48C F1FF4104 */  bgez       $v0, .L8002C454
/* 1CC90 8002C490 21300001 */   addu      $a2, $t0, $zero
/* 1CC94 8002C494 21180000 */  addu       $v1, $zero, $zero
/* 1CC98 8002C498 FFFF0424 */  addiu      $a0, $zero, -1
.L8002C49C:
/* 1CC9C 8002C49C 80100300 */  sll        $v0, $v1, 2
/* 1CCA0 8002C4A0 01006324 */  addiu      $v1, $v1, 1
/* 1CCA4 8002C4A4 01000524 */  addiu      $a1, $zero, 1
/* 1CCA8 8002C4A8 21104600 */  addu       $v0, $v0, $a2
/* 1CCAC 8002C4AC 02004224 */  addiu      $v0, $v0, 2
.L8002C4B0:
/* 1CCB0 8002C4B0 000044A4 */  sh         $a0, ($v0)
/* 1CCB4 8002C4B4 FFFFA524 */  addiu      $a1, $a1, -1
/* 1CCB8 8002C4B8 FDFFA104 */  bgez       $a1, .L8002C4B0
/* 1CCBC 8002C4BC FEFF4224 */   addiu     $v0, $v0, -2
/* 1CCC0 8002C4C0 F6FF6018 */  blez       $v1, .L8002C49C
/* 1CCC4 8002C4C4 01000524 */   addiu     $a1, $zero, 1
/* 1CCC8 8002C4C8 02000225 */  addiu      $v0, $t0, 2
.L8002C4CC:
/* 1CCCC 8002C4CC 000040A4 */  sh         $zero, ($v0)
/* 1CCD0 8002C4D0 FFFFA524 */  addiu      $a1, $a1, -1
/* 1CCD4 8002C4D4 FDFFA104 */  bgez       $a1, .L8002C4CC
/* 1CCD8 8002C4D8 FEFF4224 */   addiu     $v0, $v0, -2
.L8002C4DC:
/* 1CCDC 8002C4DC 00000286 */  lh         $v0, ($s0)
/* 1CCE0 8002C4E0 00000000 */  nop
/* 1CCE4 8002C4E4 0A004010 */  beqz       $v0, .L8002C510
/* 1CCE8 8002C4E8 00000000 */   nop
/* 1CCEC 8002C4EC C4000286 */  lh         $v0, 0xc4($s0)
/* 1CCF0 8002C4F0 00000000 */  nop
/* 1CCF4 8002C4F4 06004104 */  bgez       $v0, .L8002C510
/* 1CCF8 8002C4F8 01000324 */   addiu     $v1, $zero, 1
/* 1CCFC 8002C4FC C6000226 */  addiu      $v0, $s0, 0xc6
.L8002C500:
/* 1CD00 8002C500 000040A4 */  sh         $zero, ($v0)
/* 1CD04 8002C504 FFFF6324 */  addiu      $v1, $v1, -1
/* 1CD08 8002C508 FDFF6104 */  bgez       $v1, .L8002C500
/* 1CD0C 8002C50C FEFF4224 */   addiu     $v0, $v0, -2
.L8002C510:
/* 1CD10 8002C510 FDFF0524 */  addiu      $a1, $zero, -3
/* 1CD14 8002C514 A8FF6426 */  addiu      $a0, $s3, -0x58
/* 1CD18 8002C518 3C8D228E */  lw         $v0, -0x72c4($s1)
/* 1CD1C 8002C51C 6C00838C */  lw         $v1, 0x6c($a0)
/* 1CD20 8002C520 24104500 */  and        $v0, $v0, $a1
/* 1CD24 8002C524 FF1F6330 */  andi       $v1, $v1, 0x1fff
/* 1CD28 8002C528 3C8D22AE */  sw         $v0, -0x72c4($s1)
/* 1CD2C 8002C52C 0B006014 */  bnez       $v1, .L8002C55C
/* 1CD30 8002C530 00000000 */   nop
/* 1CD34 8002C534 28004296 */  lhu        $v0, 0x28($s2)
/* 1CD38 8002C538 00000000 */  nop
/* 1CD3C 8002C53C E2FF4224 */  addiu      $v0, $v0, -0x1e
/* 1CD40 8002C540 0C00422C */  sltiu      $v0, $v0, 0xc
/* 1CD44 8002C544 05004010 */  beqz       $v0, .L8002C55C
/* 1CD48 8002C548 0E80033C */   lui       $v1, %hi(D_800D8D38)
/* 1CD4C 8002C54C 388D628C */  lw         $v0, %lo(D_800D8D38)($v1)
/* 1CD50 8002C550 00000000 */  nop
/* 1CD54 8002C554 08004234 */  ori        $v0, $v0, 8
/* 1CD58 8002C558 388D62AC */  sw         $v0, -0x72c8($v1)
.L8002C55C:
/* 1CD5C 8002C55C 4800BF8F */  lw         $ra, 0x48($sp)
/* 1CD60 8002C560 4400B38F */  lw         $s3, 0x44($sp)
/* 1CD64 8002C564 4000B28F */  lw         $s2, 0x40($sp)
/* 1CD68 8002C568 3C00B18F */  lw         $s1, 0x3c($sp)
/* 1CD6C 8002C56C 3800B08F */  lw         $s0, 0x38($sp)
/* 1CD70 8002C570 0800E003 */  jr         $ra
/* 1CD74 8002C574 5000BD27 */   addiu     $sp, $sp, 0x50
