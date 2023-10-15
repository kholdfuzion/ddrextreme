.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006bba8
/* 5C3A8 8006BBA8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 5C3AC 8006BBAC 1380063C */  lui        $a2, %hi(D_80129DA8)
/* 5C3B0 8006BBB0 1800B2AF */  sw         $s2, 0x18($sp)
/* 5C3B4 8006BBB4 A89DD224 */  addiu      $s2, $a2, %lo(D_80129DA8)
/* 5C3B8 8006BBB8 40100400 */  sll        $v0, $a0, 1
/* 5C3BC 8006BBBC 21104400 */  addu       $v0, $v0, $a0
/* 5C3C0 8006BBC0 80100200 */  sll        $v0, $v0, 2
/* 5C3C4 8006BBC4 23104400 */  subu       $v0, $v0, $a0
/* 5C3C8 8006BBC8 80100200 */  sll        $v0, $v0, 2
/* 5C3CC 8006BBCC 23104400 */  subu       $v0, $v0, $a0
/* 5C3D0 8006BBD0 80100200 */  sll        $v0, $v0, 2
/* 5C3D4 8006BBD4 21104400 */  addu       $v0, $v0, $a0
/* 5C3D8 8006BBD8 80100200 */  sll        $v0, $v0, 2
/* 5C3DC 8006BBDC 23104400 */  subu       $v0, $v0, $a0
/* 5C3E0 8006BBE0 80100200 */  sll        $v0, $v0, 2
/* 5C3E4 8006BBE4 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5C3E8 8006BBE8 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5C3EC 8006BBEC A89DC78C */  lw         $a3, -0x6258($a2)
/* 5C3F0 8006BBF0 21104300 */  addu       $v0, $v0, $v1
/* 5C3F4 8006BBF4 2400B5AF */  sw         $s5, 0x24($sp)
/* 5C3F8 8006BBF8 21A8C000 */  addu       $s5, $a2, $zero
/* 5C3FC 8006BBFC 2800BFAF */  sw         $ra, 0x28($sp)
/* 5C400 8006BC00 2000B4AF */  sw         $s4, 0x20($sp)
/* 5C404 8006BC04 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 5C408 8006BC08 1400B1AF */  sw         $s1, 0x14($sp)
/* 5C40C 8006BC0C 1000B0AF */  sw         $s0, 0x10($sp)
/* 5C410 8006BC10 80290700 */  sll        $a1, $a3, 6
/* 5C414 8006BC14 2128A700 */  addu       $a1, $a1, $a3
/* 5C418 8006BC18 80280500 */  sll        $a1, $a1, 2
/* 5C41C 8006BC1C 2328A700 */  subu       $a1, $a1, $a3
/* 5C420 8006BC20 C0280500 */  sll        $a1, $a1, 3
/* 5C424 8006BC24 2128A700 */  addu       $a1, $a1, $a3
/* 5C428 8006BC28 C0280500 */  sll        $a1, $a1, 3
/* 5C42C 8006BC2C 2188A200 */  addu       $s1, $a1, $v0
/* 5C430 8006BC30 B80A2286 */  lh         $v0, 0xab8($s1)
/* 5C434 8006BC34 00000000 */  nop
/* 5C438 8006BC38 4B004010 */  beqz       $v0, .L8006BD68
/* 5C43C 8006BC3C 34003426 */   addiu     $s4, $s1, 0x34
/* 5C440 8006BC40 0000228E */  lw         $v0, ($s1)
/* 5C444 8006BC44 00000000 */  nop
/* 5C448 8006BC48 0B004010 */  beqz       $v0, .L8006BC78
/* 5C44C 8006BC4C 40280700 */   sll       $a1, $a3, 1
/* 5C450 8006BC50 2128A700 */  addu       $a1, $a1, $a3
/* 5C454 8006BC54 80280500 */  sll        $a1, $a1, 2
/* 5C458 8006BC58 1C00A524 */  addiu      $a1, $a1, 0x1c
/* 5C45C 8006BC5C 21282502 */  addu       $a1, $s1, $a1
/* 5C460 8006BC60 2C0C428E */  lw         $v0, 0xc2c($s2)
/* 5C464 8006BC64 BC0A2486 */  lh         $a0, 0xabc($s1)
/* 5C468 8006BC68 0400438C */  lw         $v1, 4($v0)
/* 5C46C 8006BC6C 80200400 */  sll        $a0, $a0, 2
/* 5C470 8006BC70 D685000C */  jal        AddPrim
/* 5C474 8006BC74 21206400 */   addu      $a0, $v1, $a0
.L8006BC78:
/* 5C478 8006BC78 B60A3086 */  lh         $s0, 0xab6($s1)
/* 5C47C 8006BC7C B40A2286 */  lh         $v0, 0xab4($s1)
/* 5C480 8006BC80 00000000 */  nop
/* 5C484 8006BC84 2A100202 */  slt        $v0, $s0, $v0
/* 5C488 8006BC88 12004010 */  beqz       $v0, .L8006BCD4
/* 5C48C 8006BC8C C0101000 */   sll       $v0, $s0, 3
/* 5C490 8006BC90 21984002 */  addu       $s3, $s2, $zero
/* 5C494 8006BC94 23105000 */  subu       $v0, $v0, $s0
/* 5C498 8006BC98 80100200 */  sll        $v0, $v0, 2
/* 5C49C 8006BC9C 21905400 */  addu       $s2, $v0, $s4
/* 5C4A0 8006BCA0 21284002 */  addu       $a1, $s2, $zero
.L8006BCA4:
/* 5C4A4 8006BCA4 1C005226 */  addiu      $s2, $s2, 0x1c
/* 5C4A8 8006BCA8 2C0C628E */  lw         $v0, 0xc2c($s3)
/* 5C4AC 8006BCAC BC0A2486 */  lh         $a0, 0xabc($s1)
/* 5C4B0 8006BCB0 0400438C */  lw         $v1, 4($v0)
/* 5C4B4 8006BCB4 80200400 */  sll        $a0, $a0, 2
/* 5C4B8 8006BCB8 D685000C */  jal        AddPrim
/* 5C4BC 8006BCBC 21206400 */   addu      $a0, $v1, $a0
/* 5C4C0 8006BCC0 B40A2286 */  lh         $v0, 0xab4($s1)
/* 5C4C4 8006BCC4 01001026 */  addiu      $s0, $s0, 1
/* 5C4C8 8006BCC8 2A100202 */  slt        $v0, $s0, $v0
/* 5C4CC 8006BCCC F5FF4014 */  bnez       $v0, .L8006BCA4
/* 5C4D0 8006BCD0 21284002 */   addu      $a1, $s2, $zero
.L8006BCD4:
/* 5C4D4 8006BCD4 B60A2286 */  lh         $v0, 0xab6($s1)
/* 5C4D8 8006BCD8 00000000 */  nop
/* 5C4DC 8006BCDC 11004018 */  blez       $v0, .L8006BD24
/* 5C4E0 8006BCE0 21800000 */   addu      $s0, $zero, $zero
/* 5C4E4 8006BCE4 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5C4E8 8006BCE8 A89D5324 */  addiu      $s3, $v0, %lo(D_80129DA8)
/* 5C4EC 8006BCEC 21908002 */  addu       $s2, $s4, $zero
/* 5C4F0 8006BCF0 21284002 */  addu       $a1, $s2, $zero
.L8006BCF4:
/* 5C4F4 8006BCF4 1C005226 */  addiu      $s2, $s2, 0x1c
/* 5C4F8 8006BCF8 2C0C628E */  lw         $v0, 0xc2c($s3)
/* 5C4FC 8006BCFC BC0A2486 */  lh         $a0, 0xabc($s1)
/* 5C500 8006BD00 0400438C */  lw         $v1, 4($v0)
/* 5C504 8006BD04 80200400 */  sll        $a0, $a0, 2
/* 5C508 8006BD08 D685000C */  jal        AddPrim
/* 5C50C 8006BD0C 21206400 */   addu      $a0, $v1, $a0
/* 5C510 8006BD10 B60A2286 */  lh         $v0, 0xab6($s1)
/* 5C514 8006BD14 01001026 */  addiu      $s0, $s0, 1
/* 5C518 8006BD18 2A100202 */  slt        $v0, $s0, $v0
/* 5C51C 8006BD1C F5FF4014 */  bnez       $v0, .L8006BCF4
/* 5C520 8006BD20 21284002 */   addu      $a1, $s2, $zero
.L8006BD24:
/* 5C524 8006BD24 0000228E */  lw         $v0, ($s1)
/* 5C528 8006BD28 00000000 */  nop
/* 5C52C 8006BD2C 0E004010 */  beqz       $v0, .L8006BD68
/* 5C530 8006BD30 00000000 */   nop
/* 5C534 8006BD34 A89DA28E */  lw         $v0, -0x6258($s5)
/* 5C538 8006BD38 BC0A2486 */  lh         $a0, 0xabc($s1)
/* 5C53C 8006BD3C 40280200 */  sll        $a1, $v0, 1
/* 5C540 8006BD40 2128A200 */  addu       $a1, $a1, $v0
/* 5C544 8006BD44 80280500 */  sll        $a1, $a1, 2
/* 5C548 8006BD48 0400A524 */  addiu      $a1, $a1, 4
/* 5C54C 8006BD4C A89DA226 */  addiu      $v0, $s5, -0x6258
/* 5C550 8006BD50 2C0C438C */  lw         $v1, 0xc2c($v0)
/* 5C554 8006BD54 21282502 */  addu       $a1, $s1, $a1
/* 5C558 8006BD58 0400628C */  lw         $v0, 4($v1)
/* 5C55C 8006BD5C 80200400 */  sll        $a0, $a0, 2
/* 5C560 8006BD60 D685000C */  jal        AddPrim
/* 5C564 8006BD64 21204400 */   addu      $a0, $v0, $a0
.L8006BD68:
/* 5C568 8006BD68 2800BF8F */  lw         $ra, 0x28($sp)
/* 5C56C 8006BD6C 2400B58F */  lw         $s5, 0x24($sp)
/* 5C570 8006BD70 2000B48F */  lw         $s4, 0x20($sp)
/* 5C574 8006BD74 1C00B38F */  lw         $s3, 0x1c($sp)
/* 5C578 8006BD78 1800B28F */  lw         $s2, 0x18($sp)
/* 5C57C 8006BD7C 1400B18F */  lw         $s1, 0x14($sp)
/* 5C580 8006BD80 1000B08F */  lw         $s0, 0x10($sp)
/* 5C584 8006BD84 0800E003 */  jr         $ra
/* 5C588 8006BD88 3000BD27 */   addiu     $sp, $sp, 0x30
