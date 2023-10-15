.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cef4
/* 1D6F4 8002CEF4 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D6F8 8002CEF8 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D6FC 8002CEFC 40200400 */  sll        $a0, $a0, 1
/* 1D700 8002CF00 21186400 */  addu       $v1, $v1, $a0
/* 1D704 8002CF04 00006294 */  lhu        $v0, ($v1)
/* 1D708 8002CF08 00000000 */  nop
/* 1D70C 8002CF0C 82100200 */  srl        $v0, $v0, 2
/* 1D710 8002CF10 0800E003 */  jr         $ra
/* 1D714 8002CF14 01004230 */   andi      $v0, $v0, 1
