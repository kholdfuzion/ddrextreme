.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bedf8
/* AF5F8 800BEDF8 641F023C */  lui        $v0, 0x1f64
/* AF5FC 800BEDFC 80004234 */  ori        $v0, $v0, 0x80
/* AF600 800BEE00 00004394 */  lhu        $v1, ($v0)
/* AF604 800BEE04 00000000 */  nop
/* AF608 800BEE08 FFFF6330 */  andi       $v1, $v1, 0xffff
/* AF60C 800BEE0C 34120424 */  addiu      $a0, $zero, 0x1234
/* AF610 800BEE10 02006410 */  beq        $v1, $a0, .L800BEE1C
/* AF614 800BEE14 21100000 */   addu      $v0, $zero, $zero
/* AF618 800BEE18 FFFF0224 */  addiu      $v0, $zero, -1
.L800BEE1C:
/* AF61C 800BEE1C 0800E003 */  jr         $ra
/* AF620 800BEE20 00000000 */   nop
