.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005c138
/* 4C938 8005C138 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 4C93C 8005C13C 5C00B3AF */  sw         $s3, 0x5c($sp)
/* 4C940 8005C140 2198A000 */  addu       $s3, $a1, $zero
/* 4C944 8005C144 2160E000 */  addu       $t4, $a3, $zero
/* 4C948 8005C148 01800A3C */  lui        $t2, %hi(D_80014278)
/* 4C94C 8005C14C 78424A25 */  addiu      $t2, $t2, %lo(D_80014278)
/* 4C950 8005C150 0180023C */  lui        $v0, %hi(D_800141F8)
/* 4C954 8005C154 F8414224 */  addiu      $v0, $v0, %lo(D_800141F8)
/* 4C958 8005C158 8000A6AF */  sw         $a2, 0x80($sp)
/* 4C95C 8005C15C 1A80063C */  lui        $a2, %hi(D_801A09B0)
/* 4C960 8005C160 B009C624 */  addiu      $a2, $a2, %lo(D_801A09B0)
/* 4C964 8005C164 7800A4AF */  sw         $a0, 0x78($sp)
/* 4C968 8005C168 1380043C */  lui        $a0, %hi(D_801280E0)
/* 4C96C 8005C16C 9400A88F */  lw         $t0, 0x94($sp)
/* 4C970 8005C170 E0808424 */  addiu      $a0, $a0, %lo(D_801280E0)
/* 4C974 8005C174 7400BFAF */  sw         $ra, 0x74($sp)
/* 4C978 8005C178 7000BEAF */  sw         $fp, 0x70($sp)
/* 4C97C 8005C17C 6C00B7AF */  sw         $s7, 0x6c($sp)
/* 4C980 8005C180 6800B6AF */  sw         $s6, 0x68($sp)
/* 4C984 8005C184 6400B5AF */  sw         $s5, 0x64($sp)
/* 4C988 8005C188 6000B4AF */  sw         $s4, 0x60($sp)
/* 4C98C 8005C18C 5800B2AF */  sw         $s2, 0x58($sp)
/* 4C990 8005C190 5400B1AF */  sw         $s1, 0x54($sp)
/* 4C994 8005C194 5000B0AF */  sw         $s0, 0x50($sp)
/* 4C998 8005C198 028A0800 */  srl        $s1, $t0, 8
/* 4C99C 8005C19C 0F000531 */  andi       $a1, $t0, 0xf
/* 4C9A0 8005C1A0 80280500 */  sll        $a1, $a1, 2
/* 4C9A4 8005C1A4 2110A200 */  addu       $v0, $a1, $v0
/* 4C9A8 8005C1A8 2150AA00 */  addu       $t2, $a1, $t2
/* 4C9AC 8005C1AC 0000438C */  lw         $v1, ($v0)
/* 4C9B0 8005C1B0 0180023C */  lui        $v0, %hi(D_80014238)
/* 4C9B4 8005C1B4 38424224 */  addiu      $v0, $v0, %lo(D_80014238)
/* 4C9B8 8005C1B8 2110A200 */  addu       $v0, $a1, $v0
/* 4C9BC 8005C1BC 00004B8C */  lw         $t3, ($v0)
/* 4C9C0 8005C1C0 00FF2932 */  andi       $t1, $s1, 0xff00
/* 4C9C4 8005C1C4 1A002B01 */  div        $zero, $t1, $t3
/* 4C9C8 8005C1C8 0180023C */  lui        $v0, %hi(D_800141B8)
/* 4C9CC 8005C1CC B8414224 */  addiu      $v0, $v0, %lo(D_800141B8)
/* 4C9D0 8005C1D0 2128A200 */  addu       $a1, $a1, $v0
/* 4C9D4 8005C1D4 00004A8D */  lw         $t2, ($t2)
/* 4C9D8 8005C1D8 40380300 */  sll        $a3, $v1, 1
/* 4C9DC 8005C1DC 2138E300 */  addu       $a3, $a3, $v1
/* 4C9E0 8005C1E0 003A0700 */  sll        $a3, $a3, 8
/* 4C9E4 8005C1E4 0000A38C */  lw         $v1, ($a1)
/* 4C9E8 8005C1E8 2138E600 */  addu       $a3, $a3, $a2
/* 4C9EC 8005C1EC 21186400 */  addu       $v1, $v1, $a0
/* 4C9F0 8005C1F0 00006290 */  lbu        $v0, ($v1)
/* 4C9F4 8005C1F4 02190800 */  srl        $v1, $t0, 4
/* 4C9F8 8005C1F8 03006330 */  andi       $v1, $v1, 3
/* 4C9FC 8005C1FC FFFF6324 */  addiu      $v1, $v1, -1
/* 4CA00 8005C200 02450800 */  srl        $t0, $t0, 0x14
/* 4CA04 8005C204 3000A3AF */  sw         $v1, 0x30($sp)
/* 4CA08 8005C208 8C00A38F */  lw         $v1, 0x8c($sp)
/* 4CA0C 8005C20C F0000831 */  andi       $t0, $t0, 0xf0
/* 4CA10 8005C210 3C00A7AF */  sw         $a3, 0x3c($sp)
/* 4CA14 8005C214 2400AAAF */  sw         $t2, 0x24($sp)
/* 4CA18 8005C218 C0200200 */  sll        $a0, $v0, 3
/* 4CA1C 8005C21C 23208200 */  subu       $a0, $a0, $v0
/* 4CA20 8005C220 80200400 */  sll        $a0, $a0, 2
/* 4CA24 8005C224 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4CA28 8005C228 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4CA2C 8005C22C 21208200 */  addu       $a0, $a0, $v0
/* 4CA30 8005C230 2000A4AF */  sw         $a0, 0x20($sp)
/* 4CA34 8005C234 2000A58F */  lw         $a1, 0x20($sp)
/* 4CA38 8005C238 9000A48F */  lw         $a0, 0x90($sp)
/* 4CA3C 8005C23C 1600A284 */  lh         $v0, 0x16($a1)
/* 4CA40 8005C240 1800A584 */  lh         $a1, 0x18($a1)
/* 4CA44 8005C244 21104800 */  addu       $v0, $v0, $t0
/* 4CA48 8005C248 2C00A5AF */  sw         $a1, 0x2c($sp)
/* 4CA4C 8005C24C 2800A2AF */  sw         $v0, 0x28($sp)
/* 4CA50 8005C250 12480000 */  mflo       $t1
/* 4CA54 8005C254 02006015 */  bnez       $t3, .L8005C260
/* 4CA58 8005C258 00000000 */   nop
/* 4CA5C 8005C25C CD010000 */  break      0, 7
.L8005C260:
/* 4CA60 8005C260 21B02001 */   addu      $s6, $t1, $zero
/* 4CA64 8005C264 1800C302 */  mult       $s6, $v1
/* 4CA68 8005C268 12400000 */  mflo       $t0
/* 4CA6C 8005C26C 02000105 */  bgez       $t0, .L8005C278
/* 4CA70 8005C270 00000000 */   nop
/* 4CA74 8005C274 FF0F0825 */  addiu      $t0, $t0, 0xfff
.L8005C278:
/* 4CA78 8005C278 8800A28F */  lw         $v0, 0x88($sp)
/* 4CA7C 8005C27C 00000000 */  nop
/* 4CA80 8005C280 1800C202 */  mult       $s6, $v0
/* 4CA84 8005C284 12480000 */  mflo       $t1
/* 4CA88 8005C288 02002105 */  bgez       $t1, .L8005C294
/* 4CA8C 8005C28C 038B0800 */   sra       $s1, $t0, 0xc
/* 4CA90 8005C290 FF0F2925 */  addiu      $t1, $t1, 0xfff
.L8005C294:
/* 4CA94 8005C294 2000A28F */  lw         $v0, 0x20($sp)
/* 4CA98 8005C298 2000A38F */  lw         $v1, 0x20($sp)
/* 4CA9C 8005C29C 04004284 */  lh         $v0, 4($v0)
/* 4CAA0 8005C2A0 03B30900 */  sra        $s6, $t1, 0xc
/* 4CAA4 8005C2A4 3400A2AF */  sw         $v0, 0x34($sp)
/* 4CAA8 8005C2A8 00008290 */  lbu        $v0, ($a0)
/* 4CAAC 8005C2AC 06006384 */  lh         $v1, 6($v1)
/* 4CAB0 8005C2B0 21A86002 */  addu       $s5, $s3, $zero
/* 4CAB4 8005C2B4 80004010 */  beqz       $v0, .L8005C4B8
/* 4CAB8 8005C2B8 3800A3AF */   sw        $v1, 0x38($sp)
/* 4CABC 8005C2BC 21A08000 */  addu       $s4, $a0, $zero
/* 4CAC0 8005C2C0 9C00A58F */  lw         $a1, 0x9c($sp)
/* 4CAC4 8005C2C4 A000A88F */  lw         $t0, 0xa0($sp)
/* 4CAC8 8005C2C8 2318AC00 */  subu       $v1, $a1, $t4
/* 4CACC 8005C2CC 001A0300 */  sll        $v1, $v1, 8
/* 4CAD0 8005C2D0 23100C01 */  subu       $v0, $t0, $t4
/* 4CAD4 8005C2D4 01004224 */  addiu      $v0, $v0, 1
/* 4CAD8 8005C2D8 00F20200 */  sll        $fp, $v0, 8
/* 4CADC 8005C2DC 4000A3AF */  sw         $v1, 0x40($sp)
.L8005C2E0:
/* 4CAE0 8005C2E0 00008292 */  lbu        $v0, ($s4)
/* 4CAE4 8005C2E4 00000000 */  nop
/* 4CAE8 8005C2E8 E0FF4424 */  addiu      $a0, $v0, -0x20
/* 4CAEC 8005C2EC 3C00A28F */  lw         $v0, 0x3c($sp)
/* 4CAF0 8005C2F0 C0180400 */  sll        $v1, $a0, 3
/* 4CAF4 8005C2F4 21904300 */  addu       $s2, $v0, $v1
/* 4CAF8 8005C2F8 06004296 */  lhu        $v0, 6($s2)
/* 4CAFC 8005C2FC 00000000 */  nop
/* 4CB00 8005C300 18005100 */  mult       $v0, $s1
/* 4CB04 8005C304 9C00A58F */  lw         $a1, 0x9c($sp)
/* 4CB08 8005C308 21804000 */  addu       $s0, $v0, $zero
/* 4CB0C 8005C30C 12180000 */  mflo       $v1
/* 4CB10 8005C310 031A0300 */  sra        $v1, $v1, 8
/* 4CB14 8005C314 2310A300 */  subu       $v0, $a1, $v1
/* 4CB18 8005C318 2A108201 */  slt        $v0, $t4, $v0
/* 4CB1C 8005C31C 69004014 */  bnez       $v0, .L8005C4C4
/* 4CB20 8005C320 21B80000 */   addu      $s7, $zero, $zero
/* 4CB24 8005C324 9C00A88F */  lw         $t0, 0x9c($sp)
/* 4CB28 8005C328 00000000 */  nop
/* 4CB2C 8005C32C 2A108801 */  slt        $v0, $t4, $t0
/* 4CB30 8005C330 0A004010 */  beqz       $v0, .L8005C35C
/* 4CB34 8005C334 00000000 */   nop
/* 4CB38 8005C338 4000A58F */  lw         $a1, 0x40($sp)
/* 4CB3C 8005C33C 00000000 */  nop
/* 4CB40 8005C340 1A00B100 */  div        $zero, $a1, $s1
/* 4CB44 8005C344 12100000 */  mflo       $v0
/* 4CB48 8005C348 02002016 */  bnez       $s1, .L8005C354
/* 4CB4C 8005C34C 00000000 */   nop
/* 4CB50 8005C350 CD010000 */  break      0, 7
.L8005C354:
/* 4CB54 8005C354 21B84000 */   addu      $s7, $v0, $zero
/* 4CB58 8005C358 23800202 */  subu       $s0, $s0, $v0
.L8005C35C:
/* 4CB5C 8005C35C A000A88F */  lw         $t0, 0xa0($sp)
/* 4CB60 8005C360 00000000 */  nop
/* 4CB64 8005C364 2A100C01 */  slt        $v0, $t0, $t4
/* 4CB68 8005C368 57004014 */  bnez       $v0, .L8005C4C8
/* 4CB6C 8005C36C 21106002 */   addu      $v0, $s3, $zero
/* 4CB70 8005C370 A000A58F */  lw         $a1, 0xa0($sp)
/* 4CB74 8005C374 00000000 */  nop
/* 4CB78 8005C378 2310A300 */  subu       $v0, $a1, $v1
/* 4CB7C 8005C37C 2A104C00 */  slt        $v0, $v0, $t4
/* 4CB80 8005C380 07004010 */  beqz       $v0, .L8005C3A0
/* 4CB84 8005C384 00000000 */   nop
/* 4CB88 8005C388 1A00D103 */  div        $zero, $fp, $s1
/* 4CB8C 8005C38C 12100000 */  mflo       $v0
/* 4CB90 8005C390 02002016 */  bnez       $s1, .L8005C39C
/* 4CB94 8005C394 00000000 */   nop
/* 4CB98 8005C398 CD010000 */  break      0, 7
.L8005C39C:
/* 4CB9C 8005C39C 21804000 */   addu      $s0, $v0, $zero
.L8005C3A0:
/* 4CBA0 8005C3A0 29008010 */  beqz       $a0, .L8005C448
/* 4CBA4 8005C3A4 1800F602 */   mult      $s7, $s6
/* 4CBA8 8005C3A8 12380000 */  mflo       $a3
/* 4CBAC 8005C3AC 00000000 */  nop
/* 4CBB0 8005C3B0 00000000 */  nop
/* 4CBB4 8005C3B4 18001102 */  mult       $s0, $s1
/* 4CBB8 8005C3B8 12180000 */  mflo       $v1
/* 4CBBC 8005C3BC 04004296 */  lhu        $v0, 4($s2)
/* 4CBC0 8005C3C0 00000000 */  nop
/* 4CBC4 8005C3C4 18005600 */  mult       $v0, $s6
/* 4CBC8 8005C3C8 7800A48F */  lw         $a0, 0x78($sp)
/* 4CBCC 8005C3CC 8000A68F */  lw         $a2, 0x80($sp)
/* 4CBD0 8005C3D0 21286002 */  addu       $a1, $s3, $zero
/* 4CBD4 8005C3D4 4800ACAF */  sw         $t4, 0x48($sp)
/* 4CBD8 8005C3D8 033A0700 */  sra        $a3, $a3, 8
/* 4CBDC 8005C3DC 21388701 */  addu       $a3, $t4, $a3
/* 4CBE0 8005C3E0 031A0300 */  sra        $v1, $v1, 8
/* 4CBE4 8005C3E4 1400A3AF */  sw         $v1, 0x14($sp)
/* 4CBE8 8005C3E8 12100000 */  mflo       $v0
/* 4CBEC 8005C3EC 03120200 */  sra        $v0, $v0, 8
/* 4CBF0 8005C3F0 976D010C */  jal        FUN_8005b65c
/* 4CBF4 8005C3F4 1000A2AF */   sw        $v0, 0x10($sp)
/* 4CBF8 8005C3F8 7800A48F */  lw         $a0, 0x78($sp)
/* 4CBFC 8005C3FC 3000A28F */  lw         $v0, 0x30($sp)
/* 4CC00 8005C400 3400A38F */  lw         $v1, 0x34($sp)
/* 4CC04 8005C404 3800A88F */  lw         $t0, 0x38($sp)
/* 4CC08 8005C408 21286002 */  addu       $a1, $s3, $zero
/* 4CC0C 8005C40C 1400B0AF */  sw         $s0, 0x14($sp)
/* 4CC10 8005C410 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 4CC14 8005C414 00004696 */  lhu        $a2, ($s2)
/* 4CC18 8005C418 02004796 */  lhu        $a3, 2($s2)
/* 4CC1C 8005C41C 04004296 */  lhu        $v0, 4($s2)
/* 4CC20 8005C420 21380701 */  addu       $a3, $t0, $a3
/* 4CC24 8005C424 2000A88F */  lw         $t0, 0x20($sp)
/* 4CC28 8005C428 21306600 */  addu       $a2, $v1, $a2
/* 4CC2C 8005C42C 0C000385 */  lh         $v1, 0xc($t0)
/* 4CC30 8005C430 2138F700 */  addu       $a3, $a3, $s7
/* 4CC34 8005C434 1000A2AF */  sw         $v0, 0x10($sp)
/* 4CC38 8005C438 1769010C */  jal        FUN_8005a45c
/* 4CC3C 8005C43C 1800A3AF */   sw        $v1, 0x18($sp)
/* 4CC40 8005C440 01007326 */  addiu      $s3, $s3, 1
/* 4CC44 8005C444 4800AC8F */  lw         $t4, 0x48($sp)
.L8005C448:
/* 4CC48 8005C448 04004296 */  lhu        $v0, 4($s2)
/* 4CC4C 8005C44C 00000000 */  nop
/* 4CC50 8005C450 18005600 */  mult       $v0, $s6
/* 4CC54 8005C454 01009426 */  addiu      $s4, $s4, 1
/* 4CC58 8005C458 2400A38F */  lw         $v1, 0x24($sp)
/* 4CC5C 8005C45C 8000A48F */  lw         $a0, 0x80($sp)
/* 4CC60 8005C460 12100000 */  mflo       $v0
/* 4CC64 8005C464 03120200 */  sra        $v0, $v0, 8
/* 4CC68 8005C468 21104300 */  addu       $v0, $v0, $v1
/* 4CC6C 8005C46C 00008392 */  lbu        $v1, ($s4)
/* 4CC70 8005C470 21208200 */  addu       $a0, $a0, $v0
/* 4CC74 8005C474 9AFF6014 */  bnez       $v1, .L8005C2E0
/* 4CC78 8005C478 8000A4AF */   sw        $a0, 0x80($sp)
/* 4CC7C 8005C47C 2F710108 */  j          .L8005C4BC
/* 4CC80 8005C480 2A10B302 */   slt       $v0, $s5, $s3
.L8005C484:
/* 4CC84 8005C484 7800A48F */  lw         $a0, 0x78($sp)
/* 4CC88 8005C488 2800A68F */  lw         $a2, 0x28($sp)
/* 4CC8C 8005C48C 2C00A78F */  lw         $a3, 0x2c($sp)
/* 4CC90 8005C490 396D010C */  jal        FUN_8005b4e4
/* 4CC94 8005C494 2128A002 */   addu      $a1, $s5, $zero
/* 4CC98 8005C498 9800A58F */  lw         $a1, 0x98($sp)
/* 4CC9C 8005C49C 7800A48F */  lw         $a0, 0x78($sp)
/* 4CCA0 8005C4A0 9800A68F */  lw         $a2, 0x98($sp)
/* 4CCA4 8005C4A4 1000A5AF */  sw         $a1, 0x10($sp)
/* 4CCA8 8005C4A8 2128A002 */  addu       $a1, $s5, $zero
/* 4CCAC 8005C4AC EB6C010C */  jal        FUN_8005b3ac
/* 4CCB0 8005C4B0 2138C000 */   addu      $a3, $a2, $zero
/* 4CCB4 8005C4B4 0100B526 */  addiu      $s5, $s5, 1
.L8005C4B8:
/* 4CCB8 8005C4B8 2A10B302 */  slt        $v0, $s5, $s3
.L8005C4BC:
/* 4CCBC 8005C4BC F1FF4014 */  bnez       $v0, .L8005C484
/* 4CCC0 8005C4C0 00000000 */   nop
.L8005C4C4:
/* 4CCC4 8005C4C4 21106002 */  addu       $v0, $s3, $zero
.L8005C4C8:
/* 4CCC8 8005C4C8 7400BF8F */  lw         $ra, 0x74($sp)
/* 4CCCC 8005C4CC 7000BE8F */  lw         $fp, 0x70($sp)
/* 4CCD0 8005C4D0 6C00B78F */  lw         $s7, 0x6c($sp)
/* 4CCD4 8005C4D4 6800B68F */  lw         $s6, 0x68($sp)
/* 4CCD8 8005C4D8 6400B58F */  lw         $s5, 0x64($sp)
/* 4CCDC 8005C4DC 6000B48F */  lw         $s4, 0x60($sp)
/* 4CCE0 8005C4E0 5C00B38F */  lw         $s3, 0x5c($sp)
/* 4CCE4 8005C4E4 5800B28F */  lw         $s2, 0x58($sp)
/* 4CCE8 8005C4E8 5400B18F */  lw         $s1, 0x54($sp)
/* 4CCEC 8005C4EC 5000B08F */  lw         $s0, 0x50($sp)
/* 4CCF0 8005C4F0 0800E003 */  jr         $ra
/* 4CCF4 8005C4F4 7800BD27 */   addiu     $sp, $sp, 0x78
