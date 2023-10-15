.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800963e0
/* 86BE0 800963E0 2380033C */  lui        $v1, 0x8023
/* 86BE4 800963E4 00806334 */  ori        $v1, $v1, 0x8000
/* 86BE8 800963E8 0F80043C */  lui        $a0, %hi(D_800EBF40)
/* 86BEC 800963EC 40BF8594 */  lhu        $a1, %lo(D_800EBF40)($a0)
/* 86BF0 800963F0 1B80023C */  lui        $v0, %hi(D_801B2A88)
/* 86BF4 800963F4 882A43AC */  sw         $v1, %lo(D_801B2A88)($v0)
/* 86BF8 800963F8 21100000 */  addu       $v0, $zero, $zero
/* 86BFC 800963FC 0800E003 */  jr         $ra
/* 86C00 80096400 40BF85AC */   sw        $a1, -0x40c0($a0)
