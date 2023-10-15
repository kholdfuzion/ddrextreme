.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf7d0
/* AFFD0 800BF7D0 641F023C */  lui        $v0, 0x1f64
/* AFFD4 800BF7D4 AC004234 */  ori        $v0, $v0, 0xac
/* AFFD8 800BF7D8 00004294 */  lhu        $v0, ($v0)
/* AFFDC 800BF7DC 00000000 */  nop
/* AFFE0 800BF7E0 00204230 */  andi       $v0, $v0, 0x2000
/* AFFE4 800BF7E4 0800E003 */  jr         $ra
/* AFFE8 800BF7E8 2B100200 */   sltu      $v0, $zero, $v0
