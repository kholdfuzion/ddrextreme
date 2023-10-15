.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc1b4
/* AC9B4 800BC1B4 1E80033C */  lui        $v1, %hi(D_801E179A)
/* AC9B8 800BC1B8 01008430 */  andi       $a0, $a0, 1
/* AC9BC 800BC1BC 9A176294 */  lhu        $v0, %lo(D_801E179A)($v1)
/* AC9C0 800BC1C0 80210400 */  sll        $a0, $a0, 6
/* AC9C4 800BC1C4 BFFF4230 */  andi       $v0, $v0, 0xffbf
/* AC9C8 800BC1C8 25104400 */  or         $v0, $v0, $a0
/* AC9CC 800BC1CC 9A1762A4 */  sh         $v0, 0x179a($v1)
/* AC9D0 800BC1D0 501F033C */  lui        $v1, 0x1f50
/* AC9D4 800BC1D4 000062A4 */  sh         $v0, ($v1)
/* AC9D8 800BC1D8 0800E003 */  jr         $ra
/* AC9DC 800BC1DC 00000000 */   nop
