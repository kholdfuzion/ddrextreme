.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a7488
/* 97C88 800A7488 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97C8C 800A748C 03008430 */  andi       $a0, $a0, 3
/* 97C90 800A7490 01000224 */  addiu      $v0, $zero, 1
/* 97C94 800A7494 13008210 */  beq        $a0, $v0, .L800A74E4
/* 97C98 800A7498 1000BFAF */   sw        $ra, 0x10($sp)
/* 97C9C 800A749C 02008228 */  slti       $v0, $a0, 2
/* 97CA0 800A74A0 05004010 */  beqz       $v0, .L800A74B8
/* 97CA4 800A74A4 00000000 */   nop
/* 97CA8 800A74A8 0A008010 */  beqz       $a0, .L800A74D4
/* 97CAC 800A74AC 00000000 */   nop
/* 97CB0 800A74B0 439D0208 */  j          .L800A750C
/* 97CB4 800A74B4 00000000 */   nop
.L800A74B8:
/* 97CB8 800A74B8 02000224 */  addiu      $v0, $zero, 2
/* 97CBC 800A74BC 0D008210 */  beq        $a0, $v0, .L800A74F4
/* 97CC0 800A74C0 03000224 */   addiu     $v0, $zero, 3
/* 97CC4 800A74C4 0F008210 */  beq        $a0, $v0, .L800A7504
/* 97CC8 800A74C8 00000000 */   nop
/* 97CCC 800A74CC 439D0208 */  j          .L800A750C
/* 97CD0 800A74D0 00000000 */   nop
.L800A74D4:
/* 97CD4 800A74D4 949A020C */  jal        FUN_800a6a50
/* 97CD8 800A74D8 08000424 */   addiu     $a0, $zero, 8
/* 97CDC 800A74DC 439D0208 */  j          .L800A750C
/* 97CE0 800A74E0 00000000 */   nop
.L800A74E4:
/* 97CE4 800A74E4 949A020C */  jal        FUN_800a6a50
/* 97CE8 800A74E8 0B000424 */   addiu     $a0, $zero, 0xb
/* 97CEC 800A74EC 439D0208 */  j          .L800A750C
/* 97CF0 800A74F0 00000000 */   nop
.L800A74F4:
/* 97CF4 800A74F4 949A020C */  jal        FUN_800a6a50
/* 97CF8 800A74F8 09000424 */   addiu     $a0, $zero, 9
/* 97CFC 800A74FC 439D0208 */  j          .L800A750C
/* 97D00 800A7500 00000000 */   nop
.L800A7504:
/* 97D04 800A7504 949A020C */  jal        FUN_800a6a50
/* 97D08 800A7508 0C000424 */   addiu     $a0, $zero, 0xc
.L800A750C:
/* 97D0C 800A750C 1000BF8F */  lw         $ra, 0x10($sp)
/* 97D10 800A7510 00000000 */  nop
/* 97D14 800A7514 0800E003 */  jr         $ra
/* 97D18 800A7518 1800BD27 */   addiu     $sp, $sp, 0x18
