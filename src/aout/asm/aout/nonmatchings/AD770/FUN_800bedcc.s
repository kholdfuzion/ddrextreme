.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bedcc
/* AF5CC 800BEDCC 641F023C */  lui        $v0, 0x1f64
/* AF5D0 800BEDD0 F6004234 */  ori        $v0, $v0, 0xf6
/* AF5D4 800BEDD4 00004394 */  lhu        $v1, ($v0)
/* AF5D8 800BEDD8 00000000 */  nop
/* AF5DC 800BEDDC 00C06330 */  andi       $v1, $v1, 0xc000
/* AF5E0 800BEDE0 00800434 */  ori        $a0, $zero, 0x8000
/* AF5E4 800BEDE4 02006410 */  beq        $v1, $a0, .L800BEDF0
/* AF5E8 800BEDE8 21100000 */   addu      $v0, $zero, $zero
/* AF5EC 800BEDEC FFFF0224 */  addiu      $v0, $zero, -1
.L800BEDF0:
/* AF5F0 800BEDF0 0800E003 */  jr         $ra
/* AF5F4 800BEDF4 00000000 */   nop
