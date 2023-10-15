.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_258
/* 11090 80020890 1802A28F */  lw         $v0, 0x218($sp)
/* 11094 80020894 00000000 */  nop
/* 11098 80020898 05004004 */  bltz       $v0, .L800208B0
/* 1109C 8002089C 00000000 */   nop
/* 110A0 800208A0 1002A28F */  lw         $v0, 0x210($sp)
/* 110A4 800208A4 00000000 */  nop
/* 110A8 800208A8 10004234 */  ori        $v0, $v0, 0x10
/* 110AC 800208AC 1002A2AF */  sw         $v0, 0x210($sp)
.L800208B0:
/* 110B0 800208B0 1002A38F */  lw         $v1, 0x210($sp)
/* 110B4 800208B4 00000000 */  nop
/* 110B8 800208B8 01006230 */  andi       $v0, $v1, 1
/* 110BC 800208BC 04004010 */  beqz       $v0, .L800208D0
/* 110C0 800208C0 1002B127 */   addiu     $s1, $sp, 0x210
/* 110C4 800208C4 F7FF0224 */  addiu      $v0, $zero, -9
/* 110C8 800208C8 24106200 */  and        $v0, $v1, $v0
/* 110CC 800208CC 1002A2AF */  sw         $v0, 0x210($sp)
.L800208D0:
/* 110D0 800208D0 B4FFA324 */  addiu      $v1, $a1, -0x4c
