.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a75d0
/* 97DD0 800A75D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97DD4 800A75D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 97DD8 800A75D8 21808000 */  addu       $s0, $a0, $zero
/* 97DDC 800A75DC 03000332 */  andi       $v1, $s0, 3
/* 97DE0 800A75E0 01000224 */  addiu      $v0, $zero, 1
/* 97DE4 800A75E4 12006210 */  beq        $v1, $v0, .L800A7630
/* 97DE8 800A75E8 1400BFAF */   sw        $ra, 0x14($sp)
/* 97DEC 800A75EC 02006228 */  slti       $v0, $v1, 2
/* 97DF0 800A75F0 05004010 */  beqz       $v0, .L800A7608
/* 97DF4 800A75F4 02000224 */   addiu     $v0, $zero, 2
/* 97DF8 800A75F8 09006010 */  beqz       $v1, .L800A7620
/* 97DFC 800A75FC 01000224 */   addiu     $v0, $zero, 1
/* 97E00 800A7600 989D0208 */  j          .L800A7660
/* 97E04 800A7604 00000000 */   nop
.L800A7608:
/* 97E08 800A7608 0D006210 */  beq        $v1, $v0, .L800A7640
/* 97E0C 800A760C 03000224 */   addiu     $v0, $zero, 3
/* 97E10 800A7610 0F006210 */  beq        $v1, $v0, .L800A7650
/* 97E14 800A7614 03000332 */   andi      $v1, $s0, 3
/* 97E18 800A7618 989D0208 */  j          .L800A7660
/* 97E1C 800A761C 01000224 */   addiu     $v0, $zero, 1
.L800A7620:
/* 97E20 800A7620 949A020C */  jal        FUN_800a6a50
/* 97E24 800A7624 08000424 */   addiu     $a0, $zero, 8
/* 97E28 800A7628 979D0208 */  j          .L800A765C
/* 97E2C 800A762C 03000332 */   andi      $v1, $s0, 3
.L800A7630:
/* 97E30 800A7630 949A020C */  jal        FUN_800a6a50
/* 97E34 800A7634 0B000424 */   addiu     $a0, $zero, 0xb
/* 97E38 800A7638 979D0208 */  j          .L800A765C
/* 97E3C 800A763C 03000332 */   andi      $v1, $s0, 3
.L800A7640:
/* 97E40 800A7640 949A020C */  jal        FUN_800a6a50
/* 97E44 800A7644 09000424 */   addiu     $a0, $zero, 9
/* 97E48 800A7648 979D0208 */  j          .L800A765C
/* 97E4C 800A764C 03000332 */   andi      $v1, $s0, 3
.L800A7650:
/* 97E50 800A7650 949A020C */  jal        FUN_800a6a50
/* 97E54 800A7654 0C000424 */   addiu     $a0, $zero, 0xc
/* 97E58 800A7658 03000332 */  andi       $v1, $s0, 3
.L800A765C:
/* 97E5C 800A765C 01000224 */  addiu      $v0, $zero, 1
.L800A7660:
/* 97E60 800A7660 13006210 */  beq        $v1, $v0, .L800A76B0
/* 97E64 800A7664 02006228 */   slti      $v0, $v1, 2
/* 97E68 800A7668 05004010 */  beqz       $v0, .L800A7680
/* 97E6C 800A766C 02000224 */   addiu     $v0, $zero, 2
/* 97E70 800A7670 09006010 */  beqz       $v1, .L800A7698
/* 97E74 800A7674 01000232 */   andi      $v0, $s0, 1
/* 97E78 800A7678 BD9D0208 */  j          .L800A76F4
/* 97E7C 800A767C 00000000 */   nop
.L800A7680:
/* 97E80 800A7680 11006210 */  beq        $v1, $v0, .L800A76C8
/* 97E84 800A7684 03000224 */   addiu     $v0, $zero, 3
/* 97E88 800A7688 15006210 */  beq        $v1, $v0, .L800A76E0
/* 97E8C 800A768C 01000232 */   andi      $v0, $s0, 1
/* 97E90 800A7690 BD9D0208 */  j          .L800A76F4
/* 97E94 800A7694 00000000 */   nop
.L800A7698:
/* 97E98 800A7698 949A020C */  jal        FUN_800a6a50
/* 97E9C 800A769C 21200000 */   addu      $a0, $zero, $zero
/* 97EA0 800A76A0 949A020C */  jal        FUN_800a6a50
/* 97EA4 800A76A4 04000424 */   addiu     $a0, $zero, 4
/* 97EA8 800A76A8 BD9D0208 */  j          .L800A76F4
/* 97EAC 800A76AC 01000232 */   andi      $v0, $s0, 1
.L800A76B0:
/* 97EB0 800A76B0 949A020C */  jal        FUN_800a6a50
/* 97EB4 800A76B4 02000424 */   addiu     $a0, $zero, 2
/* 97EB8 800A76B8 949A020C */  jal        FUN_800a6a50
/* 97EBC 800A76BC 07000424 */   addiu     $a0, $zero, 7
/* 97EC0 800A76C0 BD9D0208 */  j          .L800A76F4
/* 97EC4 800A76C4 01000232 */   andi      $v0, $s0, 1
.L800A76C8:
/* 97EC8 800A76C8 949A020C */  jal        FUN_800a6a50
/* 97ECC 800A76CC 01000424 */   addiu     $a0, $zero, 1
/* 97ED0 800A76D0 949A020C */  jal        FUN_800a6a50
/* 97ED4 800A76D4 05000424 */   addiu     $a0, $zero, 5
/* 97ED8 800A76D8 BD9D0208 */  j          .L800A76F4
/* 97EDC 800A76DC 01000232 */   andi      $v0, $s0, 1
.L800A76E0:
/* 97EE0 800A76E0 949A020C */  jal        FUN_800a6a50
/* 97EE4 800A76E4 03000424 */   addiu     $a0, $zero, 3
/* 97EE8 800A76E8 949A020C */  jal        FUN_800a6a50
/* 97EEC 800A76EC 06000424 */   addiu     $a0, $zero, 6
/* 97EF0 800A76F0 01000232 */  andi       $v0, $s0, 1
.L800A76F4:
/* 97EF4 800A76F4 03004010 */  beqz       $v0, .L800A7704
/* 97EF8 800A76F8 00000000 */   nop
/* 97EFC 800A76FC 949A020C */  jal        FUN_800a6a50
/* 97F00 800A7700 10000424 */   addiu     $a0, $zero, 0x10
.L800A7704:
/* 97F04 800A7704 1400BF8F */  lw         $ra, 0x14($sp)
/* 97F08 800A7708 1000B08F */  lw         $s0, 0x10($sp)
/* 97F0C 800A770C 0800E003 */  jr         $ra
/* 97F10 800A7710 1800BD27 */   addiu     $sp, $sp, 0x18
