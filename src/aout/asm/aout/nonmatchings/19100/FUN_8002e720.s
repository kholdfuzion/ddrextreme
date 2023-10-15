.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e720
/* 1EF20 8002E720 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1EF24 8002E724 1000BFAF */  sw         $ra, 0x10($sp)
/* 1EF28 8002E728 7AB5000C */  jal        FUN_8002d5e8
/* 1EF2C 8002E72C 00000000 */   nop
/* 1EF30 8002E730 1580033C */  lui        $v1, %hi(D_8014DF00)
/* 1EF34 8002E734 1580043C */  lui        $a0, %hi(D_8014CCAC)
/* 1EF38 8002E738 00DF62AC */  sw         $v0, %lo(D_8014DF00)($v1)
/* 1EF3C 8002E73C ACCC828C */  lw         $v0, %lo(D_8014CCAC)($a0)
/* 1EF40 8002E740 1000BF8F */  lw         $ra, 0x10($sp)
/* 1EF44 8002E744 00000000 */  nop
/* 1EF48 8002E748 0800E003 */  jr         $ra
/* 1EF4C 8002E74C 1800BD27 */   addiu     $sp, $sp, 0x18
