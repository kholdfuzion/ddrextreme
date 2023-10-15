.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2B14
/* B2F8 8001AAF8 24104300 */  and        $v0, $v0, $v1
/* B2FC 8001AAFC F5FF4014 */  bnez       $v0, .L8001AAD4
/* B300 8001AB00 00000000 */   nop
/* B304 8001AB04 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* B308 8001AB08 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* B30C 8001AB0C 00000000 */  nop
/* B310 8001AB10 0000428C */  lw         $v0, ($v0)
/* B314 8001AB14 0004033C */  lui        $v1, 0x400
/* B318 8001AB18 24104300 */  and        $v0, $v0, $v1
/* B31C 8001AB1C EDFF4010 */  beqz       $v0, .L8001AAD4
/* B320 8001AB20 00000000 */   nop
/* B324 8001AB24 0280053C */  lui        $a1, %hi(_GPU_ResetCallback)
/* B328 8001AB28 94AEA524 */  addiu      $a1, $a1, %lo(_GPU_ResetCallback)
/* B32C 8001AB2C 716C000C */  jal        DMACallback
/* B330 8001AB30 02000424 */   addiu     $a0, $zero, 2
/* B334 8001AB34 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* B338 8001AB38 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* B33C 8001AB3C 21200002 */  addu       $a0, $s0, $zero
/* B340 8001AB40 2000428C */  lw         $v0, 0x20($v0)
/* B344 8001AB44 00000000 */  nop
/* B348 8001AB48 09F84000 */  jalr       $v0
/* B34C 8001AB4C 21282002 */   addu      $a1, $s1, $zero
/* B350 8001AB50 21100000 */  addu       $v0, $zero, $zero
.L8001AB54:
/* B354 8001AB54 1800BF8F */  lw         $ra, 0x18($sp)
/* B358 8001AB58 1400B18F */  lw         $s1, 0x14($sp)
/* B35C 8001AB5C 1000B08F */  lw         $s0, 0x10($sp)
/* B360 8001AB60 0800E003 */  jr         $ra
/* B364 8001AB64 2000BD27 */   addiu     $sp, $sp, 0x20
