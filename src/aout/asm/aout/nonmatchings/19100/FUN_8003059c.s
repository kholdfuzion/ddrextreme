.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003059c
/* 20D9C 8003059C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 20DA0 800305A0 01000224 */  addiu      $v0, $zero, 1
/* 20DA4 800305A4 1000BFAF */  sw         $ra, 0x10($sp)
/* 20DA8 800305A8 81C4000C */  jal        FUN_80031204
/* 20DAC 800305AC 000082AC */   sw        $v0, ($a0)
/* 20DB0 800305B0 7CAA000C */  jal        vsync_8002a9f0
/* 20DB4 800305B4 00000000 */   nop
/* 20DB8 800305B8 86C1000C */  jal        FUN_80030618
/* 20DBC 800305BC 00000000 */   nop
/* 20DC0 800305C0 7CAA000C */  jal        vsync_8002a9f0
/* 20DC4 800305C4 00000000 */   nop
/* 20DC8 800305C8 1000BF8F */  lw         $ra, 0x10($sp)
/* 20DCC 800305CC 00000000 */  nop
/* 20DD0 800305D0 0800E003 */  jr         $ra
/* 20DD4 800305D4 1800BD27 */   addiu     $sp, $sp, 0x18
