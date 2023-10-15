.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a56c
/* 3AD6C 8004A56C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AD70 8004A570 1780033C */  lui        $v1, %hi(D_8016EDD0)
/* 3AD74 8004A574 E0010224 */  addiu      $v0, $zero, 0x1e0
/* 3AD78 8004A578 E0010424 */  addiu      $a0, $zero, 0x1e0
/* 3AD7C 8004A57C 1000BFAF */  sw         $ra, 0x10($sp)
/* 3AD80 8004A580 8C29010C */  jal        atol
/* 3AD84 8004A584 D0ED62A4 */   sh        $v0, %lo(D_8016EDD0)($v1)
/* 3AD88 8004A588 1000BF8F */  lw         $ra, 0x10($sp)
/* 3AD8C 8004A58C 00000000 */  nop
/* 3AD90 8004A590 0800E003 */  jr         $ra
/* 3AD94 8004A594 1800BD27 */   addiu     $sp, $sp, 0x18
