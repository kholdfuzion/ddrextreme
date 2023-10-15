.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c97e4
/* B9FE4 800C97E4 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9FE8 800C97E8 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B9FEC 800C97EC 21208200 */  addu       $a0, $a0, $v0
/* B9FF0 800C97F0 1C008290 */  lbu        $v0, 0x1c($a0)
/* B9FF4 800C97F4 0800E003 */  jr         $ra
/* B9FF8 800C97F8 00000000 */   nop
