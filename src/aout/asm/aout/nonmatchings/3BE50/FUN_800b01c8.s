.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b01c8
/* A09C8 800B01C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A09CC 800B01CC 1400BFAF */  sw         $ra, 0x14($sp)
/* A09D0 800B01D0 2373000C */  jal        FUN_8001cc8c
/* A09D4 800B01D4 1000B0AF */   sw        $s0, 0x10($sp)
/* A09D8 800B01D8 13004010 */  beqz       $v0, .L800B0228
/* A09DC 800B01DC 0F80103C */   lui       $s0, %hi(D_800EC708)
/* A09E0 800B01E0 08C7028E */  lw         $v0, %lo(D_800EC708)($s0)
/* A09E4 800B01E4 00000000 */  nop
/* A09E8 800B01E8 14004228 */  slti       $v0, $v0, 0x14
/* A09EC 800B01EC 24004010 */  beqz       $v0, .L800B0280
/* A09F0 800B01F0 1D80033C */   lui       $v1, %hi(D_801D0048)
/* A09F4 800B01F4 48006324 */  addiu      $v1, $v1, %lo(D_801D0048)
/* A09F8 800B01F8 0400628C */  lw         $v0, 4($v1)
/* A09FC 800B01FC FDFF0424 */  addiu      $a0, $zero, -3
/* A0A00 800B0200 24104400 */  and        $v0, $v0, $a0
/* A0A04 800B0204 040062AC */  sw         $v0, 4($v1)
/* A0A08 800B0208 04006494 */  lhu        $a0, 4($v1)
/* A0A0C 800B020C BDEF020C */  jal        FUN_800bbef4
/* A0A10 800B0210 00000000 */   nop
/* A0A14 800B0214 B8C1020C */  jal        FUN_800b06e0
/* A0A18 800B0218 21200000 */   addu      $a0, $zero, $zero
/* A0A1C 800B021C 14000224 */  addiu      $v0, $zero, 0x14
/* A0A20 800B0220 A0C00208 */  j          .L800B0280
/* A0A24 800B0224 08C702AE */   sw        $v0, -0x38f8($s0)
.L800B0228:
/* A0A28 800B0228 0F80053C */  lui        $a1, %hi(D_800EC708)
/* A0A2C 800B022C 08C7A28C */  lw         $v0, %lo(D_800EC708)($a1)
/* A0A30 800B0230 00000000 */  nop
/* A0A34 800B0234 02004018 */  blez       $v0, .L800B0240
/* A0A38 800B0238 FFFF4224 */   addiu     $v0, $v0, -1
/* A0A3C 800B023C 08C7A2AC */  sw         $v0, -0x38f8($a1)
.L800B0240:
/* A0A40 800B0240 08C7A38C */  lw         $v1, -0x38f8($a1)
/* A0A44 800B0244 01000224 */  addiu      $v0, $zero, 1
/* A0A48 800B0248 0E006214 */  bne        $v1, $v0, .L800B0284
/* A0A4C 800B024C 1D80023C */   lui       $v0, 0x801d
/* A0A50 800B0250 FE000424 */  addiu      $a0, $zero, 0xfe
/* A0A54 800B0254 B8C1020C */  jal        FUN_800b06e0
/* A0A58 800B0258 08C7A0AC */   sw        $zero, -0x38f8($a1)
/* A0A5C 800B025C 1D80033C */  lui        $v1, %hi(D_801D0048)
/* A0A60 800B0260 48006324 */  addiu      $v1, $v1, %lo(D_801D0048)
/* A0A64 800B0264 0400628C */  lw         $v0, 4($v1)
/* A0A68 800B0268 00000000 */  nop
/* A0A6C 800B026C 02004234 */  ori        $v0, $v0, 2
/* A0A70 800B0270 040062AC */  sw         $v0, 4($v1)
/* A0A74 800B0274 04006494 */  lhu        $a0, 4($v1)
/* A0A78 800B0278 BDEF020C */  jal        FUN_800bbef4
/* A0A7C 800B027C 00000000 */   nop
.L800B0280:
/* A0A80 800B0280 1D80023C */  lui        $v0, %hi(D_801CF828)
.L800B0284:
/* A0A84 800B0284 28F8448C */  lw         $a0, %lo(D_801CF828)($v0)
/* A0A88 800B0288 BFC2020C */  jal        ChangeTh
/* A0A8C 800B028C 00000000 */   nop
/* A0A90 800B0290 1400BF8F */  lw         $ra, 0x14($sp)
/* A0A94 800B0294 1000B08F */  lw         $s0, 0x10($sp)
/* A0A98 800B0298 0800E003 */  jr         $ra
/* A0A9C 800B029C 1800BD27 */   addiu     $sp, $sp, 0x18
