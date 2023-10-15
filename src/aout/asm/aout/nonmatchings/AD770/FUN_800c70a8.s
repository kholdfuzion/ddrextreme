.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c70a8
/* B78A8 800C70A8 1F80023C */  lui        $v0, %hi(D_801F7430)
/* B78AC 800C70AC 80200400 */  sll        $a0, $a0, 2
/* B78B0 800C70B0 04000324 */  addiu      $v1, $zero, 4
/* B78B4 800C70B4 3074428C */  lw         $v0, %lo(D_801F7430)($v0)
/* B78B8 800C70B8 04188300 */  sllv       $v1, $v1, $a0
/* B78BC 800C70BC 24104300 */  and        $v0, $v0, $v1
/* B78C0 800C70C0 0800E003 */  jr         $ra
/* B78C4 800C70C4 2B100200 */   sltu      $v0, $zero, $v0
