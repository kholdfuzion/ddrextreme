.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8a90
/* 99290 800A8A90 00008290 */  lbu        $v0, ($a0)
/* 99294 800A8A94 00000000 */  nop
/* 99298 800A8A98 0A004010 */  beqz       $v0, .L800A8AC4
/* 9929C 800A8A9C 00000000 */   nop
.L800A8AA0:
/* 992A0 800A8AA0 07008280 */  lb         $v0, 7($a0)
/* 992A4 800A8AA4 00000000 */  nop
/* 992A8 800A8AA8 0800A210 */  beq        $a1, $v0, .L800A8ACC
/* 992AC 800A8AAC 21108000 */   addu      $v0, $a0, $zero
/* 992B0 800A8AB0 80008424 */  addiu      $a0, $a0, 0x80
/* 992B4 800A8AB4 00008290 */  lbu        $v0, ($a0)
/* 992B8 800A8AB8 00000000 */  nop
/* 992BC 800A8ABC F8FF4014 */  bnez       $v0, .L800A8AA0
/* 992C0 800A8AC0 00000000 */   nop
.L800A8AC4:
/* 992C4 800A8AC4 0800E003 */  jr         $ra
/* 992C8 800A8AC8 21100000 */   addu      $v0, $zero, $zero
.L800A8ACC:
/* 992CC 800A8ACC 0800E003 */  jr         $ra
/* 992D0 800A8AD0 00000000 */   nop
