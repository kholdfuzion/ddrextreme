.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009640c
/* 86C0C 8009640C 21108000 */  addu       $v0, $a0, $zero
/* 86C10 80096410 0F80033C */  lui        $v1, %hi(D_800EBF40)
/* 86C14 80096414 0800E003 */  jr         $ra
/* 86C18 80096418 40BF62AC */   sw        $v0, %lo(D_800EBF40)($v1)
