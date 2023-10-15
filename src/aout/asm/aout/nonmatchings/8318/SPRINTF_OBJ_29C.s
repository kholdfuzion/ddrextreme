.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_29C
/* 110D4 800208D4 2D00622C */  sltiu      $v0, $v1, 0x2d
/* 110D8 800208D8 39014010 */  beqz       $v0, SPRINTF_OBJ_788
/* 110DC 800208DC 80100300 */   sll       $v0, $v1, 2
/* 110E0 800208E0 0180013C */  lui        $at, %hi(D_800109F4)
/* 110E4 800208E4 21082200 */  addu       $at, $at, $v0
/* 110E8 800208E8 F409228C */  lw         $v0, %lo(D_800109F4)($at)
/* 110EC 800208EC 00000000 */  nop
/* 110F0 800208F0 08004000 */  jr         $v0
/* 110F4 800208F4 00000000 */   nop
