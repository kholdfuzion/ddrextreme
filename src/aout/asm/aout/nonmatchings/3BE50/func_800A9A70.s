.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A9A70
/* 9A270 800A9A70 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9A274 800A9A74 1000B0AF */  sw         $s0, 0x10($sp)
/* 9A278 800A9A78 0F80103C */  lui        $s0, %hi(D_800EC6F0)
/* 9A27C 800A9A7C F0C6028E */  lw         $v0, %lo(D_800EC6F0)($s0)
/* 9A280 800A9A80 00000000 */  nop
/* 9A284 800A9A84 09004014 */  bnez       $v0, .L800A9AAC
/* 9A288 800A9A88 1400BFAF */   sw        $ra, 0x14($sp)
/* 9A28C 800A9A8C D1C1020C */  jal        FUN_800b0744
/* 9A290 800A9A90 00000000 */   nop
/* 9A294 800A9A94 0F80033C */  lui        $v1, %hi(D_800EC6F4)
/* 9A298 800A9A98 F4C662AC */  sw         $v0, %lo(D_800EC6F4)($v1)
/* 9A29C 800A9A9C FFFF0324 */  addiu      $v1, $zero, -1
/* 9A2A0 800A9AA0 02004310 */  beq        $v0, $v1, .L800A9AAC
/* 9A2A4 800A9AA4 21100000 */   addu      $v0, $zero, $zero
/* 9A2A8 800A9AA8 F0C603AE */  sw         $v1, -0x3910($s0)
.L800A9AAC:
/* 9A2AC 800A9AAC 1400BF8F */  lw         $ra, 0x14($sp)
/* 9A2B0 800A9AB0 1000B08F */  lw         $s0, 0x10($sp)
/* 9A2B4 800A9AB4 0800E003 */  jr         $ra
/* 9A2B8 800A9AB8 1800BD27 */   addiu     $sp, $sp, 0x18
