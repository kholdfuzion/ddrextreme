.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel MargePrim
/* 5D5D4 8006CDD4 03008290 */  lbu        $v0, 3($a0)
/* 5D5D8 8006CDD8 0300A390 */  lbu        $v1, 3($a1)
/* 5D5DC 8006CDDC 00000000 */  nop
/* 5D5E0 8006CDE0 21104300 */  addu       $v0, $v0, $v1
/* 5D5E4 8006CDE4 01004324 */  addiu      $v1, $v0, 1
/* 5D5E8 8006CDE8 11006228 */  slti       $v0, $v1, 0x11
/* 5D5EC 8006CDEC 04004010 */  beqz       $v0, .L8006CE00
/* 5D5F0 8006CDF0 21100000 */   addu      $v0, $zero, $zero
/* 5D5F4 8006CDF4 030083A0 */  sb         $v1, 3($a0)
/* 5D5F8 8006CDF8 81B30108 */  j          P36_OBJ_30
/* 5D5FC 8006CDFC 0000A0AC */   sw        $zero, ($a1)
.L8006CE00:
/* 5D600 8006CE00 FFFF0224 */  addiu      $v0, $zero, -1
