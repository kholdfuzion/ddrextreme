.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80097394
/* 87B94 80097394 21300000 */  addu       $a2, $zero, $zero
/* 87B98 80097398 21280000 */  addu       $a1, $zero, $zero
/* 87B9C 8009739C 0F80023C */  lui        $v0, %hi(D_800EBF98)
/* 87BA0 800973A0 98BF4324 */  addiu      $v1, $v0, %lo(D_800EBF98)
.L800973A4:
/* 87BA4 800973A4 0000628C */  lw         $v0, ($v1)
/* 87BA8 800973A8 00000000 */  nop
/* 87BAC 800973AC 02004414 */  bne        $v0, $a0, .L800973B8
/* 87BB0 800973B0 00000000 */   nop
/* 87BB4 800973B4 01000624 */  addiu      $a2, $zero, 1
.L800973B8:
/* 87BB8 800973B8 0100A524 */  addiu      $a1, $a1, 1
/* 87BBC 800973BC 0600A22C */  sltiu      $v0, $a1, 6
/* 87BC0 800973C0 04004010 */  beqz       $v0, .L800973D4
/* 87BC4 800973C4 04006324 */   addiu     $v1, $v1, 4
/* 87BC8 800973C8 F6FFC010 */  beqz       $a2, .L800973A4
/* 87BCC 800973CC 00000000 */   nop
/* 87BD0 800973D0 0000648C */  lw         $a0, ($v1)
.L800973D4:
/* 87BD4 800973D4 0800E003 */  jr         $ra
/* 87BD8 800973D8 21108000 */   addu      $v0, $a0, $zero
