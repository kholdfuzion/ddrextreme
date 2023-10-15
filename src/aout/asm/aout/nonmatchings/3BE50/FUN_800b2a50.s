.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2a50
/* A3250 800B2A50 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A3254 800B2A54 1E80023C */  lui        $v0, %hi(D_801E0764)
/* A3258 800B2A58 1000B0AF */  sw         $s0, 0x10($sp)
/* A325C 800B2A5C 64075024 */  addiu      $s0, $v0, %lo(D_801E0764)
/* A3260 800B2A60 1400BFAF */  sw         $ra, 0x14($sp)
/* A3264 800B2A64 02000392 */  lbu        $v1, 2($s0)
/* A3268 800B2A68 00000000 */  nop
/* A326C 800B2A6C 26006010 */  beqz       $v1, .L800B2B08
/* A3270 800B2A70 00000000 */   nop
/* A3274 800B2A74 2373000C */  jal        FUN_8001cc8c
/* A3278 800B2A78 030000A2 */   sb        $zero, 3($s0)
/* A327C 800B2A7C 04004014 */  bnez       $v0, .L800B2A90
/* A3280 800B2A80 1E80023C */   lui       $v0, %hi(D_801E0760)
/* A3284 800B2A84 6007448C */  lw         $a0, %lo(D_801E0760)($v0)
/* A3288 800B2A88 B6D5020C */  jal        FUN_800b56d8
/* A328C 800B2A8C 94000524 */   addiu     $a1, $zero, 0x94
.L800B2A90:
/* A3290 800B2A90 02000292 */  lbu        $v0, 2($s0)
/* A3294 800B2A94 00000000 */  nop
/* A3298 800B2A98 08004010 */  beqz       $v0, .L800B2ABC
/* A329C 800B2A9C 00000000 */   nop
/* A32A0 800B2AA0 2373000C */  jal        FUN_8001cc8c
/* A32A4 800B2AA4 00000000 */   nop
/* A32A8 800B2AA8 04004014 */  bnez       $v0, .L800B2ABC
/* A32AC 800B2AAC 1E80023C */   lui       $v0, %hi(D_801E0760)
/* A32B0 800B2AB0 6007448C */  lw         $a0, %lo(D_801E0760)($v0)
/* A32B4 800B2AB4 B6D5020C */  jal        FUN_800b56d8
/* A32B8 800B2AB8 95000524 */   addiu     $a1, $zero, 0x95
.L800B2ABC:
/* A32BC 800B2ABC 1D6E000C */  jal        FUN_8001b874
/* A32C0 800B2AC0 00000000 */   nop
/* A32C4 800B2AC4 1E80033C */  lui        $v1, %hi(D_801E0764)
/* A32C8 800B2AC8 BCCA0208 */  j          .L800B2AF0
/* A32CC 800B2ACC 64077024 */   addiu     $s0, $v1, %lo(D_801E0764)
.L800B2AD0:
/* A32D0 800B2AD0 02000292 */  lbu        $v0, 2($s0)
/* A32D4 800B2AD4 00000000 */  nop
/* A32D8 800B2AD8 03004010 */  beqz       $v0, .L800B2AE8
/* A32DC 800B2ADC 00000000 */   nop
/* A32E0 800B2AE0 8DCB020C */  jal        FUN_800b2e34
/* A32E4 800B2AE4 00000000 */   nop
.L800B2AE8:
/* A32E8 800B2AE8 7CAA000C */  jal        vsync_8002a9f0
/* A32EC 800B2AEC 00000000 */   nop
.L800B2AF0:
/* A32F0 800B2AF0 BBCB020C */  jal        FUN_800b2eec
/* A32F4 800B2AF4 00000000 */   nop
/* A32F8 800B2AF8 F5FF4010 */  beqz       $v0, .L800B2AD0
/* A32FC 800B2AFC 00000000 */   nop
/* A3300 800B2B00 216E000C */  jal        FUN_8001b884
/* A3304 800B2B04 00000000 */   nop
.L800B2B08:
/* A3308 800B2B08 1400BF8F */  lw         $ra, 0x14($sp)
/* A330C 800B2B0C 1000B08F */  lw         $s0, 0x10($sp)
/* A3310 800B2B10 0800E003 */  jr         $ra
/* A3314 800B2B14 1800BD27 */   addiu     $sp, $sp, 0x18
