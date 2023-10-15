.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ApplyMatrixLV
/* 3BA40 8004B240 0000888C */  lw         $t0, ($a0)
/* 3BA44 8004B244 0400898C */  lw         $t1, 4($a0)
/* 3BA48 8004B248 08008A8C */  lw         $t2, 8($a0)
/* 3BA4C 8004B24C 0C008B8C */  lw         $t3, 0xc($a0)
/* 3BA50 8004B250 10008C8C */  lw         $t4, 0x10($a0)
/* 3BA54 8004B254 0000C848 */  .byte      0x00, 0x00, 0xc8, 0x48
/* 3BA58 8004B258 0008C948 */  .byte      0x00, 0x08, 0xc9, 0x48
/* 3BA5C 8004B25C 0010CA48 */  .byte      0x00, 0x10, 0xca, 0x48
/* 3BA60 8004B260 0018CB48 */  .byte      0x00, 0x18, 0xcb, 0x48
/* 3BA64 8004B264 0020CC48 */  .byte      0x00, 0x20, 0xcc, 0x48
/* 3BA68 8004B268 0000A88C */  lw         $t0, ($a1)
/* 3BA6C 8004B26C 0400A98C */  lw         $t1, 4($a1)
/* 3BA70 8004B270 0800AA8C */  lw         $t2, 8($a1)
/* 3BA74 8004B274 07000105 */  bgez       $t0, .L8004B294
/* 3BA78 8004B278 00000000 */   nop
/* 3BA7C 8004B27C 23400800 */  negu       $t0, $t0
/* 3BA80 8004B280 C35B0800 */  sra        $t3, $t0, 0xf
/* 3BA84 8004B284 23580B00 */  negu       $t3, $t3
/* 3BA88 8004B288 FF7F0831 */  andi       $t0, $t0, 0x7fff
/* 3BA8C 8004B28C 03000010 */  b          .L8004B29C
/* 3BA90 8004B290 23400800 */   negu      $t0, $t0
.L8004B294:
/* 3BA94 8004B294 C35B0800 */  sra        $t3, $t0, 0xf
/* 3BA98 8004B298 FF7F0831 */  andi       $t0, $t0, 0x7fff
.L8004B29C:
/* 3BA9C 8004B29C 07002105 */  bgez       $t1, .L8004B2BC
/* 3BAA0 8004B2A0 00000000 */   nop
/* 3BAA4 8004B2A4 23480900 */  negu       $t1, $t1
/* 3BAA8 8004B2A8 C3630900 */  sra        $t4, $t1, 0xf
/* 3BAAC 8004B2AC 23600C00 */  negu       $t4, $t4
/* 3BAB0 8004B2B0 FF7F2931 */  andi       $t1, $t1, 0x7fff
/* 3BAB4 8004B2B4 03000010 */  b          .L8004B2C4
/* 3BAB8 8004B2B8 23480900 */   negu      $t1, $t1
.L8004B2BC:
/* 3BABC 8004B2BC C3630900 */  sra        $t4, $t1, 0xf
/* 3BAC0 8004B2C0 FF7F2931 */  andi       $t1, $t1, 0x7fff
.L8004B2C4:
/* 3BAC4 8004B2C4 07004105 */  bgez       $t2, .L8004B2E4
/* 3BAC8 8004B2C8 00000000 */   nop
/* 3BACC 8004B2CC 23500A00 */  negu       $t2, $t2
/* 3BAD0 8004B2D0 C36B0A00 */  sra        $t5, $t2, 0xf
/* 3BAD4 8004B2D4 23680D00 */  negu       $t5, $t5
/* 3BAD8 8004B2D8 FF7F4A31 */  andi       $t2, $t2, 0x7fff
/* 3BADC 8004B2DC 03000010 */  b          .L8004B2EC
/* 3BAE0 8004B2E0 23500A00 */   negu      $t2, $t2
.L8004B2E4:
/* 3BAE4 8004B2E4 C36B0A00 */  sra        $t5, $t2, 0xf
/* 3BAE8 8004B2E8 FF7F4A31 */  andi       $t2, $t2, 0x7fff
.L8004B2EC:
/* 3BAEC 8004B2EC 00488B48 */  mtc2       $t3, $9
/* 3BAF0 8004B2F0 00508C48 */  mtc2       $t4, $10
/* 3BAF4 8004B2F4 00588D48 */  mtc2       $t5, $11
/* 3BAF8 8004B2F8 00000000 */  nop
/* 3BAFC 8004B2FC 12E0414A */  .byte      0x12, 0xe0, 0x41, 0x4a
/* 3BB00 8004B300 00C80B48 */  mfc2       $t3, $25
/* 3BB04 8004B304 00D00C48 */  mfc2       $t4, $26
/* 3BB08 8004B308 00D80D48 */  mfc2       $t5, $27
/* 3BB0C 8004B30C 00488848 */  mtc2       $t0, $9
/* 3BB10 8004B310 00508948 */  mtc2       $t1, $10
/* 3BB14 8004B314 00588A48 */  mtc2       $t2, $11
/* 3BB18 8004B318 00000000 */  nop
/* 3BB1C 8004B31C 12E0494A */  .byte      0x12, 0xe0, 0x49, 0x4a
/* 3BB20 8004B320 05006105 */  bgez       $t3, .L8004B338
/* 3BB24 8004B324 00000000 */   nop
/* 3BB28 8004B328 23580B00 */  negu       $t3, $t3
/* 3BB2C 8004B32C C0580B00 */  sll        $t3, $t3, 3
/* 3BB30 8004B330 02000010 */  b          .L8004B33C
/* 3BB34 8004B334 23580B00 */   negu      $t3, $t3
.L8004B338:
/* 3BB38 8004B338 C0580B00 */  sll        $t3, $t3, 3
.L8004B33C:
/* 3BB3C 8004B33C 05008105 */  bgez       $t4, .L8004B354
/* 3BB40 8004B340 00000000 */   nop
/* 3BB44 8004B344 23600C00 */  negu       $t4, $t4
/* 3BB48 8004B348 C0600C00 */  sll        $t4, $t4, 3
/* 3BB4C 8004B34C 02000010 */  b          .L8004B358
/* 3BB50 8004B350 23600C00 */   negu      $t4, $t4
.L8004B354:
/* 3BB54 8004B354 C0600C00 */  sll        $t4, $t4, 3
.L8004B358:
/* 3BB58 8004B358 0500A105 */  bgez       $t5, .L8004B370
/* 3BB5C 8004B35C 00000000 */   nop
/* 3BB60 8004B360 23680D00 */  negu       $t5, $t5
/* 3BB64 8004B364 C0680D00 */  sll        $t5, $t5, 3
/* 3BB68 8004B368 02000010 */  b          .L8004B374
/* 3BB6C 8004B36C 23680D00 */   negu      $t5, $t5
.L8004B370:
/* 3BB70 8004B370 C0680D00 */  sll        $t5, $t5, 3
.L8004B374:
/* 3BB74 8004B374 00C80848 */  mfc2       $t0, $25
/* 3BB78 8004B378 00D00948 */  mfc2       $t1, $26
/* 3BB7C 8004B37C 00D80A48 */  mfc2       $t2, $27
/* 3BB80 8004B380 21400B01 */  addu       $t0, $t0, $t3
/* 3BB84 8004B384 21482C01 */  addu       $t1, $t1, $t4
/* 3BB88 8004B388 21504D01 */  addu       $t2, $t2, $t5
/* 3BB8C 8004B38C 0000C8AC */  sw         $t0, ($a2)
/* 3BB90 8004B390 0400C9AC */  sw         $t1, 4($a2)
/* 3BB94 8004B394 0800CAAC */  sw         $t2, 8($a2)
/* 3BB98 8004B398 0800E003 */  jr         $ra
/* 3BB9C 8004B39C 2110C000 */   addu      $v0, $a2, $zero
