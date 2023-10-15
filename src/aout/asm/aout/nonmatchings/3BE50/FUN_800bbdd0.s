.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bbdd0
/* AC5D0 800BBDD0 01008430 */  andi       $a0, $a0, 1
/* AC5D4 800BBDD4 04008010 */  beqz       $a0, .L800BBDE8
/* AC5D8 800BBDD8 1E80033C */   lui       $v1, %hi(D_801E1798)
/* AC5DC 800BBDDC 98176294 */  lhu        $v0, %lo(D_801E1798)($v1)
/* AC5E0 800BBDE0 7DEF0208 */  j          .L800BBDF4
/* AC5E4 800BBDE4 00014234 */   ori       $v0, $v0, 0x100
.L800BBDE8:
/* AC5E8 800BBDE8 98176294 */  lhu        $v0, 0x1798($v1)
/* AC5EC 800BBDEC 00000000 */  nop
/* AC5F0 800BBDF0 FFFE4230 */  andi       $v0, $v0, 0xfeff
.L800BBDF4:
/* AC5F4 800BBDF4 981762A4 */  sh         $v0, 0x1798($v1)
/* AC5F8 800BBDF8 1E80023C */  lui        $v0, %hi(D_801E1798)
/* AC5FC 800BBDFC 98174394 */  lhu        $v1, %lo(D_801E1798)($v0)
/* AC600 800BBE00 401F023C */  lui        $v0, 0x1f40
/* AC604 800BBE04 000043A4 */  sh         $v1, ($v0)
/* AC608 800BBE08 0800E003 */  jr         $ra
/* AC60C 800BBE0C 00000000 */   nop
