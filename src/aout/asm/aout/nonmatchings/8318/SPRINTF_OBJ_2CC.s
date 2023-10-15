.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_2CC
/* 11104 80020904 1002A28F */  lw         $v0, 0x210($sp)
/* 11108 80020908 47820008 */  j          SPRINTF_OBJ_2E4
/* 1110C 8002090C 40004234 */   ori       $v0, $v0, 0x40
