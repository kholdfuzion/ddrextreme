.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be850
/* AF050 800BE850 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AF054 800BE854 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AF058 800BE858 21988000 */  addu       $s3, $a0, $zero
/* AF05C 800BE85C 1000B0AF */  sw         $s0, 0x10($sp)
/* AF060 800BE860 FEFF1024 */  addiu      $s0, $zero, -2
/* AF064 800BE864 01000424 */  addiu      $a0, $zero, 1
/* AF068 800BE868 1800B2AF */  sw         $s2, 0x18($sp)
/* AF06C 800BE86C 2190C000 */  addu       $s2, $a2, $zero
/* AF070 800BE870 1400B1AF */  sw         $s1, 0x14($sp)
/* AF074 800BE874 2188A000 */  addu       $s1, $a1, $zero
/* AF078 800BE878 2400BFAF */  sw         $ra, 0x24($sp)
/* AF07C 800BE87C CD6B000C */  jal        VSync
/* AF080 800BE880 2000B4AF */   sw        $s4, 0x20($sp)
/* AF084 800BE884 21A04000 */  addu       $s4, $v0, $zero
.L800BE888:
/* AF088 800BE888 CD6B000C */  jal        VSync
/* AF08C 800BE88C 01000424 */   addiu     $a0, $zero, 1
/* AF090 800BE890 00006396 */  lhu        $v1, ($s3)
/* AF094 800BE894 23205400 */  subu       $a0, $v0, $s4
/* AF098 800BE898 FFFF6330 */  andi       $v1, $v1, 0xffff
/* AF09C 800BE89C 26107100 */  xor        $v0, $v1, $s1
/* AF0A0 800BE8A0 80004230 */  andi       $v0, $v0, 0x80
/* AF0A4 800BE8A4 09004010 */  beqz       $v0, .L800BE8CC
/* AF0A8 800BE8A8 20006230 */   andi      $v0, $v1, 0x20
/* AF0AC 800BE8AC 09004010 */  beqz       $v0, .L800BE8D4
/* AF0B0 800BE8B0 00000000 */   nop
/* AF0B4 800BE8B4 00006296 */  lhu        $v0, ($s3)
/* AF0B8 800BE8B8 00000000 */  nop
/* AF0BC 800BE8BC 26102202 */  xor        $v0, $s1, $v0
/* AF0C0 800BE8C0 80004230 */  andi       $v0, $v0, 0x80
/* AF0C4 800BE8C4 08004014 */  bnez       $v0, .L800BE8E8
/* AF0C8 800BE8C8 FFFF1024 */   addiu     $s0, $zero, -1
.L800BE8CC:
/* AF0CC 800BE8CC 3AFA0208 */  j          .L800BE8E8
/* AF0D0 800BE8D0 21800000 */   addu      $s0, $zero, $zero
.L800BE8D4:
/* AF0D4 800BE8D4 04004012 */  beqz       $s2, .L800BE8E8
/* AF0D8 800BE8D8 FFFF8230 */   andi      $v0, $a0, 0xffff
/* AF0DC 800BE8DC 2A105200 */  slt        $v0, $v0, $s2
/* AF0E0 800BE8E0 E9FF4014 */  bnez       $v0, .L800BE888
/* AF0E4 800BE8E4 00000000 */   nop
.L800BE8E8:
/* AF0E8 800BE8E8 1F80053C */  lui        $a1, %hi(D_801F6FF0)
/* AF0EC 800BE8EC F06FA28C */  lw         $v0, %lo(D_801F6FF0)($a1)
/* AF0F0 800BE8F0 FFFF8330 */  andi       $v1, $a0, 0xffff
/* AF0F4 800BE8F4 2A104300 */  slt        $v0, $v0, $v1
/* AF0F8 800BE8F8 02004010 */  beqz       $v0, .L800BE904
/* AF0FC 800BE8FC 21100002 */   addu      $v0, $s0, $zero
/* AF100 800BE900 F06FA3AC */  sw         $v1, 0x6ff0($a1)
.L800BE904:
/* AF104 800BE904 2400BF8F */  lw         $ra, 0x24($sp)
/* AF108 800BE908 2000B48F */  lw         $s4, 0x20($sp)
/* AF10C 800BE90C 1C00B38F */  lw         $s3, 0x1c($sp)
/* AF110 800BE910 1800B28F */  lw         $s2, 0x18($sp)
/* AF114 800BE914 1400B18F */  lw         $s1, 0x14($sp)
/* AF118 800BE918 1000B08F */  lw         $s0, 0x10($sp)
/* AF11C 800BE91C 0800E003 */  jr         $ra
/* AF120 800BE920 2800BD27 */   addiu     $sp, $sp, 0x28
