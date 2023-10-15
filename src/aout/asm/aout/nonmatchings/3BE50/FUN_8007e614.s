.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e614
/* 6EE14 8007E614 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6EE18 8007E618 4000A38F */  lw         $v1, 0x40($sp)
/* 6EE1C 8007E61C 4400A88F */  lw         $t0, 0x44($sp)
/* 6EE20 8007E620 4800A98F */  lw         $t1, 0x48($sp)
/* 6EE24 8007E624 4C00AA8F */  lw         $t2, 0x4c($sp)
/* 6EE28 8007E628 80000224 */  addiu      $v0, $zero, 0x80
/* 6EE2C 8007E62C 2800BFAF */  sw         $ra, 0x28($sp)
/* 6EE30 8007E630 2000A2AF */  sw         $v0, 0x20($sp)
/* 6EE34 8007E634 1000A3AF */  sw         $v1, 0x10($sp)
/* 6EE38 8007E638 1400A8AF */  sw         $t0, 0x14($sp)
/* 6EE3C 8007E63C 1800A9AF */  sw         $t1, 0x18($sp)
/* 6EE40 8007E640 62F1010C */  jal        FUN_8007c588
/* 6EE44 8007E644 1C00AAAF */   sw        $t2, 0x1c($sp)
/* 6EE48 8007E648 2800BF8F */  lw         $ra, 0x28($sp)
/* 6EE4C 8007E64C 00000000 */  nop
/* 6EE50 8007E650 0800E003 */  jr         $ra
/* 6EE54 8007E654 3000BD27 */   addiu     $sp, $sp, 0x30
