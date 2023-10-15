.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c7040
/* B7840 800C7040 80200400 */  sll        $a0, $a0, 2
/* B7844 800C7044 1F80053C */  lui        $a1, %hi(D_801F7418)
/* B7848 800C7048 1874A524 */  addiu      $a1, $a1, %lo(D_801F7418)
/* B784C 800C704C 04000224 */  addiu      $v0, $zero, 4
/* B7850 800C7050 1800A38C */  lw         $v1, 0x18($a1)
/* B7854 800C7054 04108200 */  sllv       $v0, $v0, $a0
/* B7858 800C7058 25186200 */  or         $v1, $v1, $v0
/* B785C 800C705C 08000224 */  addiu      $v0, $zero, 8
/* B7860 800C7060 04108200 */  sllv       $v0, $v0, $a0
/* B7864 800C7064 27100200 */  nor        $v0, $zero, $v0
/* B7868 800C7068 24186200 */  and        $v1, $v1, $v0
/* B786C 800C706C 0800E003 */  jr         $ra
/* B7870 800C7070 1800A3AC */   sw        $v1, 0x18($a1)
