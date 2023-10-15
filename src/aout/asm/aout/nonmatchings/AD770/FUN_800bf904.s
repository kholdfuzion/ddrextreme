.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf904
/* B0104 800BF904 FFFF8430 */  andi       $a0, $a0, 0xffff
/* B0108 800BF908 641F023C */  lui        $v0, 0x1f64
/* B010C 800BF90C EA004234 */  ori        $v0, $v0, 0xea
/* B0110 800BF910 000044A4 */  sh         $a0, ($v0)
/* B0114 800BF914 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0118 800BF918 30570324 */  addiu      $v1, $zero, 0x5730
/* B011C 800BF91C 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0120 800BF920 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0124 800BF924 0800E003 */  jr         $ra
/* B0128 800BF928 807043A4 */   sh        $v1, %lo(D_801F7080)($v0)
