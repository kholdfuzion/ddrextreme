.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d424
/* 4DC24 8005D424 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4DC28 8005D428 3800A28F */  lw         $v0, 0x38($sp)
/* 4DC2C 8005D42C 3C00A88F */  lw         $t0, 0x3c($sp)
/* 4DC30 8005D430 80000324 */  addiu      $v1, $zero, 0x80
/* 4DC34 8005D434 2000BFAF */  sw         $ra, 0x20($sp)
/* 4DC38 8005D438 1800A3AF */  sw         $v1, 0x18($sp)
/* 4DC3C 8005D43C 1000A2AF */  sw         $v0, 0x10($sp)
/* 4DC40 8005D440 616E010C */  jal        FUN_8005b984
/* 4DC44 8005D444 1400A8AF */   sw        $t0, 0x14($sp)
/* 4DC48 8005D448 2000BF8F */  lw         $ra, 0x20($sp)
/* 4DC4C 8005D44C 00000000 */  nop
/* 4DC50 8005D450 0800E003 */  jr         $ra
/* 4DC54 8005D454 2800BD27 */   addiu     $sp, $sp, 0x28
