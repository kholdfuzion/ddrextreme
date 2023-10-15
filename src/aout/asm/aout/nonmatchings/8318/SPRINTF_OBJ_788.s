.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_788
/* 115C0 80020DC0 25000224 */  addiu      $v0, $zero, 0x25
/* 115C4 80020DC4 2F00A214 */  bne        $a1, $v0, .L80020E84
/* 115C8 80020DC8 21107202 */   addu      $v0, $s3, $s2
.L80020DCC:
/* 115CC 80020DCC 000045A0 */  sb         $a1, ($v0)
/* 115D0 80020DD0 99830008 */  j          SPRINTF_OBJ_82C
/* 115D4 80020DD4 01005226 */   addiu     $s2, $s2, 1
