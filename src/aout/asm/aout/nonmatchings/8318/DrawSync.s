.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DrawSync
/* 8B60 80018360 0D80023C */  lui        $v0, %hi(D_800D2B9A)
/* 8B64 80018364 9A2B4290 */  lbu        $v0, %lo(D_800D2B9A)($v0)
/* 8B68 80018368 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8B6C 8001836C 1000B0AF */  sw         $s0, 0x10($sp)
/* 8B70 80018370 21808000 */  addu       $s0, $a0, $zero
/* 8B74 80018374 0200422C */  sltiu      $v0, $v0, 2
/* 8B78 80018378 08004014 */  bnez       $v0, .L8001839C
/* 8B7C 8001837C 1400BFAF */   sw        $ra, 0x14($sp)
/* 8B80 80018380 0180043C */  lui        $a0, %hi(D_8001017C)
/* 8B84 80018384 7C018424 */  addiu      $a0, $a0, %lo(D_8001017C)
/* 8B88 80018388 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 8B8C 8001838C 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 8B90 80018390 00000000 */  nop
/* 8B94 80018394 09F84000 */  jalr       $v0
/* 8B98 80018398 21280002 */   addu      $a1, $s0, $zero
.L8001839C:
/* 8B9C 8001839C 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 8BA0 800183A0 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 8BA4 800183A4 00000000 */  nop
/* 8BA8 800183A8 3C00428C */  lw         $v0, 0x3c($v0)
/* 8BAC 800183AC 00000000 */  nop
/* 8BB0 800183B0 09F84000 */  jalr       $v0
/* 8BB4 800183B4 21200002 */   addu      $a0, $s0, $zero
/* 8BB8 800183B8 1400BF8F */  lw         $ra, 0x14($sp)
/* 8BBC 800183BC 1000B08F */  lw         $s0, 0x10($sp)
/* 8BC0 800183C0 0800E003 */  jr         $ra
/* 8BC4 800183C4 1800BD27 */   addiu     $sp, $sp, 0x18
