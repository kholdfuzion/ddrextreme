.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba2bc
/* AAABC 800BA2BC 58FFBD27 */  addiu      $sp, $sp, -0xa8
/* AAAC0 800BA2C0 9400B3AF */  sw         $s3, 0x94($sp)
/* AAAC4 800BA2C4 21980000 */  addu       $s3, $zero, $zero
/* AAAC8 800BA2C8 9800B4AF */  sw         $s4, 0x98($sp)
/* AAACC 800BA2CC 6000B427 */  addiu      $s4, $sp, 0x60
/* AAAD0 800BA2D0 A000B6AF */  sw         $s6, 0xa0($sp)
/* AAAD4 800BA2D4 7000B627 */  addiu      $s6, $sp, 0x70
/* AAAD8 800BA2D8 9C00B5AF */  sw         $s5, 0x9c($sp)
/* AAADC 800BA2DC 0180153C */  lui        $s5, 0x8001
/* AAAE0 800BA2E0 9000B2AF */  sw         $s2, 0x90($sp)
/* AAAE4 800BA2E4 5800B227 */  addiu      $s2, $sp, 0x58
/* AAAE8 800BA2E8 8C00B1AF */  sw         $s1, 0x8c($sp)
/* AAAEC 800BA2EC 5000B127 */  addiu      $s1, $sp, 0x50
/* AAAF0 800BA2F0 0180023C */  lui        $v0, %hi(D_800174AC)
/* AAAF4 800BA2F4 AC744424 */  addiu      $a0, $v0, %lo(D_800174AC)
/* AAAF8 800BA2F8 0180033C */  lui        $v1, %hi(D_800174B4)
/* AAAFC 800BA2FC AC74468C */  lw         $a2, 0x74ac($v0)
/* AAB00 800BA300 B4746524 */  addiu      $a1, $v1, %lo(D_800174B4)
/* AAB04 800BA304 A400BFAF */  sw         $ra, 0xa4($sp)
/* AAB08 800BA308 8800B0AF */  sw         $s0, 0x88($sp)
/* AAB0C 800BA30C 0400878C */  lw         $a3, 4($a0)
/* AAB10 800BA310 B474628C */  lw         $v0, 0x74b4($v1)
/* AAB14 800BA314 0400A48C */  lw         $a0, 4($a1)
/* AAB18 800BA318 01001024 */  addiu      $s0, $zero, 1
/* AAB1C 800BA31C 5000A6AF */  sw         $a2, 0x50($sp)
/* AAB20 800BA320 5400A7AF */  sw         $a3, 0x54($sp)
/* AAB24 800BA324 5800A2AF */  sw         $v0, 0x58($sp)
/* AAB28 800BA328 5C00A4AF */  sw         $a0, 0x5c($sp)
.L800BA32C:
/* AAB2C 800BA32C 0000248E */  lw         $a0, ($s1)
/* AAB30 800BA330 0000468E */  lw         $a2, ($s2)
/* AAB34 800BA334 650C030C */  jal        checkseccassette_800c3194
/* AAB38 800BA338 21288002 */   addu      $a1, $s4, $zero
/* AAB3C 800BA33C 04004104 */  bgez       $v0, .L800BA350
/* AAB40 800BA340 BC74A426 */   addiu     $a0, $s5, 0x74bc
/* AAB44 800BA344 FFFF0524 */  addiu      $a1, $zero, -1
/* AAB48 800BA348 58AA000C */  jal        error_8002a960
/* AAB4C 800BA34C 21300000 */   addu      $a2, $zero, $zero
.L800BA350:
/* AAB50 800BA350 04005226 */  addiu      $s2, $s2, 4
/* AAB54 800BA354 FFFF1026 */  addiu      $s0, $s0, -1
/* AAB58 800BA358 F4FF0106 */  bgez       $s0, .L800BA32C
/* AAB5C 800BA35C 04003126 */   addiu     $s1, $s1, 4
/* AAB60 800BA360 500E030C */  jal        FUN_800c3940
/* AAB64 800BA364 00000000 */   nop
/* AAB68 800BA368 08004010 */  beqz       $v0, .L800BA38C
/* AAB6C 800BA36C 1000A427 */   addiu     $a0, $sp, 0x10
/* AAB70 800BA370 0180053C */  lui        $a1, %hi(D_800174D8)
/* AAB74 800BA374 D874A524 */  addiu      $a1, $a1, %lo(D_800174D8)
/* AAB78 800BA378 8E81000C */  jal        sprintf
/* AAB7C 800BA37C 14004624 */   addiu     $a2, $v0, 0x14
/* AAB80 800BA380 169B000C */  jal        atoi
/* AAB84 800BA384 1000A427 */   addiu     $a0, $sp, 0x10
/* AAB88 800BA388 21984000 */  addu       $s3, $v0, $zero
.L800BA38C:
/* AAB8C 800BA38C FFFF7332 */  andi       $s3, $s3, 0xffff
/* AAB90 800BA390 FF006232 */  andi       $v0, $s3, 0xff
/* AAB94 800BA394 021A1300 */  srl        $v1, $s3, 8
/* AAB98 800BA398 26104300 */  xor        $v0, $v0, $v1
/* AAB9C 800BA39C 27100200 */  nor        $v0, $zero, $v0
/* AABA0 800BA3A0 FF004230 */  andi       $v0, $v0, 0xff
/* AABA4 800BA3A4 001A1300 */  sll        $v1, $s3, 8
/* AABA8 800BA3A8 25386200 */  or         $a3, $v1, $v0
/* AABAC 800BA3AC 0180043C */  lui        $a0, %hi(D_800174E0)
/* AABB0 800BA3B0 E0748624 */  addiu      $a2, $a0, %lo(D_800174E0)
/* AABB4 800BA3B4 0300C288 */  lwl        $v0, 3($a2)
/* AABB8 800BA3B8 0000C298 */  lwr        $v0, ($a2)
/* AABBC 800BA3BC 0700C388 */  lwl        $v1, 7($a2)
/* AABC0 800BA3C0 0400C398 */  lwr        $v1, 4($a2)
/* AABC4 800BA3C4 0B00C588 */  lwl        $a1, 0xb($a2)
/* AABC8 800BA3C8 0800C598 */  lwr        $a1, 8($a2)
/* AABCC 800BA3CC 7300A2AB */  swl        $v0, 0x73($sp)
/* AABD0 800BA3D0 7000A2BB */  swr        $v0, 0x70($sp)
/* AABD4 800BA3D4 7700A3AB */  swl        $v1, 0x77($sp)
/* AABD8 800BA3D8 7400A3BB */  swr        $v1, 0x74($sp)
/* AABDC 800BA3DC 7B00A5AB */  swl        $a1, 0x7b($sp)
/* AABE0 800BA3E0 7800A5BB */  swr        $a1, 0x78($sp)
/* AABE4 800BA3E4 0F00C288 */  lwl        $v0, 0xf($a2)
/* AABE8 800BA3E8 0C00C298 */  lwr        $v0, 0xc($a2)
/* AABEC 800BA3EC 1300C388 */  lwl        $v1, 0x13($a2)
/* AABF0 800BA3F0 1000C398 */  lwr        $v1, 0x10($a2)
/* AABF4 800BA3F4 1700C588 */  lwl        $a1, 0x17($a2)
/* AABF8 800BA3F8 1400C598 */  lwr        $a1, 0x14($a2)
/* AABFC 800BA3FC 7F00A2AB */  swl        $v0, 0x7f($sp)
/* AAC00 800BA400 7C00A2BB */  swr        $v0, 0x7c($sp)
/* AAC04 800BA404 8300A3AB */  swl        $v1, 0x83($sp)
/* AAC08 800BA408 8000A3BB */  swr        $v1, 0x80($sp)
/* AAC0C 800BA40C 8700A5AB */  swl        $a1, 0x87($sp)
/* AAC10 800BA410 8400A5BB */  swr        $a1, 0x84($sp)
/* AAC14 800BA414 21280000 */  addu       $a1, $zero, $zero
/* AAC18 800BA418 21800000 */  addu       $s0, $zero, $zero
/* AAC1C 800BA41C 2130C002 */  addu       $a2, $s6, $zero
.L800BA420:
/* AAC20 800BA420 07180702 */  srav       $v1, $a3, $s0
/* AAC24 800BA424 2110D000 */  addu       $v0, $a2, $s0
/* AAC28 800BA428 01001026 */  addiu      $s0, $s0, 1
/* AAC2C 800BA42C 00004490 */  lbu        $a0, ($v0)
/* AAC30 800BA430 01006330 */  andi       $v1, $v1, 1
/* AAC34 800BA434 1800022A */  slti       $v0, $s0, 0x18
/* AAC38 800BA438 04188300 */  sllv       $v1, $v1, $a0
/* AAC3C 800BA43C F8FF4014 */  bnez       $v0, .L800BA420
/* AAC40 800BA440 2528A300 */   or        $a1, $a1, $v1
/* AAC44 800BA444 A400BF8F */  lw         $ra, 0xa4($sp)
/* AAC48 800BA448 A000B68F */  lw         $s6, 0xa0($sp)
/* AAC4C 800BA44C 9C00B58F */  lw         $s5, 0x9c($sp)
/* AAC50 800BA450 9800B48F */  lw         $s4, 0x98($sp)
/* AAC54 800BA454 9400B38F */  lw         $s3, 0x94($sp)
/* AAC58 800BA458 9000B28F */  lw         $s2, 0x90($sp)
/* AAC5C 800BA45C 8C00B18F */  lw         $s1, 0x8c($sp)
/* AAC60 800BA460 8800B08F */  lw         $s0, 0x88($sp)
/* AAC64 800BA464 2110A000 */  addu       $v0, $a1, $zero
/* AAC68 800BA468 0800E003 */  jr         $ra
/* AAC6C 800BA46C A800BD27 */   addiu     $sp, $sp, 0xa8
