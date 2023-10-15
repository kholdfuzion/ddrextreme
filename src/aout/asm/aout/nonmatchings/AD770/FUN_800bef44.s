.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bef44
/* AF744 800BEF44 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AF748 800BEF48 1C00BFAF */  sw         $ra, 0x1c($sp)
/* AF74C 800BEF4C 1800B2AF */  sw         $s2, 0x18($sp)
/* AF750 800BEF50 1400B1AF */  sw         $s1, 0x14($sp)
/* AF754 800BEF54 1000B0AF */  sw         $s0, 0x10($sp)
/* AF758 800BEF58 21880000 */  addu       $s1, $zero, $zero
/* AF75C 800BEF5C 641F123C */  lui        $s2, 0x1f64
/* AF760 800BEF60 F6005236 */  ori        $s2, $s2, 0xf6
.L800BEF64:
/* AF764 800BEF64 BCFB020C */  jal        FUN_800beef0
/* AF768 800BEF68 00000000 */   nop
/* AF76C 800BEF6C CD6B000C */  jal        VSync
/* AF770 800BEF70 01000424 */   addiu     $a0, $zero, 1
/* AF774 800BEF74 E1FB0208 */  j          .L800BEF84
/* AF778 800BEF78 FFFF5030 */   andi      $s0, $v0, 0xffff
.L800BEF7C:
/* AF77C 800BEF7C 4A70000C */  jal        FUN_8001c128
/* AF780 800BEF80 00000000 */   nop
.L800BEF84:
/* AF784 800BEF84 CD6B000C */  jal        VSync
/* AF788 800BEF88 01000424 */   addiu     $a0, $zero, 1
/* AF78C 800BEF8C 23105000 */  subu       $v0, $v0, $s0
/* AF790 800BEF90 FFFF4230 */  andi       $v0, $v0, 0xffff
/* AF794 800BEF94 2400422C */  sltiu      $v0, $v0, 0x24
/* AF798 800BEF98 F8FF4014 */  bnez       $v0, .L800BEF7C
/* AF79C 800BEF9C 00000000 */   nop
/* AF7A0 800BEFA0 00004296 */  lhu        $v0, ($s2)
/* AF7A4 800BEFA4 00000000 */  nop
/* AF7A8 800BEFA8 00104230 */  andi       $v0, $v0, 0x1000
/* AF7AC 800BEFAC 18004014 */  bnez       $v0, .L800BF010
/* AF7B0 800BEFB0 21100000 */   addu      $v0, $zero, $zero
/* AF7B4 800BEFB4 CD6B000C */  jal        VSync
/* AF7B8 800BEFB8 01000424 */   addiu     $a0, $zero, 1
/* AF7BC 800BEFBC F3FB0208 */  j          .L800BEFCC
/* AF7C0 800BEFC0 FFFF5030 */   andi      $s0, $v0, 0xffff
.L800BEFC4:
/* AF7C4 800BEFC4 4A70000C */  jal        FUN_8001c128
/* AF7C8 800BEFC8 00000000 */   nop
.L800BEFCC:
/* AF7CC 800BEFCC CD6B000C */  jal        VSync
/* AF7D0 800BEFD0 01000424 */   addiu     $a0, $zero, 1
/* AF7D4 800BEFD4 23105000 */  subu       $v0, $v0, $s0
/* AF7D8 800BEFD8 FFFF4230 */  andi       $v0, $v0, 0xffff
/* AF7DC 800BEFDC 2400422C */  sltiu      $v0, $v0, 0x24
/* AF7E0 800BEFE0 F8FF4014 */  bnez       $v0, .L800BEFC4
/* AF7E4 800BEFE4 00000000 */   nop
/* AF7E8 800BEFE8 00004296 */  lhu        $v0, ($s2)
/* AF7EC 800BEFEC 00000000 */  nop
/* AF7F0 800BEFF0 00104230 */  andi       $v0, $v0, 0x1000
/* AF7F4 800BEFF4 06004014 */  bnez       $v0, .L800BF010
/* AF7F8 800BEFF8 21100000 */   addu      $v0, $zero, $zero
/* AF7FC 800BEFFC 4A70000C */  jal        FUN_8001c128
/* AF800 800BF000 01003126 */   addiu     $s1, $s1, 1
/* AF804 800BF004 0300222A */  slti       $v0, $s1, 3
/* AF808 800BF008 D6FF4014 */  bnez       $v0, .L800BEF64
/* AF80C 800BF00C FFFF0224 */   addiu     $v0, $zero, -1
.L800BF010:
/* AF810 800BF010 1C00BF8F */  lw         $ra, 0x1c($sp)
/* AF814 800BF014 1800B28F */  lw         $s2, 0x18($sp)
/* AF818 800BF018 1400B18F */  lw         $s1, 0x14($sp)
/* AF81C 800BF01C 1000B08F */  lw         $s0, 0x10($sp)
/* AF820 800BF020 0800E003 */  jr         $ra
/* AF824 800BF024 2000BD27 */   addiu     $sp, $sp, 0x20
