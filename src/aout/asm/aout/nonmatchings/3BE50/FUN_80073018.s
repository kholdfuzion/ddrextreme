.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80073018
/* 63818 80073018 1B80023C */  lui        $v0, %hi(D_801AFBF4)
/* 6381C 8007301C F4FB438C */  lw         $v1, %lo(D_801AFBF4)($v0)
/* 63820 80073020 21100000 */  addu       $v0, $zero, $zero
/* 63824 80073024 0800E003 */  jr         $ra
/* 63828 80073028 CE0060A4 */   sh        $zero, 0xce($v1)
