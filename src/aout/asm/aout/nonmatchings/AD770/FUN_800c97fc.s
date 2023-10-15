.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c97fc
/* B9FFC 800C97FC 2080023C */  lui        $v0, %hi(D_801FB7F4)
/* BA000 800C9800 F4B7428C */  lw         $v0, %lo(D_801FB7F4)($v0)
/* BA004 800C9804 00000000 */  nop
/* BA008 800C9808 0E004238 */  xori       $v0, $v0, 0xe
/* BA00C 800C980C 0800E003 */  jr         $ra
/* BA010 800C9810 2B100200 */   sltu      $v0, $zero, $v0
