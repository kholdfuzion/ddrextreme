.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8008b9d0
/* 7C1D0 8008B9D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7C1D4 8008B9D4 1400B1AF */  sw         $s1, 0x14($sp)
/* 7C1D8 8008B9D8 21888000 */  addu       $s1, $a0, $zero
/* 7C1DC 8008B9DC 1800BFAF */  sw         $ra, 0x18($sp)
/* 7C1E0 8008B9E0 1000B0AF */  sw         $s0, 0x10($sp)
/* 7C1E4 8008B9E4 AC482392 */  lbu        $v1, 0x48ac($s1)
/* 7C1E8 8008B9E8 01000224 */  addiu      $v0, $zero, 1
/* 7C1EC 8008B9EC 10006214 */  bne        $v1, $v0, .L8008BA30
/* 7C1F0 8008B9F0 0F80023C */   lui       $v0, %hi(D_800EFFFF)
/* 7C1F4 8008B9F4 BC0A228E */  lw         $v0, 0xabc($s1)
/* 7C1F8 8008B9F8 00000000 */  nop
/* 7C1FC 8008B9FC FFFF4424 */  addiu      $a0, $v0, %lo(D_800EFFFF)
/* 7C200 8008BA00 40100400 */  sll        $v0, $a0, 1
/* 7C204 8008BA04 21102202 */  addu       $v0, $s1, $v0
/* 7C208 8008BA08 0A024384 */  lh         $v1, 0x20a($v0)
/* 7C20C 8008BA0C FF000224 */  addiu      $v0, $zero, 0xff
/* 7C210 8008BA10 05006214 */  bne        $v1, $v0, .L8008BA28
/* 7C214 8008BA14 C2170400 */   srl       $v0, $a0, 0x1f
/* 7C218 8008BA18 21108200 */  addu       $v0, $a0, $v0
/* 7C21C 8008BA1C 43100200 */  sra        $v0, $v0, 1
/* 7C220 8008BA20 E92E0208 */  j          .L8008BBA4
/* 7C224 8008BA24 000022AE */   sw        $v0, ($s1)
.L8008BA28:
/* 7C228 8008BA28 E92E0208 */  j          .L8008BBA4
/* 7C22C 8008BA2C 000020AE */   sw        $zero, ($s1)
.L8008BA30:
/* 7C230 8008BA30 28004424 */  addiu      $a0, $v0, 0x28
/* 7C234 8008BA34 1E008284 */  lh         $v0, 0x1e($a0)
/* 7C238 8008BA38 00000000 */  nop
/* 7C23C 8008BA3C F9004228 */  slti       $v0, $v0, 0xf9
/* 7C240 8008BA40 05004010 */  beqz       $v0, .L8008BA58
/* 7C244 8008BA44 00000000 */   nop
/* 7C248 8008BA48 9C0B2282 */  lb         $v0, 0xb9c($s1)
/* 7C24C 8008BA4C 00000000 */  nop
/* 7C250 8008BA50 0A004010 */  beqz       $v0, .L8008BA7C
/* 7C254 8008BA54 08000224 */   addiu     $v0, $zero, 8
.L8008BA58:
/* 7C258 8008BA58 D00A20AE */  sw         $zero, 0xad0($s1)
/* 7C25C 8008BA5C D00A228E */  lw         $v0, 0xad0($s1)
/* 7C260 8008BA60 000020AE */  sw         $zero, ($s1)
/* 7C264 8008BA64 C80A20AE */  sw         $zero, 0xac8($s1)
/* 7C268 8008BA68 D40A20AE */  sw         $zero, 0xad4($s1)
/* 7C26C 8008BA6C F02E0208 */  j          .L8008BBC0
/* 7C270 8008BA70 CC0A22AE */   sw        $v0, 0xacc($s1)
.L8008BA74:
/* 7C274 8008BA74 B62E0208 */  j          .L8008BAD8
/* 7C278 8008BA78 2130A000 */   addu      $a2, $a1, $zero
.L8008BA7C:
/* 7C27C 8008BA7C 000020AE */  sw         $zero, ($s1)
/* 7C280 8008BA80 16008380 */  lb         $v1, 0x16($a0)
/* 7C284 8008BA84 00000000 */  nop
/* 7C288 8008BA88 03006210 */  beq        $v1, $v0, .L8008BA98
/* 7C28C 8008BA8C 02000224 */   addiu     $v0, $zero, 2
/* 7C290 8008BA90 32006214 */  bne        $v1, $v0, .L8008BB5C
/* 7C294 8008BA94 00000000 */   nop
.L8008BA98:
/* 7C298 8008BA98 FFFF0624 */  addiu      $a2, $zero, -1
/* 7C29C 8008BA9C BC0A228E */  lw         $v0, 0xabc($s1)
/* 7C2A0 8008BAA0 00000000 */  nop
/* 7C2A4 8008BAA4 0D004018 */  blez       $v0, .L8008BADC
/* 7C2A8 8008BAA8 21280000 */   addu      $a1, $zero, $zero
/* 7C2AC 8008BAAC 1E008784 */  lh         $a3, 0x1e($a0)
/* 7C2B0 8008BAB0 21204000 */  addu       $a0, $v0, $zero
/* 7C2B4 8008BAB4 21182002 */  addu       $v1, $s1, $zero
.L8008BAB8:
/* 7C2B8 8008BAB8 0A026284 */  lh         $v0, 0x20a($v1)
/* 7C2BC 8008BABC 00000000 */  nop
/* 7C2C0 8008BAC0 ECFF4710 */  beq        $v0, $a3, .L8008BA74
/* 7C2C4 8008BAC4 00000000 */   nop
/* 7C2C8 8008BAC8 0100A524 */  addiu      $a1, $a1, 1
/* 7C2CC 8008BACC 2A10A400 */  slt        $v0, $a1, $a0
/* 7C2D0 8008BAD0 F9FF4014 */  bnez       $v0, .L8008BAB8
/* 7C2D4 8008BAD4 02006324 */   addiu     $v1, $v1, 2
.L8008BAD8:
/* 7C2D8 8008BAD8 BC0A228E */  lw         $v0, 0xabc($s1)
.L8008BADC:
/* 7C2DC 8008BADC 00000000 */  nop
/* 7C2E0 8008BAE0 0200A214 */  bne        $a1, $v0, .L8008BAEC
/* 7C2E4 8008BAE4 00000000 */   nop
/* 7C2E8 8008BAE8 21300000 */  addu       $a2, $zero, $zero
.L8008BAEC:
/* 7C2EC 8008BAEC 0400228E */  lw         $v0, 4($s1)
/* 7C2F0 8008BAF0 00000000 */  nop
/* 7C2F4 8008BAF4 12004018 */  blez       $v0, .L8008BB40
/* 7C2F8 8008BAF8 21280000 */   addu      $a1, $zero, $zero
/* 7C2FC 8008BAFC 21384000 */  addu       $a3, $v0, $zero
/* 7C300 8008BB00 21202002 */  addu       $a0, $s1, $zero
.L8008BB04:
/* 7C304 8008BB04 CC098384 */  lh         $v1, 0x9cc($a0)
/* 7C308 8008BB08 00000000 */  nop
/* 7C30C 8008BB0C 2A10C300 */  slt        $v0, $a2, $v1
/* 7C310 8008BB10 07004014 */  bnez       $v0, .L8008BB30
/* 7C314 8008BB14 00000000 */   nop
/* 7C318 8008BB18 440A8284 */  lh         $v0, 0xa44($a0)
/* 7C31C 8008BB1C 00000000 */  nop
/* 7C320 8008BB20 21106200 */  addu       $v0, $v1, $v0
/* 7C324 8008BB24 2A10C200 */  slt        $v0, $a2, $v0
/* 7C328 8008BB28 05004014 */  bnez       $v0, .L8008BB40
/* 7C32C 8008BB2C 00000000 */   nop
.L8008BB30:
/* 7C330 8008BB30 0100A524 */  addiu      $a1, $a1, 1
/* 7C334 8008BB34 2A10A700 */  slt        $v0, $a1, $a3
/* 7C338 8008BB38 F2FF4014 */  bnez       $v0, .L8008BB04
/* 7C33C 8008BB3C 02008424 */   addiu     $a0, $a0, 2
.L8008BB40:
/* 7C340 8008BB40 C00A228E */  lw         $v0, 0xac0($s1)
/* 7C344 8008BB44 FB00B024 */  addiu      $s0, $a1, 0xfb
/* 7C348 8008BB48 04005010 */  beq        $v0, $s0, .L8008BB5C
/* 7C34C 8008BB4C 21202002 */   addu      $a0, $s1, $zero
/* 7C350 8008BB50 88FE010C */  jal        FUN_8007fa20
/* 7C354 8008BB54 21280002 */   addu      $a1, $s0, $zero
/* 7C358 8008BB58 C00A30AE */  sw         $s0, 0xac0($s1)
.L8008BB5C:
/* 7C35C 8008BB5C 0400238E */  lw         $v1, 4($s1)
/* 7C360 8008BB60 00000000 */  nop
/* 7C364 8008BB64 0F006018 */  blez       $v1, .L8008BBA4
/* 7C368 8008BB68 21280000 */   addu      $a1, $zero, $zero
/* 7C36C 8008BB6C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7C370 8008BB70 28004724 */  addiu      $a3, $v0, %lo(D_800F0028)
/* 7C374 8008BB74 21306000 */  addu       $a2, $v1, $zero
/* 7C378 8008BB78 21202002 */  addu       $a0, $s1, $zero
.L8008BB7C:
/* 7C37C 8008BB7C 18008384 */  lh         $v1, 0x18($a0)
/* 7C380 8008BB80 1E00E284 */  lh         $v0, 0x1e($a3)
/* 7C384 8008BB84 00000000 */  nop
/* 7C388 8008BB88 02006214 */  bne        $v1, $v0, .L8008BB94
/* 7C38C 8008BB8C 00000000 */   nop
/* 7C390 8008BB90 000025AE */  sw         $a1, ($s1)
.L8008BB94:
/* 7C394 8008BB94 0100A524 */  addiu      $a1, $a1, 1
/* 7C398 8008BB98 2A10A600 */  slt        $v0, $a1, $a2
/* 7C39C 8008BB9C F7FF4014 */  bnez       $v0, .L8008BB7C
/* 7C3A0 8008BBA0 02008424 */   addiu     $a0, $a0, 2
.L8008BBA4:
/* 7C3A4 8008BBA4 0000228E */  lw         $v0, ($s1)
/* 7C3A8 8008BBA8 D40A20AE */  sw         $zero, 0xad4($s1)
/* 7C3AC 8008BBAC 00130200 */  sll        $v0, $v0, 0xc
/* 7C3B0 8008BBB0 D00A22AE */  sw         $v0, 0xad0($s1)
/* 7C3B4 8008BBB4 21184000 */  addu       $v1, $v0, $zero
/* 7C3B8 8008BBB8 C80A22AE */  sw         $v0, 0xac8($s1)
/* 7C3BC 8008BBBC CC0A23AE */  sw         $v1, 0xacc($s1)
.L8008BBC0:
/* 7C3C0 8008BBC0 1800BF8F */  lw         $ra, 0x18($sp)
/* 7C3C4 8008BBC4 1400B18F */  lw         $s1, 0x14($sp)
/* 7C3C8 8008BBC8 1000B08F */  lw         $s0, 0x10($sp)
/* 7C3CC 8008BBCC 0800E003 */  jr         $ra
/* 7C3D0 8008BBD0 2000BD27 */   addiu     $sp, $sp, 0x20
