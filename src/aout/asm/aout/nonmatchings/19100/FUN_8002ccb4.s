.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ccb4
/* 1D4B4 8002CCB4 0E80023C */  lui        $v0, %hi(D_800D8D38)
/* 1D4B8 8002CCB8 01000324 */  addiu      $v1, $zero, 1
/* 1D4BC 8002CCBC 388D458C */  lw         $a1, %lo(D_800D8D38)($v0)
/* 1D4C0 8002CCC0 04188300 */  sllv       $v1, $v1, $a0
/* 1D4C4 8002CCC4 2528A300 */  or         $a1, $a1, $v1
/* 1D4C8 8002CCC8 388D45AC */  sw         $a1, -0x72c8($v0)
/* 1D4CC 8002CCCC 0800E003 */  jr         $ra
/* 1D4D0 8002CCD0 01000224 */   addiu     $v0, $zero, 1
