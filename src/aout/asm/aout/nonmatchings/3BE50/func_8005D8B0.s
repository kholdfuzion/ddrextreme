.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005D8B0
/* 4E0B0 8005D8B0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4E0B4 8005D8B4 3800A28F */  lw         $v0, 0x38($sp)
/* 4E0B8 8005D8B8 3C00A88F */  lw         $t0, 0x3c($sp)
/* 4E0BC 8005D8BC 80000324 */  addiu      $v1, $zero, 0x80
/* 4E0C0 8005D8C0 2000BFAF */  sw         $ra, 0x20($sp)
/* 4E0C4 8005D8C4 1800A3AF */  sw         $v1, 0x18($sp)
/* 4E0C8 8005D8C8 1000A2AF */  sw         $v0, 0x10($sp)
/* 4E0CC 8005D8CC 0A6F010C */  jal        FUN_8005bc28
/* 4E0D0 8005D8D0 1400A8AF */   sw        $t0, 0x14($sp)
/* 4E0D4 8005D8D4 2000BF8F */  lw         $ra, 0x20($sp)
/* 4E0D8 8005D8D8 00000000 */  nop
/* 4E0DC 8005D8DC 0800E003 */  jr         $ra
/* 4E0E0 8005D8E0 2800BD27 */   addiu     $sp, $sp, 0x28
