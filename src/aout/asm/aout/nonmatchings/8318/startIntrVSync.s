.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel startIntrVSync
/* C114 8001B914 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C118 8001B918 0D80043C */  lui        $a0, %hi(D_800D3E08)
/* C11C 8001B91C 083E8424 */  addiu      $a0, $a0, %lo(D_800D3E08)
/* C120 8001B920 0D80033C */  lui        $v1, %hi(D_800D3E2C)
/* C124 8001B924 2C3E638C */  lw         $v1, %lo(D_800D3E2C)($v1)
/* C128 8001B928 00010224 */  addiu      $v0, $zero, 0x100
/* C12C 8001B92C 1000BFAF */  sw         $ra, 0x10($sp)
/* C130 8001B930 000062AC */  sw         $v0, ($v1)
/* C134 8001B934 0D80013C */  lui        $at, %hi(D_800D3E28)
/* C138 8001B938 283E20AC */  sw         $zero, %lo(D_800D3E28)($at)
/* C13C 8001B93C 816E000C */  jal        INTR_VB_OBJ_F0
/* C140 8001B940 08000524 */   addiu     $a1, $zero, 8
/* C144 8001B944 0280053C */  lui        $a1, %hi(INTR_VB_OBJ_58)
/* C148 8001B948 6CB9A524 */  addiu      $a1, $a1, %lo(INTR_VB_OBJ_58)
/* C14C 8001B94C 656C000C */  jal        InterruptCallback
/* C150 8001B950 21200000 */   addu      $a0, $zero, $zero
/* C154 8001B954 0280023C */  lui        $v0, %hi(INTR_VB_OBJ_C4)
/* C158 8001B958 D8B94224 */  addiu      $v0, $v0, %lo(INTR_VB_OBJ_C4)
/* C15C 8001B95C 1000BF8F */  lw         $ra, 0x10($sp)
/* C160 8001B960 1800BD27 */  addiu      $sp, $sp, 0x18
/* C164 8001B964 0800E003 */  jr         $ra
/* C168 8001B968 00000000 */   nop
