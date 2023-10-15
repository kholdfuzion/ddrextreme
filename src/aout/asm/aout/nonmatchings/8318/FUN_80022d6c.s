.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022d6c
/* 1356C 80022D6C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13570 80022D70 1000BFAF */  sw         $ra, 0x10($sp)
/* 13574 80022D74 4E56010C */  jal        FUN_80055938
/* 13578 80022D78 00000000 */   nop
/* 1357C 80022D7C 1000BF8F */  lw         $ra, 0x10($sp)
/* 13580 80022D80 00000000 */  nop
/* 13584 80022D84 0800E003 */  jr         $ra
/* 13588 80022D88 1800BD27 */   addiu     $sp, $sp, 0x18
