.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800AB544
/* 9BD44 800AB544 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9BD48 800AB548 02008104 */  bgez       $a0, .L800AB554
/* 9BD4C 800AB54C 1000BFAF */   sw        $ra, 0x10($sp)
/* 9BD50 800AB550 03008424 */  addiu      $a0, $a0, 3
.L800AB554:
/* 9BD54 800AB554 22A5020C */  jal        FUN_800a9488
/* 9BD58 800AB558 83200400 */   sra       $a0, $a0, 2
/* 9BD5C 800AB55C 0FA2020C */  jal        FUN_800a883c
/* 9BD60 800AB560 21204000 */   addu      $a0, $v0, $zero
/* 9BD64 800AB564 1000BF8F */  lw         $ra, 0x10($sp)
/* 9BD68 800AB568 00000000 */  nop
/* 9BD6C 800AB56C 0800E003 */  jr         $ra
/* 9BD70 800AB570 1800BD27 */   addiu     $sp, $sp, 0x18
