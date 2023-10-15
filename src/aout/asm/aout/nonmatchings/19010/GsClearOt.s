.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsClearOt
/* 19010 80028810 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 19014 80028814 FFFF8430 */  andi       $a0, $a0, 0xffff
/* 19018 80028818 FFFFA530 */  andi       $a1, $a1, 0xffff
/* 1901C 8002881C 1000BFAF */  sw         $ra, 0x10($sp)
/* 19020 80028820 0800C4AC */  sw         $a0, 8($a2)
/* 19024 80028824 0000C48C */  lw         $a0, ($a2)
/* 19028 80028828 0400C28C */  lw         $v0, 4($a2)
/* 1902C 8002882C 04000324 */  addiu      $v1, $zero, 4
/* 19030 80028830 0C00C5AC */  sw         $a1, 0xc($a2)
/* 19034 80028834 0000C58C */  lw         $a1, ($a2)
/* 19038 80028838 04188300 */  sllv       $v1, $v1, $a0
/* 1903C 8002883C 21104300 */  addu       $v0, $v0, $v1
/* 19040 80028840 FCFF4224 */  addiu      $v0, $v0, -4
/* 19044 80028844 1000C2AC */  sw         $v0, 0x10($a2)
/* 19048 80028848 01000224 */  addiu      $v0, $zero, 1
/* 1904C 8002884C 0400C48C */  lw         $a0, 4($a2)
/* 19050 80028850 1362000C */  jal        ClearOTagR
/* 19054 80028854 0428A200 */   sllv      $a1, $v0, $a1
/* 19058 80028858 1000BF8F */  lw         $ra, 0x10($sp)
/* 1905C 8002885C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 19060 80028860 0800E003 */  jr         $ra
/* 19064 80028864 00000000 */   nop
/* 19068 80028868 00000000 */  nop
/* 1906C 8002886C 00000000 */  nop
