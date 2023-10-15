.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCTPutEnv
/* 63A04 80073204 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63A08 80073208 1000B0AF */  sw         $s0, 0x10($sp)
/* 63A0C 8007320C 21808000 */  addu       $s0, $a0, $zero
/* 63A10 80073210 0E80053C */  lui        $a1, %hi(D_800DAFE4)
/* 63A14 80073214 E4AFA524 */  addiu      $a1, $a1, %lo(D_800DAFE4)
/* 63A18 80073218 0F000324 */  addiu      $v1, $zero, 0xf
/* 63A1C 8007321C FFFF0624 */  addiu      $a2, $zero, -1
/* 63A20 80073220 1400BFAF */  sw         $ra, 0x14($sp)
.L80073224:
/* 63A24 80073224 0000828C */  lw         $v0, ($a0)
/* 63A28 80073228 04008424 */  addiu      $a0, $a0, 4
/* 63A2C 8007322C FFFF6324 */  addiu      $v1, $v1, -1
/* 63A30 80073230 0000A2AC */  sw         $v0, ($a1)
/* 63A34 80073234 FBFF6614 */  bne        $v1, $a2, .L80073224
/* 63A38 80073238 0400A524 */   addiu     $a1, $a1, 4
/* 63A3C 8007323C 0E80053C */  lui        $a1, %hi(D_800DB024)
/* 63A40 80073240 24B0A524 */  addiu      $a1, $a1, %lo(D_800DB024)
/* 63A44 80073244 40000426 */  addiu      $a0, $s0, 0x40
/* 63A48 80073248 0F000324 */  addiu      $v1, $zero, 0xf
/* 63A4C 8007324C FFFF0624 */  addiu      $a2, $zero, -1
.L80073250:
/* 63A50 80073250 0000828C */  lw         $v0, ($a0)
/* 63A54 80073254 04008424 */  addiu      $a0, $a0, 4
/* 63A58 80073258 FFFF6324 */  addiu      $v1, $v1, -1
/* 63A5C 8007325C 0000A2AC */  sw         $v0, ($a1)
/* 63A60 80073260 FBFF6614 */  bne        $v1, $a2, .L80073250
/* 63A64 80073264 0400A524 */   addiu     $a1, $a1, 4
/* 63A68 80073268 0E80043C */  lui        $a0, %hi(D_800DAFE0)
/* 63A6C 8007326C E0AF8424 */  addiu      $a0, $a0, %lo(D_800DAFE0)
/* 63A70 80073270 3DCD010C */  jal        LIBPRESS_OBJ_3B0
/* 63A74 80073274 20000524 */   addiu     $a1, $zero, 0x20
/* 63A78 80073278 0E80043C */  lui        $a0, %hi(D_800DB064)
/* 63A7C 8007327C 64B08424 */  addiu      $a0, $a0, %lo(D_800DB064)
/* 63A80 80073280 3DCD010C */  jal        LIBPRESS_OBJ_3B0
/* 63A84 80073284 20000524 */   addiu     $a1, $zero, 0x20
/* 63A88 80073288 21100002 */  addu       $v0, $s0, $zero
/* 63A8C 8007328C 1400BF8F */  lw         $ra, 0x14($sp)
/* 63A90 80073290 1000B08F */  lw         $s0, 0x10($sp)
/* 63A94 80073294 0800E003 */  jr         $ra
/* 63A98 80073298 1800BD27 */   addiu     $sp, $sp, 0x18
