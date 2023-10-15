.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A73BC
/* 97BBC 800A73BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97BC0 800A73C0 1000B0AF */  sw         $s0, 0x10($sp)
/* 97BC4 800A73C4 21808000 */  addu       $s0, $a0, $zero
/* 97BC8 800A73C8 01000226 */  addiu      $v0, $s0, 1
/* 97BCC 800A73CC 0200422C */  sltiu      $v0, $v0, 2
/* 97BD0 800A73D0 09004010 */  beqz       $v0, .L800A73F8
/* 97BD4 800A73D4 1400BFAF */   sw        $ra, 0x14($sp)
/* 97BD8 800A73D8 949A020C */  jal        FUN_800a6a50
/* 97BDC 800A73DC 21200000 */   addu      $a0, $zero, $zero
/* 97BE0 800A73E0 949A020C */  jal        FUN_800a6a50
/* 97BE4 800A73E4 01000424 */   addiu     $a0, $zero, 1
/* 97BE8 800A73E8 949A020C */  jal        FUN_800a6a50
/* 97BEC 800A73EC 02000424 */   addiu     $a0, $zero, 2
/* 97BF0 800A73F0 949A020C */  jal        FUN_800a6a50
/* 97BF4 800A73F4 03000424 */   addiu     $a0, $zero, 3
.L800A73F8:
/* 97BF8 800A73F8 01000224 */  addiu      $v0, $zero, 1
/* 97BFC 800A73FC 03000212 */  beq        $s0, $v0, .L800A740C
/* 97C00 800A7400 FFFF0224 */   addiu     $v0, $zero, -1
/* 97C04 800A7404 09000216 */  bne        $s0, $v0, .L800A742C
/* 97C08 800A7408 00000000 */   nop
.L800A740C:
/* 97C0C 800A740C 949A020C */  jal        FUN_800a6a50
/* 97C10 800A7410 04000424 */   addiu     $a0, $zero, 4
/* 97C14 800A7414 949A020C */  jal        FUN_800a6a50
/* 97C18 800A7418 05000424 */   addiu     $a0, $zero, 5
/* 97C1C 800A741C 949A020C */  jal        FUN_800a6a50
/* 97C20 800A7420 06000424 */   addiu     $a0, $zero, 6
/* 97C24 800A7424 949A020C */  jal        FUN_800a6a50
/* 97C28 800A7428 07000424 */   addiu     $a0, $zero, 7
.L800A742C:
/* 97C2C 800A742C 949A020C */  jal        FUN_800a6a50
/* 97C30 800A7430 10000424 */   addiu     $a0, $zero, 0x10
/* 97C34 800A7434 01000226 */  addiu      $v0, $s0, 1
/* 97C38 800A7438 0200422C */  sltiu      $v0, $v0, 2
/* 97C3C 800A743C 06004010 */  beqz       $v0, .L800A7458
/* 97C40 800A7440 01000224 */   addiu     $v0, $zero, 1
/* 97C44 800A7444 949A020C */  jal        FUN_800a6a50
/* 97C48 800A7448 08000424 */   addiu     $a0, $zero, 8
/* 97C4C 800A744C 949A020C */  jal        FUN_800a6a50
/* 97C50 800A7450 09000424 */   addiu     $a0, $zero, 9
/* 97C54 800A7454 01000224 */  addiu      $v0, $zero, 1
.L800A7458:
/* 97C58 800A7458 03000212 */  beq        $s0, $v0, .L800A7468
/* 97C5C 800A745C FFFF0224 */   addiu     $v0, $zero, -1
/* 97C60 800A7460 05000216 */  bne        $s0, $v0, .L800A7478
/* 97C64 800A7464 00000000 */   nop
.L800A7468:
/* 97C68 800A7468 949A020C */  jal        FUN_800a6a50
/* 97C6C 800A746C 0B000424 */   addiu     $a0, $zero, 0xb
/* 97C70 800A7470 949A020C */  jal        FUN_800a6a50
/* 97C74 800A7474 0C000424 */   addiu     $a0, $zero, 0xc
.L800A7478:
/* 97C78 800A7478 1400BF8F */  lw         $ra, 0x14($sp)
/* 97C7C 800A747C 1000B08F */  lw         $s0, 0x10($sp)
/* 97C80 800A7480 0800E003 */  jr         $ra
/* 97C84 800A7484 1800BD27 */   addiu     $sp, $sp, 0x18
