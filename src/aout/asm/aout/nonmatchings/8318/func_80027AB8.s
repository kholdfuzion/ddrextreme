.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027AB8
/* 182B8 80027AB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 182BC 80027ABC 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 182C0 80027AC0 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 182C4 80027AC4 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 182C8 80027AC8 03000224 */  addiu      $v0, $zero, 3
/* 182CC 80027ACC 1000BFAF */  sw         $ra, 0x10($sp)
/* 182D0 80027AD0 2F8D020C */  jal        FUN_800a34bc
/* 182D4 80027AD4 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 182D8 80027AD8 03000424 */  addiu      $a0, $zero, 3
/* 182DC 80027ADC 3EA2020C */  jal        FUN_800a88f8
/* 182E0 80027AE0 21280000 */   addu      $a1, $zero, $zero
/* 182E4 80027AE4 0C004494 */  lhu        $a0, 0xc($v0)
/* 182E8 80027AE8 06C2020C */  jal        FUN_800b0818
/* 182EC 80027AEC 00000000 */   nop
/* 182F0 80027AF0 1000BF8F */  lw         $ra, 0x10($sp)
/* 182F4 80027AF4 00000000 */  nop
/* 182F8 80027AF8 0800E003 */  jr         $ra
/* 182FC 80027AFC 1800BD27 */   addiu     $sp, $sp, 0x18
