.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BF700
/* AFF00 800BF700 641F023C */  lui        $v0, 0x1f64
/* AFF04 800BF704 AA004234 */  ori        $v0, $v0, 0xaa
/* AFF08 800BF708 00004294 */  lhu        $v0, ($v0)
/* AFF0C 800BF70C 00000000 */  nop
/* AFF10 800BF710 00204230 */  andi       $v0, $v0, 0x2000
/* AFF14 800BF714 0800E003 */  jr         $ra
/* AFF18 800BF718 2B100200 */   sltu      $v0, $zero, $v0
