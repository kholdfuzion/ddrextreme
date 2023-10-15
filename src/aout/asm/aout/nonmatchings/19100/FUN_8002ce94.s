.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ce94
/* 1D694 8002CE94 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D698 8002CE98 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D69C 8002CE9C 00000000 */  nop
/* 1D6A0 8002CEA0 0A006294 */  lhu        $v0, 0xa($v1)
/* 1D6A4 8002CEA4 00000000 */  nop
/* 1D6A8 8002CEA8 42100200 */  srl        $v0, $v0, 1
/* 1D6AC 8002CEAC 0800E003 */  jr         $ra
/* 1D6B0 8002CEB0 01004230 */   andi      $v0, $v0, 1
