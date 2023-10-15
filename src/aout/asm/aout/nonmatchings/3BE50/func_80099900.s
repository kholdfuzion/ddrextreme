.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80099900
/* 8A100 80099900 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8A104 80099904 1000BFAF */  sw         $ra, 0x10($sp)
/* 8A108 80099908 4564020C */  jal        FUN_80099114
/* 8A10C 8009990C 00000000 */   nop
/* 8A110 80099910 0180043C */  lui        $a0, %hi(D_8001668C)
/* 8A114 80099914 0FA2020C */  jal        FUN_800a883c
/* 8A118 80099918 8C668424 */   addiu     $a0, $a0, %lo(D_8001668C)
/* 8A11C 8009991C 1000BF8F */  lw         $ra, 0x10($sp)
/* 8A120 80099920 00000000 */  nop
/* 8A124 80099924 0800E003 */  jr         $ra
/* 8A128 80099928 1800BD27 */   addiu     $sp, $sp, 0x18
