.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BBE68
/* AC668 800BBE68 1E80033C */  lui        $v1, %hi(D_801E1798)
/* AC66C 800BBE6C 98176294 */  lhu        $v0, %lo(D_801E1798)($v1)
/* AC670 800BBE70 07008430 */  andi       $a0, $a0, 7
/* AC674 800BBE74 F8FF4230 */  andi       $v0, $v0, 0xfff8
/* AC678 800BBE78 25104400 */  or         $v0, $v0, $a0
/* AC67C 800BBE7C 981762A4 */  sh         $v0, 0x1798($v1)
/* AC680 800BBE80 401F033C */  lui        $v1, 0x1f40
/* AC684 800BBE84 000062A4 */  sh         $v0, ($v1)
/* AC688 800BBE88 0800E003 */  jr         $ra
/* AC68C 800BBE8C 00000000 */   nop
