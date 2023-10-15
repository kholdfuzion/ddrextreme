.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b6ae4
/* A72E4 800B6AE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A72E8 800B6AE8 1400BFAF */  sw         $ra, 0x14($sp)
/* A72EC 800B6AEC AE6C000C */  jal        CheckCallback
/* A72F0 800B6AF0 1000B0AF */   sw        $s0, 0x10($sp)
/* A72F4 800B6AF4 0B004014 */  bnez       $v0, .L800B6B24
/* A72F8 800B6AF8 1E80103C */   lui       $s0, %hi(D_801E07B0)
/* A72FC 800B6AFC B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A7300 800B6B00 01000224 */  addiu      $v0, $zero, 1
/* A7304 800B6B04 03006214 */  bne        $v1, $v0, .L800B6B14
/* A7308 800B6B08 00000000 */   nop
/* A730C 800B6B0C 216E000C */  jal        FUN_8001b884
/* A7310 800B6B10 00000000 */   nop
.L800B6B14:
/* A7314 800B6B14 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A7318 800B6B18 00000000 */  nop
/* A731C 800B6B1C FFFF4224 */  addiu      $v0, $v0, -1
/* A7320 800B6B20 B00702A2 */  sb         $v0, 0x7b0($s0)
.L800B6B24:
/* A7324 800B6B24 1400BF8F */  lw         $ra, 0x14($sp)
/* A7328 800B6B28 1000B08F */  lw         $s0, 0x10($sp)
/* A732C 800B6B2C 0800E003 */  jr         $ra
/* A7330 800B6B30 1800BD27 */   addiu     $sp, $sp, 0x18
