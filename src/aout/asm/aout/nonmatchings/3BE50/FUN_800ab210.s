.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab210
/* 9BA10 800AB210 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9BA14 800AB214 1C80053C */  lui        $a1, %hi(D_801C3E88)
/* 9BA18 800AB218 883EA324 */  addiu      $v1, $a1, %lo(D_801C3E88)
/* 9BA1C 800AB21C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9BA20 800AB220 21808000 */  addu       $s0, $a0, $zero
/* 9BA24 800AB224 1800BFAF */  sw         $ra, 0x18($sp)
/* 9BA28 800AB228 1400B1AF */  sw         $s1, 0x14($sp)
/* 9BA2C 800AB22C 04006290 */  lbu        $v0, 4($v1)
/* 9BA30 800AB230 00000000 */  nop
/* 9BA34 800AB234 07100202 */  srav       $v0, $v0, $s0
/* 9BA38 800AB238 01004230 */  andi       $v0, $v0, 1
/* 9BA3C 800AB23C 03004014 */  bnez       $v0, .L800AB24C
/* 9BA40 800AB240 2188A000 */   addu      $s1, $a1, $zero
/* 9BA44 800AB244 B6AC0208 */  j          .L800AB2D8
/* 9BA48 800AB248 01000224 */   addiu     $v0, $zero, 1
.L800AB24C:
/* 9BA4C 800AB24C F8AE020C */  jal        FUN_800abbe0
/* 9BA50 800AB250 00000000 */   nop
/* 9BA54 800AB254 20004010 */  beqz       $v0, .L800AB2D8
/* 9BA58 800AB258 21100000 */   addu      $v0, $zero, $zero
/* 9BA5C 800AB25C 6E19030C */  jal        FUN_800c65b8
/* 9BA60 800AB260 00000000 */   nop
/* 9BA64 800AB264 06000012 */  beqz       $s0, .L800AB280
/* 9BA68 800AB268 00000000 */   nop
/* 9BA6C 800AB26C 20004230 */  andi       $v0, $v0, 0x20
/* 9BA70 800AB270 06004014 */  bnez       $v0, .L800AB28C
/* 9BA74 800AB274 883E2526 */   addiu     $a1, $s1, 0x3e88
/* 9BA78 800AB278 B6AC0208 */  j          .L800AB2D8
/* 9BA7C 800AB27C 21100000 */   addu      $v0, $zero, $zero
.L800AB280:
/* 9BA80 800AB280 02004230 */  andi       $v0, $v0, 2
/* 9BA84 800AB284 13004010 */  beqz       $v0, .L800AB2D4
/* 9BA88 800AB288 883E2526 */   addiu     $a1, $s1, 0x3e88
.L800AB28C:
/* 9BA8C 800AB28C 0400A490 */  lbu        $a0, 4($a1)
/* 9BA90 800AB290 00000000 */  nop
/* 9BA94 800AB294 07100402 */  srav       $v0, $a0, $s0
/* 9BA98 800AB298 01004230 */  andi       $v0, $v0, 1
/* 9BA9C 800AB29C 0D004010 */  beqz       $v0, .L800AB2D4
/* 9BAA0 800AB2A0 01000224 */   addiu     $v0, $zero, 1
/* 9BAA4 800AB2A4 04100202 */  sllv       $v0, $v0, $s0
/* 9BAA8 800AB2A8 27100200 */  nor        $v0, $zero, $v0
/* 9BAAC 800AB2AC 1C01A390 */  lbu        $v1, 0x11c($a1)
/* 9BAB0 800AB2B0 24208200 */  and        $a0, $a0, $v0
/* 9BAB4 800AB2B4 0400A4A0 */  sb         $a0, 4($a1)
/* 9BAB8 800AB2B8 21200002 */  addu       $a0, $s0, $zero
/* 9BABC 800AB2BC 24186200 */  and        $v1, $v1, $v0
/* 9BAC0 800AB2C0 1C01A3A0 */  sb         $v1, 0x11c($a1)
/* 9BAC4 800AB2C4 69B9020C */  jal        FUN_800ae5a4
/* 9BAC8 800AB2C8 02000524 */   addiu     $a1, $zero, 2
/* 9BACC 800AB2CC B6AC0208 */  j          .L800AB2D8
/* 9BAD0 800AB2D0 FFFF0224 */   addiu     $v0, $zero, -1
.L800AB2D4:
/* 9BAD4 800AB2D4 21100000 */  addu       $v0, $zero, $zero
.L800AB2D8:
/* 9BAD8 800AB2D8 1800BF8F */  lw         $ra, 0x18($sp)
/* 9BADC 800AB2DC 1400B18F */  lw         $s1, 0x14($sp)
/* 9BAE0 800AB2E0 1000B08F */  lw         $s0, 0x10($sp)
/* 9BAE4 800AB2E4 0800E003 */  jr         $ra
/* 9BAE8 800AB2E8 2000BD27 */   addiu     $sp, $sp, 0x20
