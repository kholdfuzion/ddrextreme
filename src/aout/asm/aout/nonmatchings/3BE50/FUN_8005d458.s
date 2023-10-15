.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d458
/* 4DC58 8005D458 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4DC5C 8005D45C 4400A38F */  lw         $v1, 0x44($sp)
/* 4DC60 8005D460 00000000 */  nop
/* 4DC64 8005D464 C2110300 */  srl        $v0, $v1, 7
/* 4DC68 8005D468 01004230 */  andi       $v0, $v0, 1
/* 4DC6C 8005D46C 03004014 */  bnez       $v0, .L8005D47C
/* 4DC70 8005D470 2800BFAF */   sw        $ra, 0x28($sp)
/* 4DC74 8005D474 2A750108 */  j          .L8005D4A8
/* 4DC78 8005D478 2110A000 */   addu      $v0, $a1, $zero
.L8005D47C:
/* 4DC7C 8005D47C 4000A28F */  lw         $v0, 0x40($sp)
/* 4DC80 8005D480 1400A3AF */  sw         $v1, 0x14($sp)
/* 4DC84 8005D484 4C00A38F */  lw         $v1, 0x4c($sp)
/* 4DC88 8005D488 1000A2AF */  sw         $v0, 0x10($sp)
/* 4DC8C 8005D48C 4800A28F */  lw         $v0, 0x48($sp)
/* 4DC90 8005D490 00000000 */  nop
/* 4DC94 8005D494 1800A2AF */  sw         $v0, 0x18($sp)
/* 4DC98 8005D498 5000A28F */  lw         $v0, 0x50($sp)
/* 4DC9C 8005D49C 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 4DCA0 8005D4A0 3E71010C */  jal        FUN_8005c4f8
/* 4DCA4 8005D4A4 2000A2AF */   sw        $v0, 0x20($sp)
.L8005D4A8:
/* 4DCA8 8005D4A8 2800BF8F */  lw         $ra, 0x28($sp)
/* 4DCAC 8005D4AC 00000000 */  nop
/* 4DCB0 8005D4B0 0800E003 */  jr         $ra
/* 4DCB4 8005D4B4 3000BD27 */   addiu     $sp, $sp, 0x30
