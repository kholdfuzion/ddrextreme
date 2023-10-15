.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B1E54
/* A2654 800B1E54 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A2658 800B1E58 1400BFAF */  sw         $ra, 0x14($sp)
/* A265C 800B1E5C 1D6E000C */  jal        FUN_8001b874
/* A2660 800B1E60 1000B0AF */   sw        $s0, 0x10($sp)
/* A2664 800B1E64 1D80033C */  lui        $v1, %hi(D_801D2E0C)
/* A2668 800B1E68 0C2E648C */  lw         $a0, %lo(D_801D2E0C)($v1)
/* A266C 800B1E6C 4FC8020C */  jal        CloseTh
/* A2670 800B1E70 1D80103C */   lui       $s0, %hi(D_801D3218)
/* A2674 800B1E74 216E000C */  jal        FUN_8001b884
/* A2678 800B1E78 18321026 */   addiu     $s0, $s0, %lo(D_801D3218)
/* A267C 800B1E7C 1D6E000C */  jal        FUN_8001b874
/* A2680 800B1E80 00000000 */   nop
/* A2684 800B1E84 0C00048E */  lw         $a0, 0xc($s0)
/* A2688 800B1E88 4BC8020C */  jal        CloseEvent
/* A268C 800B1E8C 00000000 */   nop
/* A2690 800B1E90 216E000C */  jal        FUN_8001b884
/* A2694 800B1E94 00000000 */   nop
/* A2698 800B1E98 1000058E */  lw         $a1, 0x10($s0)
/* A269C 800B1E9C 1CC7020C */  jal        FUN_800b1c70
/* A26A0 800B1EA0 21200000 */   addu      $a0, $zero, $zero
/* A26A4 800B1EA4 FFFF0324 */  addiu      $v1, $zero, -1
/* A26A8 800B1EA8 05004314 */  bne        $v0, $v1, .L800B1EC0
/* A26AC 800B1EAC 0180043C */   lui       $a0, %hi(D_800170EC)
/* A26B0 800B1EB0 EC708424 */  addiu      $a0, $a0, %lo(D_800170EC)
/* A26B4 800B1EB4 03000524 */  addiu      $a1, $zero, 3
/* A26B8 800B1EB8 58AA000C */  jal        error_8002a960
/* A26BC 800B1EBC 21300000 */   addu      $a2, $zero, $zero
.L800B1EC0:
/* A26C0 800B1EC0 1400BF8F */  lw         $ra, 0x14($sp)
/* A26C4 800B1EC4 1000B08F */  lw         $s0, 0x10($sp)
/* A26C8 800B1EC8 0800E003 */  jr         $ra
/* A26CC 800B1ECC 1800BD27 */   addiu     $sp, $sp, 0x18
