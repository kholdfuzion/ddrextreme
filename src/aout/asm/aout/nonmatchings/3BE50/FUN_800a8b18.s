.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8b18
/* 99318 800A8B18 00008290 */  lbu        $v0, ($a0)
/* 9931C 800A8B1C 00000000 */  nop
/* 99320 800A8B20 0E004010 */  beqz       $v0, .L800A8B5C
/* 99324 800A8B24 00000000 */   nop
.L800A8B28:
/* 99328 800A8B28 06008280 */  lb         $v0, 6($a0)
/* 9932C 800A8B2C 00000000 */  nop
/* 99330 800A8B30 0500A214 */  bne        $a1, $v0, .L800A8B48
/* 99334 800A8B34 00000000 */   nop
/* 99338 800A8B38 08008284 */  lh         $v0, 8($a0)
/* 9933C 800A8B3C 00000000 */  nop
/* 99340 800A8B40 0800C210 */  beq        $a2, $v0, .L800A8B64
/* 99344 800A8B44 21108000 */   addu      $v0, $a0, $zero
.L800A8B48:
/* 99348 800A8B48 80008424 */  addiu      $a0, $a0, 0x80
/* 9934C 800A8B4C 00008290 */  lbu        $v0, ($a0)
/* 99350 800A8B50 00000000 */  nop
/* 99354 800A8B54 F4FF4014 */  bnez       $v0, .L800A8B28
/* 99358 800A8B58 00000000 */   nop
.L800A8B5C:
/* 9935C 800A8B5C 0800E003 */  jr         $ra
/* 99360 800A8B60 21100000 */   addu      $v0, $zero, $zero
.L800A8B64:
/* 99364 800A8B64 0800E003 */  jr         $ra
/* 99368 800A8B68 00000000 */   nop
