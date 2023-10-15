.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006ba70
/* 5C270 8006BA70 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 5C274 8006BA74 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5C278 8006BA78 A89D488C */  lw         $t0, %lo(D_80129DA8)($v0)
/* 5C27C 8006BA7C 40100400 */  sll        $v0, $a0, 1
/* 5C280 8006BA80 21104400 */  addu       $v0, $v0, $a0
/* 5C284 8006BA84 80100200 */  sll        $v0, $v0, 2
/* 5C288 8006BA88 23104400 */  subu       $v0, $v0, $a0
/* 5C28C 8006BA8C 80100200 */  sll        $v0, $v0, 2
/* 5C290 8006BA90 23104400 */  subu       $v0, $v0, $a0
/* 5C294 8006BA94 80100200 */  sll        $v0, $v0, 2
/* 5C298 8006BA98 21104400 */  addu       $v0, $v0, $a0
/* 5C29C 8006BA9C 80100200 */  sll        $v0, $v0, 2
/* 5C2A0 8006BAA0 23104400 */  subu       $v0, $v0, $a0
/* 5C2A4 8006BAA4 80480200 */  sll        $t1, $v0, 2
/* 5C2A8 8006BAA8 1A80043C */  lui        $a0, %hi(D_801A7800)
/* 5C2AC 8006BAAC 00788A24 */  addiu      $t2, $a0, %lo(D_801A7800)
/* 5C2B0 8006BAB0 21102A01 */  addu       $v0, $t1, $t2
/* 5C2B4 8006BAB4 2400BFAF */  sw         $ra, 0x24($sp)
/* 5C2B8 8006BAB8 2000B2AF */  sw         $s2, 0x20($sp)
/* 5C2BC 8006BABC 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 5C2C0 8006BAC0 1800B0AF */  sw         $s0, 0x18($sp)
/* 5C2C4 8006BAC4 80190800 */  sll        $v1, $t0, 6
/* 5C2C8 8006BAC8 21186800 */  addu       $v1, $v1, $t0
/* 5C2CC 8006BACC 80180300 */  sll        $v1, $v1, 2
/* 5C2D0 8006BAD0 23186800 */  subu       $v1, $v1, $t0
/* 5C2D4 8006BAD4 C0180300 */  sll        $v1, $v1, 3
/* 5C2D8 8006BAD8 21186800 */  addu       $v1, $v1, $t0
/* 5C2DC 8006BADC C0180300 */  sll        $v1, $v1, 3
/* 5C2E0 8006BAE0 0F00A104 */  bgez       $a1, .L8006BB20
/* 5C2E4 8006BAE4 21186200 */   addu      $v1, $v1, $v0
/* 5C2E8 8006BAE8 000060AC */  sw         $zero, ($v1)
/* 5C2EC 8006BAEC 01000324 */  addiu      $v1, $zero, 1
/* 5C2F0 8006BAF0 23186800 */  subu       $v1, $v1, $t0
/* 5C2F4 8006BAF4 80110300 */  sll        $v0, $v1, 6
/* 5C2F8 8006BAF8 21104300 */  addu       $v0, $v0, $v1
/* 5C2FC 8006BAFC 80100200 */  sll        $v0, $v0, 2
/* 5C300 8006BB00 23104300 */  subu       $v0, $v0, $v1
/* 5C304 8006BB04 C0100200 */  sll        $v0, $v0, 3
/* 5C308 8006BB08 21104300 */  addu       $v0, $v0, $v1
/* 5C30C 8006BB0C C0100200 */  sll        $v0, $v0, 3
/* 5C310 8006BB10 21104900 */  addu       $v0, $v0, $t1
/* 5C314 8006BB14 21104A00 */  addu       $v0, $v0, $t2
/* 5C318 8006BB18 E4AE0108 */  j          .L8006BB90
/* 5C31C 8006BB1C 000040AC */   sw        $zero, ($v0)
.L8006BB20:
/* 5C320 8006BB20 04007124 */  addiu      $s1, $v1, 4
/* 5C324 8006BB24 0001D024 */  addiu      $s0, $a2, 0x100
/* 5C328 8006BB28 01000424 */  addiu      $a0, $zero, 1
/* 5C32C 8006BB2C 000064AC */  sw         $a0, ($v1)
/* 5C330 8006BB30 23188800 */  subu       $v1, $a0, $t0
/* 5C334 8006BB34 80110300 */  sll        $v0, $v1, 6
/* 5C338 8006BB38 21104300 */  addu       $v0, $v0, $v1
/* 5C33C 8006BB3C 80100200 */  sll        $v0, $v0, 2
/* 5C340 8006BB40 23104300 */  subu       $v0, $v0, $v1
/* 5C344 8006BB44 C0100200 */  sll        $v0, $v0, 3
/* 5C348 8006BB48 21104300 */  addu       $v0, $v0, $v1
/* 5C34C 8006BB4C C0100200 */  sll        $v0, $v0, 3
/* 5C350 8006BB50 21104900 */  addu       $v0, $v0, $t1
/* 5C354 8006BB54 21104A00 */  addu       $v0, $v0, $t2
/* 5C358 8006BB58 000044AC */  sw         $a0, ($v0)
/* 5C35C 8006BB5C 3800A28F */  lw         $v0, 0x38($sp)
/* 5C360 8006BB60 01001224 */  addiu      $s2, $zero, 1
/* 5C364 8006BB64 1000A5A7 */  sh         $a1, 0x10($sp)
/* 5C368 8006BB68 1400A7A7 */  sh         $a3, 0x14($sp)
/* 5C36C 8006BB6C 1600A2A7 */  sh         $v0, 0x16($sp)
.L8006BB70:
/* 5C370 8006BB70 1200B0A7 */  sh         $s0, 0x12($sp)
/* 5C374 8006BB74 21202002 */  addu       $a0, $s1, $zero
/* 5C378 8006BB78 3B64000C */  jal        SetDrawArea
/* 5C37C 8006BB7C 1000A527 */   addiu     $a1, $sp, 0x10
/* 5C380 8006BB80 0C003126 */  addiu      $s1, $s1, 0xc
/* 5C384 8006BB84 FFFF5226 */  addiu      $s2, $s2, -1
/* 5C388 8006BB88 F9FF4106 */  bgez       $s2, .L8006BB70
/* 5C38C 8006BB8C 00FF1026 */   addiu     $s0, $s0, -0x100
.L8006BB90:
/* 5C390 8006BB90 2400BF8F */  lw         $ra, 0x24($sp)
/* 5C394 8006BB94 2000B28F */  lw         $s2, 0x20($sp)
/* 5C398 8006BB98 1C00B18F */  lw         $s1, 0x1c($sp)
/* 5C39C 8006BB9C 1800B08F */  lw         $s0, 0x18($sp)
/* 5C3A0 8006BBA0 0800E003 */  jr         $ra
/* 5C3A4 8006BBA4 2800BD27 */   addiu     $sp, $sp, 0x28
