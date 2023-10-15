.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b7d0
/* 5BFD0 8006B7D0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5BFD4 8006B7D4 2140C000 */  addu       $t0, $a2, $zero
/* 5BFD8 8006B7D8 C0FE0224 */  addiu      $v0, $zero, -0x140
/* 5BFDC 8006B7DC 10FF0324 */  addiu      $v1, $zero, -0xf0
/* 5BFE0 8006B7E0 80020624 */  addiu      $a2, $zero, 0x280
/* 5BFE4 8006B7E4 1800A2AF */  sw         $v0, 0x18($sp)
/* 5BFE8 8006B7E8 E0010224 */  addiu      $v0, $zero, 0x1e0
/* 5BFEC 8006B7EC 2000A6AF */  sw         $a2, 0x20($sp)
/* 5BFF0 8006B7F0 3400A6AF */  sw         $a2, 0x34($sp)
/* 5BFF4 8006B7F4 FFFF0624 */  addiu      $a2, $zero, -1
/* 5BFF8 8006B7F8 2800A7AF */  sw         $a3, 0x28($sp)
/* 5BFFC 8006B7FC 21380001 */  addu       $a3, $t0, $zero
/* 5C000 8006B800 4000BFAF */  sw         $ra, 0x40($sp)
/* 5C004 8006B804 1000A8AF */  sw         $t0, 0x10($sp)
/* 5C008 8006B808 1400A8AF */  sw         $t0, 0x14($sp)
/* 5C00C 8006B80C 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 5C010 8006B810 2400A2AF */  sw         $v0, 0x24($sp)
/* 5C014 8006B814 2C00A0AF */  sw         $zero, 0x2c($sp)
/* 5C018 8006B818 3000A0AF */  sw         $zero, 0x30($sp)
/* 5C01C 8006B81C 1FAC010C */  jal        FUN_8006b07c
/* 5C020 8006B820 3800A2AF */   sw        $v0, 0x38($sp)
/* 5C024 8006B824 4000BF8F */  lw         $ra, 0x40($sp)
/* 5C028 8006B828 00000000 */  nop
/* 5C02C 8006B82C 0800E003 */  jr         $ra
/* 5C030 8006B830 4800BD27 */   addiu     $sp, $sp, 0x48
