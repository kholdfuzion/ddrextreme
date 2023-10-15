.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A58CC
/* 960CC 800A58CC 14008294 */  lhu        $v0, 0x14($a0)
/* 960D0 800A58D0 00000000 */  nop
/* 960D4 800A58D4 3F004234 */  ori        $v0, $v0, 0x3f
/* 960D8 800A58D8 0800E003 */  jr         $ra
/* 960DC 800A58DC 140082A4 */   sh        $v0, 0x14($a0)
