.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel strncmp
/* 1F4D4 8002ECD4 03008010 */  beqz       $a0, .L8002ECE4
/* 1F4D8 8002ECD8 00000000 */   nop
/* 1F4DC 8002ECDC 0700A014 */  bnez       $a1, .L8002ECFC
/* 1F4E0 8002ECE0 00000000 */   nop
.L8002ECE4:
/* 1F4E4 8002ECE4 19008510 */  beq        $a0, $a1, STRNCMP_OBJ_78
/* 1F4E8 8002ECE8 21100000 */   addu      $v0, $zero, $zero
/* 1F4EC 8002ECEC 17008010 */  beqz       $a0, STRNCMP_OBJ_78
/* 1F4F0 8002ECF0 FFFF0224 */   addiu     $v0, $zero, -1
/* 1F4F4 8002ECF4 53BB0008 */  j          STRNCMP_OBJ_78
/* 1F4F8 8002ECF8 01000224 */   addiu     $v0, $zero, 1
.L8002ECFC:
/* 1F4FC 8002ECFC FFFFC624 */  addiu      $a2, $a2, -1
/* 1F500 8002ED00 1200C004 */  bltz       $a2, STRNCMP_OBJ_78
/* 1F504 8002ED04 21100000 */   addu      $v0, $zero, $zero
.L8002ED08:
/* 1F508 8002ED08 00008380 */  lb         $v1, ($a0)
/* 1F50C 8002ED0C 0000A280 */  lb         $v0, ($a1)
/* 1F510 8002ED10 00000000 */  nop
/* 1F514 8002ED14 06006214 */  bne        $v1, $v0, .L8002ED30
/* 1F518 8002ED18 0100A524 */   addiu     $a1, $a1, 1
/* 1F51C 8002ED1C 0A006010 */  beqz       $v1, .L8002ED48
/* 1F520 8002ED20 01008424 */   addiu     $a0, $a0, 1
/* 1F524 8002ED24 FFFFC624 */  addiu      $a2, $a2, -1
/* 1F528 8002ED28 F7FFC104 */  bgez       $a2, .L8002ED08
/* 1F52C 8002ED2C 00000000 */   nop
.L8002ED30:
/* 1F530 8002ED30 0500C004 */  bltz       $a2, .L8002ED48
/* 1F534 8002ED34 00000000 */   nop
/* 1F538 8002ED38 00008380 */  lb         $v1, ($a0)
/* 1F53C 8002ED3C FFFFA280 */  lb         $v0, -1($a1)
/* 1F540 8002ED40 53BB0008 */  j          STRNCMP_OBJ_78
/* 1F544 8002ED44 23106200 */   subu      $v0, $v1, $v0
.L8002ED48:
/* 1F548 8002ED48 21100000 */  addu       $v0, $zero, $zero
