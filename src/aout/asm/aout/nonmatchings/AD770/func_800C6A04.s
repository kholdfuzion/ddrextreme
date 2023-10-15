.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C6A04
/* B7204 800C6A04 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B7208 800C6A08 2080063C */  lui        $a2, %hi(D_801FB764)
/* B720C 800C6A0C 1400B1AF */  sw         $s1, 0x14($sp)
/* B7210 800C6A10 64B7D124 */  addiu      $s1, $a2, %lo(D_801FB764)
/* B7214 800C6A14 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B7218 800C6A18 1800B2AF */  sw         $s2, 0x18($sp)
/* B721C 800C6A1C 1000B0AF */  sw         $s0, 0x10($sp)
/* B7220 800C6A20 0800228E */  lw         $v0, 8($s1)
/* B7224 800C6A24 FEFF1224 */  addiu      $s2, $zero, -2
/* B7228 800C6A28 1B005210 */  beq        $v0, $s2, .L800C6A98
/* B722C 800C6A2C FFFF0324 */   addiu     $v1, $zero, -1
/* B7230 800C6A30 B4BC3026 */  addiu      $s0, $s1, -0x434c
/* B7234 800C6A34 09000224 */  addiu      $v0, $zero, 9
/* B7238 800C6A38 0C0024AE */  sw         $a0, 0xc($s1)
/* B723C 800C6A3C 1C002426 */  addiu      $a0, $s1, 0x1c
/* B7240 800C6A40 180025AE */  sw         $a1, 0x18($s1)
/* B7244 800C6A44 64B7C0AC */  sw         $zero, -0x489c($a2)
/* B7248 800C6A48 1400038E */  lw         $v1, 0x14($s0)
/* B724C 800C6A4C 21282002 */  addu       $a1, $s1, $zero
/* B7250 800C6A50 040022AE */  sw         $v0, 4($s1)
/* B7254 800C6A54 080032AE */  sw         $s2, 8($s1)
/* B7258 800C6A58 01006324 */  addiu      $v1, $v1, 1
/* B725C 800C6A5C FF28030C */  jal        FUN_800ca3fc
/* B7260 800C6A60 140003AE */   sw        $v1, 0x14($s0)
/* B7264 800C6A64 1400028E */  lw         $v0, 0x14($s0)
/* B7268 800C6A68 0800238E */  lw         $v1, 8($s1)
/* B726C 800C6A6C FFFF4224 */  addiu      $v0, $v0, -1
/* B7270 800C6A70 08007214 */  bne        $v1, $s2, .L800C6A94
/* B7274 800C6A74 140002AE */   sw        $v0, 0x14($s0)
/* B7278 800C6A78 21804002 */  addu       $s0, $s2, $zero
.L800C6A7C:
/* B727C 800C6A7C 4270000C */  jal        FUN_8001c108
/* B7280 800C6A80 00000000 */   nop
/* B7284 800C6A84 0800228E */  lw         $v0, 8($s1)
/* B7288 800C6A88 00000000 */  nop
/* B728C 800C6A8C FBFF5010 */  beq        $v0, $s0, .L800C6A7C
/* B7290 800C6A90 00000000 */   nop
.L800C6A94:
/* B7294 800C6A94 0800238E */  lw         $v1, 8($s1)
.L800C6A98:
/* B7298 800C6A98 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B729C 800C6A9C 1800B28F */  lw         $s2, 0x18($sp)
/* B72A0 800C6AA0 1400B18F */  lw         $s1, 0x14($sp)
/* B72A4 800C6AA4 1000B08F */  lw         $s0, 0x10($sp)
/* B72A8 800C6AA8 21106000 */  addu       $v0, $v1, $zero
/* B72AC 800C6AAC 0800E003 */  jr         $ra
/* B72B0 800C6AB0 2000BD27 */   addiu     $sp, $sp, 0x20
