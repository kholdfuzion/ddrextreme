.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel memset
/* 193D8 80028BD8 09008010 */  beqz       $a0, MEMSET_OBJ_28
/* 193DC 80028BDC 21100000 */   addu      $v0, $zero, $zero
/* 193E0 80028BE0 0300C01C */  bgtz       $a2, .L80028BF0
/* 193E4 80028BE4 21108000 */   addu      $v0, $a0, $zero
/* 193E8 80028BE8 00A30008 */  j          MEMSET_OBJ_28
/* 193EC 80028BEC 21100000 */   addu      $v0, $zero, $zero
.L80028BF0:
/* 193F0 80028BF0 000085A0 */  sb         $a1, ($a0)
/* 193F4 80028BF4 FFFFC624 */  addiu      $a2, $a2, -1
/* 193F8 80028BF8 FDFFC01C */  bgtz       $a2, .L80028BF0
/* 193FC 80028BFC 01008424 */   addiu     $a0, $a0, 1
