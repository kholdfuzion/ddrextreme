.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80020510
/* 10D10 80020510 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10D14 80020514 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 10D18 80020518 1E000224 */  addiu      $v0, $zero, 0x1e
/* 10D1C 8002051C 0F80033C */  lui        $v1, %hi(D_800F0020)
/* 10D20 80020520 1000BFAF */  sw         $ra, 0x10($sp)
/* 10D24 80020524 2800A2A4 */  sh         $v0, %lo(D_800F0028)($a1)
/* 10D28 80020528 200060AC */  sw         $zero, %lo(D_800F0020)($v1)
/* 10D2C 8002052C 0C0080AC */  sw         $zero, 0xc($a0)
/* 10D30 80020530 100080AC */  sw         $zero, 0x10($a0)
/* 10D34 80020534 140080AC */  sw         $zero, 0x14($a0)
/* 10D38 80020538 180080AC */  sw         $zero, 0x18($a0)
/* 10D3C 8002053C 5ACB020C */  jal        FUN_800b2d68
/* 10D40 80020540 01000424 */   addiu     $a0, $zero, 1
/* 10D44 80020544 3E55010C */  jal        FUN_800554f8
/* 10D48 80020548 00000000 */   nop
/* 10D4C 8002054C 1000BF8F */  lw         $ra, 0x10($sp)
/* 10D50 80020550 00000000 */  nop
/* 10D54 80020554 0800E003 */  jr         $ra
/* 10D58 80020558 1800BD27 */   addiu     $sp, $sp, 0x18
