.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd99c
/* AE19C 800BD99C 03000224 */  addiu      $v0, $zero, 3
/* AE1A0 800BD9A0 030082A0 */  sb         $v0, 3($a0)
/* AE1A4 800BD9A4 74000224 */  addiu      $v0, $zero, 0x74
/* AE1A8 800BD9A8 0800E003 */  jr         $ra
/* AE1AC 800BD9AC 070082A0 */   sb        $v0, 7($a0)
/* AE1B0 800BD9B0 00000000 */  nop
/* AE1B4 800BD9B4 00000000 */  nop
/* AE1B8 800BD9B8 00000000 */  nop
