.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel strncpy
/* 1F554 8002ED54 19008010 */  beqz       $a0, STRNCPY_OBJ_68
/* 1F558 8002ED58 21100000 */   addu      $v0, $zero, $zero
/* 1F55C 8002ED5C 1700A010 */  beqz       $a1, STRNCPY_OBJ_68
/* 1F560 8002ED60 21180000 */   addu      $v1, $zero, $zero
/* 1F564 8002ED64 1400C018 */  blez       $a2, .L8002EDB8
/* 1F568 8002ED68 21388000 */   addu      $a3, $a0, $zero
.L8002ED6C:
/* 1F56C 8002ED6C 0000A290 */  lbu        $v0, ($a1)
/* 1F570 8002ED70 0100A524 */  addiu      $a1, $a1, 1
/* 1F574 8002ED74 000082A0 */  sb         $v0, ($a0)
/* 1F578 8002ED78 0B004014 */  bnez       $v0, .L8002EDA8
/* 1F57C 8002ED7C 01008424 */   addiu     $a0, $a0, 1
/* 1F580 8002ED80 65BB0008 */  j          STRNCPY_OBJ_40
/* 1F584 8002ED84 01006324 */   addiu     $v1, $v1, 1
.L8002ED88:
/* 1F588 8002ED88 000080A0 */  sb         $zero, ($a0)
/* 1F58C 8002ED8C 01008424 */  addiu      $a0, $a0, 1
/* 1F590 8002ED90 01006324 */  addiu      $v1, $v1, 1
