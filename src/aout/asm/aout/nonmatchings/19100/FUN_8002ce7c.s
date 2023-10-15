.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ce7c
/* 1D67C 8002CE7C 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D680 8002CE80 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D684 8002CE84 00000000 */  nop
/* 1D688 8002CE88 0A006294 */  lhu        $v0, 0xa($v1)
/* 1D68C 8002CE8C 0800E003 */  jr         $ra
/* 1D690 8002CE90 01004230 */   andi      $v0, $v0, 1
