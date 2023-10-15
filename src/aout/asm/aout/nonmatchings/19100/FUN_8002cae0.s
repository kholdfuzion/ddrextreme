.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cae0
/* 1D2E0 8002CAE0 0E80033C */  lui        $v1, %hi(D_800D8D38)
/* 1D2E4 8002CAE4 FFFF0234 */  ori        $v0, $zero, 0xffff
/* 1D2E8 8002CAE8 388D62AC */  sw         $v0, %lo(D_800D8D38)($v1)
/* 1D2EC 8002CAEC 0800E003 */  jr         $ra
/* 1D2F0 8002CAF0 01000224 */   addiu     $v0, $zero, 1
