.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009997c
/* 8A17C 8009997C 0180023C */  lui        $v0, %hi(D_800165B4)
/* 8A180 80099980 B4654724 */  addiu      $a3, $v0, %lo(D_800165B4)
/* 8A184 80099984 0300E388 */  lwl        $v1, 3($a3)
/* 8A188 80099988 0000E398 */  lwr        $v1, ($a3)
/* 8A18C 8009998C 00000000 */  nop
/* 8A190 80099990 030083A8 */  swl        $v1, 3($a0)
/* 8A194 80099994 000083B8 */  swr        $v1, ($a0)
/* 8A198 80099998 0800E003 */  jr         $ra
/* 8A19C 8009999C 00000000 */   nop
