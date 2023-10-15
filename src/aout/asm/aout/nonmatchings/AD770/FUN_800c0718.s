.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0718
/* B0F18 800C0718 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B0F1C 800C071C 2000BFAF */  sw         $ra, 0x20($sp)
/* B0F20 800C0720 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B0F24 800C0724 1800B0AF */  sw         $s0, 0x18($sp)
/* B0F28 800C0728 FF008530 */  andi       $a1, $a0, 0xff
/* B0F2C 800C072C 21200000 */  addu       $a0, $zero, $zero
/* B0F30 800C0730 0901030C */  jal        FUN_800c0424
/* B0F34 800C0734 1000A627 */   addiu     $a2, $sp, 0x10
/* B0F38 800C0738 55FE020C */  jal        FUN_800bf954
/* B0F3C 800C073C 00000000 */   nop
/* B0F40 800C0740 5AFF020C */  jal        FUN_800bfd68
/* B0F44 800C0744 3A000424 */   addiu     $a0, $zero, 0x3a
/* B0F48 800C0748 E0FF020C */  jal        FUN_800bff80
/* B0F4C 800C074C 00000000 */   nop
/* B0F50 800C0750 07004014 */  bnez       $v0, .L800C0770
/* B0F54 800C0754 00000000 */   nop
/* B0F58 800C0758 5AFF020C */  jal        FUN_800bfd68
/* B0F5C 800C075C 68000424 */   addiu     $a0, $zero, 0x68
/* B0F60 800C0760 E0FF020C */  jal        FUN_800bff80
/* B0F64 800C0764 00000000 */   nop
/* B0F68 800C0768 05004010 */  beqz       $v0, .L800C0780
/* B0F6C 800C076C 21800000 */   addu      $s0, $zero, $zero
.L800C0770:
/* B0F70 800C0770 A7FE020C */  jal        FUN_800bfa9c
/* B0F74 800C0774 00000000 */   nop
/* B0F78 800C0778 EF010308 */  j          .L800C07BC
/* B0F7C 800C077C 01000224 */   addiu     $v0, $zero, 1
.L800C0780:
/* B0F80 800C0780 1000B127 */  addiu      $s1, $sp, 0x10
/* B0F84 800C0784 21103002 */  addu       $v0, $s1, $s0
.L800C0788:
/* B0F88 800C0788 00004490 */  lbu        $a0, ($v0)
/* B0F8C 800C078C 5AFF020C */  jal        FUN_800bfd68
/* B0F90 800C0790 00000000 */   nop
/* B0F94 800C0794 E0FF020C */  jal        FUN_800bff80
/* B0F98 800C0798 00000000 */   nop
/* B0F9C 800C079C F4FF4014 */  bnez       $v0, .L800C0770
/* B0FA0 800C07A0 01001026 */   addiu     $s0, $s0, 1
/* B0FA4 800C07A4 0200022A */  slti       $v0, $s0, 2
/* B0FA8 800C07A8 F7FF4014 */  bnez       $v0, .L800C0788
/* B0FAC 800C07AC 21103002 */   addu      $v0, $s1, $s0
/* B0FB0 800C07B0 A7FE020C */  jal        FUN_800bfa9c
/* B0FB4 800C07B4 00000000 */   nop
/* B0FB8 800C07B8 21100000 */  addu       $v0, $zero, $zero
.L800C07BC:
/* B0FBC 800C07BC 2000BF8F */  lw         $ra, 0x20($sp)
/* B0FC0 800C07C0 1C00B18F */  lw         $s1, 0x1c($sp)
/* B0FC4 800C07C4 1800B08F */  lw         $s0, 0x18($sp)
/* B0FC8 800C07C8 0800E003 */  jr         $ra
/* B0FCC 800C07CC 2800BD27 */   addiu     $sp, $sp, 0x28
