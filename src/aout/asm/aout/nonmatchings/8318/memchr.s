.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel memchr
/* 116B8 80020EB8 11008010 */  beqz       $a0, MEMCHR_OBJ_48
/* 116BC 80020EBC 21100000 */   addu      $v0, $zero, $zero
/* 116C0 80020EC0 0F00C018 */  blez       $a2, MEMCHR_OBJ_48
/* 116C4 80020EC4 00000000 */   nop
/* 116C8 80020EC8 B6830008 */  j          MEMCHR_OBJ_20
/* 116CC 80020ECC FFFFC624 */   addiu     $a2, $a2, -1
.L80020ED0:
/* 116D0 80020ED0 C0830008 */  j          MEMCHR_OBJ_48
/* 116D4 80020ED4 FFFF8224 */   addiu     $v0, $a0, -1
