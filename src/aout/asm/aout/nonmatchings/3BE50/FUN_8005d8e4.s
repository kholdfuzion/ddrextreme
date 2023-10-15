.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d8e4
/* 4E0E4 8005D8E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4E0E8 8005D8E8 0180043C */  lui        $a0, %hi(D_800142B8)
/* 4E0EC 8005D8EC 1A80053C */  lui        $a1, %hi(D_801A09B0)
/* 4E0F0 8005D8F0 B8428424 */  addiu      $a0, $a0, %lo(D_800142B8)
/* 4E0F4 8005D8F4 1000BFAF */  sw         $ra, 0x10($sp)
/* 4E0F8 8005D8F8 DDB3000C */  jal        decodefile_8002cf74
/* 4E0FC 8005D8FC B009A524 */   addiu     $a1, $a1, %lo(D_801A09B0)
/* 4E100 8005D900 1000BF8F */  lw         $ra, 0x10($sp)
/* 4E104 8005D904 21100000 */  addu       $v0, $zero, $zero
/* 4E108 8005D908 0800E003 */  jr         $ra
/* 4E10C 8005D90C 1800BD27 */   addiu     $sp, $sp, 0x18
