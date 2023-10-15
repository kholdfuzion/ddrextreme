.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c620c
/* B6A0C 800C620C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B6A10 800C6210 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B6A14 800C6214 2198A000 */  addu       $s3, $a1, $zero
/* B6A18 800C6218 2000B4AF */  sw         $s4, 0x20($sp)
/* B6A1C 800C621C 21A0C000 */  addu       $s4, $a2, $zero
/* B6A20 800C6220 1800B2AF */  sw         $s2, 0x18($sp)
/* B6A24 800C6224 FFFF1224 */  addiu      $s2, $zero, -1
/* B6A28 800C6228 40100400 */  sll        $v0, $a0, 1
/* B6A2C 800C622C 21104400 */  addu       $v0, $v0, $a0
/* B6A30 800C6230 C0100200 */  sll        $v0, $v0, 3
/* B6A34 800C6234 21104400 */  addu       $v0, $v0, $a0
/* B6A38 800C6238 C0100200 */  sll        $v0, $v0, 3
/* B6A3C 800C623C 2080033C */  lui        $v1, %hi(D_801FB540)
/* B6A40 800C6240 40B56324 */  addiu      $v1, $v1, %lo(D_801FB540)
/* B6A44 800C6244 1000B0AF */  sw         $s0, 0x10($sp)
/* B6A48 800C6248 21804300 */  addu       $s0, $v0, $v1
/* B6A4C 800C624C 1400B1AF */  sw         $s1, 0x14($sp)
/* B6A50 800C6250 2400BFAF */  sw         $ra, 0x24($sp)
/* B6A54 800C6254 0400038E */  lw         $v1, 4($s0)
/* B6A58 800C6258 01000224 */  addiu      $v0, $zero, 1
/* B6A5C 800C625C 19006214 */  bne        $v1, $v0, .L800C62C4
/* B6A60 800C6260 A4001126 */   addiu     $s1, $s0, 0xa4
/* B6A64 800C6264 0C00028E */  lw         $v0, 0xc($s0)
/* B6A68 800C6268 00000000 */  nop
/* B6A6C 800C626C 01004230 */  andi       $v0, $v0, 1
/* B6A70 800C6270 14004010 */  beqz       $v0, .L800C62C4
/* B6A74 800C6274 FEFF0224 */   addiu     $v0, $zero, -2
/* B6A78 800C6278 0800238E */  lw         $v1, 8($s1)
/* B6A7C 800C627C 00000000 */  nop
/* B6A80 800C6280 11006210 */  beq        $v1, $v0, .L800C62C8
/* B6A84 800C6284 21104002 */   addu      $v0, $s2, $zero
/* B6A88 800C6288 9800048E */  lw         $a0, 0x98($s0)
/* B6A8C 800C628C 2A1C030C */  jal        FUN_800c70a8
/* B6A90 800C6290 00000000 */   nop
/* B6A94 800C6294 0B004010 */  beqz       $v0, .L800C62C4
/* B6A98 800C6298 21202002 */   addu      $a0, $s1, $zero
/* B6A9C 800C629C 0C0030AE */  sw         $s0, 0xc($s1)
/* B6AA0 800C62A0 100033AE */  sw         $s3, 0x10($s1)
/* B6AA4 800C62A4 140034AE */  sw         $s4, 0x14($s1)
/* B6AA8 800C62A8 0C00068E */  lw         $a2, 0xc($s0)
/* B6AAC 800C62AC 02000524 */  addiu      $a1, $zero, 2
/* B6AB0 800C62B0 82300600 */  srl        $a2, $a2, 2
/* B6AB4 800C62B4 0100C638 */  xori       $a2, $a2, 1
/* B6AB8 800C62B8 1F1B030C */  jal        FUN_800c6c7c
/* B6ABC 800C62BC 0100C630 */   andi      $a2, $a2, 1
/* B6AC0 800C62C0 21904000 */  addu       $s2, $v0, $zero
.L800C62C4:
/* B6AC4 800C62C4 21104002 */  addu       $v0, $s2, $zero
.L800C62C8:
/* B6AC8 800C62C8 2400BF8F */  lw         $ra, 0x24($sp)
/* B6ACC 800C62CC 2000B48F */  lw         $s4, 0x20($sp)
/* B6AD0 800C62D0 1C00B38F */  lw         $s3, 0x1c($sp)
/* B6AD4 800C62D4 1800B28F */  lw         $s2, 0x18($sp)
/* B6AD8 800C62D8 1400B18F */  lw         $s1, 0x14($sp)
/* B6ADC 800C62DC 1000B08F */  lw         $s0, 0x10($sp)
/* B6AE0 800C62E0 0800E003 */  jr         $ra
/* B6AE4 800C62E4 2800BD27 */   addiu     $sp, $sp, 0x28
