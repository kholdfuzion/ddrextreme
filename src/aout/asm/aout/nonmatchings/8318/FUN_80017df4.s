.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80017df4
/* 85F4 80017DF4 2110A003 */  addu       $v0, $sp, $zero
/* 85F8 80017DF8 0800E003 */  jr         $ra
/* 85FC 80017DFC 21E88000 */   addu      $sp, $a0, $zero
/* 8600 80017E00 00000000 */  nop
