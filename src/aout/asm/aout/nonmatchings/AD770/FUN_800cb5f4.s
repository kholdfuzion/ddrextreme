.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb5f4
/* BBDF4 800CB5F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BBDF8 800CB5F8 0F80033C */  lui        $v1, %hi(jtbl_800EE664)
/* BBDFC 800CB5FC 0F80023C */  lui        $v0, %hi(D_800EE6F4)
/* BBE00 800CB600 F4E6468C */  lw         $a2, %lo(D_800EE6F4)($v0)
/* BBE04 800CB604 64E66324 */  addiu      $v1, $v1, %lo(jtbl_800EE664)
/* BBE08 800CB608 1000BFAF */  sw         $ra, 0x10($sp)
/* BBE0C 800CB60C C0100600 */  sll        $v0, $a2, 3
/* BBE10 800CB610 21104600 */  addu       $v0, $v0, $a2
/* BBE14 800CB614 80100200 */  sll        $v0, $v0, 2
/* BBE18 800CB618 21104300 */  addu       $v0, $v0, $v1
/* BBE1C 800CB61C 1000428C */  lw         $v0, 0x10($v0)
/* BBE20 800CB620 00000000 */  nop
/* BBE24 800CB624 09F84000 */  jalr       $v0
/* BBE28 800CB628 00000000 */   nop
/* BBE2C 800CB62C 1000BF8F */  lw         $ra, 0x10($sp)
/* BBE30 800CB630 00000000 */  nop
/* BBE34 800CB634 0800E003 */  jr         $ra
/* BBE38 800CB638 1800BD27 */   addiu     $sp, $sp, 0x18
