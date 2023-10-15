.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800305d8
/* 20DD8 800305D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 20DDC 800305DC 1000BFAF */  sw         $ra, 0x10($sp)
/* 20DE0 800305E0 E7C1000C */  jal        FUN_8003079c
/* 20DE4 800305E4 00000000 */   nop
/* 20DE8 800305E8 04004014 */  bnez       $v0, .L800305FC
/* 20DEC 800305EC 01000224 */   addiu     $v0, $zero, 1
/* 20DF0 800305F0 1D0B010C */  jal        FUN_80042c74
/* 20DF4 800305F4 00000000 */   nop
/* 20DF8 800305F8 21100000 */  addu       $v0, $zero, $zero
.L800305FC:
/* 20DFC 800305FC 1000BF8F */  lw         $ra, 0x10($sp)
/* 20E00 80030600 00000000 */  nop
/* 20E04 80030604 0800E003 */  jr         $ra
/* 20E08 80030608 1800BD27 */   addiu     $sp, $sp, 0x18
