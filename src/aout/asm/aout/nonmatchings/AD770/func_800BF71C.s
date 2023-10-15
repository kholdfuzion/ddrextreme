.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BF71C
/* AFF1C 800BF71C 641F023C */  lui        $v0, 0x1f64
/* AFF20 800BF720 AA004234 */  ori        $v0, $v0, 0xaa
/* AFF24 800BF724 00004294 */  lhu        $v0, ($v0)
/* AFF28 800BF728 00000000 */  nop
/* AFF2C 800BF72C 00104230 */  andi       $v0, $v0, 0x1000
/* AFF30 800BF730 0800E003 */  jr         $ra
/* AFF34 800BF734 2B100200 */   sltu      $v0, $zero, $v0
