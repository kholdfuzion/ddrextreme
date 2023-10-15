.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0094
/* B0894 800C0094 FFFF8430 */  andi       $a0, $a0, 0xffff
/* B0898 800C0098 02120400 */  srl        $v0, $a0, 8
/* B089C 800C009C 0000A2A0 */  sb         $v0, ($a1)
/* B08A0 800C00A0 0800E003 */  jr         $ra
/* B08A4 800C00A4 0100A4A0 */   sb        $a0, 1($a1)
