.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc09c
/* AC89C 800BC09C 1E80053C */  lui        $a1, %hi(D_801E179A)
/* AC8A0 800BC0A0 0F008430 */  andi       $a0, $a0, 0xf
/* AC8A4 800BC0A4 9A17A294 */  lhu        $v0, %lo(D_801E179A)($a1)
/* AC8A8 800BC0A8 501F033C */  lui        $v1, 0x1f50
/* AC8AC 800BC0AC F0FF4230 */  andi       $v0, $v0, 0xfff0
/* AC8B0 800BC0B0 25104400 */  or         $v0, $v0, $a0
/* AC8B4 800BC0B4 000062A4 */  sh         $v0, ($v1)
/* AC8B8 800BC0B8 00006394 */  lhu        $v1, ($v1)
/* AC8BC 800BC0BC F8FFBD27 */  addiu      $sp, $sp, -8
/* AC8C0 800BC0C0 9A17A2A4 */  sh         $v0, 0x179a($a1)
/* AC8C4 800BC0C4 0000A3A7 */  sh         $v1, ($sp)
/* AC8C8 800BC0C8 0800E003 */  jr         $ra
/* AC8CC 800BC0CC 0800BD27 */   addiu     $sp, $sp, 8
