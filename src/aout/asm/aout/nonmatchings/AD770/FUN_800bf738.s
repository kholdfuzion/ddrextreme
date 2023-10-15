.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf738
/* AFF38 800BF738 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AFF3C 800BF73C 1400BFAF */  sw         $ra, 0x14($sp)
/* AFF40 800BF740 1000B0AF */  sw         $s0, 0x10($sp)
/* AFF44 800BF744 641F043C */  lui        $a0, 0x1f64
/* AFF48 800BF748 AA008434 */  ori        $a0, $a0, 0xaa
/* AFF4C 800BF74C 00100224 */  addiu      $v0, $zero, 0x1000
/* AFF50 800BF750 000082A4 */  sh         $v0, ($a0)
/* AFF54 800BF754 1F80053C */  lui        $a1, %hi(D_801F7082)
/* AFF58 800BF758 30570224 */  addiu      $v0, $zero, 0x5730
/* AFF5C 800BF75C 1F80033C */  lui        $v1, %hi(D_801F7080)
/* AFF60 800BF760 000080A4 */  sh         $zero, ($a0)
/* AFF64 800BF764 8270A2A4 */  sh         $v0, %lo(D_801F7082)($a1)
/* AFF68 800BF768 807062A4 */  sh         $v0, %lo(D_801F7080)($v1)
/* AFF6C 800BF76C CD6B000C */  jal        VSync
/* AFF70 800BF770 01000424 */   addiu     $a0, $zero, 1
/* AFF74 800BF774 E1FD0208 */  j          .L800BF784
/* AFF78 800BF778 FFFF5030 */   andi      $s0, $v0, 0xffff
.L800BF77C:
/* AFF7C 800BF77C 4A70000C */  jal        FUN_8001c128
/* AFF80 800BF780 00000000 */   nop
.L800BF784:
/* AFF84 800BF784 CD6B000C */  jal        VSync
/* AFF88 800BF788 01000424 */   addiu     $a0, $zero, 1
/* AFF8C 800BF78C 23105000 */  subu       $v0, $v0, $s0
/* AFF90 800BF790 FFFF4230 */  andi       $v0, $v0, 0xffff
/* AFF94 800BF794 0F00422C */  sltiu      $v0, $v0, 0xf
/* AFF98 800BF798 F8FF4014 */  bnez       $v0, .L800BF77C
/* AFF9C 800BF79C 641F033C */   lui       $v1, 0x1f64
/* AFFA0 800BF7A0 AA006334 */  ori        $v1, $v1, 0xaa
/* AFFA4 800BF7A4 00100224 */  addiu      $v0, $zero, 0x1000
/* AFFA8 800BF7A8 000062A4 */  sh         $v0, ($v1)
/* AFFAC 800BF7AC 1F80023C */  lui        $v0, %hi(D_801F7082)
/* AFFB0 800BF7B0 30570324 */  addiu      $v1, $zero, 0x5730
/* AFFB4 800BF7B4 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* AFFB8 800BF7B8 1F80023C */  lui        $v0, %hi(D_801F7080)
/* AFFBC 800BF7BC 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* AFFC0 800BF7C0 1400BF8F */  lw         $ra, 0x14($sp)
/* AFFC4 800BF7C4 1000B08F */  lw         $s0, 0x10($sp)
/* AFFC8 800BF7C8 0800E003 */  jr         $ra
/* AFFCC 800BF7CC 1800BD27 */   addiu     $sp, $sp, 0x18
