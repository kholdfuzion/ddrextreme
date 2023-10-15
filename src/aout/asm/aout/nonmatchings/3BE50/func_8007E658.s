.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8007E658
/* 6EE58 8007E658 0180033C */  lui        $v1, %hi(D_800158DC)
/* 6EE5C 8007E65C DC586324 */  addiu      $v1, $v1, %lo(D_800158DC)
/* 6EE60 8007E660 40100600 */  sll        $v0, $a2, 1
/* 6EE64 8007E664 21104600 */  addu       $v0, $v0, $a2
/* 6EE68 8007E668 21104300 */  addu       $v0, $v0, $v1
/* 6EE6C 8007E66C 00004390 */  lbu        $v1, ($v0)
/* 6EE70 8007E670 00000000 */  nop
/* 6EE74 8007E674 18006700 */  mult       $v1, $a3
/* 6EE78 8007E678 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6EE7C 8007E67C 3400A68F */  lw         $a2, 0x34($sp)
/* 6EE80 8007E680 12380000 */  mflo       $a3
/* 6EE84 8007E684 02004390 */  lbu        $v1, 2($v0)
/* 6EE88 8007E688 00000000 */  nop
/* 6EE8C 8007E68C 18006600 */  mult       $v1, $a2
/* 6EE90 8007E690 01004290 */  lbu        $v0, 1($v0)
/* 6EE94 8007E694 12480000 */  mflo       $t1
/* 6EE98 8007E698 3000A38F */  lw         $v1, 0x30($sp)
/* 6EE9C 8007E69C 00000000 */  nop
/* 6EEA0 8007E6A0 18004300 */  mult       $v0, $v1
/* 6EEA4 8007E6A4 1800BFAF */  sw         $ra, 0x18($sp)
/* 6EEA8 8007E6A8 03320700 */  sra        $a2, $a3, 8
/* 6EEAC 8007E6AC 03120900 */  sra        $v0, $t1, 8
/* 6EEB0 8007E6B0 1000A2AF */  sw         $v0, 0x10($sp)
/* 6EEB4 8007E6B4 12180000 */  mflo       $v1
/* 6EEB8 8007E6B8 EB6C010C */  jal        FUN_8005b3ac
/* 6EEBC 8007E6BC 033A0300 */   sra       $a3, $v1, 8
/* 6EEC0 8007E6C0 1800BF8F */  lw         $ra, 0x18($sp)
/* 6EEC4 8007E6C4 00000000 */  nop
/* 6EEC8 8007E6C8 0800E003 */  jr         $ra
/* 6EECC 8007E6CC 2000BD27 */   addiu     $sp, $sp, 0x20
