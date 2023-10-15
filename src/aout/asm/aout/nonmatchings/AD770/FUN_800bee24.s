.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bee24
/* AF624 800BEE24 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AF628 800BEE28 1400BFAF */  sw         $ra, 0x14($sp)
/* AF62C 800BEE2C 1000B0AF */  sw         $s0, 0x10($sp)
/* AF630 800BEE30 641F043C */  lui        $a0, 0x1f64
/* AF634 800BEE34 E8008434 */  ori        $a0, $a0, 0xe8
/* AF638 800BEE38 00F00234 */  ori        $v0, $zero, 0xf000
/* AF63C 800BEE3C 000082A4 */  sh         $v0, ($a0)
/* AF640 800BEE40 1F80053C */  lui        $a1, %hi(D_801F7082)
/* AF644 800BEE44 30570224 */  addiu      $v0, $zero, 0x5730
/* AF648 800BEE48 1F80033C */  lui        $v1, %hi(D_801F7080)
/* AF64C 800BEE4C 000080A4 */  sh         $zero, ($a0)
/* AF650 800BEE50 8270A2A4 */  sh         $v0, %lo(D_801F7082)($a1)
/* AF654 800BEE54 807062A4 */  sh         $v0, %lo(D_801F7080)($v1)
/* AF658 800BEE58 CD6B000C */  jal        VSync
/* AF65C 800BEE5C 01000424 */   addiu     $a0, $zero, 1
/* AF660 800BEE60 9CFB0208 */  j          .L800BEE70
/* AF664 800BEE64 FFFF5030 */   andi      $s0, $v0, 0xffff
.L800BEE68:
/* AF668 800BEE68 4A70000C */  jal        FUN_8001c128
/* AF66C 800BEE6C 00000000 */   nop
.L800BEE70:
/* AF670 800BEE70 CD6B000C */  jal        VSync
/* AF674 800BEE74 01000424 */   addiu     $a0, $zero, 1
/* AF678 800BEE78 23105000 */  subu       $v0, $v0, $s0
/* AF67C 800BEE7C FFFF4230 */  andi       $v0, $v0, 0xffff
/* AF680 800BEE80 0F00422C */  sltiu      $v0, $v0, 0xf
/* AF684 800BEE84 F8FF4014 */  bnez       $v0, .L800BEE68
/* AF688 800BEE88 641F033C */   lui       $v1, 0x1f64
/* AF68C 800BEE8C E8006334 */  ori        $v1, $v1, 0xe8
/* AF690 800BEE90 00F00234 */  ori        $v0, $zero, 0xf000
/* AF694 800BEE94 000062A4 */  sh         $v0, ($v1)
/* AF698 800BEE98 1F80023C */  lui        $v0, %hi(D_801F7082)
/* AF69C 800BEE9C 30570324 */  addiu      $v1, $zero, 0x5730
/* AF6A0 800BEEA0 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* AF6A4 800BEEA4 1F80023C */  lui        $v0, %hi(D_801F7080)
/* AF6A8 800BEEA8 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* AF6AC 800BEEAC CD6B000C */  jal        VSync
/* AF6B0 800BEEB0 01000424 */   addiu     $a0, $zero, 1
/* AF6B4 800BEEB4 B1FB0208 */  j          .L800BEEC4
/* AF6B8 800BEEB8 FFFF5030 */   andi      $s0, $v0, 0xffff
.L800BEEBC:
/* AF6BC 800BEEBC 4A70000C */  jal        FUN_8001c128
/* AF6C0 800BEEC0 00000000 */   nop
.L800BEEC4:
/* AF6C4 800BEEC4 CD6B000C */  jal        VSync
/* AF6C8 800BEEC8 01000424 */   addiu     $a0, $zero, 1
/* AF6CC 800BEECC 23105000 */  subu       $v0, $v0, $s0
/* AF6D0 800BEED0 FFFF4230 */  andi       $v0, $v0, 0xffff
/* AF6D4 800BEED4 0F00422C */  sltiu      $v0, $v0, 0xf
/* AF6D8 800BEED8 F8FF4014 */  bnez       $v0, .L800BEEBC
/* AF6DC 800BEEDC 21100000 */   addu      $v0, $zero, $zero
/* AF6E0 800BEEE0 1400BF8F */  lw         $ra, 0x14($sp)
/* AF6E4 800BEEE4 1000B08F */  lw         $s0, 0x10($sp)
/* AF6E8 800BEEE8 0800E003 */  jr         $ra
/* AF6EC 800BEEEC 1800BD27 */   addiu     $sp, $sp, 0x18
