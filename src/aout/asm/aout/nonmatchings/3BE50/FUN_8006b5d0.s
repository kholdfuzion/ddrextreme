.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b5d0
/* 5BDD0 8006B5D0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5BDD4 8006B5D4 5800A88F */  lw         $t0, 0x58($sp)
/* 5BDD8 8006B5D8 5C00A98F */  lw         $t1, 0x5c($sp)
/* 5BDDC 8006B5DC 6000AA8F */  lw         $t2, 0x60($sp)
/* 5BDE0 8006B5E0 6400AB8F */  lw         $t3, 0x64($sp)
/* 5BDE4 8006B5E4 6800AC8F */  lw         $t4, 0x68($sp)
/* 5BDE8 8006B5E8 6C00AD8F */  lw         $t5, 0x6c($sp)
/* 5BDEC 8006B5EC 7000AE8F */  lw         $t6, 0x70($sp)
/* 5BDF0 8006B5F0 7400A28F */  lw         $v0, 0x74($sp)
/* 5BDF4 8006B5F4 7800A38F */  lw         $v1, 0x78($sp)
/* 5BDF8 8006B5F8 4000BFAF */  sw         $ra, 0x40($sp)
/* 5BDFC 8006B5FC 1000A8AF */  sw         $t0, 0x10($sp)
/* 5BE00 8006B600 1400A9AF */  sw         $t1, 0x14($sp)
/* 5BE04 8006B604 1800AAAF */  sw         $t2, 0x18($sp)
/* 5BE08 8006B608 1C00ABAF */  sw         $t3, 0x1c($sp)
/* 5BE0C 8006B60C 2000A2AF */  sw         $v0, 0x20($sp)
/* 5BE10 8006B610 2400A3AF */  sw         $v1, 0x24($sp)
/* 5BE14 8006B614 2800ACAF */  sw         $t4, 0x28($sp)
/* 5BE18 8006B618 2C00ADAF */  sw         $t5, 0x2c($sp)
/* 5BE1C 8006B61C 3000AEAF */  sw         $t6, 0x30($sp)
/* 5BE20 8006B620 3400A2AF */  sw         $v0, 0x34($sp)
/* 5BE24 8006B624 1FAC010C */  jal        FUN_8006b07c
/* 5BE28 8006B628 3800A3AF */   sw        $v1, 0x38($sp)
/* 5BE2C 8006B62C 4000BF8F */  lw         $ra, 0x40($sp)
/* 5BE30 8006B630 00000000 */  nop
/* 5BE34 8006B634 0800E003 */  jr         $ra
/* 5BE38 8006B638 4800BD27 */   addiu     $sp, $sp, 0x48
