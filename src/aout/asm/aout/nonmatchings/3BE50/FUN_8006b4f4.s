.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b4f4
/* 5BCF4 8006B4F4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5BCF8 8006B4F8 2110C000 */  addu       $v0, $a2, $zero
/* 5BCFC 8006B4FC 5800A98F */  lw         $t1, 0x58($sp)
/* 5BD00 8006B500 5C00AA8F */  lw         $t2, 0x5c($sp)
/* 5BD04 8006B504 6000AB8F */  lw         $t3, 0x60($sp)
/* 5BD08 8006B508 6400AC8F */  lw         $t4, 0x64($sp)
/* 5BD0C 8006B50C 6800A38F */  lw         $v1, 0x68($sp)
/* 5BD10 8006B510 6C00A88F */  lw         $t0, 0x6c($sp)
/* 5BD14 8006B514 FFFF0624 */  addiu      $a2, $zero, -1
/* 5BD18 8006B518 1800A7AF */  sw         $a3, 0x18($sp)
/* 5BD1C 8006B51C 21384000 */  addu       $a3, $v0, $zero
/* 5BD20 8006B520 4000BFAF */  sw         $ra, 0x40($sp)
/* 5BD24 8006B524 1000A2AF */  sw         $v0, 0x10($sp)
/* 5BD28 8006B528 1400A2AF */  sw         $v0, 0x14($sp)
/* 5BD2C 8006B52C 1C00A9AF */  sw         $t1, 0x1c($sp)
/* 5BD30 8006B530 2000A3AF */  sw         $v1, 0x20($sp)
/* 5BD34 8006B534 2400A8AF */  sw         $t0, 0x24($sp)
/* 5BD38 8006B538 2800AAAF */  sw         $t2, 0x28($sp)
/* 5BD3C 8006B53C 2C00ABAF */  sw         $t3, 0x2c($sp)
/* 5BD40 8006B540 3000ACAF */  sw         $t4, 0x30($sp)
/* 5BD44 8006B544 3400A3AF */  sw         $v1, 0x34($sp)
/* 5BD48 8006B548 1FAC010C */  jal        FUN_8006b07c
/* 5BD4C 8006B54C 3800A8AF */   sw        $t0, 0x38($sp)
/* 5BD50 8006B550 4000BF8F */  lw         $ra, 0x40($sp)
/* 5BD54 8006B554 00000000 */  nop
/* 5BD58 8006B558 0800E003 */  jr         $ra
/* 5BD5C 8006B55C 4800BD27 */   addiu     $sp, $sp, 0x48
