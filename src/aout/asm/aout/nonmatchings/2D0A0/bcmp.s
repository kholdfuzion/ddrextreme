.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel bcmp
/* 31C24 80041424 0B00C010 */  beqz       $a2, .L80041454
/* 31C28 80041428 FFFFC724 */   addiu     $a3, $a2, -1
/* 31C2C 8004142C FFFF0624 */  addiu      $a2, $zero, -1
.L80041430:
/* 31C30 80041430 00008390 */  lbu        $v1, ($a0)
/* 31C34 80041434 0000A290 */  lbu        $v0, ($a1)
/* 31C38 80041438 00000000 */  nop
/* 31C3C 8004143C 06006214 */  bne        $v1, $v0, .L80041458
/* 31C40 80041440 23106200 */   subu      $v0, $v1, $v0
/* 31C44 80041444 01008424 */  addiu      $a0, $a0, 1
/* 31C48 80041448 FFFFE724 */  addiu      $a3, $a3, -1
/* 31C4C 8004144C F8FFE614 */  bne        $a3, $a2, .L80041430
/* 31C50 80041450 0100A524 */   addiu     $a1, $a1, 1
.L80041454:
/* 31C54 80041454 21100000 */  addu       $v0, $zero, $zero
.L80041458:
/* 31C58 80041458 0800E003 */  jr         $ra
/* 31C5C 8004145C 00000000 */   nop
/* 31C60 80041460 00000000 */  nop
