.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c648c
/* B6C8C 800C648C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* B6C90 800C6490 2000B4AF */  sw         $s4, 0x20($sp)
/* B6C94 800C6494 21A08000 */  addu       $s4, $a0, $zero
/* B6C98 800C6498 2C00B7AF */  sw         $s7, 0x2c($sp)
/* B6C9C 800C649C 21B80000 */  addu       $s7, $zero, $zero
/* B6CA0 800C64A0 2400B5AF */  sw         $s5, 0x24($sp)
/* B6CA4 800C64A4 21A8E002 */  addu       $s5, $s7, $zero
/* B6CA8 800C64A8 1F80023C */  lui        $v0, %hi(D_801F7438)
/* B6CAC 800C64AC 38744224 */  addiu      $v0, $v0, %lo(D_801F7438)
/* B6CB0 800C64B0 2800B6AF */  sw         $s6, 0x28($sp)
/* B6CB4 800C64B4 21B04000 */  addu       $s6, $v0, $zero
/* B6CB8 800C64B8 3000BEAF */  sw         $fp, 0x30($sp)
/* B6CBC 800C64BC 21F0E002 */  addu       $fp, $s7, $zero
/* B6CC0 800C64C0 3400BFAF */  sw         $ra, 0x34($sp)
/* B6CC4 800C64C4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B6CC8 800C64C8 1800B2AF */  sw         $s2, 0x18($sp)
/* B6CCC 800C64CC 1400B1AF */  sw         $s1, 0x14($sp)
/* B6CD0 800C64D0 1000B0AF */  sw         $s0, 0x10($sp)
.L800C64D4:
/* B6CD4 800C64D4 2A1C030C */  jal        FUN_800c70a8
/* B6CD8 800C64D8 2120A002 */   addu      $a0, $s5, $zero
/* B6CDC 800C64DC 20004010 */  beqz       $v0, .L800C6560
/* B6CE0 800C64E0 1F80033C */   lui       $v1, %hi(D_801F74B8)
/* B6CE4 800C64E4 B8746324 */  addiu      $v1, $v1, %lo(D_801F74B8)
/* B6CE8 800C64E8 2198C303 */  addu       $s3, $fp, $v1
/* B6CEC 800C64EC 21900000 */  addu       $s2, $zero, $zero
/* B6CF0 800C64F0 0A007126 */  addiu      $s1, $s3, 0xa
/* B6CF4 800C64F4 18009026 */  addiu      $s0, $s4, 0x18
.L800C64F8:
/* B6CF8 800C64F8 0000628E */  lw         $v0, ($s3)
/* B6CFC 800C64FC 51000324 */  addiu      $v1, $zero, 0x51
/* B6D00 800C6500 12004314 */  bne        $v0, $v1, .L800C654C
/* B6D04 800C6504 21105602 */   addu      $v0, $s2, $s6
/* B6D08 800C6508 01204290 */  lbu        $v0, 0x2001($v0)
/* B6D0C 800C650C 00000000 */  nop
/* B6D10 800C6510 0E004014 */  bnez       $v0, .L800C654C
/* B6D14 800C6514 02008426 */   addiu     $a0, $s4, 2
/* B6D18 800C6518 3100A226 */  addiu      $v0, $s5, 0x31
/* B6D1C 800C651C 000082A2 */  sb         $v0, ($s4)
/* B6D20 800C6520 3A000224 */  addiu      $v0, $zero, 0x3a
/* B6D24 800C6524 21282002 */  addu       $a1, $s1, $zero
/* B6D28 800C6528 15000624 */  addiu      $a2, $zero, 0x15
/* B6D2C 800C652C 55BB000C */  jal        strncpy
/* B6D30 800C6530 E9FF02A2 */   sb        $v0, -0x17($s0)
/* B6D34 800C6534 1C009426 */  addiu      $s4, $s4, 0x1c
/* B6D38 800C6538 FEFF00A2 */  sb         $zero, -2($s0)
/* B6D3C 800C653C FAFF228E */  lw         $v0, -6($s1)
/* B6D40 800C6540 0100F726 */  addiu      $s7, $s7, 1
/* B6D44 800C6544 000002AE */  sw         $v0, ($s0)
/* B6D48 800C6548 1C001026 */  addiu      $s0, $s0, 0x1c
.L800C654C:
/* B6D4C 800C654C 01005226 */  addiu      $s2, $s2, 1
/* B6D50 800C6550 80003126 */  addiu      $s1, $s1, 0x80
/* B6D54 800C6554 0F00422A */  slti       $v0, $s2, 0xf
/* B6D58 800C6558 E7FF4014 */  bnez       $v0, .L800C64F8
/* B6D5C 800C655C 80007326 */   addiu     $s3, $s3, 0x80
.L800C6560:
/* B6D60 800C6560 8420D626 */  addiu      $s6, $s6, 0x2084
/* B6D64 800C6564 0100B526 */  addiu      $s5, $s5, 1
/* B6D68 800C6568 0200A22A */  slti       $v0, $s5, 2
/* B6D6C 800C656C D9FF4014 */  bnez       $v0, .L800C64D4
/* B6D70 800C6570 8420DE27 */   addiu     $fp, $fp, 0x2084
/* B6D74 800C6574 2110E002 */  addu       $v0, $s7, $zero
/* B6D78 800C6578 3400BF8F */  lw         $ra, 0x34($sp)
/* B6D7C 800C657C 3000BE8F */  lw         $fp, 0x30($sp)
/* B6D80 800C6580 2C00B78F */  lw         $s7, 0x2c($sp)
/* B6D84 800C6584 2800B68F */  lw         $s6, 0x28($sp)
/* B6D88 800C6588 2400B58F */  lw         $s5, 0x24($sp)
/* B6D8C 800C658C 2000B48F */  lw         $s4, 0x20($sp)
/* B6D90 800C6590 1C00B38F */  lw         $s3, 0x1c($sp)
/* B6D94 800C6594 1800B28F */  lw         $s2, 0x18($sp)
/* B6D98 800C6598 1400B18F */  lw         $s1, 0x14($sp)
/* B6D9C 800C659C 1000B08F */  lw         $s0, 0x10($sp)
/* B6DA0 800C65A0 0800E003 */  jr         $ra
/* B6DA4 800C65A4 3800BD27 */   addiu     $sp, $sp, 0x38
