.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c97b4
/* B9FB4 800C97B4 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9FB8 800C97B8 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B9FBC 800C97BC 21208200 */  addu       $a0, $a0, $v0
/* B9FC0 800C97C0 0F80033C */  lui        $v1, %hi(D_800EE63C)
/* B9FC4 800C97C4 3CE66324 */  addiu      $v1, $v1, %lo(D_800EE63C)
/* B9FC8 800C97C8 1C008290 */  lbu        $v0, 0x1c($a0)
/* B9FCC 800C97CC C0280500 */  sll        $a1, $a1, 3
/* B9FD0 800C97D0 21104500 */  addu       $v0, $v0, $a1
/* B9FD4 800C97D4 21104300 */  addu       $v0, $v0, $v1
/* B9FD8 800C97D8 00004290 */  lbu        $v0, ($v0)
/* B9FDC 800C97DC 0800E003 */  jr         $ra
/* B9FE0 800C97E0 1C0082A0 */   sb        $v0, 0x1c($a0)
