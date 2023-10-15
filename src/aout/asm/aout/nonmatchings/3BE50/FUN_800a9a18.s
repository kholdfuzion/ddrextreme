.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9a18
/* 9A218 800A9A18 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9A21C 800A9A1C 0F80023C */  lui        $v0, %hi(D_800EC6F0)
/* 9A220 800A9A20 0F80033C */  lui        $v1, %hi(D_800EC6F4)
/* 9A224 800A9A24 F0C640AC */  sw         $zero, %lo(D_800EC6F0)($v0)
/* 9A228 800A9A28 FFFF0224 */  addiu      $v0, $zero, -1
/* 9A22C 800A9A2C 1000BFAF */  sw         $ra, 0x10($sp)
/* 9A230 800A9A30 D9C4020C */  jal        FUN_800b1364
/* 9A234 800A9A34 F4C662AC */   sw        $v0, %lo(D_800EC6F4)($v1)
/* 9A238 800A9A38 B8C1020C */  jal        FUN_800b06e0
/* 9A23C 800A9A3C FE000424 */   addiu     $a0, $zero, 0xfe
/* 9A240 800A9A40 1000BF8F */  lw         $ra, 0x10($sp)
/* 9A244 800A9A44 21100000 */  addu       $v0, $zero, $zero
/* 9A248 800A9A48 0800E003 */  jr         $ra
/* 9A24C 800A9A4C 1800BD27 */   addiu     $sp, $sp, 0x18
