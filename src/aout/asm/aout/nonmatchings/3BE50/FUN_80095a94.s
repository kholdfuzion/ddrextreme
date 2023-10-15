.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80095a94
/* 86294 80095A94 30FFBD27 */  addiu      $sp, $sp, -0xd0
/* 86298 80095A98 BC00B5AF */  sw         $s5, 0xbc($sp)
/* 8629C 80095A9C 21A88000 */  addu       $s5, $a0, $zero
/* 862A0 80095AA0 B800B4AF */  sw         $s4, 0xb8($sp)
/* 862A4 80095AA4 21A0A000 */  addu       $s4, $a1, $zero
/* 862A8 80095AA8 FF000224 */  addiu      $v0, $zero, 0xff
/* 862AC 80095AAC CC00BFAF */  sw         $ra, 0xcc($sp)
/* 862B0 80095AB0 C800BEAF */  sw         $fp, 0xc8($sp)
/* 862B4 80095AB4 C400B7AF */  sw         $s7, 0xc4($sp)
/* 862B8 80095AB8 C000B6AF */  sw         $s6, 0xc0($sp)
/* 862BC 80095ABC B400B3AF */  sw         $s3, 0xb4($sp)
/* 862C0 80095AC0 B000B2AF */  sw         $s2, 0xb0($sp)
/* 862C4 80095AC4 AC00B1AF */  sw         $s1, 0xac($sp)
/* 862C8 80095AC8 0A00A212 */  beq        $s5, $v0, .L80095AF4
/* 862CC 80095ACC A800B0AF */   sw        $s0, 0xa8($sp)
/* 862D0 80095AD0 0600A01A */  blez       $s5, .L80095AEC
/* 862D4 80095AD4 1000A427 */   addiu     $a0, $sp, 0x10
/* 862D8 80095AD8 2128A002 */  addu       $a1, $s5, $zero
/* 862DC 80095ADC 1D8B020C */  jal        FUN_800a2c74
/* 862E0 80095AE0 01000624 */   addiu     $a2, $zero, 1
/* 862E4 80095AE4 CD560208 */  j          .L80095B34
/* 862E8 80095AE8 1000B327 */   addiu     $s3, $sp, 0x10
.L80095AEC:
/* 862EC 80095AEC 0300A012 */  beqz       $s5, .L80095AFC
/* 862F0 80095AF0 0180033C */   lui       $v1, %hi(D_800161C8)
.L80095AF4:
/* 862F4 80095AF4 36570208 */  j          .L80095CD8
/* 862F8 80095AF8 21100000 */   addu      $v0, $zero, $zero
.L80095AFC:
/* 862FC 80095AFC C8616224 */  addiu      $v0, $v1, %lo(D_800161C8)
/* 86300 80095B00 C861648C */  lw         $a0, 0x61c8($v1)
/* 86304 80095B04 0400458C */  lw         $a1, 4($v0)
/* 86308 80095B08 0800438C */  lw         $v1, 8($v0)
/* 8630C 80095B0C 0C00468C */  lw         $a2, 0xc($v0)
/* 86310 80095B10 1000478C */  lw         $a3, 0x10($v0)
/* 86314 80095B14 14004890 */  lbu        $t0, 0x14($v0)
/* 86318 80095B18 1000A4AF */  sw         $a0, 0x10($sp)
/* 8631C 80095B1C 1400A5AF */  sw         $a1, 0x14($sp)
/* 86320 80095B20 1800A3AF */  sw         $v1, 0x18($sp)
/* 86324 80095B24 1C00A6AF */  sw         $a2, 0x1c($sp)
/* 86328 80095B28 2000A7AF */  sw         $a3, 0x20($sp)
/* 8632C 80095B2C 2400A8A3 */  sb         $t0, 0x24($sp)
/* 86330 80095B30 1000B327 */  addiu      $s3, $sp, 0x10
.L80095B34:
/* 86334 80095B34 1B80033C */  lui        $v1, %hi(D_801B0E60)
/* 86338 80095B38 600E6224 */  addiu      $v0, $v1, %lo(D_801B0E60)
/* 8633C 80095B3C 281C528C */  lw         $s2, 0x1c28($v0)
/* 86340 80095B40 21880000 */  addu       $s1, $zero, $zero
/* 86344 80095B44 80B01400 */  sll        $s6, $s4, 2
/* 86348 80095B48 0F009732 */  andi       $s7, $s4, 0xf
/* 8634C 80095B4C 40F01400 */  sll        $fp, $s4, 1
.L80095B50:
/* 86350 80095B50 03002016 */  bnez       $s1, .L80095B60
/* 86354 80095B54 21102002 */   addu      $v0, $s1, $zero
/* 86358 80095B58 F1560208 */  j          .L80095BC4
/* 8635C 80095B5C 01000224 */   addiu     $v0, $zero, 1
.L80095B60:
/* 86360 80095B60 1800201A */  blez       $s1, .L80095BC4
/* 86364 80095B64 21206002 */   addu      $a0, $s3, $zero
/* 86368 80095B68 A000A527 */  addiu      $a1, $sp, 0xa0
/* 8636C 80095B6C F9AA000C */  jal        hashname_getfromflash_8002abe4
/* 86370 80095B70 A400A627 */   addiu     $a2, $sp, 0xa4
/* 86374 80095B74 A400A28F */  lw         $v0, 0xa4($sp)
/* 86378 80095B78 00000000 */  nop
/* 8637C 80095B7C FF075024 */  addiu      $s0, $v0, 0x7ff
/* 86380 80095B80 02000106 */  bgez       $s0, .L80095B8C
/* 86384 80095B84 FFFF2326 */   addiu     $v1, $s1, -1
/* 86388 80095B88 FE0F5024 */  addiu      $s0, $v0, 0xffe
.L80095B8C:
/* 8638C 80095B8C 01000524 */  addiu      $a1, $zero, 1
/* 86390 80095B90 C0320300 */  sll        $a2, $v1, 0xb
/* 86394 80095B94 21304602 */  addu       $a2, $s2, $a2
/* 86398 80095B98 C3821000 */  sra        $s0, $s0, 0xb
/* 8639C 80095B9C A000A28F */  lw         $v0, 0xa0($sp)
/* 863A0 80095BA0 21380000 */  addu       $a3, $zero, $zero
/* 863A4 80095BA4 21104300 */  addu       $v0, $v0, $v1
/* 863A8 80095BA8 21204000 */  addu       $a0, $v0, $zero
/* 863AC 80095BAC 96AB000C */  jal        FUN_8002ae58
/* 863B0 80095BB0 A000A2AF */   sw        $v0, 0xa0($sp)
/* 863B4 80095BB4 2A803002 */  slt        $s0, $s1, $s0
/* 863B8 80095BB8 02000016 */  bnez       $s0, .L80095BC4
/* 863BC 80095BBC 01002226 */   addiu     $v0, $s1, 1
/* 863C0 80095BC0 FFFF0224 */  addiu      $v0, $zero, -1
.L80095BC4:
/* 863C4 80095BC4 21884000 */  addu       $s1, $v0, $zero
/* 863C8 80095BC8 FFFF0224 */  addiu      $v0, $zero, -1
/* 863CC 80095BCC E0FF2216 */  bne        $s1, $v0, .L80095B50
/* 863D0 80095BD0 04004426 */   addiu     $a0, $s2, 4
/* 863D4 80095BD4 197C000C */  jal        GsGetTimInfo
/* 863D8 80095BD8 7800A527 */   addiu     $a1, $sp, 0x78
/* 863DC 80095BDC 8C00A697 */  lhu        $a2, 0x8c($sp)
/* 863E0 80095BE0 8E00A397 */  lhu        $v1, 0x8e($sp)
/* 863E4 80095BE4 00000000 */  nop
/* 863E8 80095BE8 1800C300 */  mult       $a2, $v1
/* 863EC 80095BEC 8000A297 */  lhu        $v0, 0x80($sp)
/* 863F0 80095BF0 12300000 */  mflo       $a2
/* 863F4 80095BF4 8200A397 */  lhu        $v1, 0x82($sp)
/* 863F8 80095BF8 00000000 */  nop
/* 863FC 80095BFC 18004300 */  mult       $v0, $v1
/* 86400 80095C00 FF000424 */  addiu      $a0, $zero, 0xff
/* 86404 80095C04 9000A58F */  lw         $a1, 0x90($sp)
/* 86408 80095C08 40300600 */  sll        $a2, $a2, 1
/* 8640C 80095C0C 12100000 */  mflo       $v0
/* 86410 80095C10 40100200 */  sll        $v0, $v0, 1
/* 86414 80095C14 20004224 */  addiu      $v0, $v0, 0x20
/* 86418 80095C18 C751020C */  jal        FUN_8009471c
/* 8641C 80095C1C 2180C200 */   addu      $s0, $a2, $v0
/* 86420 80095C20 9800A427 */  addiu      $a0, $sp, 0x98
/* 86424 80095C24 2110D402 */  addu       $v0, $s6, $s4
/* 86428 80095C28 80100200 */  sll        $v0, $v0, 2
/* 8642C 80095C2C 21105400 */  addu       $v0, $v0, $s4
/* 86430 80095C30 40100200 */  sll        $v0, $v0, 1
/* 86434 80095C34 00024224 */  addiu      $v0, $v0, 0x200
/* 86438 80095C38 8400A58F */  lw         $a1, 0x84($sp)
/* 8643C 80095C3C 2A000324 */  addiu      $v1, $zero, 0x2a
/* 86440 80095C40 9A00A2A7 */  sh         $v0, 0x9a($sp)
/* 86444 80095C44 C0000224 */  addiu      $v0, $zero, 0xc0
/* 86448 80095C48 9E00A3A7 */  sh         $v1, 0x9e($sp)
/* 8644C 80095C4C 3C000324 */  addiu      $v1, $zero, 0x3c
/* 86450 80095C50 9800A2A7 */  sh         $v0, 0x98($sp)
/* 86454 80095C54 8361000C */  jal        LoadImage
/* 86458 80095C58 9C00A3A7 */   sh        $v1, 0x9c($sp)
/* 8645C 80095C5C 21108002 */  addu       $v0, $s4, $zero
/* 86460 80095C60 02004104 */  bgez       $v0, .L80095C6C
/* 86464 80095C64 9800A427 */   addiu     $a0, $sp, 0x98
/* 86468 80095C68 0F004224 */  addiu      $v0, $v0, 0xf
.L80095C6C:
/* 8646C 80095C6C 03110200 */  sra        $v0, $v0, 4
/* 86470 80095C70 00110200 */  sll        $v0, $v0, 4
/* 86474 80095C74 80024224 */  addiu      $v0, $v0, 0x280
/* 86478 80095C78 9000A58F */  lw         $a1, 0x90($sp)
/* 8647C 80095C7C F001E326 */  addiu      $v1, $s7, 0x1f0
/* 86480 80095C80 9800A2A7 */  sh         $v0, 0x98($sp)
/* 86484 80095C84 10000224 */  addiu      $v0, $zero, 0x10
/* 86488 80095C88 9A00A3A7 */  sh         $v1, 0x9a($sp)
/* 8648C 80095C8C 01000324 */  addiu      $v1, $zero, 1
/* 86490 80095C90 9C00A2A7 */  sh         $v0, 0x9c($sp)
/* 86494 80095C94 8361000C */  jal        LoadImage
/* 86498 80095C98 9E00A3A7 */   sh        $v1, 0x9e($sp)
/* 8649C 80095C9C 03000426 */  addiu      $a0, $s0, 3
/* 864A0 80095CA0 1B80023C */  lui        $v0, %hi(D_801B0E60)
/* 864A4 80095CA4 02008104 */  bgez       $a0, .L80095CB0
/* 864A8 80095CA8 600E4524 */   addiu     $a1, $v0, %lo(D_801B0E60)
/* 864AC 80095CAC 06000426 */  addiu      $a0, $s0, 6
.L80095CB0:
/* 864B0 80095CB0 21100000 */  addu       $v0, $zero, $zero
/* 864B4 80095CB4 1B80033C */  lui        $v1, %hi(D_801B2B38)
/* 864B8 80095CB8 382B6324 */  addiu      $v1, $v1, %lo(D_801B2B38)
/* 864BC 80095CBC 2118C303 */  addu       $v1, $fp, $v1
/* 864C0 80095CC0 83200400 */  sra        $a0, $a0, 2
/* 864C4 80095CC4 000075A0 */  sb         $s5, ($v1)
/* 864C8 80095CC8 281CA38C */  lw         $v1, 0x1c28($a1)
/* 864CC 80095CCC 80200400 */  sll        $a0, $a0, 2
/* 864D0 80095CD0 21186400 */  addu       $v1, $v1, $a0
/* 864D4 80095CD4 281CA3AC */  sw         $v1, 0x1c28($a1)
.L80095CD8:
/* 864D8 80095CD8 CC00BF8F */  lw         $ra, 0xcc($sp)
/* 864DC 80095CDC C800BE8F */  lw         $fp, 0xc8($sp)
/* 864E0 80095CE0 C400B78F */  lw         $s7, 0xc4($sp)
/* 864E4 80095CE4 C000B68F */  lw         $s6, 0xc0($sp)
/* 864E8 80095CE8 BC00B58F */  lw         $s5, 0xbc($sp)
/* 864EC 80095CEC B800B48F */  lw         $s4, 0xb8($sp)
/* 864F0 80095CF0 B400B38F */  lw         $s3, 0xb4($sp)
/* 864F4 80095CF4 B000B28F */  lw         $s2, 0xb0($sp)
/* 864F8 80095CF8 AC00B18F */  lw         $s1, 0xac($sp)
/* 864FC 80095CFC A800B08F */  lw         $s0, 0xa8($sp)
/* 86500 80095D00 0800E003 */  jr         $ra
/* 86504 80095D04 D000BD27 */   addiu     $sp, $sp, 0xd0
