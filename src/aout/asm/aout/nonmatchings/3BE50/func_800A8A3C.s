.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A8A3C
/* 9923C 800A8A3C 00008290 */  lbu        $v0, ($a0)
/* 99240 800A8A40 00000000 */  nop
/* 99244 800A8A44 0E004010 */  beqz       $v0, .L800A8A80
/* 99248 800A8A48 05000324 */   addiu     $v1, $zero, 5
.L800A8A4C:
/* 9924C 800A8A4C 06008280 */  lb         $v0, 6($a0)
/* 99250 800A8A50 00000000 */  nop
/* 99254 800A8A54 05004314 */  bne        $v0, $v1, .L800A8A6C
/* 99258 800A8A58 00000000 */   nop
/* 9925C 800A8A5C 08008284 */  lh         $v0, 8($a0)
/* 99260 800A8A60 00000000 */  nop
/* 99264 800A8A64 0800A210 */  beq        $a1, $v0, .L800A8A88
/* 99268 800A8A68 21108000 */   addu      $v0, $a0, $zero
.L800A8A6C:
/* 9926C 800A8A6C 80008424 */  addiu      $a0, $a0, 0x80
/* 99270 800A8A70 00008290 */  lbu        $v0, ($a0)
/* 99274 800A8A74 00000000 */  nop
/* 99278 800A8A78 F4FF4014 */  bnez       $v0, .L800A8A4C
/* 9927C 800A8A7C 00000000 */   nop
.L800A8A80:
/* 99280 800A8A80 0800E003 */  jr         $ra
/* 99284 800A8A84 21100000 */   addu      $v0, $zero, $zero
.L800A8A88:
/* 99288 800A8A88 0800E003 */  jr         $ra
/* 9928C 800A8A8C 00000000 */   nop
