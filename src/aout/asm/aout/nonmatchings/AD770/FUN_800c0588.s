.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0588
/* B0D88 800C0588 02120400 */  srl        $v0, $a0, 8
/* B0D8C 800C058C 0000A2A0 */  sb         $v0, ($a1)
/* B0D90 800C0590 0100A4A0 */  sb         $a0, 1($a1)
/* B0D94 800C0594 0200A0A0 */  sb         $zero, 2($a1)
/* B0D98 800C0598 02140400 */  srl        $v0, $a0, 0x10
/* B0D9C 800C059C 0F004230 */  andi       $v0, $v0, 0xf
/* B0DA0 800C05A0 0800E003 */  jr         $ra
/* B0DA4 800C05A4 0300A2A0 */   sb        $v0, 3($a1)
