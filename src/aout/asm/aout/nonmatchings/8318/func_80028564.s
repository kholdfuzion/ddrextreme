.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80028564
/* 18D64 80028564 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18D68 80028568 1000BFAF */  sw         $ra, 0x10($sp)
/* 18D6C 8002856C 6270000C */  jal        FUN_8001c188
/* 18D70 80028570 00000000 */   nop
/* 18D74 80028574 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 18D78 80028578 A8FF4224 */  addiu      $v0, $v0, %lo(D_800EFFA8)
/* 18D7C 8002857C 6C00438C */  lw         $v1, 0x6c($v0)
/* 18D80 80028580 7000448C */  lw         $a0, 0x70($v0)
/* 18D84 80028584 1000BF8F */  lw         $ra, 0x10($sp)
/* 18D88 80028588 01006324 */  addiu      $v1, $v1, 1
/* 18D8C 8002858C 01008424 */  addiu      $a0, $a0, 1
/* 18D90 80028590 6C0043AC */  sw         $v1, 0x6c($v0)
/* 18D94 80028594 700044AC */  sw         $a0, 0x70($v0)
/* 18D98 80028598 0800E003 */  jr         $ra
/* 18D9C 8002859C 1800BD27 */   addiu     $sp, $sp, 0x18
