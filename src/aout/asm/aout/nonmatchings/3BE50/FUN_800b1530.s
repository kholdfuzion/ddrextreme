.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1530
/* A1D30 800B1530 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1D34 800B1534 F1FF8228 */  slti       $v0, $a0, -0xf
/* A1D38 800B1538 02004010 */  beqz       $v0, .L800B1544
/* A1D3C 800B153C 1800BFAF */   sw        $ra, 0x18($sp)
/* A1D40 800B1540 F1FF0424 */  addiu      $a0, $zero, -0xf
.L800B1544:
/* A1D44 800B1544 10008228 */  slti       $v0, $a0, 0x10
/* A1D48 800B1548 02004014 */  bnez       $v0, .L800B1554
/* A1D4C 800B154C 00000000 */   nop
/* A1D50 800B1550 0F000424 */  addiu      $a0, $zero, 0xf
.L800B1554:
/* A1D54 800B1554 1000A4AF */  sw         $a0, 0x10($sp)
/* A1D58 800B1558 21200000 */  addu       $a0, $zero, $zero
/* A1D5C 800B155C 0F000524 */  addiu      $a1, $zero, 0xf
/* A1D60 800B1560 1000A627 */  addiu      $a2, $sp, 0x10
/* A1D64 800B1564 21FD020C */  jal        FUN_800bf484
/* A1D68 800B1568 21380000 */   addu      $a3, $zero, $zero
/* A1D6C 800B156C 21184000 */  addu       $v1, $v0, $zero
/* A1D70 800B1570 02006010 */  beqz       $v1, .L800B157C
/* A1D74 800B1574 21100000 */   addu      $v0, $zero, $zero
/* A1D78 800B1578 FFFF0224 */  addiu      $v0, $zero, -1
.L800B157C:
/* A1D7C 800B157C 1800BF8F */  lw         $ra, 0x18($sp)
/* A1D80 800B1580 00000000 */  nop
/* A1D84 800B1584 0800E003 */  jr         $ra
/* A1D88 800B1588 2000BD27 */   addiu     $sp, $sp, 0x20
