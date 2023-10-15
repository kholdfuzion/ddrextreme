.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1814
/* 9FF8 800197F8 0800E003 */  jr         $ra
/* 9FFC 800197FC 1000BD27 */   addiu     $sp, $sp, 0x10
