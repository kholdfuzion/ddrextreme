.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80028900
/* 19100 80028900 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 19104 80028904 0F80043C */  lui        $a0, %hi(D_800EFFAC)
/* 19108 80028908 1000BFAF */  sw         $ra, 0x10($sp)
/* 1910C 8002890C EBA2000C */  jal        FUN_80028bac
/* 19110 80028910 ACFF8424 */   addiu     $a0, $a0, %lo(D_800EFFAC)
/* 19114 80028914 1000BF8F */  lw         $ra, 0x10($sp)
/* 19118 80028918 00000000 */  nop
/* 1911C 8002891C 0800E003 */  jr         $ra
/* 19120 80028920 1800BD27 */   addiu     $sp, $sp, 0x18
