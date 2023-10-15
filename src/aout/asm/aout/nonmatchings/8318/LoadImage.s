.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LoadImage
/* 8E0C 8001860C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8E10 80018610 1000B0AF */  sw         $s0, 0x10($sp)
/* 8E14 80018614 21808000 */  addu       $s0, $a0, $zero
/* 8E18 80018618 1400B1AF */  sw         $s1, 0x14($sp)
/* 8E1C 8001861C 2188A000 */  addu       $s1, $a1, $zero
/* 8E20 80018620 0180043C */  lui        $a0, %hi(D_800101CC)
/* 8E24 80018624 CC018424 */  addiu      $a0, $a0, %lo(D_800101CC)
/* 8E28 80018628 1800BFAF */  sw         $ra, 0x18($sp)
/* 8E2C 8001862C F260000C */  jal        SYS_OBJ_3E4
/* 8E30 80018630 21280002 */   addu      $a1, $s0, $zero
/* 8E34 80018634 21280002 */  addu       $a1, $s0, $zero
/* 8E38 80018638 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 8E3C 8001863C 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 8E40 80018640 08000624 */  addiu      $a2, $zero, 8
/* 8E44 80018644 2000448C */  lw         $a0, 0x20($v0)
/* 8E48 80018648 0800428C */  lw         $v0, 8($v0)
/* 8E4C 8001864C 00000000 */  nop
/* 8E50 80018650 09F84000 */  jalr       $v0
/* 8E54 80018654 21382002 */   addu      $a3, $s1, $zero
/* 8E58 80018658 1800BF8F */  lw         $ra, 0x18($sp)
/* 8E5C 8001865C 1400B18F */  lw         $s1, 0x14($sp)
/* 8E60 80018660 1000B08F */  lw         $s0, 0x10($sp)
/* 8E64 80018664 0800E003 */  jr         $ra
/* 8E68 80018668 2000BD27 */   addiu     $sp, $sp, 0x20
