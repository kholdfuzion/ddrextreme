.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf31c
/* AFB1C 800BF31C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AFB20 800BF320 2000BFAF */  sw         $ra, 0x20($sp)
/* AFB24 800BF324 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AFB28 800BF328 1800B2AF */  sw         $s2, 0x18($sp)
/* AFB2C 800BF32C 1400B1AF */  sw         $s1, 0x14($sp)
/* AFB30 800BF330 1000B0AF */  sw         $s0, 0x10($sp)
/* AFB34 800BF334 1F80023C */  lui        $v0, %hi(D_801F7088)
/* AFB38 800BF338 8870428C */  lw         $v0, %lo(D_801F7088)($v0)
/* AFB3C 800BF33C 00000000 */  nop
/* AFB40 800BF340 1C004010 */  beqz       $v0, .L800BF3B4
/* AFB44 800BF344 FFFF0224 */   addiu     $v0, $zero, -1
/* AFB48 800BF348 0000B38C */  lw         $s3, ($a1)
/* AFB4C 800BF34C 0400B18C */  lw         $s1, 4($a1)
/* AFB50 800BF350 00000000 */  nop
/* AFB54 800BF354 1600201A */  blez       $s1, .L800BF3B0
/* AFB58 800BF358 21900000 */   addu      $s2, $zero, $zero
/* AFB5C 800BF35C 0004222A */  slti       $v0, $s1, 0x400
.L800BF360:
/* AFB60 800BF360 05004010 */  beqz       $v0, .L800BF378
/* AFB64 800BF364 01002226 */   addiu     $v0, $s1, 1
/* AFB68 800BF368 C21F0200 */  srl        $v1, $v0, 0x1f
/* AFB6C 800BF36C 21104300 */  addu       $v0, $v0, $v1
/* AFB70 800BF370 DFFC0208 */  j          .L800BF37C
/* AFB74 800BF374 43800200 */   sra       $s0, $v0, 1
.L800BF378:
/* AFB78 800BF378 00021024 */  addiu      $s0, $zero, 0x200
.L800BF37C:
/* AFB7C 800BF37C C2271200 */  srl        $a0, $s2, 0x1f
/* AFB80 800BF380 21204402 */  addu       $a0, $s2, $a0
/* AFB84 800BF384 43200400 */  sra        $a0, $a0, 1
/* AFB88 800BF388 40200400 */  sll        $a0, $a0, 1
/* AFB8C 800BF38C 21206402 */  addu       $a0, $s3, $a0
/* AFB90 800BF390 62FD020C */  jal        FUN_800bf588
/* AFB94 800BF394 21280002 */   addu      $a1, $s0, $zero
/* AFB98 800BF398 40801000 */  sll        $s0, $s0, 1
/* AFB9C 800BF39C 21905002 */  addu       $s2, $s2, $s0
/* AFBA0 800BF3A0 4A70000C */  jal        FUN_8001c128
/* AFBA4 800BF3A4 23883002 */   subu      $s1, $s1, $s0
/* AFBA8 800BF3A8 EDFF201E */  bgtz       $s1, .L800BF360
/* AFBAC 800BF3AC 0004222A */   slti      $v0, $s1, 0x400
.L800BF3B0:
/* AFBB0 800BF3B0 21100000 */  addu       $v0, $zero, $zero
.L800BF3B4:
/* AFBB4 800BF3B4 2000BF8F */  lw         $ra, 0x20($sp)
/* AFBB8 800BF3B8 1C00B38F */  lw         $s3, 0x1c($sp)
/* AFBBC 800BF3BC 1800B28F */  lw         $s2, 0x18($sp)
/* AFBC0 800BF3C0 1400B18F */  lw         $s1, 0x14($sp)
/* AFBC4 800BF3C4 1000B08F */  lw         $s0, 0x10($sp)
/* AFBC8 800BF3C8 0800E003 */  jr         $ra
/* AFBCC 800BF3CC 2800BD27 */   addiu     $sp, $sp, 0x28
