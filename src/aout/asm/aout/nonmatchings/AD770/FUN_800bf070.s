.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf070
/* AF870 800BF070 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AF874 800BF074 2000BFAF */  sw         $ra, 0x20($sp)
/* AF878 800BF078 1C00B1AF */  sw         $s1, 0x1c($sp)
/* AF87C 800BF07C 1800B0AF */  sw         $s0, 0x18($sp)
/* AF880 800BF080 21880000 */  addu       $s1, $zero, $zero
/* AF884 800BF084 641F023C */  lui        $v0, 0x1f64
.L800BF088:
/* AF888 800BF088 F6004234 */  ori        $v0, $v0, 0xf6
/* AF88C 800BF08C 00004294 */  lhu        $v0, ($v0)
/* AF890 800BF090 00000000 */  nop
/* AF894 800BF094 1000A2A7 */  sh         $v0, 0x10($sp)
/* AF898 800BF098 1000A297 */  lhu        $v0, 0x10($sp)
/* AF89C 800BF09C 00000000 */  nop
/* AF8A0 800BF0A0 00204230 */  andi       $v0, $v0, 0x2000
/* AF8A4 800BF0A4 06004010 */  beqz       $v0, .L800BF0C0
/* AF8A8 800BF0A8 00000000 */   nop
/* AF8AC 800BF0AC 1000A297 */  lhu        $v0, 0x10($sp)
/* AF8B0 800BF0B0 00000000 */  nop
/* AF8B4 800BF0B4 00104230 */  andi       $v0, $v0, 0x1000
/* AF8B8 800BF0B8 14004014 */  bnez       $v0, .L800BF10C
/* AF8BC 800BF0BC 21100000 */   addu      $v0, $zero, $zero
.L800BF0C0:
/* AF8C0 800BF0C0 CD6B000C */  jal        VSync
/* AF8C4 800BF0C4 01000424 */   addiu     $a0, $zero, 1
/* AF8C8 800BF0C8 36FC0208 */  j          .L800BF0D8
/* AF8CC 800BF0CC FFFF5030 */   andi      $s0, $v0, 0xffff
.L800BF0D0:
/* AF8D0 800BF0D0 4A70000C */  jal        FUN_8001c128
/* AF8D4 800BF0D4 00000000 */   nop
.L800BF0D8:
/* AF8D8 800BF0D8 CD6B000C */  jal        VSync
/* AF8DC 800BF0DC 01000424 */   addiu     $a0, $zero, 1
/* AF8E0 800BF0E0 23105000 */  subu       $v0, $v0, $s0
/* AF8E4 800BF0E4 FFFF4230 */  andi       $v0, $v0, 0xffff
/* AF8E8 800BF0E8 0F00422C */  sltiu      $v0, $v0, 0xf
/* AF8EC 800BF0EC F8FF4014 */  bnez       $v0, .L800BF0D0
/* AF8F0 800BF0F0 00000000 */   nop
/* AF8F4 800BF0F4 4A70000C */  jal        FUN_8001c128
/* AF8F8 800BF0F8 01003126 */   addiu     $s1, $s1, 1
/* AF8FC 800BF0FC 0F00222A */  slti       $v0, $s1, 0xf
/* AF900 800BF100 E1FF4014 */  bnez       $v0, .L800BF088
/* AF904 800BF104 641F023C */   lui       $v0, 0x1f64
/* AF908 800BF108 FFFF0224 */  addiu      $v0, $zero, -1
.L800BF10C:
/* AF90C 800BF10C 2000BF8F */  lw         $ra, 0x20($sp)
/* AF910 800BF110 1C00B18F */  lw         $s1, 0x1c($sp)
/* AF914 800BF114 1800B08F */  lw         $s0, 0x18($sp)
/* AF918 800BF118 0800E003 */  jr         $ra
/* AF91C 800BF11C 2800BD27 */   addiu     $sp, $sp, 0x28
