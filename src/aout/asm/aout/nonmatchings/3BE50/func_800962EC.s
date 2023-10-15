.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800962EC
/* 86AEC 800962EC A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 86AF0 800962F0 5400B1AF */  sw         $s1, 0x54($sp)
/* 86AF4 800962F4 21888000 */  addu       $s1, $a0, $zero
/* 86AF8 800962F8 5800BFAF */  sw         $ra, 0x58($sp)
/* 86AFC 800962FC 0300A010 */  beqz       $a1, .L8009630C
/* 86B00 80096300 5000B0AF */   sw        $s0, 0x50($sp)
/* 86B04 80096304 E8580208 */  j          .L800963A0
/* 86B08 80096308 FFFF0224 */   addiu     $v0, $zero, -1
.L8009630C:
/* 86B0C 8009630C 21202002 */  addu       $a0, $s1, $zero
/* 86B10 80096310 00020224 */  addiu      $v0, $zero, 0x200
/* 86B14 80096314 1600A2A7 */  sh         $v0, 0x16($sp)
/* 86B18 80096318 E0010224 */  addiu      $v0, $zero, 0x1e0
/* 86B1C 8009631C 80000324 */  addiu      $v1, $zero, 0x80
/* 86B20 80096320 2800A2A7 */  sh         $v0, 0x28($sp)
/* 86B24 80096324 28000224 */  addiu      $v0, $zero, 0x28
/* 86B28 80096328 1800A3A7 */  sh         $v1, 0x18($sp)
/* 86B2C 8009632C 01000324 */  addiu      $v1, $zero, 1
/* 86B30 80096330 1400A0A7 */  sh         $zero, 0x14($sp)
/* 86B34 80096334 2600A0A7 */  sh         $zero, 0x26($sp)
/* 86B38 80096338 1A00A2A7 */  sh         $v0, 0x1a($sp)
/* 86B3C 8009633C 1BA2020C */  jal        FUN_800a886c
/* 86B40 80096340 1C00A3A7 */   sh        $v1, 0x1c($sp)
/* 86B44 80096344 3000A427 */  addiu      $a0, $sp, 0x30
/* 86B48 80096348 21284000 */  addu       $a1, $v0, $zero
/* 86B4C 8009634C F3A2020C */  jal        FUN_800a8bcc
/* 86B50 80096350 05000624 */   addiu     $a2, $zero, 5
/* 86B54 80096354 3000A427 */  addiu      $a0, $sp, 0x30
/* 86B58 80096358 6877000C */  jal        FUN_8001dda0
/* 86B5C 8009635C 1000A527 */   addiu     $a1, $sp, 0x10
/* 86B60 80096360 21202002 */  addu       $a0, $s1, $zero
/* 86B64 80096364 1B80103C */  lui        $s0, %hi(D_801B0E60)
/* 86B68 80096368 600E1026 */  addiu      $s0, $s0, %lo(D_801B0E60)
/* 86B6C 8009636C 201C028E */  lw         $v0, 0x1c20($s0)
/* 86B70 80096370 1000A527 */  addiu      $a1, $sp, 0x10
/* 86B74 80096374 40300200 */  sll        $a2, $v0, 1
/* 86B78 80096378 2130C200 */  addu       $a2, $a2, $v0
/* 86B7C 8009637C 80300600 */  sll        $a2, $a2, 2
/* 86B80 80096380 7252020C */  jal        FUN_800949c8
/* 86B84 80096384 2130D000 */   addu      $a2, $a2, $s0
/* 86B88 80096388 F352020C */  jal        FUN_80094bcc
/* 86B8C 8009638C 21202002 */   addu      $a0, $s1, $zero
/* 86B90 80096390 201C038E */  lw         $v1, 0x1c20($s0)
/* 86B94 80096394 21100000 */  addu       $v0, $zero, $zero
/* 86B98 80096398 01006324 */  addiu      $v1, $v1, 1
/* 86B9C 8009639C 201C03AE */  sw         $v1, 0x1c20($s0)
.L800963A0:
/* 86BA0 800963A0 5800BF8F */  lw         $ra, 0x58($sp)
/* 86BA4 800963A4 5400B18F */  lw         $s1, 0x54($sp)
/* 86BA8 800963A8 5000B08F */  lw         $s0, 0x50($sp)
/* 86BAC 800963AC 0800E003 */  jr         $ra
/* 86BB0 800963B0 6000BD27 */   addiu     $sp, $sp, 0x60
