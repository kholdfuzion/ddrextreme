.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_2E4
/* 1111C 8002091C 1002A2AF */  sw         $v0, 0x210($sp)
/* 11120 80020920 4C02A38F */  lw         $v1, 0x24c($sp)
/* 11124 80020924 00000000 */  nop
/* 11128 80020928 01006224 */  addiu      $v0, $v1, 1
/* 1112C 8002092C 4C02A2AF */  sw         $v0, 0x24c($sp)
/* 11130 80020930 01006580 */  lb         $a1, 1($v1)
/* 11134 80020934 35820008 */  j          SPRINTF_OBJ_29C
/* 11138 80020938 B4FFA324 */   addiu     $v1, $a1, -0x4c
