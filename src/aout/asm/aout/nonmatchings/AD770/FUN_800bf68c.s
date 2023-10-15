.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf68c
/* AFE8C 800BF68C 641F023C */  lui        $v0, 0x1f64
/* AFE90 800BF690 A8004234 */  ori        $v0, $v0, 0xa8
/* AFE94 800BF694 00004294 */  lhu        $v0, ($v0)
/* AFE98 800BF698 0800E003 */  jr         $ra
/* AFE9C 800BF69C FFFF4230 */   andi      $v0, $v0, 0xffff
