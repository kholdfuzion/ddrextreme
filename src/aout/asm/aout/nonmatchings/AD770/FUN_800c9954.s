.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9954
/* BA154 800C9954 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BA158 800C9958 0F80023C */  lui        $v0, %hi(D_800EE620)
/* BA15C 800C995C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA160 800C9960 20E65324 */  addiu      $s3, $v0, %lo(D_800EE620)
/* BA164 800C9964 21206002 */  addu       $a0, $s3, $zero
/* BA168 800C9968 2800BFAF */  sw         $ra, 0x28($sp)
/* BA16C 800C996C 2400B5AF */  sw         $s5, 0x24($sp)
/* BA170 800C9970 2000B4AF */  sw         $s4, 0x20($sp)
/* BA174 800C9974 1800B2AF */  sw         $s2, 0x18($sp)
/* BA178 800C9978 1400B1AF */  sw         $s1, 0x14($sp)
/* BA17C 800C997C 7E81000C */  jal        strlen
/* BA180 800C9980 1000B0AF */   sw        $s0, 0x10($sp)
/* BA184 800C9984 21800000 */  addu       $s0, $zero, $zero
/* BA188 800C9988 1F80043C */  lui        $a0, %hi(D_801F71C0)
/* BA18C 800C998C C0718524 */  addiu      $a1, $a0, %lo(D_801F71C0)
/* BA190 800C9990 0D01A390 */  lbu        $v1, 0x10d($a1)
/* BA194 800C9994 00000000 */  nop
/* BA198 800C9998 11006010 */  beqz       $v1, .L800C99E0
/* BA19C 800C999C 21904000 */   addu      $s2, $v0, $zero
/* BA1A0 800C99A0 21A88000 */  addu       $s5, $a0, $zero
/* BA1A4 800C99A4 21A0A000 */  addu       $s4, $a1, $zero
/* BA1A8 800C99A8 21880002 */  addu       $s1, $s0, $zero
.L800C99AC:
/* BA1AC 800C99AC C071A48E */  lw         $a0, 0x71c0($s5)
/* BA1B0 800C99B0 21286002 */  addu       $a1, $s3, $zero
/* BA1B4 800C99B4 21304002 */  addu       $a2, $s2, $zero
/* BA1B8 800C99B8 21209100 */  addu       $a0, $a0, $s1
/* BA1BC 800C99BC 35BB000C */  jal        strncmp
/* BA1C0 800C99C0 10008424 */   addiu     $a0, $a0, 0x10
/* BA1C4 800C99C4 07004010 */  beqz       $v0, .L800C99E4
/* BA1C8 800C99C8 01000226 */   addiu     $v0, $s0, 1
/* BA1CC 800C99CC 0D018292 */  lbu        $v0, 0x10d($s4)
/* BA1D0 800C99D0 01001026 */  addiu      $s0, $s0, 1
/* BA1D4 800C99D4 2A100202 */  slt        $v0, $s0, $v0
/* BA1D8 800C99D8 F4FF4014 */  bnez       $v0, .L800C99AC
/* BA1DC 800C99DC B4003126 */   addiu     $s1, $s1, 0xb4
.L800C99E0:
/* BA1E0 800C99E0 21100000 */  addu       $v0, $zero, $zero
.L800C99E4:
/* BA1E4 800C99E4 2800BF8F */  lw         $ra, 0x28($sp)
/* BA1E8 800C99E8 2400B58F */  lw         $s5, 0x24($sp)
/* BA1EC 800C99EC 2000B48F */  lw         $s4, 0x20($sp)
/* BA1F0 800C99F0 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA1F4 800C99F4 1800B28F */  lw         $s2, 0x18($sp)
/* BA1F8 800C99F8 1400B18F */  lw         $s1, 0x14($sp)
/* BA1FC 800C99FC 1000B08F */  lw         $s0, 0x10($sp)
/* BA200 800C9A00 0800E003 */  jr         $ra
/* BA204 800C9A04 3000BD27 */   addiu     $sp, $sp, 0x30
