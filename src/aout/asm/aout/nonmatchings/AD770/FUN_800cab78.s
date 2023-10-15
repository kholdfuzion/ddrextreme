.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cab78
/* BB378 800CAB78 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BB37C 800CAB7C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BB380 800CAB80 2080113C */  lui        $s1, %hi(D_801FBCA0)
/* BB384 800CAB84 A0BC2296 */  lhu        $v0, %lo(D_801FBCA0)($s1)
/* BB388 800CAB88 1800B0AF */  sw         $s0, 0x18($sp)
/* BB38C 800CAB8C 6A1F103C */  lui        $s0, 0x1f6a
/* BB390 800CAB90 01004234 */  ori        $v0, $v0, 1
/* BB394 800CAB94 000002A6 */  sh         $v0, ($s0)
/* BB398 800CAB98 00000396 */  lhu        $v1, ($s0)
/* BB39C 800CAB9C 2000BFAF */  sw         $ra, 0x20($sp)
/* BB3A0 800CABA0 A0BC22A6 */  sh         $v0, -0x4360($s1)
/* BB3A4 800CABA4 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB3A8 800CABA8 6DF0020C */  jal        FUN_800bc1b4
/* BB3AC 800CABAC 01000424 */   addiu     $a0, $zero, 1
/* BB3B0 800CABB0 A0BC2296 */  lhu        $v0, -0x4360($s1)
/* BB3B4 800CABB4 00000000 */  nop
/* BB3B8 800CABB8 FBFF4230 */  andi       $v0, $v0, 0xfffb
/* BB3BC 800CABBC 000002A6 */  sh         $v0, ($s0)
/* BB3C0 800CABC0 00000396 */  lhu        $v1, ($s0)
/* BB3C4 800CABC4 21200000 */  addu       $a0, $zero, $zero
/* BB3C8 800CABC8 A0BC22A6 */  sh         $v0, -0x4360($s1)
/* BB3CC 800CABCC 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB3D0 800CABD0 FFFF8424 */  addiu      $a0, $a0, -1
.L800CABD4:
/* BB3D4 800CABD4 FFFF8104 */  bgez       $a0, .L800CABD4
/* BB3D8 800CABD8 FFFF8424 */   addiu     $a0, $a0, -1
/* BB3DC 800CABDC 2080043C */  lui        $a0, %hi(D_801FBCA0)
/* BB3E0 800CABE0 A0BC8294 */  lhu        $v0, %lo(D_801FBCA0)($a0)
/* BB3E4 800CABE4 6A1F033C */  lui        $v1, 0x1f6a
/* BB3E8 800CABE8 02004234 */  ori        $v0, $v0, 2
/* BB3EC 800CABEC 000062A4 */  sh         $v0, ($v1)
/* BB3F0 800CABF0 00006394 */  lhu        $v1, ($v1)
/* BB3F4 800CABF4 21280000 */  addu       $a1, $zero, $zero
/* BB3F8 800CABF8 A0BC82A4 */  sh         $v0, -0x4360($a0)
/* BB3FC 800CABFC 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB400 800CAC00 FFFFA524 */  addiu      $a1, $a1, -1
.L800CAC04:
/* BB404 800CAC04 FFFFA104 */  bgez       $a1, .L800CAC04
/* BB408 800CAC08 FFFFA524 */   addiu     $a1, $a1, -1
/* BB40C 800CAC0C 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BB410 800CAC10 6A1F033C */  lui        $v1, 0x1f6a
/* BB414 800CAC14 A0BCA494 */  lhu        $a0, %lo(D_801FBCA0)($a1)
/* BB418 800CAC18 2000BF8F */  lw         $ra, 0x20($sp)
/* BB41C 800CAC1C 1C00B18F */  lw         $s1, 0x1c($sp)
/* BB420 800CAC20 1800B08F */  lw         $s0, 0x18($sp)
/* BB424 800CAC24 FEFF8430 */  andi       $a0, $a0, 0xfffe
/* BB428 800CAC28 000064A4 */  sh         $a0, ($v1)
/* BB42C 800CAC2C 00006294 */  lhu        $v0, ($v1)
/* BB430 800CAC30 00000000 */  nop
/* BB434 800CAC34 1000A2A7 */  sh         $v0, 0x10($sp)
/* BB438 800CAC38 FCFF8230 */  andi       $v0, $a0, 0xfffc
/* BB43C 800CAC3C 000062A4 */  sh         $v0, ($v1)
/* BB440 800CAC40 00006394 */  lhu        $v1, ($v1)
/* BB444 800CAC44 A0BCA4A4 */  sh         $a0, -0x4360($a1)
/* BB448 800CAC48 A0BCA2A4 */  sh         $v0, -0x4360($a1)
/* BB44C 800CAC4C 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB450 800CAC50 0800E003 */  jr         $ra
/* BB454 800CAC54 2800BD27 */   addiu     $sp, $sp, 0x28
