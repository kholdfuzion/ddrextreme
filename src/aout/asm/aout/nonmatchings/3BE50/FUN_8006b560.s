.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b560
/* 5BD60 8006B560 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5BD64 8006B564 1000A7AF */  sw         $a3, 0x10($sp)
/* 5BD68 8006B568 2138C000 */  addu       $a3, $a2, $zero
/* 5BD6C 8006B56C 5800A88F */  lw         $t0, 0x58($sp)
/* 5BD70 8006B570 5C00A98F */  lw         $t1, 0x5c($sp)
/* 5BD74 8006B574 6000AA8F */  lw         $t2, 0x60($sp)
/* 5BD78 8006B578 6400AB8F */  lw         $t3, 0x64($sp)
/* 5BD7C 8006B57C 6800AC8F */  lw         $t4, 0x68($sp)
/* 5BD80 8006B580 6C00AD8F */  lw         $t5, 0x6c($sp)
/* 5BD84 8006B584 7000A28F */  lw         $v0, 0x70($sp)
/* 5BD88 8006B588 7400A38F */  lw         $v1, 0x74($sp)
/* 5BD8C 8006B58C FFFF0624 */  addiu      $a2, $zero, -1
/* 5BD90 8006B590 4000BFAF */  sw         $ra, 0x40($sp)
/* 5BD94 8006B594 1400A8AF */  sw         $t0, 0x14($sp)
/* 5BD98 8006B598 1800A9AF */  sw         $t1, 0x18($sp)
/* 5BD9C 8006B59C 1C00AAAF */  sw         $t2, 0x1c($sp)
/* 5BDA0 8006B5A0 2000A2AF */  sw         $v0, 0x20($sp)
/* 5BDA4 8006B5A4 2400A3AF */  sw         $v1, 0x24($sp)
/* 5BDA8 8006B5A8 2800ABAF */  sw         $t3, 0x28($sp)
/* 5BDAC 8006B5AC 2C00ACAF */  sw         $t4, 0x2c($sp)
/* 5BDB0 8006B5B0 3000ADAF */  sw         $t5, 0x30($sp)
/* 5BDB4 8006B5B4 3400A2AF */  sw         $v0, 0x34($sp)
/* 5BDB8 8006B5B8 1FAC010C */  jal        FUN_8006b07c
/* 5BDBC 8006B5BC 3800A3AF */   sw        $v1, 0x38($sp)
/* 5BDC0 8006B5C0 4000BF8F */  lw         $ra, 0x40($sp)
/* 5BDC4 8006B5C4 00000000 */  nop
/* 5BDC8 8006B5C8 0800E003 */  jr         $ra
/* 5BDCC 8006B5CC 4800BD27 */   addiu     $sp, $sp, 0x48
