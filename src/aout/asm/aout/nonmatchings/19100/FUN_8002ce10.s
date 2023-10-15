.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ce10
/* 1D610 8002CE10 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D614 8002CE14 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D618 8002CE18 40200400 */  sll        $a0, $a0, 1
/* 1D61C 8002CE1C 21186400 */  addu       $v1, $v1, $a0
/* 1D620 8002CE20 08006294 */  lhu        $v0, 8($v1)
/* 1D624 8002CE24 00000000 */  nop
/* 1D628 8002CE28 42100200 */  srl        $v0, $v0, 1
/* 1D62C 8002CE2C 0800E003 */  jr         $ra
/* 1D630 8002CE30 01004230 */   andi      $v0, $v0, 1
