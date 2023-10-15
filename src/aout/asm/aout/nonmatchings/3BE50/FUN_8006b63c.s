.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b63c
/* 5BE3C 8006B63C B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5BE40 8006B640 2140C000 */  addu       $t0, $a2, $zero
/* 5BE44 8006B644 C0FE0224 */  addiu      $v0, $zero, -0x140
/* 5BE48 8006B648 D7000324 */  addiu      $v1, $zero, 0xd7
/* 5BE4C 8006B64C 80020624 */  addiu      $a2, $zero, 0x280
/* 5BE50 8006B650 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 5BE54 8006B654 0F000324 */  addiu      $v1, $zero, 0xf
/* 5BE58 8006B658 1800A2AF */  sw         $v0, 0x18($sp)
/* 5BE5C 8006B65C C7010224 */  addiu      $v0, $zero, 0x1c7
/* 5BE60 8006B660 2000A6AF */  sw         $a2, 0x20($sp)
/* 5BE64 8006B664 3400A6AF */  sw         $a2, 0x34($sp)
/* 5BE68 8006B668 FFFF0624 */  addiu      $a2, $zero, -1
/* 5BE6C 8006B66C 2800A7AF */  sw         $a3, 0x28($sp)
/* 5BE70 8006B670 21380001 */  addu       $a3, $t0, $zero
/* 5BE74 8006B674 4000BFAF */  sw         $ra, 0x40($sp)
/* 5BE78 8006B678 1000A8AF */  sw         $t0, 0x10($sp)
/* 5BE7C 8006B67C 1400A8AF */  sw         $t0, 0x14($sp)
/* 5BE80 8006B680 2400A3AF */  sw         $v1, 0x24($sp)
/* 5BE84 8006B684 2C00A0AF */  sw         $zero, 0x2c($sp)
/* 5BE88 8006B688 3000A2AF */  sw         $v0, 0x30($sp)
/* 5BE8C 8006B68C 1FAC010C */  jal        FUN_8006b07c
/* 5BE90 8006B690 3800A3AF */   sw        $v1, 0x38($sp)
/* 5BE94 8006B694 4000BF8F */  lw         $ra, 0x40($sp)
/* 5BE98 8006B698 00000000 */  nop
/* 5BE9C 8006B69C 0800E003 */  jr         $ra
/* 5BEA0 8006B6A0 4800BD27 */   addiu     $sp, $sp, 0x48
