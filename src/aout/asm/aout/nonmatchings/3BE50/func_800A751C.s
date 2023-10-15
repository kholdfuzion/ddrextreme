.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A751C
/* 97D1C 800A751C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97D20 800A7520 03008430 */  andi       $a0, $a0, 3
/* 97D24 800A7524 01000224 */  addiu      $v0, $zero, 1
/* 97D28 800A7528 15008210 */  beq        $a0, $v0, .L800A7580
/* 97D2C 800A752C 1000BFAF */   sw        $ra, 0x10($sp)
/* 97D30 800A7530 02008228 */  slti       $v0, $a0, 2
/* 97D34 800A7534 05004010 */  beqz       $v0, .L800A754C
/* 97D38 800A7538 00000000 */   nop
/* 97D3C 800A753C 0A008010 */  beqz       $a0, .L800A7568
/* 97D40 800A7540 00000000 */   nop
/* 97D44 800A7544 709D0208 */  j          .L800A75C0
/* 97D48 800A7548 00000000 */   nop
.L800A754C:
/* 97D4C 800A754C 02000224 */  addiu      $v0, $zero, 2
/* 97D50 800A7550 11008210 */  beq        $a0, $v0, .L800A7598
/* 97D54 800A7554 03000224 */   addiu     $v0, $zero, 3
/* 97D58 800A7558 15008210 */  beq        $a0, $v0, .L800A75B0
/* 97D5C 800A755C 00000000 */   nop
/* 97D60 800A7560 709D0208 */  j          .L800A75C0
/* 97D64 800A7564 00000000 */   nop
.L800A7568:
/* 97D68 800A7568 949A020C */  jal        FUN_800a6a50
/* 97D6C 800A756C 21200000 */   addu      $a0, $zero, $zero
/* 97D70 800A7570 949A020C */  jal        FUN_800a6a50
/* 97D74 800A7574 04000424 */   addiu     $a0, $zero, 4
/* 97D78 800A7578 709D0208 */  j          .L800A75C0
/* 97D7C 800A757C 00000000 */   nop
.L800A7580:
/* 97D80 800A7580 949A020C */  jal        FUN_800a6a50
/* 97D84 800A7584 02000424 */   addiu     $a0, $zero, 2
/* 97D88 800A7588 949A020C */  jal        FUN_800a6a50
/* 97D8C 800A758C 07000424 */   addiu     $a0, $zero, 7
/* 97D90 800A7590 709D0208 */  j          .L800A75C0
/* 97D94 800A7594 00000000 */   nop
.L800A7598:
/* 97D98 800A7598 949A020C */  jal        FUN_800a6a50
/* 97D9C 800A759C 01000424 */   addiu     $a0, $zero, 1
/* 97DA0 800A75A0 949A020C */  jal        FUN_800a6a50
/* 97DA4 800A75A4 05000424 */   addiu     $a0, $zero, 5
/* 97DA8 800A75A8 709D0208 */  j          .L800A75C0
/* 97DAC 800A75AC 00000000 */   nop
.L800A75B0:
/* 97DB0 800A75B0 949A020C */  jal        FUN_800a6a50
/* 97DB4 800A75B4 03000424 */   addiu     $a0, $zero, 3
/* 97DB8 800A75B8 949A020C */  jal        FUN_800a6a50
/* 97DBC 800A75BC 06000424 */   addiu     $a0, $zero, 6
.L800A75C0:
/* 97DC0 800A75C0 1000BF8F */  lw         $ra, 0x10($sp)
/* 97DC4 800A75C4 00000000 */  nop
/* 97DC8 800A75C8 0800E003 */  jr         $ra
/* 97DCC 800A75CC 1800BD27 */   addiu     $sp, $sp, 0x18
