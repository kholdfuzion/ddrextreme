.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800baa74
/* AB274 800BAA74 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* AB278 800BAA78 0180023C */  lui        $v0, 0x8001
/* AB27C 800BAA7C 4400BFAF */  sw         $ra, 0x44($sp)
/* AB280 800BAA80 4000B4AF */  sw         $s4, 0x40($sp)
/* AB284 800BAA84 3C00B3AF */  sw         $s3, 0x3c($sp)
/* AB288 800BAA88 3800B2AF */  sw         $s2, 0x38($sp)
/* AB28C 800BAA8C 3400B1AF */  sw         $s1, 0x34($sp)
/* AB290 800BAA90 3000B0AF */  sw         $s0, 0x30($sp)
/* AB294 800BAA94 74754724 */  addiu      $a3, $v0, 0x7574
/* AB298 800BAA98 0300E388 */  lwl        $v1, 3($a3)
/* AB29C 800BAA9C 0000E398 */  lwr        $v1, ($a3)
/* AB2A0 800BAAA0 0700E588 */  lwl        $a1, 7($a3)
/* AB2A4 800BAAA4 0400E598 */  lwr        $a1, 4($a3)
/* AB2A8 800BAAA8 0B00E688 */  lwl        $a2, 0xb($a3)
/* AB2AC 800BAAAC 0800E698 */  lwr        $a2, 8($a3)
/* AB2B0 800BAAB0 1300A3AB */  swl        $v1, 0x13($sp)
/* AB2B4 800BAAB4 1000A3BB */  swr        $v1, 0x10($sp)
/* AB2B8 800BAAB8 1700A5AB */  swl        $a1, 0x17($sp)
/* AB2BC 800BAABC 1400A5BB */  swr        $a1, 0x14($sp)
/* AB2C0 800BAAC0 1B00A6AB */  swl        $a2, 0x1b($sp)
/* AB2C4 800BAAC4 1800A6BB */  swr        $a2, 0x18($sp)
/* AB2C8 800BAAC8 0F00E388 */  lwl        $v1, 0xf($a3)
/* AB2CC 800BAACC 0C00E398 */  lwr        $v1, 0xc($a3)
/* AB2D0 800BAAD0 1300E588 */  lwl        $a1, 0x13($a3)
/* AB2D4 800BAAD4 1000E598 */  lwr        $a1, 0x10($a3)
/* AB2D8 800BAAD8 1700E688 */  lwl        $a2, 0x17($a3)
/* AB2DC 800BAADC 1400E698 */  lwr        $a2, 0x14($a3)
/* AB2E0 800BAAE0 1F00A3AB */  swl        $v1, 0x1f($sp)
/* AB2E4 800BAAE4 1C00A3BB */  swr        $v1, 0x1c($sp)
/* AB2E8 800BAAE8 2300A5AB */  swl        $a1, 0x23($sp)
/* AB2EC 800BAAEC 2000A5BB */  swr        $a1, 0x20($sp)
/* AB2F0 800BAAF0 2700A6AB */  swl        $a2, 0x27($sp)
/* AB2F4 800BAAF4 2400A6BB */  swr        $a2, 0x24($sp)
/* AB2F8 800BAAF8 1B00E388 */  lwl        $v1, 0x1b($a3)
/* AB2FC 800BAAFC 1800E398 */  lwr        $v1, 0x18($a3)
/* AB300 800BAB00 1F00E588 */  lwl        $a1, 0x1f($a3)
/* AB304 800BAB04 1C00E598 */  lwr        $a1, 0x1c($a3)
/* AB308 800BAB08 2B00A3AB */  swl        $v1, 0x2b($sp)
/* AB30C 800BAB0C 2800A3BB */  swr        $v1, 0x28($sp)
/* AB310 800BAB10 2F00A5AB */  swl        $a1, 0x2f($sp)
/* AB314 800BAB14 2C00A5BB */  swr        $a1, 0x2c($sp)
/* AB318 800BAB18 10ED020C */  jal        FUN_800bb440
/* AB31C 800BAB1C 0F001124 */   addiu     $s1, $zero, 0xf
/* AB320 800BAB20 2000B227 */  addiu      $s2, $sp, 0x20
/* AB324 800BAB24 1E80023C */  lui        $v0, %hi(D_801E0EF0)
/* AB328 800BAB28 F00E5324 */  addiu      $s3, $v0, %lo(D_801E0EF0)
/* AB32C 800BAB2C 1000B027 */  addiu      $s0, $sp, 0x10
.L800BAB30:
/* AB330 800BAB30 FBED020C */  jal        FUN_800bb7ec
/* AB334 800BAB34 00000000 */   nop
/* AB338 800BAB38 01004230 */  andi       $v0, $v0, 1
/* AB33C 800BAB3C 05004010 */  beqz       $v0, .L800BAB54
/* AB340 800BAB40 00000000 */   nop
/* AB344 800BAB44 00004292 */  lbu        $v0, ($s2)
/* AB348 800BAB48 00000392 */  lbu        $v1, ($s0)
/* AB34C 800BAB4C D8EA0208 */  j          .L800BAB60
/* AB350 800BAB50 000062A2 */   sb        $v0, ($s3)
.L800BAB54:
/* AB354 800BAB54 00000292 */  lbu        $v0, ($s0)
/* AB358 800BAB58 00004392 */  lbu        $v1, ($s2)
/* AB35C 800BAB5C 000062A2 */  sb         $v0, ($s3)
.L800BAB60:
/* AB360 800BAB60 100063A2 */  sb         $v1, 0x10($s3)
/* AB364 800BAB64 01005226 */  addiu      $s2, $s2, 1
/* AB368 800BAB68 01007326 */  addiu      $s3, $s3, 1
/* AB36C 800BAB6C FFFF3126 */  addiu      $s1, $s1, -1
/* AB370 800BAB70 EFFF2106 */  bgez       $s1, .L800BAB30
/* AB374 800BAB74 01001026 */   addiu     $s0, $s0, 1
/* AB378 800BAB78 21880000 */  addu       $s1, $zero, $zero
/* AB37C 800BAB7C 1E80023C */  lui        $v0, %hi(D_801E0EF0)
/* AB380 800BAB80 F00E5424 */  addiu      $s4, $v0, %lo(D_801E0EF0)
/* AB384 800BAB84 01003326 */  addiu      $s3, $s1, 1
.L800BAB88:
/* AB388 800BAB88 00891100 */  sll        $s1, $s1, 4
/* AB38C 800BAB8C 3F021224 */  addiu      $s2, $zero, 0x23f
.L800BAB90:
/* AB390 800BAB90 FBED020C */  jal        FUN_800bb7ec
/* AB394 800BAB94 FFFF5226 */   addiu     $s2, $s2, -1
/* AB398 800BAB98 FBED020C */  jal        FUN_800bb7ec
/* AB39C 800BAB9C 0F005030 */   andi      $s0, $v0, 0xf
/* AB3A0 800BABA0 0F004230 */  andi       $v0, $v0, 0xf
/* AB3A4 800BABA4 21801102 */  addu       $s0, $s0, $s1
/* AB3A8 800BABA8 21801402 */  addu       $s0, $s0, $s4
/* AB3AC 800BABAC 21105100 */  addu       $v0, $v0, $s1
/* AB3B0 800BABB0 21105400 */  addu       $v0, $v0, $s4
/* AB3B4 800BABB4 00000492 */  lbu        $a0, ($s0)
/* AB3B8 800BABB8 00004390 */  lbu        $v1, ($v0)
/* AB3BC 800BABBC 00000000 */  nop
/* AB3C0 800BABC0 000003A2 */  sb         $v1, ($s0)
/* AB3C4 800BABC4 F2FF4106 */  bgez       $s2, .L800BAB90
/* AB3C8 800BABC8 000044A0 */   sb        $a0, ($v0)
/* AB3CC 800BABCC 21886002 */  addu       $s1, $s3, $zero
/* AB3D0 800BABD0 0200222A */  slti       $v0, $s1, 2
/* AB3D4 800BABD4 ECFF4014 */  bnez       $v0, .L800BAB88
/* AB3D8 800BABD8 01003326 */   addiu     $s3, $s1, 1
/* AB3DC 800BABDC 4400BF8F */  lw         $ra, 0x44($sp)
/* AB3E0 800BABE0 4000B48F */  lw         $s4, 0x40($sp)
/* AB3E4 800BABE4 3C00B38F */  lw         $s3, 0x3c($sp)
/* AB3E8 800BABE8 3800B28F */  lw         $s2, 0x38($sp)
/* AB3EC 800BABEC 3400B18F */  lw         $s1, 0x34($sp)
/* AB3F0 800BABF0 3000B08F */  lw         $s0, 0x30($sp)
/* AB3F4 800BABF4 0800E003 */  jr         $ra
/* AB3F8 800BABF8 4800BD27 */   addiu     $sp, $sp, 0x48
