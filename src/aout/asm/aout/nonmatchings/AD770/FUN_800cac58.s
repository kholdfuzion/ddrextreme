.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cac58
/* BB458 800CAC58 2080043C */  lui        $a0, %hi(D_801FBCA0)
/* BB45C 800CAC5C A0BC8294 */  lhu        $v0, %lo(D_801FBCA0)($a0)
/* BB460 800CAC60 6A1F033C */  lui        $v1, 0x1f6a
/* BB464 800CAC64 FEFF4230 */  andi       $v0, $v0, 0xfffe
/* BB468 800CAC68 000062A4 */  sh         $v0, ($v1)
/* BB46C 800CAC6C 00006394 */  lhu        $v1, ($v1)
/* BB470 800CAC70 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BB474 800CAC74 1800BFAF */  sw         $ra, 0x18($sp)
/* BB478 800CAC78 A0BC82A4 */  sh         $v0, -0x4360($a0)
/* BB47C 800CAC7C 01000424 */  addiu      $a0, $zero, 1
/* BB480 800CAC80 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB484 800CAC84 6DF0020C */  jal        FUN_800bc1b4
/* BB488 800CAC88 00000000 */   nop
/* BB48C 800CAC8C 21100000 */  addu       $v0, $zero, $zero
/* BB490 800CAC90 FFFF4224 */  addiu      $v0, $v0, -1
.L800CAC94:
/* BB494 800CAC94 FFFF4104 */  bgez       $v0, .L800CAC94
/* BB498 800CAC98 FFFF4224 */   addiu     $v0, $v0, -1
/* BB49C 800CAC9C 2080043C */  lui        $a0, %hi(D_801FBCA0)
/* BB4A0 800CACA0 A0BC8294 */  lhu        $v0, %lo(D_801FBCA0)($a0)
/* BB4A4 800CACA4 6A1F033C */  lui        $v1, 0x1f6a
/* BB4A8 800CACA8 02004234 */  ori        $v0, $v0, 2
/* BB4AC 800CACAC 000062A4 */  sh         $v0, ($v1)
/* BB4B0 800CACB0 00006394 */  lhu        $v1, ($v1)
/* BB4B4 800CACB4 21280000 */  addu       $a1, $zero, $zero
/* BB4B8 800CACB8 A0BC82A4 */  sh         $v0, -0x4360($a0)
/* BB4BC 800CACBC 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB4C0 800CACC0 FFFFA524 */  addiu      $a1, $a1, -1
.L800CACC4:
/* BB4C4 800CACC4 FFFFA104 */  bgez       $a1, .L800CACC4
/* BB4C8 800CACC8 FFFFA524 */   addiu     $a1, $a1, -1
/* BB4CC 800CACCC 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BB4D0 800CACD0 6A1F033C */  lui        $v1, 0x1f6a
/* BB4D4 800CACD4 A0BCA494 */  lhu        $a0, %lo(D_801FBCA0)($a1)
/* BB4D8 800CACD8 1800BF8F */  lw         $ra, 0x18($sp)
/* BB4DC 800CACDC 01008434 */  ori        $a0, $a0, 1
/* BB4E0 800CACE0 000064A4 */  sh         $a0, ($v1)
/* BB4E4 800CACE4 00006294 */  lhu        $v0, ($v1)
/* BB4E8 800CACE8 00000000 */  nop
/* BB4EC 800CACEC 1000A2A7 */  sh         $v0, 0x10($sp)
/* BB4F0 800CACF0 FDFF8230 */  andi       $v0, $a0, 0xfffd
/* BB4F4 800CACF4 000062A4 */  sh         $v0, ($v1)
/* BB4F8 800CACF8 00006394 */  lhu        $v1, ($v1)
/* BB4FC 800CACFC A0BCA4A4 */  sh         $a0, -0x4360($a1)
/* BB500 800CAD00 A0BCA2A4 */  sh         $v0, -0x4360($a1)
/* BB504 800CAD04 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB508 800CAD08 0800E003 */  jr         $ra
/* BB50C 800CAD0C 2000BD27 */   addiu     $sp, $sp, 0x20
