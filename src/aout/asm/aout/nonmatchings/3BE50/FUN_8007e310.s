.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e310
/* 6EB10 8007E310 05000224 */  addiu      $v0, $zero, 5
/* 6EB14 8007E314 04008210 */  beq        $a0, $v0, .L8007E328
/* 6EB18 8007E318 21180000 */   addu      $v1, $zero, $zero
/* 6EB1C 8007E31C 02000224 */  addiu      $v0, $zero, 2
/* 6EB20 8007E320 0F008214 */  bne        $a0, $v0, .L8007E360
/* 6EB24 8007E324 00000000 */   nop
.L8007E328:
/* 6EB28 8007E328 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 6EB2C 8007E32C 28006324 */  addiu      $v1, $v1, %lo(D_800F0028)
/* 6EB30 8007E330 08006280 */  lb         $v0, 8($v1)
/* 6EB34 8007E334 09006480 */  lb         $a0, 9($v1)
/* 6EB38 8007E338 00000000 */  nop
/* 6EB3C 8007E33C 21104400 */  addu       $v0, $v0, $a0
/* 6EB40 8007E340 0A006480 */  lb         $a0, 0xa($v1)
/* 6EB44 8007E344 0B006380 */  lb         $v1, 0xb($v1)
/* 6EB48 8007E348 23104400 */  subu       $v0, $v0, $a0
/* 6EB4C 8007E34C 23104300 */  subu       $v0, $v0, $v1
/* 6EB50 8007E350 C21F0200 */  srl        $v1, $v0, 0x1f
/* 6EB54 8007E354 21104300 */  addu       $v0, $v0, $v1
/* 6EB58 8007E358 E3F80108 */  j          .L8007E38C
/* 6EB5C 8007E35C 43180200 */   sra       $v1, $v0, 1
.L8007E360:
/* 6EB60 8007E360 0A008004 */  bltz       $a0, .L8007E38C
/* 6EB64 8007E364 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 6EB68 8007E368 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 6EB6C 8007E36C 08004380 */  lb         $v1, 8($v0)
/* 6EB70 8007E370 09004480 */  lb         $a0, 9($v0)
/* 6EB74 8007E374 00000000 */  nop
/* 6EB78 8007E378 21186400 */  addu       $v1, $v1, $a0
/* 6EB7C 8007E37C 0A004480 */  lb         $a0, 0xa($v0)
/* 6EB80 8007E380 0B004280 */  lb         $v0, 0xb($v0)
/* 6EB84 8007E384 23186400 */  subu       $v1, $v1, $a0
/* 6EB88 8007E388 23186200 */  subu       $v1, $v1, $v0
.L8007E38C:
/* 6EB8C 8007E38C 21106000 */  addu       $v0, $v1, $zero
/* 6EB90 8007E390 02004014 */  bnez       $v0, .L8007E39C
/* 6EB94 8007E394 00000000 */   nop
/* 6EB98 8007E398 01000224 */  addiu      $v0, $zero, 1
.L8007E39C:
/* 6EB9C 8007E39C 0800E003 */  jr         $ra
/* 6EBA0 8007E3A0 00000000 */   nop
