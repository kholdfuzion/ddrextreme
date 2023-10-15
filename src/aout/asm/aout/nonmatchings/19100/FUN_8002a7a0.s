.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002a7a0
/* 1AFA0 8002A7A0 1380023C */  lui        $v0, %hi(D_8012ABD0)
/* 1AFA4 8002A7A4 D0AB44AC */  sw         $a0, %lo(D_8012ABD0)($v0)
/* 1AFA8 8002A7A8 D0AB4224 */  addiu      $v0, $v0, -0x5430
/* 1AFAC 8002A7AC 0800E003 */  jr         $ra
/* 1AFB0 8002A7B0 040044AC */   sw        $a0, 4($v0)
