.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a91e4
/* 999E4 800A91E4 D0FF8324 */  addiu      $v1, $a0, -0x30
/* 999E8 800A91E8 0A00622C */  sltiu      $v0, $v1, 0xa
/* 999EC 800A91EC 03004010 */  beqz       $v0, .L800A91FC
/* 999F0 800A91F0 40100300 */   sll       $v0, $v1, 1
/* 999F4 800A91F4 8CA40208 */  j          .L800A9230
/* 999F8 800A91F8 41004424 */   addiu     $a0, $v0, 0x41
.L800A91FC:
/* 999FC 800A91FC BFFF8324 */  addiu      $v1, $a0, -0x41
/* 99A00 800A9200 1A00622C */  sltiu      $v0, $v1, 0x1a
/* 99A04 800A9204 0A004010 */  beqz       $v0, .L800A9230
/* 99A08 800A9208 0A00622C */   sltiu     $v0, $v1, 0xa
/* 99A0C 800A920C 21206000 */  addu       $a0, $v1, $zero
/* 99A10 800A9210 03004010 */  beqz       $v0, .L800A9220
/* 99A14 800A9214 40100400 */   sll       $v0, $a0, 1
/* 99A18 800A9218 8CA40208 */  j          .L800A9230
/* 99A1C 800A921C 42004424 */   addiu     $a0, $v0, 0x42
.L800A9220:
/* 99A20 800A9220 14008228 */  slti       $v0, $a0, 0x14
/* 99A24 800A9224 02004010 */  beqz       $v0, .L800A9230
/* 99A28 800A9228 41008424 */   addiu     $a0, $a0, 0x41
/* 99A2C 800A922C 26006424 */  addiu      $a0, $v1, 0x26
.L800A9230:
/* 99A30 800A9230 0800E003 */  jr         $ra
/* 99A34 800A9234 21108000 */   addu      $v0, $a0, $zero
