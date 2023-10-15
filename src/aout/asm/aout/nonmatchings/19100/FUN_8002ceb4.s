.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ceb4
/* 1D6B4 8002CEB4 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D6B8 8002CEB8 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D6BC 8002CEBC 40200400 */  sll        $a0, $a0, 1
/* 1D6C0 8002CEC0 21186400 */  addu       $v1, $v1, $a0
/* 1D6C4 8002CEC4 00006294 */  lhu        $v0, ($v1)
/* 1D6C8 8002CEC8 0800E003 */  jr         $ra
/* 1D6CC 8002CECC 01004230 */   andi      $v0, $v0, 1
