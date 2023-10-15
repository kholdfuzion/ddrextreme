.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e6d0
/* 6EED0 8007E6D0 0180033C */  lui        $v1, %hi(D_800158E4)
/* 6EED4 8007E6D4 E4586324 */  addiu      $v1, $v1, %lo(D_800158E4)
/* 6EED8 8007E6D8 40100600 */  sll        $v0, $a2, 1
/* 6EEDC 8007E6DC 21104600 */  addu       $v0, $v0, $a2
/* 6EEE0 8007E6E0 21104300 */  addu       $v0, $v0, $v1
/* 6EEE4 8007E6E4 00004390 */  lbu        $v1, ($v0)
/* 6EEE8 8007E6E8 00000000 */  nop
/* 6EEEC 8007E6EC 18006700 */  mult       $v1, $a3
/* 6EEF0 8007E6F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6EEF4 8007E6F4 3400A68F */  lw         $a2, 0x34($sp)
/* 6EEF8 8007E6F8 12380000 */  mflo       $a3
/* 6EEFC 8007E6FC 02004390 */  lbu        $v1, 2($v0)
/* 6EF00 8007E700 00000000 */  nop
/* 6EF04 8007E704 18006600 */  mult       $v1, $a2
/* 6EF08 8007E708 01004290 */  lbu        $v0, 1($v0)
/* 6EF0C 8007E70C 12480000 */  mflo       $t1
/* 6EF10 8007E710 3000A38F */  lw         $v1, 0x30($sp)
/* 6EF14 8007E714 00000000 */  nop
/* 6EF18 8007E718 18004300 */  mult       $v0, $v1
/* 6EF1C 8007E71C 1800BFAF */  sw         $ra, 0x18($sp)
/* 6EF20 8007E720 03320700 */  sra        $a2, $a3, 8
/* 6EF24 8007E724 03120900 */  sra        $v0, $t1, 8
/* 6EF28 8007E728 1000A2AF */  sw         $v0, 0x10($sp)
/* 6EF2C 8007E72C 12180000 */  mflo       $v1
/* 6EF30 8007E730 79B2010C */  jal        FUN_8006c9e4
/* 6EF34 8007E734 033A0300 */   sra       $a3, $v1, 8
/* 6EF38 8007E738 1800BF8F */  lw         $ra, 0x18($sp)
/* 6EF3C 8007E73C 00000000 */  nop
/* 6EF40 8007E740 0800E003 */  jr         $ra
/* 6EF44 8007E744 2000BD27 */   addiu     $sp, $sp, 0x20
