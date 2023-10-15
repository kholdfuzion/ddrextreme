.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002659C
/* 16D9C 8002659C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 16DA0 800265A0 1000BFAF */  sw         $ra, 0x10($sp)
/* 16DA4 800265A4 2726010C */  jal        FUN_8004989c
/* 16DA8 800265A8 60000424 */   addiu     $a0, $zero, 0x60
/* 16DAC 800265AC 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 16DB0 800265B0 2000438C */  lw         $v1, %lo(D_800F0020)($v0)
/* 16DB4 800265B4 00000000 */  nop
/* 16DB8 800265B8 0F006328 */  slti       $v1, $v1, 0xf
/* 16DBC 800265BC 02006010 */  beqz       $v1, .L800265C8
/* 16DC0 800265C0 04000224 */   addiu     $v0, $zero, 4
/* 16DC4 800265C4 02000224 */  addiu      $v0, $zero, 2
.L800265C8:
/* 16DC8 800265C8 1000BF8F */  lw         $ra, 0x10($sp)
/* 16DCC 800265CC 00000000 */  nop
/* 16DD0 800265D0 0800E003 */  jr         $ra
/* 16DD4 800265D4 1800BD27 */   addiu     $sp, $sp, 0x18
