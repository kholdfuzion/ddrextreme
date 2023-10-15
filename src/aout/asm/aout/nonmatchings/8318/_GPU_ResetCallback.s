.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _GPU_ResetCallback
/* B694 8001AE94 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B698 8001AE98 1000BFAF */  sw         $ra, 0x10($sp)
/* B69C 8001AE9C 0280053C */  lui        $a1, %hi(SYS_OBJ_23A8)
/* B6A0 8001AEA0 8CA3A524 */  addiu      $a1, $a1, %lo(SYS_OBJ_23A8)
/* B6A4 8001AEA4 716C000C */  jal        DMACallback
/* B6A8 8001AEA8 02000424 */   addiu     $a0, $zero, 2
/* B6AC 8001AEAC 1000BF8F */  lw         $ra, 0x10($sp)
/* B6B0 8001AEB0 1800BD27 */  addiu      $sp, $sp, 0x18
/* B6B4 8001AEB4 0800E003 */  jr         $ra
/* B6B8 8001AEB8 00000000 */   nop
