.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022ce8
/* 134E8 80022CE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 134EC 80022CEC 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 134F0 80022CF0 A8FF4324 */  addiu      $v1, $v0, %lo(D_800EFFA8)
/* 134F4 80022CF4 1400BFAF */  sw         $ra, 0x14($sp)
/* 134F8 80022CF8 1000B0AF */  sw         $s0, 0x10($sp)
/* 134FC 80022CFC 7800638C */  lw         $v1, 0x78($v1)
/* 13500 80022D00 00000000 */  nop
/* 13504 80022D04 10006428 */  slti       $a0, $v1, 0x10
/* 13508 80022D08 03008010 */  beqz       $a0, .L80022D18
/* 1350C 80022D0C 21804000 */   addu      $s0, $v0, $zero
/* 13510 80022D10 4E8B0008 */  j          .L80022D38
/* 13514 80022D14 00220300 */   sll       $a0, $v1, 8
.L80022D18:
/* 13518 80022D18 D1016228 */  slti       $v0, $v1, 0x1d1
/* 1351C 80022D1C 06004014 */  bnez       $v0, .L80022D38
/* 13520 80022D20 00100424 */   addiu     $a0, $zero, 0x1000
/* 13524 80022D24 E0010224 */  addiu      $v0, $zero, 0x1e0
/* 13528 80022D28 23104300 */  subu       $v0, $v0, $v1
/* 1352C 80022D2C 00120200 */  sll        $v0, $v0, 8
/* 13530 80022D30 00200324 */  addiu      $v1, $zero, 0x2000
/* 13534 80022D34 23206200 */  subu       $a0, $v1, $v0
.L80022D38:
/* 13538 80022D38 1656010C */  jal        FUN_80055858
/* 1353C 80022D3C 00000000 */   nop
/* 13540 80022D40 A8FF0226 */  addiu      $v0, $s0, -0x58
/* 13544 80022D44 7800438C */  lw         $v1, 0x78($v0)
/* 13548 80022D48 00000000 */  nop
/* 1354C 80022D4C E1016328 */  slti       $v1, $v1, 0x1e1
/* 13550 80022D50 02006010 */  beqz       $v1, .L80022D5C
/* 13554 80022D54 21100000 */   addu      $v0, $zero, $zero
/* 13558 80022D58 05000224 */  addiu      $v0, $zero, 5
.L80022D5C:
/* 1355C 80022D5C 1400BF8F */  lw         $ra, 0x14($sp)
/* 13560 80022D60 1000B08F */  lw         $s0, 0x10($sp)
/* 13564 80022D64 0800E003 */  jr         $ra
/* 13568 80022D68 1800BD27 */   addiu     $sp, $sp, 0x18
