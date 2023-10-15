.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8ad4
/* 992D4 800A8AD4 00008290 */  lbu        $v0, ($a0)
/* 992D8 800A8AD8 00000000 */  nop
/* 992DC 800A8ADC 0A004010 */  beqz       $v0, .L800A8B08
/* 992E0 800A8AE0 00000000 */   nop
.L800A8AE4:
/* 992E4 800A8AE4 06008280 */  lb         $v0, 6($a0)
/* 992E8 800A8AE8 00000000 */  nop
/* 992EC 800A8AEC 0800A210 */  beq        $a1, $v0, .L800A8B10
/* 992F0 800A8AF0 21108000 */   addu      $v0, $a0, $zero
/* 992F4 800A8AF4 80008424 */  addiu      $a0, $a0, 0x80
/* 992F8 800A8AF8 00008290 */  lbu        $v0, ($a0)
/* 992FC 800A8AFC 00000000 */  nop
/* 99300 800A8B00 F8FF4014 */  bnez       $v0, .L800A8AE4
/* 99304 800A8B04 00000000 */   nop
.L800A8B08:
/* 99308 800A8B08 0800E003 */  jr         $ra
/* 9930C 800A8B0C 21100000 */   addu      $v0, $zero, $zero
.L800A8B10:
/* 99310 800A8B10 0800E003 */  jr         $ra
/* 99314 800A8B14 00000000 */   nop
