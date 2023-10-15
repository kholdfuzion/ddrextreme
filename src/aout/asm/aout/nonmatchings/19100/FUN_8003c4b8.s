.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c4b8
/* 2CCB8 8003C4B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2CCBC 8003C4BC 1000BFAF */  sw         $ra, 0x10($sp)
/* 2CCC0 8003C4C0 7DC4000C */  jal        get_astruct_800311f4
/* 2CCC4 8003C4C4 00000000 */   nop
/* 2CCC8 8003C4C8 21184000 */  addu       $v1, $v0, $zero
/* 2CCCC 8003C4CC 02006284 */  lh         $v0, 2($v1)
/* 2CCD0 8003C4D0 02006494 */  lhu        $a0, 2($v1)
/* 2CCD4 8003C4D4 05004014 */  bnez       $v0, .L8003C4EC
/* 2CCD8 8003C4D8 01008224 */   addiu     $v0, $a0, 1
/* 2CCDC 8003C4DC 8374000C */  jal        FUN_8001d20c
/* 2CCE0 8003C4E0 020062A4 */   sh        $v0, 2($v1)
/* 2CCE4 8003C4E4 43F1000C */  jal        FUN_8003c50c
/* 2CCE8 8003C4E8 00000000 */   nop
.L8003C4EC:
/* 2CCEC 8003C4EC 53F1000C */  jal        FUN_8003c54c
/* 2CCF0 8003C4F0 00000000 */   nop
/* 2CCF4 8003C4F4 35B3000C */  jal        FUN_8002ccd4
/* 2CCF8 8003C4F8 21200000 */   addu      $a0, $zero, $zero
/* 2CCFC 8003C4FC 1000BF8F */  lw         $ra, 0x10($sp)
/* 2CD00 8003C500 2B100200 */  sltu       $v0, $zero, $v0
/* 2CD04 8003C504 0800E003 */  jr         $ra
/* 2CD08 8003C508 1800BD27 */   addiu     $sp, $sp, 0x18
