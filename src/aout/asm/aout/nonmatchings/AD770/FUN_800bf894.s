.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf894
/* B0094 800BF894 641F023C */  lui        $v0, 0x1f64
/* B0098 800BF898 CC004234 */  ori        $v0, $v0, 0xcc
/* B009C 800BF89C 00004294 */  lhu        $v0, ($v0)
/* B00A0 800BF8A0 0800E003 */  jr         $ra
/* B00A4 800BF8A4 FFFF4230 */   andi      $v0, $v0, 0xffff
