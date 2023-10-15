.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2b18
/* A3318 800B2B18 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A331C 800B2B1C 1E80063C */  lui        $a2, %hi(D_801E0740)
/* A3320 800B2B20 4007C524 */  addiu      $a1, $a2, %lo(D_801E0740)
/* A3324 800B2B24 2120A000 */  addu       $a0, $a1, $zero
/* A3328 800B2B28 18000224 */  addiu      $v0, $zero, 0x18
/* A332C 800B2B2C 03000324 */  addiu      $v1, $zero, 3
/* A3330 800B2B30 4007C2A4 */  sh         $v0, 0x740($a2)
/* A3334 800B2B34 1E80023C */  lui        $v0, %hi(D_801DF2D0)
/* A3338 800B2B38 D0F24224 */  addiu      $v0, $v0, %lo(D_801DF2D0)
/* A333C 800B2B3C 1000BFAF */  sw         $ra, 0x10($sp)
/* A3340 800B2B40 0200A3A4 */  sh         $v1, 2($a1)
/* A3344 800B2B44 1E80033C */  lui        $v1, %hi(D_801DF520)
/* A3348 800B2B48 20F56324 */  addiu      $v1, $v1, %lo(D_801DF520)
/* A334C 800B2B4C 0400A2AC */  sw         $v0, 4($a1)
/* A3350 800B2B50 1E80023C */  lui        $v0, %hi(D_801DFF40)
/* A3354 800B2B54 40FF4224 */  addiu      $v0, $v0, %lo(D_801DFF40)
/* A3358 800B2B58 0800A3AC */  sw         $v1, 8($a1)
/* A335C 800B2B5C 00080324 */  addiu      $v1, $zero, 0x800
/* A3360 800B2B60 0C00A2AC */  sw         $v0, 0xc($a1)
/* A3364 800B2B64 0B80023C */  lui        $v0, %hi(func_800B2E54)
/* A3368 800B2B68 542E4224 */  addiu      $v0, $v0, %lo(func_800B2E54)
/* A336C 800B2B6C 1000A3AC */  sw         $v1, 0x10($a1)
/* A3370 800B2B70 1400A3AC */  sw         $v1, 0x14($a1)
/* A3374 800B2B74 0F80033C */  lui        $v1, %hi(D_800EC74C)
/* A3378 800B2B78 4CC76324 */  addiu      $v1, $v1, %lo(D_800EC74C)
/* A337C 800B2B7C 1800A2AC */  sw         $v0, 0x18($a1)
/* A3380 800B2B80 A8D3020C */  jal        FUN_800b4ea0
/* A3384 800B2B84 1C00A3AC */   sw        $v1, 0x1c($a1)
/* A3388 800B2B88 1E80033C */  lui        $v1, %hi(D_801E0760)
/* A338C 800B2B8C FFFF0224 */  addiu      $v0, $zero, -1
/* A3390 800B2B90 25CA020C */  jal        FUN_800b2894
/* A3394 800B2B94 600762AC */   sw        $v0, %lo(D_801E0760)($v1)
/* A3398 800B2B98 08CB020C */  jal        FUN_800b2c20
/* A339C 800B2B9C 21200000 */   addu      $a0, $zero, $zero
/* A33A0 800B2BA0 1000BF8F */  lw         $ra, 0x10($sp)
/* A33A4 800B2BA4 01000224 */  addiu      $v0, $zero, 1
/* A33A8 800B2BA8 0800E003 */  jr         $ra
/* A33AC 800B2BAC 1800BD27 */   addiu     $sp, $sp, 0x18
