.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A9710
/* 99F10 800A9710 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 99F14 800A9714 1000BFAF */  sw         $ra, 0x10($sp)
/* 99F18 800A9718 27C2020C */  jal        FUN_800b089c
/* 99F1C 800A971C 00000000 */   nop
/* 99F20 800A9720 1000BF8F */  lw         $ra, 0x10($sp)
/* 99F24 800A9724 0F80033C */  lui        $v1, %hi(D_800EC6EC)
/* 99F28 800A9728 ECC662AC */  sw         $v0, %lo(D_800EC6EC)($v1)
/* 99F2C 800A972C 0800E003 */  jr         $ra
/* 99F30 800A9730 1800BD27 */   addiu     $sp, $sp, 0x18
