.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002d0ec
/* 1D8EC 8002D0EC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1D8F0 8002D0F0 1000A527 */  addiu      $a1, $sp, 0x10
/* 1D8F4 8002D0F4 1800BFAF */  sw         $ra, 0x18($sp)
/* 1D8F8 8002D0F8 F9AA000C */  jal        hashname_getfromflash_8002abe4
/* 1D8FC 8002D0FC 1400A627 */   addiu     $a2, $sp, 0x14
/* 1D900 8002D100 1400A28F */  lw         $v0, 0x14($sp)
/* 1D904 8002D104 1800BF8F */  lw         $ra, 0x18($sp)
/* 1D908 8002D108 00000000 */  nop
/* 1D90C 8002D10C 0800E003 */  jr         $ra
/* 1D910 8002D110 2000BD27 */   addiu     $sp, $sp, 0x20
