.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A2AF8
/* 932F8 800A2AF8 FFFF8224 */  addiu      $v0, $a0, -1
/* 932FC 800A2AFC 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 93300 800A2B00 03004014 */  bnez       $v0, .L800A2B10
/* 93304 800A2B04 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 93308 800A2B08 0800E003 */  jr         $ra
/* 9330C 800A2B0C 21100000 */   addu      $v0, $zero, $zero
.L800A2B10:
/* 93310 800A2B10 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 93314 800A2B14 80200400 */  sll        $a0, $a0, 2
/* 93318 800A2B18 21186400 */  addu       $v1, $v1, $a0
/* 9331C 800A2B1C 0400628C */  lw         $v0, 4($v1)
/* 93320 800A2B20 00000000 */  nop
/* 93324 800A2B24 06004010 */  beqz       $v0, .L800A2B40
/* 93328 800A2B28 00000000 */   nop
/* 9332C 800A2B2C 0E004284 */  lh         $v0, 0xe($v0)
/* 93330 800A2B30 00000000 */  nop
/* 93334 800A2B34 26104500 */  xor        $v0, $v0, $a1
/* 93338 800A2B38 0800E003 */  jr         $ra
/* 9333C 800A2B3C 0100422C */   sltiu     $v0, $v0, 1
.L800A2B40:
/* 93340 800A2B40 0800E003 */  jr         $ra
/* 93344 800A2B44 21100000 */   addu      $v0, $zero, $zero
