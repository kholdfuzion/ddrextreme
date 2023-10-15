.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a58b8
/* 960B8 800A58B8 14008294 */  lhu        $v0, 0x14($a0)
/* 960BC 800A58BC 00000000 */  nop
/* 960C0 800A58C0 25104500 */  or         $v0, $v0, $a1
/* 960C4 800A58C4 0800E003 */  jr         $ra
/* 960C8 800A58C8 140082A4 */   sh        $v0, 0x14($a0)
