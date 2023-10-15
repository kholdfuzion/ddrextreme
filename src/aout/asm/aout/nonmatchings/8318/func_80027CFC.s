.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027CFC
/* 184FC 80027CFC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18500 80027D00 08008424 */  addiu      $a0, $a0, 8
/* 18504 80027D04 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 18508 80027D08 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 1850C 80027D0C 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 18510 80027D10 2800A224 */  addiu      $v0, $a1, %lo(D_800F0028)
/* 18514 80027D14 12000324 */  addiu      $v1, $zero, 0x12
/* 18518 80027D18 1000BFAF */  sw         $ra, 0x10($sp)
/* 1851C 80027D1C 260040A0 */  sb         $zero, 0x26($v0)
/* 18520 80027D20 9270020C */  jal        FUN_8009c248
/* 18524 80027D24 2800A3A4 */   sh        $v1, 0x28($a1)
/* 18528 80027D28 12CB020C */  jal        FUN_800b2c48
/* 1852C 80027D2C 78000424 */   addiu     $a0, $zero, 0x78
/* 18530 80027D30 1000BF8F */  lw         $ra, 0x10($sp)
/* 18534 80027D34 00000000 */  nop
/* 18538 80027D38 0800E003 */  jr         $ra
/* 1853C 80027D3C 1800BD27 */   addiu     $sp, $sp, 0x18
