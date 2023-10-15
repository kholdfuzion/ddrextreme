.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1ac8
/* B22C8 800C1AC8 401F023C */  lui        $v0, 0x1f40
/* B22CC 800C1ACC 06004294 */  lhu        $v0, 6($v0)
/* B22D0 800C1AD0 00000000 */  nop
/* B22D4 800C1AD4 C2100200 */  srl        $v0, $v0, 3
/* B22D8 800C1AD8 0800E003 */  jr         $ra
/* B22DC 800C1ADC 01004230 */   andi      $v0, $v0, 1
