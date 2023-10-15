.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005D528
/* 4DD28 8005D528 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4DD2C 8005D52C 4000A88F */  lw         $t0, 0x40($sp)
/* 4DD30 8005D530 4400A98F */  lw         $t1, 0x44($sp)
/* 4DD34 8005D534 4C00AA8F */  lw         $t2, 0x4c($sp)
/* 4DD38 8005D538 4800A393 */  lbu        $v1, 0x48($sp)
/* 4DD3C 8005D53C 80000224 */  addiu      $v0, $zero, 0x80
/* 4DD40 8005D540 2800BFAF */  sw         $ra, 0x28($sp)
/* 4DD44 8005D544 2000A2AF */  sw         $v0, 0x20($sp)
/* 4DD48 8005D548 1000A8AF */  sw         $t0, 0x10($sp)
/* 4DD4C 8005D54C 1400A9AF */  sw         $t1, 0x14($sp)
/* 4DD50 8005D550 1800A3AF */  sw         $v1, 0x18($sp)
/* 4DD54 8005D554 5B75010C */  jal        FUN_8005d56c
/* 4DD58 8005D558 1C00AAAF */   sw        $t2, 0x1c($sp)
/* 4DD5C 8005D55C 2800BF8F */  lw         $ra, 0x28($sp)
/* 4DD60 8005D560 00000000 */  nop
/* 4DD64 8005D564 0800E003 */  jr         $ra
/* 4DD68 8005D568 3000BD27 */   addiu     $sp, $sp, 0x30
