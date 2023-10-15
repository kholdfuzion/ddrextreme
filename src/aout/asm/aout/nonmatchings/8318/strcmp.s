.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel strcmp
/* 8774 80017F74 03008010 */  beqz       $a0, .L80017F84
/* 8778 80017F78 00000000 */   nop
/* 877C 80017F7C 0B00A014 */  bnez       $a1, .L80017FAC
/* 8780 80017F80 00000000 */   nop
.L80017F84:
/* 8784 80017F84 12008510 */  beq        $a0, $a1, STRCMP_OBJ_5C
/* 8788 80017F88 21100000 */   addu      $v0, $zero, $zero
/* 878C 80017F8C 10008010 */  beqz       $a0, STRCMP_OBJ_5C
/* 8790 80017F90 FFFF0224 */   addiu     $v0, $zero, -1
/* 8794 80017F94 F45F0008 */  j          STRCMP_OBJ_5C
/* 8798 80017F98 01000224 */   addiu     $v0, $zero, 1
.L80017F9C:
/* 879C 80017F9C F45F0008 */  j          STRCMP_OBJ_5C
/* 87A0 80017FA0 21100000 */   addu      $v0, $zero, $zero
.L80017FA4:
/* 87A4 80017FA4 FDFFC010 */  beqz       $a2, .L80017F9C
/* 87A8 80017FA8 01008424 */   addiu     $a0, $a0, 1
.L80017FAC:
/* 87AC 80017FAC 0000A380 */  lb         $v1, ($a1)
/* 87B0 80017FB0 00008280 */  lb         $v0, ($a0)
/* 87B4 80017FB4 00008690 */  lbu        $a2, ($a0)
/* 87B8 80017FB8 FAFF4310 */  beq        $v0, $v1, .L80017FA4
/* 87BC 80017FBC 0100A524 */   addiu     $a1, $a1, 1
/* 87C0 80017FC0 00008380 */  lb         $v1, ($a0)
/* 87C4 80017FC4 FFFFA280 */  lb         $v0, -1($a1)
/* 87C8 80017FC8 00000000 */  nop
/* 87CC 80017FCC 23106200 */  subu       $v0, $v1, $v0
