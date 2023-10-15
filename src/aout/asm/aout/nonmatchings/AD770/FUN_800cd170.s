.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd170
/* BD970 800CD170 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BD974 800CD174 2400B5AF */  sw         $s5, 0x24($sp)
/* BD978 800CD178 21A88000 */  addu       $s5, $a0, $zero
/* BD97C 800CD17C 1800B2AF */  sw         $s2, 0x18($sp)
/* BD980 800CD180 2190A000 */  addu       $s2, $a1, $zero
/* BD984 800CD184 1400B1AF */  sw         $s1, 0x14($sp)
/* BD988 800CD188 FEFF1124 */  addiu      $s1, $zero, -2
/* BD98C 800CD18C 01000424 */  addiu      $a0, $zero, 1
/* BD990 800CD190 2800BFAF */  sw         $ra, 0x28($sp)
/* BD994 800CD194 2000B4AF */  sw         $s4, 0x20($sp)
/* BD998 800CD198 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BD99C 800CD19C CD6B000C */  jal        VSync
/* BD9A0 800CD1A0 1000B0AF */   sw        $s0, 0x10($sp)
/* BD9A4 800CD1A4 21984000 */  addu       $s3, $v0, $zero
/* BD9A8 800CD1A8 401F143C */  lui        $s4, 0x1f40
.L800CD1AC:
/* BD9AC 800CD1AC CD6B000C */  jal        VSync
/* BD9B0 800CD1B0 01000424 */   addiu     $a0, $zero, 1
/* BD9B4 800CD1B4 06008396 */  lhu        $v1, 6($s4)
/* BD9B8 800CD1B8 00000000 */  nop
/* BD9BC 800CD1BC 82180300 */  srl        $v1, $v1, 2
/* BD9C0 800CD1C0 01006330 */  andi       $v1, $v1, 1
/* BD9C4 800CD1C4 03007514 */  bne        $v1, $s5, .L800CD1D4
/* BD9C8 800CD1C8 23805300 */   subu      $s0, $v0, $s3
/* BD9CC 800CD1CC 7C340308 */  j          .L800CD1F0
/* BD9D0 800CD1D0 21880000 */   addu      $s1, $zero, $zero
.L800CD1D4:
/* BD9D4 800CD1D4 4A70000C */  jal        FUN_8001c128
/* BD9D8 800CD1D8 00000000 */   nop
/* BD9DC 800CD1DC 04004012 */  beqz       $s2, .L800CD1F0
/* BD9E0 800CD1E0 FFFF0232 */   andi      $v0, $s0, 0xffff
/* BD9E4 800CD1E4 2A105200 */  slt        $v0, $v0, $s2
/* BD9E8 800CD1E8 F0FF4014 */  bnez       $v0, .L800CD1AC
/* BD9EC 800CD1EC 00000000 */   nop
.L800CD1F0:
/* BD9F0 800CD1F0 21102002 */  addu       $v0, $s1, $zero
/* BD9F4 800CD1F4 2800BF8F */  lw         $ra, 0x28($sp)
/* BD9F8 800CD1F8 2400B58F */  lw         $s5, 0x24($sp)
/* BD9FC 800CD1FC 2000B48F */  lw         $s4, 0x20($sp)
/* BDA00 800CD200 1C00B38F */  lw         $s3, 0x1c($sp)
/* BDA04 800CD204 1800B28F */  lw         $s2, 0x18($sp)
/* BDA08 800CD208 1400B18F */  lw         $s1, 0x14($sp)
/* BDA0C 800CD20C 1000B08F */  lw         $s0, 0x10($sp)
/* BDA10 800CD210 0800E003 */  jr         $ra
/* BDA14 800CD214 3000BD27 */   addiu     $sp, $sp, 0x30
