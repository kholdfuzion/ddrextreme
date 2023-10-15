.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007c450
/* 6CC50 8007C450 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6CC54 8007C454 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 6CC58 8007C458 20008280 */  lb         $v0, 0x20($a0)
/* 6CC5C 8007C45C 00000000 */  nop
/* 6CC60 8007C460 0C004010 */  beqz       $v0, .L8007C494
/* 6CC64 8007C464 21380000 */   addu      $a3, $zero, $zero
/* 6CC68 8007C468 08008280 */  lb         $v0, 8($a0)
/* 6CC6C 8007C46C 09008380 */  lb         $v1, 9($a0)
/* 6CC70 8007C470 00000000 */  nop
/* 6CC74 8007C474 21104300 */  addu       $v0, $v0, $v1
/* 6CC78 8007C478 0A008380 */  lb         $v1, 0xa($a0)
/* 6CC7C 8007C47C 0B008480 */  lb         $a0, 0xb($a0)
/* 6CC80 8007C480 23104300 */  subu       $v0, $v0, $v1
/* 6CC84 8007C484 04004414 */  bne        $v0, $a0, .L8007C498
/* 6CC88 8007C488 0F80023C */   lui       $v0, 0x800f
/* 6CC8C 8007C48C 0800E003 */  jr         $ra
/* 6CC90 8007C490 21100000 */   addu      $v0, $zero, $zero
.L8007C494:
/* 6CC94 8007C494 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8007C498:
/* 6CC98 8007C498 28004524 */  addiu      $a1, $v0, %lo(D_800F0028)
/* 6CC9C 8007C49C 0800A280 */  lb         $v0, 8($a1)
/* 6CCA0 8007C4A0 0900A380 */  lb         $v1, 9($a1)
/* 6CCA4 8007C4A4 0A00A480 */  lb         $a0, 0xa($a1)
/* 6CCA8 8007C4A8 21104300 */  addu       $v0, $v0, $v1
/* 6CCAC 8007C4AC 23104400 */  subu       $v0, $v0, $a0
/* 6CCB0 8007C4B0 0B00A380 */  lb         $v1, 0xb($a1)
/* 6CCB4 8007C4B4 2000A480 */  lb         $a0, 0x20($a1)
/* 6CCB8 8007C4B8 00000000 */  nop
/* 6CCBC 8007C4BC 0E008010 */  beqz       $a0, .L8007C4F8
/* 6CCC0 8007C4C0 23184300 */   subu      $v1, $v0, $v1
/* 6CCC4 8007C4C4 1A006300 */  div        $zero, $v1, $v1
/* 6CCC8 8007C4C8 02006014 */  bnez       $v1, .L8007C4D4
/* 6CCCC 8007C4CC 00000000 */   nop
/* 6CCD0 8007C4D0 0D000700 */  break      7
.L8007C4D4:
/* 6CCD4 8007C4D4 FFFF0124 */   addiu     $at, $zero, -1
/* 6CCD8 8007C4D8 04006114 */  bne        $v1, $at, .L8007C4EC
/* 6CCDC 8007C4DC 0080013C */   lui       $at, 0x8000
/* 6CCE0 8007C4E0 02006114 */  bne        $v1, $at, .L8007C4EC
/* 6CCE4 8007C4E4 00000000 */   nop
/* 6CCE8 8007C4E8 0D000600 */  break      6
.L8007C4EC:
/* 6CCEC 8007C4EC 12100000 */   mflo      $v0
/* 6CCF0 8007C4F0 53F10108 */  j          .L8007C54C
/* 6CCF4 8007C4F4 02004228 */   slti      $v0, $v0, 2
.L8007C4F8:
/* 6CCF8 8007C4F8 8A00A490 */  lbu        $a0, 0x8a($a1)
/* 6CCFC 8007C4FC 02000624 */  addiu      $a2, $zero, 2
/* 6CD00 8007C500 0E008610 */  beq        $a0, $a2, .L8007C53C
/* 6CD04 8007C504 0100023C */   lui       $v0, 1
/* 6CD08 8007C508 2110A200 */  addu       $v0, $a1, $v0
/* 6CD0C 8007C50C 06434290 */  lbu        $v0, 0x4306($v0)
/* 6CD10 8007C510 00000000 */  nop
/* 6CD14 8007C514 09004610 */  beq        $v0, $a2, .L8007C53C
/* 6CD18 8007C518 07000524 */   addiu     $a1, $zero, 7
/* 6CD1C 8007C51C 0F008510 */  beq        $a0, $a1, .L8007C55C
/* 6CD20 8007C520 00000000 */   nop
/* 6CD24 8007C524 0D008010 */  beqz       $a0, .L8007C55C
/* 6CD28 8007C528 00000000 */   nop
/* 6CD2C 8007C52C 0B004510 */  beq        $v0, $a1, .L8007C55C
/* 6CD30 8007C530 00000000 */   nop
/* 6CD34 8007C534 0A004010 */  beqz       $v0, .L8007C560
/* 6CD38 8007C538 02006228 */   slti      $v0, $v1, 2
.L8007C53C:
/* 6CD3C 8007C53C C2170300 */  srl        $v0, $v1, 0x1f
/* 6CD40 8007C540 21106200 */  addu       $v0, $v1, $v0
/* 6CD44 8007C544 43100200 */  sra        $v0, $v0, 1
/* 6CD48 8007C548 02004228 */  slti       $v0, $v0, 2
.L8007C54C:
/* 6CD4C 8007C54C 06004014 */  bnez       $v0, .L8007C568
/* 6CD50 8007C550 0F80023C */   lui       $v0, 0x800f
/* 6CD54 8007C554 0800E003 */  jr         $ra
/* 6CD58 8007C558 2110E000 */   addu      $v0, $a3, $zero
.L8007C55C:
/* 6CD5C 8007C55C 02006228 */  slti       $v0, $v1, 2
.L8007C560:
/* 6CD60 8007C560 06004010 */  beqz       $v0, .L8007C57C
/* 6CD64 8007C564 0F80023C */   lui       $v0, %hi(D_800F0033)
.L8007C568:
/* 6CD68 8007C568 33004280 */  lb         $v0, %lo(D_800F0033)($v0)
/* 6CD6C 8007C56C 00000000 */  nop
/* 6CD70 8007C570 03004014 */  bnez       $v0, .L8007C580
/* 6CD74 8007C574 2110E000 */   addu      $v0, $a3, $zero
/* 6CD78 8007C578 01000724 */  addiu      $a3, $zero, 1
.L8007C57C:
/* 6CD7C 8007C57C 2110E000 */  addu       $v0, $a3, $zero
.L8007C580:
/* 6CD80 8007C580 0800E003 */  jr         $ra
/* 6CD84 8007C584 00000000 */   nop
