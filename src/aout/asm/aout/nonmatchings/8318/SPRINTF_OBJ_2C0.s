.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_2C0
/* 110F8 800208F8 1002A28F */  lw         $v0, 0x210($sp)
/* 110FC 800208FC 47820008 */  j          SPRINTF_OBJ_2E4
/* 11100 80020900 20004234 */   ori       $v0, $v0, 0x20
