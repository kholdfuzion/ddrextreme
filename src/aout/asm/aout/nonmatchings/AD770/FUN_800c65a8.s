.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c65a8
/* B6DA8 800C65A8 1F80023C */  lui        $v0, %hi(D_801F7420)
/* B6DAC 800C65AC 2B200400 */  sltu       $a0, $zero, $a0
/* B6DB0 800C65B0 0800E003 */  jr         $ra
/* B6DB4 800C65B4 207444AC */   sw        $a0, %lo(D_801F7420)($v0)
