.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007cc2c
/* 6D42C 8007CC2C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6D430 8007CC30 1400B1AF */  sw         $s1, 0x14($sp)
/* 6D434 8007CC34 21888000 */  addu       $s1, $a0, $zero
/* 6D438 8007CC38 1000B0AF */  sw         $s0, 0x10($sp)
/* 6D43C 8007CC3C FFFF1024 */  addiu      $s0, $zero, -1
/* 6D440 8007CC40 0F80023C */  lui        $v0, %hi(D_800F003C)
/* 6D444 8007CC44 3C004380 */  lb         $v1, %lo(D_800F003C)($v0)
/* 6D448 8007CC48 02000224 */  addiu      $v0, $zero, 2
/* 6D44C 8007CC4C 25006210 */  beq        $v1, $v0, .L8007CCE4
/* 6D450 8007CC50 1800BFAF */   sw        $ra, 0x18($sp)
/* 6D454 8007CC54 03006228 */  slti       $v0, $v1, 3
/* 6D458 8007CC58 05004010 */  beqz       $v0, .L8007CC70
/* 6D45C 8007CC5C 01000224 */   addiu     $v0, $zero, 1
/* 6D460 8007CC60 06006210 */  beq        $v1, $v0, .L8007CC7C
/* 6D464 8007CC64 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 6D468 8007CC68 61F30108 */  j          .L8007CD84
/* 6D46C 8007CC6C 28008424 */   addiu     $a0, $a0, %lo(D_800F0028)
.L8007CC70:
/* 6D470 8007CC70 05000224 */  addiu      $v0, $zero, 5
/* 6D474 8007CC74 40006214 */  bne        $v1, $v0, .L8007CD78
/* 6D478 8007CC78 00000000 */   nop
.L8007CC7C:
/* 6D47C 8007CC7C 21202002 */  addu       $a0, $s1, $zero
/* 6D480 8007CC80 19B9020C */  jal        FUN_800ae464
/* 6D484 8007CC84 21280000 */   addu      $a1, $zero, $zero
/* 6D488 8007CC88 3D004010 */  beqz       $v0, .L8007CD80
/* 6D48C 8007CC8C 0F80043C */   lui       $a0, 0x800f
/* 6D490 8007CC90 F8AE020C */  jal        FUN_800abbe0
/* 6D494 8007CC94 00000000 */   nop
/* 6D498 8007CC98 0E004010 */  beqz       $v0, .L8007CCD4
/* 6D49C 8007CC9C 21100000 */   addu      $v0, $zero, $zero
/* 6D4A0 8007CCA0 6E19030C */  jal        FUN_800c65b8
/* 6D4A4 8007CCA4 00000000 */   nop
/* 6D4A8 8007CCA8 06002012 */  beqz       $s1, .L8007CCC4
/* 6D4AC 8007CCAC 00000000 */   nop
/* 6D4B0 8007CCB0 20004230 */  andi       $v0, $v0, 0x20
/* 6D4B4 8007CCB4 07004014 */  bnez       $v0, .L8007CCD4
/* 6D4B8 8007CCB8 01000224 */   addiu     $v0, $zero, 1
/* 6D4BC 8007CCBC 35F30108 */  j          .L8007CCD4
/* 6D4C0 8007CCC0 21100000 */   addu      $v0, $zero, $zero
.L8007CCC4:
/* 6D4C4 8007CCC4 02004230 */  andi       $v0, $v0, 2
/* 6D4C8 8007CCC8 02004014 */  bnez       $v0, .L8007CCD4
/* 6D4CC 8007CCCC 01000224 */   addiu     $v0, $zero, 1
/* 6D4D0 8007CCD0 21100000 */  addu       $v0, $zero, $zero
.L8007CCD4:
/* 6D4D4 8007CCD4 2A004014 */  bnez       $v0, .L8007CD80
/* 6D4D8 8007CCD8 0F80043C */   lui       $a0, 0x800f
/* 6D4DC 8007CCDC 60F30108 */  j          .L8007CD80
/* 6D4E0 8007CCE0 21802002 */   addu      $s0, $s1, $zero
.L8007CCE4:
/* 6D4E4 8007CCE4 21200000 */  addu       $a0, $zero, $zero
/* 6D4E8 8007CCE8 19B9020C */  jal        FUN_800ae464
/* 6D4EC 8007CCEC 21288000 */   addu      $a1, $a0, $zero
/* 6D4F0 8007CCF0 0F004010 */  beqz       $v0, .L8007CD30
/* 6D4F4 8007CCF4 01000424 */   addiu     $a0, $zero, 1
/* 6D4F8 8007CCF8 F8AE020C */  jal        FUN_800abbe0
/* 6D4FC 8007CCFC 00000000 */   nop
/* 6D500 8007CD00 07004010 */  beqz       $v0, .L8007CD20
/* 6D504 8007CD04 21180000 */   addu      $v1, $zero, $zero
/* 6D508 8007CD08 6E19030C */  jal        FUN_800c65b8
/* 6D50C 8007CD0C 00000000 */   nop
/* 6D510 8007CD10 02004230 */  andi       $v0, $v0, 2
/* 6D514 8007CD14 02004014 */  bnez       $v0, .L8007CD20
/* 6D518 8007CD18 01000324 */   addiu     $v1, $zero, 1
/* 6D51C 8007CD1C 21180000 */  addu       $v1, $zero, $zero
.L8007CD20:
/* 6D520 8007CD20 03006014 */  bnez       $v1, .L8007CD30
/* 6D524 8007CD24 01000424 */   addiu     $a0, $zero, 1
/* 6D528 8007CD28 5FF30108 */  j          .L8007CD7C
/* 6D52C 8007CD2C 21800000 */   addu      $s0, $zero, $zero
.L8007CD30:
/* 6D530 8007CD30 19B9020C */  jal        FUN_800ae464
/* 6D534 8007CD34 21280000 */   addu      $a1, $zero, $zero
/* 6D538 8007CD38 11004010 */  beqz       $v0, .L8007CD80
/* 6D53C 8007CD3C 0F80043C */   lui       $a0, 0x800f
/* 6D540 8007CD40 F8AE020C */  jal        FUN_800abbe0
/* 6D544 8007CD44 00000000 */   nop
/* 6D548 8007CD48 07004010 */  beqz       $v0, .L8007CD68
/* 6D54C 8007CD4C 21180000 */   addu      $v1, $zero, $zero
/* 6D550 8007CD50 6E19030C */  jal        FUN_800c65b8
/* 6D554 8007CD54 00000000 */   nop
/* 6D558 8007CD58 20004230 */  andi       $v0, $v0, 0x20
/* 6D55C 8007CD5C 02004014 */  bnez       $v0, .L8007CD68
/* 6D560 8007CD60 01000324 */   addiu     $v1, $zero, 1
/* 6D564 8007CD64 21180000 */  addu       $v1, $zero, $zero
.L8007CD68:
/* 6D568 8007CD68 05006014 */  bnez       $v1, .L8007CD80
/* 6D56C 8007CD6C 0F80043C */   lui       $a0, 0x800f
/* 6D570 8007CD70 60F30108 */  j          .L8007CD80
/* 6D574 8007CD74 01001024 */   addiu     $s0, $zero, 1
.L8007CD78:
/* 6D578 8007CD78 FFFF1024 */  addiu      $s0, $zero, -1
.L8007CD7C:
/* 6D57C 8007CD7C 0F80043C */  lui        $a0, %hi(D_800F0028)
.L8007CD80:
/* 6D580 8007CD80 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
.L8007CD84:
/* 6D584 8007CD84 80101100 */  sll        $v0, $s1, 2
/* 6D588 8007CD88 21105100 */  addu       $v0, $v0, $s1
/* 6D58C 8007CD8C C0190200 */  sll        $v1, $v0, 7
/* 6D590 8007CD90 21104300 */  addu       $v0, $v0, $v1
/* 6D594 8007CD94 40110200 */  sll        $v0, $v0, 5
/* 6D598 8007CD98 23105100 */  subu       $v0, $v0, $s1
/* 6D59C 8007CD9C 80100200 */  sll        $v0, $v0, 2
/* 6D5A0 8007CDA0 21104400 */  addu       $v0, $v0, $a0
/* 6D5A4 8007CDA4 8A004390 */  lbu        $v1, 0x8a($v0)
/* 6D5A8 8007CDA8 07000224 */  addiu      $v0, $zero, 7
/* 6D5AC 8007CDAC 03006210 */  beq        $v1, $v0, .L8007CDBC
/* 6D5B0 8007CDB0 00000000 */   nop
/* 6D5B4 8007CDB4 03006014 */  bnez       $v1, .L8007CDC4
/* 6D5B8 8007CDB8 21100002 */   addu      $v0, $s0, $zero
.L8007CDBC:
/* 6D5BC 8007CDBC FFFF1024 */  addiu      $s0, $zero, -1
/* 6D5C0 8007CDC0 21100002 */  addu       $v0, $s0, $zero
.L8007CDC4:
/* 6D5C4 8007CDC4 1800BF8F */  lw         $ra, 0x18($sp)
/* 6D5C8 8007CDC8 1400B18F */  lw         $s1, 0x14($sp)
/* 6D5CC 8007CDCC 1000B08F */  lw         $s0, 0x10($sp)
/* 6D5D0 8007CDD0 0800E003 */  jr         $ra
/* 6D5D4 8007CDD4 2000BD27 */   addiu     $sp, $sp, 0x20
