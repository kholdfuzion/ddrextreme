.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9420
/* 99C20 800A9420 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 99C24 800A9424 1000BFAF */  sw         $ra, 0x10($sp)
/* 99C28 800A9428 0FA2020C */  jal        FUN_800a883c
/* 99C2C 800A942C 00000000 */   nop
/* 99C30 800A9430 03004014 */  bnez       $v0, .L800A9440
/* 99C34 800A9434 00000000 */   nop
/* 99C38 800A9438 11A50208 */  j          .L800A9444
/* 99C3C 800A943C FFFF0224 */   addiu     $v0, $zero, -1
.L800A9440:
/* 99C40 800A9440 16004294 */  lhu        $v0, 0x16($v0)
.L800A9444:
/* 99C44 800A9444 1000BF8F */  lw         $ra, 0x10($sp)
/* 99C48 800A9448 00000000 */  nop
/* 99C4C 800A944C 0800E003 */  jr         $ra
/* 99C50 800A9450 1800BD27 */   addiu     $sp, $sp, 0x18
