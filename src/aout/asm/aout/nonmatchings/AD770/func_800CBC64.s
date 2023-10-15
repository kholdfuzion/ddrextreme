.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CBC64
/* BC464 800CBC64 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BC468 800CBC68 1400B1AF */  sw         $s1, 0x14($sp)
/* BC46C 800CBC6C 21888000 */  addu       $s1, $a0, $zero
/* BC470 800CBC70 1800B2AF */  sw         $s2, 0x18($sp)
/* BC474 800CBC74 2190A000 */  addu       $s2, $a1, $zero
/* BC478 800CBC78 80000424 */  addiu      $a0, $zero, 0x80
/* BC47C 800CBC7C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BC480 800CBC80 E42D030C */  jal        FUN_800cb790
/* BC484 800CBC84 1000B0AF */   sw        $s0, 0x10($sp)
/* BC488 800CBC88 05004010 */  beqz       $v0, .L800CBCA0
/* BC48C 800CBC8C 00000000 */   nop
/* BC490 800CBC90 D32D030C */  jal        FUN_800cb74c
/* BC494 800CBC94 FFFF0424 */   addiu     $a0, $zero, -1
/* BC498 800CBC98 4D2F0308 */  j          .L800CBD34
/* BC49C 800CBC9C 00000000 */   nop
.L800CBCA0:
/* BC4A0 800CBCA0 442B030C */  jal        FUN_800cad10
/* BC4A4 800CBCA4 50000424 */   addiu     $a0, $zero, 0x50
/* BC4A8 800CBCA8 11004014 */  bnez       $v0, .L800CBCF0
/* BC4AC 800CBCAC 21800000 */   addu      $s0, $zero, $zero
.L800CBCB0:
/* BC4B0 800CBCB0 00002492 */  lbu        $a0, ($s1)
/* BC4B4 800CBCB4 442B030C */  jal        FUN_800cad10
/* BC4B8 800CBCB8 01003126 */   addiu     $s1, $s1, 1
/* BC4BC 800CBCBC 0C004014 */  bnez       $v0, .L800CBCF0
/* BC4C0 800CBCC0 01001026 */   addiu     $s0, $s0, 1
/* BC4C4 800CBCC4 0800022A */  slti       $v0, $s0, 8
/* BC4C8 800CBCC8 F9FF4014 */  bnez       $v0, .L800CBCB0
/* BC4CC 800CBCCC 00000000 */   nop
/* BC4D0 800CBCD0 E42D030C */  jal        FUN_800cb790
/* BC4D4 800CBCD4 C0000424 */   addiu     $a0, $zero, 0xc0
/* BC4D8 800CBCD8 09004010 */  beqz       $v0, .L800CBD00
/* BC4DC 800CBCDC 21800000 */   addu      $s0, $zero, $zero
/* BC4E0 800CBCE0 D32D030C */  jal        FUN_800cb74c
/* BC4E4 800CBCE4 FDFF0424 */   addiu     $a0, $zero, -3
/* BC4E8 800CBCE8 4D2F0308 */  j          .L800CBD34
/* BC4EC 800CBCEC 00000000 */   nop
.L800CBCF0:
/* BC4F0 800CBCF0 D32D030C */  jal        FUN_800cb74c
/* BC4F4 800CBCF4 FEFF0424 */   addiu     $a0, $zero, -2
/* BC4F8 800CBCF8 4D2F0308 */  j          .L800CBD34
/* BC4FC 800CBCFC 00000000 */   nop
.L800CBD00:
/* BC500 800CBD00 00004492 */  lbu        $a0, ($s2)
/* BC504 800CBD04 442B030C */  jal        FUN_800cad10
/* BC508 800CBD08 01005226 */   addiu     $s2, $s2, 1
/* BC50C 800CBD0C F8FF4014 */  bnez       $v0, .L800CBCF0
/* BC510 800CBD10 01001026 */   addiu     $s0, $s0, 1
/* BC514 800CBD14 0500022A */  slti       $v0, $s0, 5
/* BC518 800CBD18 F9FF4014 */  bnez       $v0, .L800CBD00
/* BC51C 800CBD1C 00000000 */   nop
/* BC520 800CBD20 162B030C */  jal        FUN_800cac58
/* BC524 800CBD24 00000000 */   nop
/* BC528 800CBD28 B32D030C */  jal        FUN_800cb6cc
/* BC52C 800CBD2C 04000424 */   addiu     $a0, $zero, 4
/* BC530 800CBD30 21100000 */  addu       $v0, $zero, $zero
.L800CBD34:
/* BC534 800CBD34 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BC538 800CBD38 1800B28F */  lw         $s2, 0x18($sp)
/* BC53C 800CBD3C 1400B18F */  lw         $s1, 0x14($sp)
/* BC540 800CBD40 1000B08F */  lw         $s0, 0x10($sp)
/* BC544 800CBD44 0800E003 */  jr         $ra
/* BC548 800CBD48 2000BD27 */   addiu     $sp, $sp, 0x20
