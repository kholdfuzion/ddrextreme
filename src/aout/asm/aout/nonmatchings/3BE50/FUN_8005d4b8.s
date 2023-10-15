.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d4b8
/* 4DCB8 8005D4B8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4DCBC 8005D4BC 5400A88F */  lw         $t0, 0x54($sp)
/* 4DCC0 8005D4C0 00000000 */  nop
/* 4DCC4 8005D4C4 C2110800 */  srl        $v0, $t0, 7
/* 4DCC8 8005D4C8 01004230 */  andi       $v0, $v0, 1
/* 4DCCC 8005D4CC 03004014 */  bnez       $v0, .L8005D4DC
/* 4DCD0 8005D4D0 3000BFAF */   sw        $ra, 0x30($sp)
/* 4DCD4 8005D4D4 46750108 */  j          .L8005D518
/* 4DCD8 8005D4D8 2110A000 */   addu      $v0, $a1, $zero
.L8005D4DC:
/* 4DCDC 8005D4DC 4800A28F */  lw         $v0, 0x48($sp)
/* 4DCE0 8005D4E0 4C00A38F */  lw         $v1, 0x4c($sp)
/* 4DCE4 8005D4E4 1000A2AF */  sw         $v0, 0x10($sp)
/* 4DCE8 8005D4E8 5000A28F */  lw         $v0, 0x50($sp)
/* 4DCEC 8005D4EC 1400A3AF */  sw         $v1, 0x14($sp)
/* 4DCF0 8005D4F0 5C00A38F */  lw         $v1, 0x5c($sp)
/* 4DCF4 8005D4F4 1800A2AF */  sw         $v0, 0x18($sp)
/* 4DCF8 8005D4F8 5800A28F */  lw         $v0, 0x58($sp)
/* 4DCFC 8005D4FC 00000000 */  nop
/* 4DD00 8005D500 2000A2AF */  sw         $v0, 0x20($sp)
/* 4DD04 8005D504 6000A28F */  lw         $v0, 0x60($sp)
/* 4DD08 8005D508 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 4DD0C 8005D50C 2400A3AF */  sw         $v1, 0x24($sp)
/* 4DD10 8005D510 4E70010C */  jal        FUN_8005c138
/* 4DD14 8005D514 2800A2AF */   sw        $v0, 0x28($sp)
.L8005D518:
/* 4DD18 8005D518 3000BF8F */  lw         $ra, 0x30($sp)
/* 4DD1C 8005D51C 00000000 */  nop
/* 4DD20 8005D520 0800E003 */  jr         $ra
/* 4DD24 8005D524 3800BD27 */   addiu     $sp, $sp, 0x38
