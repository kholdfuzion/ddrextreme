.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A996C
/* 9A16C 800A996C 05008014 */  bnez       $a0, .L800A9984
/* 9A170 800A9970 0F80033C */   lui       $v1, 0x800f
/* 9A174 800A9974 0F80033C */  lui        $v1, %hi(D_800EC6F4)
/* 9A178 800A9978 F4C6628C */  lw         $v0, %lo(D_800EC6F4)($v1)
/* 9A17C 800A997C 0800E003 */  jr         $ra
/* 9A180 800A9980 00000000 */   nop
.L800A9984:
/* 9A184 800A9984 F0C6628C */  lw         $v0, -0x3910($v1)
/* 9A188 800A9988 0800E003 */  jr         $ra
/* 9A18C 800A998C 00000000 */   nop
