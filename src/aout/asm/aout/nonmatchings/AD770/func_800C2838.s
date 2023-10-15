.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C2838
/* B3038 800C2838 040080AC */  sw         $zero, 4($a0)
/* B303C 800C283C 0800E003 */  jr         $ra
/* B3040 800C2840 000080AC */   sw        $zero, ($a0)
