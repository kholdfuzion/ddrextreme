.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c5984
/* B6184 800C5984 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B6188 800C5988 1000B0AF */  sw         $s0, 0x10($sp)
/* B618C 800C598C 21800000 */  addu       $s0, $zero, $zero
/* B6190 800C5990 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B6194 800C5994 2080023C */  lui        $v0, %hi(D_801FB764)
/* B6198 800C5998 1400B1AF */  sw         $s1, 0x14($sp)
/* B619C 800C599C 64B75124 */  addiu      $s1, $v0, %lo(D_801FB764)
/* B61A0 800C59A0 2000BFAF */  sw         $ra, 0x20($sp)
/* B61A4 800C59A4 1800B2AF */  sw         $s2, 0x18($sp)
/* B61A8 800C59A8 B8BC238E */  lw         $v1, -0x4348($s1)
/* B61AC 800C59AC B4BC328E */  lw         $s2, -0x434c($s1)
/* B61B0 800C59B0 0600622C */  sltiu      $v0, $v1, 6
/* B61B4 800C59B4 3D004010 */  beqz       $v0, .L800C5AAC
/* B61B8 800C59B8 21980002 */   addu      $s3, $s0, $zero
/* B61BC 800C59BC 0180023C */  lui        $v0, %hi(D_800178F0)
/* B61C0 800C59C0 F0784224 */  addiu      $v0, $v0, %lo(D_800178F0)
/* B61C4 800C59C4 80180300 */  sll        $v1, $v1, 2
/* B61C8 800C59C8 21186200 */  addu       $v1, $v1, $v0
/* B61CC 800C59CC 0000628C */  lw         $v0, ($v1)
/* B61D0 800C59D0 00000000 */  nop
/* B61D4 800C59D4 08004000 */  jr         $v0
/* B61D8 800C59D8 00000000 */   nop
/* B61DC 800C59DC 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B61E0 800C59E0 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B61E4 800C59E4 0400628C */  lw         $v0, 4($v1)
/* B61E8 800C59E8 00000000 */  nop
/* B61EC 800C59EC 01004224 */  addiu      $v0, $v0, 1
/* B61F0 800C59F0 040062AC */  sw         $v0, 4($v1)
/* B61F4 800C59F4 0C00248E */  lw         $a0, 0xc($s1)
/* B61F8 800C59F8 3825030C */  jal        FUN_800c94e0
/* B61FC 800C59FC 00000000 */   nop
/* B6200 800C5A00 94160308 */  j          .L800C5A50
/* B6204 800C5A04 1F80033C */   lui       $v1, 0x801f
/* B6208 800C5A08 F224030C */  jal        FUN_800c93c8
/* B620C 800C5A0C 00000000 */   nop
/* B6210 800C5A10 21804000 */  addu       $s0, $v0, $zero
/* B6214 800C5A14 FEFF0224 */  addiu      $v0, $zero, -2
/* B6218 800C5A18 24000212 */  beq        $s0, $v0, .L800C5AAC
/* B621C 800C5A1C 00000000 */   nop
/* B6220 800C5A20 19000016 */  bnez       $s0, .L800C5A88
/* B6224 800C5A24 1F80033C */   lui       $v1, %hi(D_801F7418)
/* B6228 800C5A28 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B622C 800C5A2C 0400628C */  lw         $v0, 4($v1)
/* B6230 800C5A30 00000000 */  nop
/* B6234 800C5A34 01004224 */  addiu      $v0, $v0, 1
/* B6238 800C5A38 040062AC */  sw         $v0, 4($v1)
/* B623C 800C5A3C 0C00248E */  lw         $a0, 0xc($s1)
/* B6240 800C5A40 1800258E */  lw         $a1, 0x18($s1)
/* B6244 800C5A44 4A25030C */  jal        FUN_800c9528
/* B6248 800C5A48 00000000 */   nop
/* B624C 800C5A4C 1F80033C */  lui        $v1, %hi(D_801F7418)
.L800C5A50:
/* B6250 800C5A50 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B6254 800C5A54 0400628C */  lw         $v0, 4($v1)
/* B6258 800C5A58 00000000 */  nop
/* B625C 800C5A5C 01004224 */  addiu      $v0, $v0, 1
/* B6260 800C5A60 AB160308 */  j          .L800C5AAC
/* B6264 800C5A64 040062AC */   sw        $v0, 4($v1)
/* B6268 800C5A68 F224030C */  jal        FUN_800c93c8
/* B626C 800C5A6C 00000000 */   nop
/* B6270 800C5A70 21804000 */  addu       $s0, $v0, $zero
/* B6274 800C5A74 FEFF0224 */  addiu      $v0, $zero, -2
/* B6278 800C5A78 0C000212 */  beq        $s0, $v0, .L800C5AAC
/* B627C 800C5A7C 00000000 */   nop
/* B6280 800C5A80 03000012 */  beqz       $s0, .L800C5A90
/* B6284 800C5A84 1F80033C */   lui       $v1, %hi(D_801F7418)
.L800C5A88:
/* B6288 800C5A88 AB160308 */  j          .L800C5AAC
/* B628C 800C5A8C 01001324 */   addiu     $s3, $zero, 1
.L800C5A90:
/* B6290 800C5A90 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B6294 800C5A94 0400628C */  lw         $v0, 4($v1)
/* B6298 800C5A98 00000000 */  nop
/* B629C 800C5A9C 01004224 */  addiu      $v0, $v0, 1
/* B62A0 800C5AA0 040062AC */  sw         $v0, 4($v1)
/* B62A4 800C5AA4 21900000 */  addu       $s2, $zero, $zero
/* B62A8 800C5AA8 080020AE */  sw         $zero, 8($s1)
.L800C5AAC:
/* B62AC 800C5AAC 04006012 */  beqz       $s3, .L800C5AC0
/* B62B0 800C5AB0 21104002 */   addu      $v0, $s2, $zero
/* B62B4 800C5AB4 21900000 */  addu       $s2, $zero, $zero
/* B62B8 800C5AB8 080030AE */  sw         $s0, 8($s1)
/* B62BC 800C5ABC 21104002 */  addu       $v0, $s2, $zero
.L800C5AC0:
/* B62C0 800C5AC0 2000BF8F */  lw         $ra, 0x20($sp)
/* B62C4 800C5AC4 1C00B38F */  lw         $s3, 0x1c($sp)
/* B62C8 800C5AC8 1800B28F */  lw         $s2, 0x18($sp)
/* B62CC 800C5ACC 1400B18F */  lw         $s1, 0x14($sp)
/* B62D0 800C5AD0 1000B08F */  lw         $s0, 0x10($sp)
/* B62D4 800C5AD4 0800E003 */  jr         $ra
/* B62D8 800C5AD8 2800BD27 */   addiu     $sp, $sp, 0x28
