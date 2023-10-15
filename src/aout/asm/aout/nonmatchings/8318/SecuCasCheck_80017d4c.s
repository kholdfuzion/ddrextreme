.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SecuCasCheck_80017d4c
/* 854C 80017D4C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8550 80017D50 1000BFAF */  sw         $ra, 0x10($sp)
/* 8554 80017D54 0180043C */  lui        $a0, %hi(D_80010000)
/* 8558 80017D58 1F0B030C */  jal        file_800c2c7c
/* 855C 80017D5C 00008424 */   addiu     $a0, $a0, %lo(D_80010000)
/* 8560 80017D60 09004010 */  beqz       $v0, .L80017D88
/* 8564 80017D64 00000000 */   nop
/* 8568 80017D68 7E0E030C */  jal        FUN_800c39f8
/* 856C 80017D6C 21200000 */   addu      $a0, $zero, $zero
/* 8570 80017D70 05004104 */  bgez       $v0, .L80017D88
/* 8574 80017D74 0180043C */   lui       $a0, %hi(D_80010084)
/* 8578 80017D78 84008424 */  addiu      $a0, $a0, %lo(D_80010084)
/* 857C 80017D7C 21284000 */  addu       $a1, $v0, $zero
/* 8580 80017D80 58AA000C */  jal        error_8002a960
/* 8584 80017D84 21300000 */   addu      $a2, $zero, $zero
.L80017D88:
/* 8588 80017D88 1000BF8F */  lw         $ra, 0x10($sp)
/* 858C 80017D8C 00000000 */  nop
/* 8590 80017D90 0800E003 */  jr         $ra
/* 8594 80017D94 1800BD27 */   addiu     $sp, $sp, 0x18
