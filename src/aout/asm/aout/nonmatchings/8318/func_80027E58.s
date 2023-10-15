.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027E58
/* 18658 80027E58 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1865C 80027E5C 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 18660 80027E60 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 18664 80027E64 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 18668 80027E68 19000224 */  addiu      $v0, $zero, 0x19
/* 1866C 80027E6C 1000BFAF */  sw         $ra, 0x10($sp)
/* 18670 80027E70 39B9020C */  jal        FUN_800ae4e4
/* 18674 80027E74 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 18678 80027E78 1728010C */  jal        FUN_8004a05c
/* 1867C 80027E7C 00000000 */   nop
/* 18680 80027E80 0C7A010C */  jal        FUN_8005e830
/* 18684 80027E84 00000000 */   nop
/* 18688 80027E88 1000BF8F */  lw         $ra, 0x10($sp)
/* 1868C 80027E8C 00000000 */  nop
/* 18690 80027E90 0800E003 */  jr         $ra
/* 18694 80027E94 1800BD27 */   addiu     $sp, $sp, 0x18
