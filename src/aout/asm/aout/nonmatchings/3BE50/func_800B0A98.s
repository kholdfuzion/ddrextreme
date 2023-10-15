.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B0A98
/* A1298 800B0A98 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A129C 800B0A9C 1D80023C */  lui        $v0, %hi(D_801D0048)
/* A12A0 800B0AA0 1000B0AF */  sw         $s0, 0x10($sp)
/* A12A4 800B0AA4 48005024 */  addiu      $s0, $v0, %lo(D_801D0048)
/* A12A8 800B0AA8 1400BFAF */  sw         $ra, 0x14($sp)
.L800B0AAC:
/* A12AC 800B0AAC 02000282 */  lb         $v0, 2($s0)
/* A12B0 800B0AB0 00000000 */  nop
/* A12B4 800B0AB4 05004010 */  beqz       $v0, .L800B0ACC
/* A12B8 800B0AB8 00000000 */   nop
/* A12BC 800B0ABC 87BA020C */  jal        FUN_800aea1c
/* A12C0 800B0AC0 00000000 */   nop
/* A12C4 800B0AC4 ABC20208 */  j          .L800B0AAC
/* A12C8 800B0AC8 00000000 */   nop
.L800B0ACC:
/* A12CC 800B0ACC B0BC020C */  jal        FUN_800af2c0
/* A12D0 800B0AD0 00000000 */   nop
/* A12D4 800B0AD4 ABC20208 */  j          .L800B0AAC
/* A12D8 800B0AD8 00000000 */   nop
