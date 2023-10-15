.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b6a94
/* A7294 800B6A94 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7298 800B6A98 1400BFAF */  sw         $ra, 0x14($sp)
/* A729C 800B6A9C AE6C000C */  jal        CheckCallback
/* A72A0 800B6AA0 1000B0AF */   sw        $s0, 0x10($sp)
/* A72A4 800B6AA4 0B004014 */  bnez       $v0, .L800B6AD4
/* A72A8 800B6AA8 1E80103C */   lui       $s0, %hi(D_801E07B0)
/* A72AC 800B6AAC B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A72B0 800B6AB0 00000000 */  nop
/* A72B4 800B6AB4 03004014 */  bnez       $v0, .L800B6AC4
/* A72B8 800B6AB8 00000000 */   nop
/* A72BC 800B6ABC 1D6E000C */  jal        FUN_8001b874
/* A72C0 800B6AC0 00000000 */   nop
.L800B6AC4:
/* A72C4 800B6AC4 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A72C8 800B6AC8 00000000 */  nop
/* A72CC 800B6ACC 01004224 */  addiu      $v0, $v0, 1
/* A72D0 800B6AD0 B00702A2 */  sb         $v0, 0x7b0($s0)
.L800B6AD4:
/* A72D4 800B6AD4 1400BF8F */  lw         $ra, 0x14($sp)
/* A72D8 800B6AD8 1000B08F */  lw         $s0, 0x10($sp)
/* A72DC 800B6ADC 0800E003 */  jr         $ra
/* A72E0 800B6AE0 1800BD27 */   addiu     $sp, $sp, 0x18
