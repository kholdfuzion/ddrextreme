.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8b6c
/* 9936C 800A8B6C 00008290 */  lbu        $v0, ($a0)
/* 99370 800A8B70 00000000 */  nop
/* 99374 800A8B74 0A004010 */  beqz       $v0, .L800A8BA0
/* 99378 800A8B78 00000000 */   nop
.L800A8B7C:
/* 9937C 800A8B7C 0C008294 */  lhu        $v0, 0xc($a0)
/* 99380 800A8B80 00000000 */  nop
/* 99384 800A8B84 0800A210 */  beq        $a1, $v0, .L800A8BA8
/* 99388 800A8B88 21108000 */   addu      $v0, $a0, $zero
/* 9938C 800A8B8C 80008424 */  addiu      $a0, $a0, 0x80
/* 99390 800A8B90 00008290 */  lbu        $v0, ($a0)
/* 99394 800A8B94 00000000 */  nop
/* 99398 800A8B98 F8FF4014 */  bnez       $v0, .L800A8B7C
/* 9939C 800A8B9C 00000000 */   nop
.L800A8BA0:
/* 993A0 800A8BA0 0800E003 */  jr         $ra
/* 993A4 800A8BA4 21100000 */   addu      $v0, $zero, $zero
.L800A8BA8:
/* 993A8 800A8BA8 0800E003 */  jr         $ra
/* 993AC 800A8BAC 00000000 */   nop
