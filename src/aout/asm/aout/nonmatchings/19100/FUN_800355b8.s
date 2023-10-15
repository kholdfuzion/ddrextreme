.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800355b8
/* 25DB8 800355B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 25DBC 800355BC 402C0500 */  sll        $a1, $a1, 0x11
/* 25DC0 800355C0 80260400 */  sll        $a0, $a0, 0x1a
/* 25DC4 800355C4 1400B1AF */  sw         $s1, 0x14($sp)
/* 25DC8 800355C8 2188A400 */  addu       $s1, $a1, $a0
/* 25DCC 800355CC 82261100 */  srl        $a0, $s1, 0x1a
/* 25DD0 800355D0 822D1100 */  srl        $a1, $s1, 0x16
/* 25DD4 800355D4 0F00A530 */  andi       $a1, $a1, 0xf
/* 25DD8 800355D8 21300000 */  addu       $a2, $zero, $zero
/* 25DDC 800355DC 1800BFAF */  sw         $ra, 0x18($sp)
/* 25DE0 800355E0 97F6020C */  jal        flash_library_related_800bda5c
/* 25DE4 800355E4 1000B0AF */   sw        $s0, 0x10($sp)
/* 25DE8 800355E8 07004014 */  bnez       $v0, .L80035608
/* 25DEC 800355EC 3F00103C */   lui       $s0, 0x3f
/* 25DF0 800355F0 0180043C */  lui        $a0, %hi(D_80011E44)
/* 25DF4 800355F4 441E8424 */  addiu      $a0, $a0, %lo(D_80011E44)
/* 25DF8 800355F8 FFFF0524 */  addiu      $a1, $zero, -1
/* 25DFC 800355FC 58AA000C */  jal        error_8002a960
/* 25E00 80035600 21300000 */   addu      $a2, $zero, $zero
/* 25E04 80035604 3F00103C */  lui        $s0, 0x3f
.L80035608:
/* 25E08 80035608 FFFF1036 */  ori        $s0, $s0, 0xffff
/* 25E0C 8003560C 24803002 */  and        $s0, $s1, $s0
/* 25E10 80035610 001F023C */  lui        $v0, 0x1f00
/* 25E14 80035614 21800202 */  addu       $s0, $s0, $v0
/* 25E18 80035618 60F8020C */  jal        FUN_800be180
/* 25E1C 8003561C 21200002 */   addu      $a0, $s0, $zero
/* 25E20 80035620 21100002 */  addu       $v0, $s0, $zero
/* 25E24 80035624 1800BF8F */  lw         $ra, 0x18($sp)
/* 25E28 80035628 1400B18F */  lw         $s1, 0x14($sp)
/* 25E2C 8003562C 1000B08F */  lw         $s0, 0x10($sp)
/* 25E30 80035630 0800E003 */  jr         $ra
/* 25E34 80035634 2000BD27 */   addiu     $sp, $sp, 0x20
