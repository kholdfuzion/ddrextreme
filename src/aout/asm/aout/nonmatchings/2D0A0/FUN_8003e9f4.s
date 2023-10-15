.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003e9f4
/* 2F1F4 8003E9F4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 2F1F8 8003E9F8 21108000 */  addu       $v0, $a0, $zero
/* 2F1FC 8003E9FC 2148A000 */  addu       $t1, $a1, $zero
/* 2F200 8003EA00 2000A827 */  addiu      $t0, $sp, 0x20
/* 2F204 8003EA04 02000424 */  addiu      $a0, $zero, 2
/* 2F208 8003EA08 2800A327 */  addiu      $v1, $sp, 0x28
/* 2F20C 8003EA0C 3400BFAF */  sw         $ra, 0x34($sp)
/* 2F210 8003EA10 3000B0AF */  sw         $s0, 0x30($sp)
.L8003EA14:
/* 2F214 8003EA14 000060AC */  sw         $zero, ($v1)
/* 2F218 8003EA18 FFFF8424 */  addiu      $a0, $a0, -1
/* 2F21C 8003EA1C FDFF8104 */  bgez       $a0, .L8003EA14
/* 2F220 8003EA20 FCFF6324 */   addiu     $v1, $v1, -4
/* 2F224 8003EA24 21200000 */  addu       $a0, $zero, $zero
/* 2F228 8003EA28 C8FF0524 */  addiu      $a1, $zero, -0x38
/* 2F22C 8003EA2C A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2F230 8003EA30 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F234 8003EA34 80100200 */  sll        $v0, $v0, 2
/* 2F238 8003EA38 21100201 */  addu       $v0, $t0, $v0
/* 2F23C 8003EA3C 02000324 */  addiu      $v1, $zero, 2
/* 2F240 8003EA40 00101024 */  addiu      $s0, $zero, 0x1000
/* 2F244 8003EA44 000043AC */  sw         $v1, ($v0)
/* 2F248 8003EA48 0180023C */  lui        $v0, %hi(D_80013168)
/* 2F24C 8003EA4C 68314224 */  addiu      $v0, $v0, %lo(D_80013168)
/* 2F250 8003EA50 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F254 8003EA54 1400A2AF */  sw         $v0, 0x14($sp)
/* 2F258 8003EA58 290A010C */  jal        PrintText_800428a4
/* 2F25C 8003EA5C 1800A9AF */   sw        $t1, 0x18($sp)
/* 2F260 8003EA60 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2F264 8003EA64 B8FF0624 */  addiu      $a2, $zero, -0x48
/* 2F268 8003EA68 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F26C 8003EA6C 0180023C */  lui        $v0, %hi(D_80013178)
/* 2F270 8003EA70 2000A48F */  lw         $a0, 0x20($sp)
/* 2F274 8003EA74 78314224 */  addiu      $v0, $v0, %lo(D_80013178)
/* 2F278 8003EA78 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F27C 8003EA7C 290A010C */  jal        PrintText_800428a4
/* 2F280 8003EA80 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F284 8003EA84 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2F288 8003EA88 1C000624 */  addiu      $a2, $zero, 0x1c
/* 2F28C 8003EA8C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F290 8003EA90 0180023C */  lui        $v0, %hi(D_8001318C)
/* 2F294 8003EA94 2800A48F */  lw         $a0, 0x28($sp)
/* 2F298 8003EA98 8C314224 */  addiu      $v0, $v0, %lo(D_8001318C)
/* 2F29C 8003EA9C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F2A0 8003EAA0 290A010C */  jal        PrintText_800428a4
/* 2F2A4 8003EAA4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F2A8 8003EAA8 21200000 */  addu       $a0, $zero, $zero
/* 2F2AC 8003EAAC 65FF0524 */  addiu      $a1, $zero, -0x9b
/* 2F2B0 8003EAB0 52000624 */  addiu      $a2, $zero, 0x52
/* 2F2B4 8003EAB4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F2B8 8003EAB8 0180023C */  lui        $v0, %hi(D_80013194)
/* 2F2BC 8003EABC 94314224 */  addiu      $v0, $v0, %lo(D_80013194)
/* 2F2C0 8003EAC0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F2C4 8003EAC4 290A010C */  jal        PrintText_800428a4
/* 2F2C8 8003EAC8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F2CC 8003EACC 21200000 */  addu       $a0, $zero, $zero
/* 2F2D0 8003EAD0 65FF0524 */  addiu      $a1, $zero, -0x9b
/* 2F2D4 8003EAD4 5A000624 */  addiu      $a2, $zero, 0x5a
/* 2F2D8 8003EAD8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F2DC 8003EADC 0180023C */  lui        $v0, %hi(D_800131B8)
/* 2F2E0 8003EAE0 B8314224 */  addiu      $v0, $v0, %lo(D_800131B8)
/* 2F2E4 8003EAE4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F2E8 8003EAE8 290A010C */  jal        PrintText_800428a4
/* 2F2EC 8003EAEC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F2F0 8003EAF0 7CAA000C */  jal        vsync_8002a9f0
/* 2F2F4 8003EAF4 00000000 */   nop
/* 2F2F8 8003EAF8 3400BF8F */  lw         $ra, 0x34($sp)
/* 2F2FC 8003EAFC 3000B08F */  lw         $s0, 0x30($sp)
/* 2F300 8003EB00 0800E003 */  jr         $ra
/* 2F304 8003EB04 3800BD27 */   addiu     $sp, $sp, 0x38
