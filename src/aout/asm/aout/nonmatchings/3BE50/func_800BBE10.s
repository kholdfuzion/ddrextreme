.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BBE10
/* AC610 800BBE10 1E80033C */  lui        $v1, %hi(D_801E1798)
/* AC614 800BBE14 07008430 */  andi       $a0, $a0, 7
/* AC618 800BBE18 98176294 */  lhu        $v0, %lo(D_801E1798)($v1)
/* AC61C 800BBE1C 40210400 */  sll        $a0, $a0, 5
/* AC620 800BBE20 1FFF4230 */  andi       $v0, $v0, 0xff1f
/* AC624 800BBE24 25104400 */  or         $v0, $v0, $a0
/* AC628 800BBE28 981762A4 */  sh         $v0, 0x1798($v1)
/* AC62C 800BBE2C 401F033C */  lui        $v1, 0x1f40
/* AC630 800BBE30 000062A4 */  sh         $v0, ($v1)
/* AC634 800BBE34 0800E003 */  jr         $ra
/* AC638 800BBE38 00000000 */   nop
