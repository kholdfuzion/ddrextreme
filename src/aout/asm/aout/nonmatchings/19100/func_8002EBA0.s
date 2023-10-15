.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002EBA0
/* 1F3A0 8002EBA0 D0FEBD27 */  addiu      $sp, $sp, -0x130
/* 1F3A4 8002EBA4 2001B4AF */  sw         $s4, 0x120($sp)
/* 1F3A8 8002EBA8 21A08000 */  addu       $s4, $a0, $zero
/* 1F3AC 8002EBAC 2401B5AF */  sw         $s5, 0x124($sp)
/* 1F3B0 8002EBB0 21A8A000 */  addu       $s5, $a1, $zero
/* 1F3B4 8002EBB4 1C01B3AF */  sw         $s3, 0x11c($sp)
/* 1F3B8 8002EBB8 0E80133C */  lui        $s3, 0x800e
/* 1F3BC 8002EBBC 1401B1AF */  sw         $s1, 0x114($sp)
/* 1F3C0 8002EBC0 1200B127 */  addiu      $s1, $sp, 0x12
/* 1F3C4 8002EBC4 1801B2AF */  sw         $s2, 0x118($sp)
/* 1F3C8 8002EBC8 01001224 */  addiu      $s2, $zero, 1
/* 1F3CC 8002EBCC 2801BFAF */  sw         $ra, 0x128($sp)
/* 1F3D0 8002EBD0 1001B0AF */  sw         $s0, 0x110($sp)
/* 1F3D4 8002EBD4 21208002 */  addu       $a0, $s4, $zero
.L8002EBD8:
/* 1F3D8 8002EBD8 588D6526 */  addiu      $a1, $s3, -0x72a8
.L8002EBDC:
/* 1F3DC 8002EBDC 01000624 */  addiu      $a2, $zero, 1
/* 1F3E0 8002EBE0 BAB4000C */  jal        FUN_8002d2e8
/* 1F3E4 8002EBE4 1000A727 */   addiu     $a3, $sp, 0x10
/* 1F3E8 8002EBE8 21804000 */  addu       $s0, $v0, $zero
/* 1F3EC 8002EBEC 03000106 */  bgez       $s0, .L8002EBFC
/* 1F3F0 8002EBF0 00000000 */   nop
/* 1F3F4 8002EBF4 DFB9000C */  jal        FUN_8002e77c
/* 1F3F8 8002EBF8 0D000424 */   addiu     $a0, $zero, 0xd
.L8002EBFC:
/* 1F3FC 8002EBFC 1000A393 */  lbu        $v1, 0x10($sp)
/* 1F400 8002EC00 00000000 */  nop
/* 1F404 8002EC04 F4FF7214 */  bne        $v1, $s2, .L8002EBD8
/* 1F408 8002EC08 21208002 */   addu      $a0, $s4, $zero
/* 1F40C 8002EC0C 1100A293 */  lbu        $v0, 0x11($sp)
/* 1F410 8002EC10 00000000 */  nop
/* 1F414 8002EC14 F1FF4314 */  bne        $v0, $v1, .L8002EBDC
/* 1F418 8002EC18 588D6526 */   addiu     $a1, $s3, -0x72a8
/* 1F41C 8002EC1C 2120A002 */  addu       $a0, $s5, $zero
/* 1F420 8002EC20 21282002 */  addu       $a1, $s1, $zero
/* 1F424 8002EC24 BD6B000C */  jal        memcpy
/* 1F428 8002EC28 FFFF0626 */   addiu     $a2, $s0, -1
/* 1F42C 8002EC2C 2801BF8F */  lw         $ra, 0x128($sp)
/* 1F430 8002EC30 2401B58F */  lw         $s5, 0x124($sp)
/* 1F434 8002EC34 2001B48F */  lw         $s4, 0x120($sp)
/* 1F438 8002EC38 1C01B38F */  lw         $s3, 0x11c($sp)
/* 1F43C 8002EC3C 1801B28F */  lw         $s2, 0x118($sp)
/* 1F440 8002EC40 1401B18F */  lw         $s1, 0x114($sp)
/* 1F444 8002EC44 1001B08F */  lw         $s0, 0x110($sp)
/* 1F448 8002EC48 21100000 */  addu       $v0, $zero, $zero
/* 1F44C 8002EC4C 0800E003 */  jr         $ra
/* 1F450 8002EC50 3001BD27 */   addiu     $sp, $sp, 0x130
