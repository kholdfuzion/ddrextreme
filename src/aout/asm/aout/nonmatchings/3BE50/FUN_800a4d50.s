.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a4d50
/* 95550 800A4D50 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 95554 800A4D54 01000424 */  addiu      $a0, $zero, 1
/* 95558 800A4D58 1000BFAF */  sw         $ra, 0x10($sp)
/* 9555C 800A4D5C FA56010C */  jal        FUN_80055be8
/* 95560 800A4D60 13000524 */   addiu     $a1, $zero, 0x13
/* 95564 800A4D64 02000424 */  addiu      $a0, $zero, 2
/* 95568 800A4D68 FA56010C */  jal        FUN_80055be8
/* 9556C 800A4D6C 13000524 */   addiu     $a1, $zero, 0x13
/* 95570 800A4D70 03000424 */  addiu      $a0, $zero, 3
/* 95574 800A4D74 FA56010C */  jal        FUN_80055be8
/* 95578 800A4D78 13000524 */   addiu     $a1, $zero, 0x13
/* 9557C 800A4D7C 1000BF8F */  lw         $ra, 0x10($sp)
/* 95580 800A4D80 00000000 */  nop
/* 95584 800A4D84 0800E003 */  jr         $ra
/* 95588 800A4D88 1800BD27 */   addiu     $sp, $sp, 0x18
