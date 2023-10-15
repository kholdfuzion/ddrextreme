.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c259c
/* B2D9C 800C259C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B2DA0 800C25A0 1F80053C */  lui        $a1, %hi(D_801F71C0)
/* B2DA4 800C25A4 1400B1AF */  sw         $s1, 0x14($sp)
/* B2DA8 800C25A8 C071B124 */  addiu      $s1, $a1, %lo(D_801F71C0)
/* B2DAC 800C25AC 1800BFAF */  sw         $ra, 0x18($sp)
/* B2DB0 800C25B0 1000B0AF */  sw         $s0, 0x10($sp)
/* B2DB4 800C25B4 0F012392 */  lbu        $v1, 0x10f($s1)
/* B2DB8 800C25B8 01000224 */  addiu      $v0, $zero, 1
/* B2DBC 800C25BC 0C006210 */  beq        $v1, $v0, .L800C25F0
/* B2DC0 800C25C0 02006228 */   slti      $v0, $v1, 2
/* B2DC4 800C25C4 05004010 */  beqz       $v0, .L800C25DC
/* B2DC8 800C25C8 00000000 */   nop
/* B2DCC 800C25CC 0A006010 */  beqz       $v1, .L800C25F8
/* B2DD0 800C25D0 00000000 */   nop
/* B2DD4 800C25D4 A0090308 */  j          .L800C2680
/* B2DD8 800C25D8 00000000 */   nop
.L800C25DC:
/* B2DDC 800C25DC 02000224 */  addiu      $v0, $zero, 2
/* B2DE0 800C25E0 09006210 */  beq        $v1, $v0, .L800C2608
/* B2DE4 800C25E4 01000424 */   addiu     $a0, $zero, 1
/* B2DE8 800C25E8 A0090308 */  j          .L800C2680
/* B2DEC 800C25EC 00000000 */   nop
.L800C25F0:
/* B2DF0 800C25F0 B806030C */  jal        FUN_800c1ae0
/* B2DF4 800C25F4 00000000 */   nop
.L800C25F8:
/* B2DF8 800C25F8 9107030C */  jal        FUN_800c1e44
/* B2DFC 800C25FC 00000000 */   nop
/* B2E00 800C2600 A0090308 */  j          .L800C2680
/* B2E04 800C2604 00000000 */   nop
.L800C2608:
/* B2E08 800C2608 0E012392 */  lbu        $v1, 0x10e($s1)
/* B2E0C 800C260C 00000000 */  nop
/* B2E10 800C2610 04108300 */  sllv       $v0, $v1, $a0
/* B2E14 800C2614 21104300 */  addu       $v0, $v0, $v1
/* B2E18 800C2618 00190200 */  sll        $v1, $v0, 4
/* B2E1C 800C261C 23186200 */  subu       $v1, $v1, $v0
/* B2E20 800C2620 C071A28C */  lw         $v0, 0x71c0($a1)
/* B2E24 800C2624 80180300 */  sll        $v1, $v1, 2
/* B2E28 800C2628 7E05030C */  jal        FUN_800c15f8
/* B2E2C 800C262C 21804300 */   addu      $s0, $v0, $v1
/* B2E30 800C2630 21184000 */  addu       $v1, $v0, $zero
/* B2E34 800C2634 FBFF0224 */  addiu      $v0, $zero, -5
/* B2E38 800C2638 11006210 */  beq        $v1, $v0, .L800C2680
/* B2E3C 800C263C 00000000 */   nop
/* B2E40 800C2640 09006014 */  bnez       $v1, .L800C2668
/* B2E44 800C2644 0F0120A2 */   sb        $zero, 0x10f($s1)
/* B2E48 800C2648 08000426 */  addiu      $a0, $s0, 8
/* B2E4C 800C264C 0800058E */  lw         $a1, 8($s0)
/* B2E50 800C2650 1F0A030C */  jal        FUN_800c287c
/* B2E54 800C2654 FFFF0624 */   addiu     $a2, $zero, -1
/* B2E58 800C2658 6D0A030C */  jal        FUN_800c29b4
/* B2E5C 800C265C 21200002 */   addu      $a0, $s0, $zero
/* B2E60 800C2660 A0090308 */  j          .L800C2680
/* B2E64 800C2664 00000000 */   nop
.L800C2668:
/* B2E68 800C2668 08000426 */  addiu      $a0, $s0, 8
/* B2E6C 800C266C 0800058E */  lw         $a1, 8($s0)
/* B2E70 800C2670 1F0A030C */  jal        FUN_800c287c
/* B2E74 800C2674 F7FF0624 */   addiu     $a2, $zero, -9
/* B2E78 800C2678 690A030C */  jal        FUN_800c29a4
/* B2E7C 800C267C 00000000 */   nop
.L800C2680:
/* B2E80 800C2680 1800BF8F */  lw         $ra, 0x18($sp)
/* B2E84 800C2684 1400B18F */  lw         $s1, 0x14($sp)
/* B2E88 800C2688 1000B08F */  lw         $s0, 0x10($sp)
/* B2E8C 800C268C 0800E003 */  jr         $ra
/* B2E90 800C2690 2000BD27 */   addiu     $sp, $sp, 0x20
