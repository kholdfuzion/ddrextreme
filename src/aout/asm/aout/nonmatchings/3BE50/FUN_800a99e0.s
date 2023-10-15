.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a99e0
/* 9A1E0 800A99E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9A1E4 800A99E4 0F80023C */  lui        $v0, %hi(D_800EC6F0)
/* 9A1E8 800A99E8 0F80033C */  lui        $v1, %hi(D_800EC6F4)
/* 9A1EC 800A99EC F0C640AC */  sw         $zero, %lo(D_800EC6F0)($v0)
/* 9A1F0 800A99F0 FFFF0224 */  addiu      $v0, $zero, -1
/* 9A1F4 800A99F4 1000BFAF */  sw         $ra, 0x10($sp)
/* 9A1F8 800A99F8 D9C4020C */  jal        FUN_800b1364
/* 9A1FC 800A99FC F4C662AC */   sw        $v0, %lo(D_800EC6F4)($v1)
/* 9A200 800A9A00 B8C1020C */  jal        FUN_800b06e0
/* 9A204 800A9A04 FE000424 */   addiu     $a0, $zero, 0xfe
/* 9A208 800A9A08 1000BF8F */  lw         $ra, 0x10($sp)
/* 9A20C 800A9A0C 21100000 */  addu       $v0, $zero, $zero
/* 9A210 800A9A10 0800E003 */  jr         $ra
/* 9A214 800A9A14 1800BD27 */   addiu     $sp, $sp, 0x18
