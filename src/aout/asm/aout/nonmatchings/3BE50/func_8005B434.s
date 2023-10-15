.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005B434
/* 4BC34 8005B434 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4BC38 8005B438 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4BC3C 8005B43C 80100400 */  sll        $v0, $a0, 2
/* 4BC40 8005B440 21104400 */  addu       $v0, $v0, $a0
/* 4BC44 8005B444 C0100200 */  sll        $v0, $v0, 3
/* 4BC48 8005B448 21104400 */  addu       $v0, $v0, $a0
/* 4BC4C 8005B44C C0100200 */  sll        $v0, $v0, 3
/* 4BC50 8005B450 23104400 */  subu       $v0, $v0, $a0
/* 4BC54 8005B454 80100200 */  sll        $v0, $v0, 2
/* 4BC58 8005B458 21104400 */  addu       $v0, $v0, $a0
/* 4BC5C 8005B45C C0100200 */  sll        $v0, $v0, 3
/* 4BC60 8005B460 FF00C630 */  andi       $a2, $a2, 0xff
/* 4BC64 8005B464 FF00E730 */  andi       $a3, $a3, 0xff
/* 4BC68 8005B468 40400300 */  sll        $t0, $v1, 1
/* 4BC6C 8005B46C 21400301 */  addu       $t0, $t0, $v1
/* 4BC70 8005B470 C0400800 */  sll        $t0, $t0, 3
/* 4BC74 8005B474 23400301 */  subu       $t0, $t0, $v1
/* 4BC78 8005B478 C0410800 */  sll        $t0, $t0, 7
/* 4BC7C 8005B47C 21400301 */  addu       $t0, $t0, $v1
/* 4BC80 8005B480 80400800 */  sll        $t0, $t0, 2
/* 4BC84 8005B484 21400301 */  addu       $t0, $t0, $v1
/* 4BC88 8005B488 C0400800 */  sll        $t0, $t0, 3
/* 4BC8C 8005B48C 1780033C */  lui        $v1, %hi(D_80172958)
/* 4BC90 8005B490 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4BC94 8005B494 21104300 */  addu       $v0, $v0, $v1
/* 4BC98 8005B498 21400201 */  addu       $t0, $t0, $v0
/* 4BC9C 8005B49C A0000825 */  addiu      $t0, $t0, 0xa0
/* 4BCA0 8005B4A0 80100500 */  sll        $v0, $a1, 2
/* 4BCA4 8005B4A4 21104500 */  addu       $v0, $v0, $a1
/* 4BCA8 8005B4A8 C0100200 */  sll        $v0, $v0, 3
/* 4BCAC 8005B4AC 21104800 */  addu       $v0, $v0, $t0
/* 4BCB0 8005B4B0 0C0046A0 */  sb         $a2, 0xc($v0)
/* 4BCB4 8005B4B4 0D0047A0 */  sb         $a3, 0xd($v0)
/* 4BCB8 8005B4B8 1000A38F */  lw         $v1, 0x10($sp)
/* 4BCBC 8005B4BC 1400A48F */  lw         $a0, 0x14($sp)
/* 4BCC0 8005B4C0 150047A0 */  sb         $a3, 0x15($v0)
/* 4BCC4 8005B4C4 1C0046A0 */  sb         $a2, 0x1c($v0)
/* 4BCC8 8005B4C8 2118C300 */  addu       $v1, $a2, $v1
/* 4BCCC 8005B4CC 2138E400 */  addu       $a3, $a3, $a0
/* 4BCD0 8005B4D0 140043A0 */  sb         $v1, 0x14($v0)
/* 4BCD4 8005B4D4 1D0047A0 */  sb         $a3, 0x1d($v0)
/* 4BCD8 8005B4D8 240043A0 */  sb         $v1, 0x24($v0)
/* 4BCDC 8005B4DC 0800E003 */  jr         $ra
/* 4BCE0 8005B4E0 250047A0 */   sb        $a3, 0x25($v0)
