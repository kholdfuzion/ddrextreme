.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel checkseccassette_800c3194
/* B3994 800C3194 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* B3998 800C3198 2400B1AF */  sw         $s1, 0x24($sp)
/* B399C 800C319C 21888000 */  addu       $s1, $a0, $zero
/* B39A0 800C31A0 2C00B3AF */  sw         $s3, 0x2c($sp)
/* B39A4 800C31A4 2198A000 */  addu       $s3, $a1, $zero
/* B39A8 800C31A8 2000B0AF */  sw         $s0, 0x20($sp)
/* B39AC 800C31AC 2180C000 */  addu       $s0, $a2, $zero
/* B39B0 800C31B0 1F80023C */  lui        $v0, %hi(D_801F72F8)
/* B39B4 800C31B4 2800B2AF */  sw         $s2, 0x28($sp)
/* B39B8 800C31B8 F8725224 */  addiu      $s2, $v0, %lo(D_801F72F8)
/* B39BC 800C31BC 01000224 */  addiu      $v0, $zero, 1
/* B39C0 800C31C0 06002212 */  beq        $s1, $v0, .L800C31DC
/* B39C4 800C31C4 3000BFAF */   sw        $ra, 0x30($sp)
/* B39C8 800C31C8 03000224 */  addiu      $v0, $zero, 3
/* B39CC 800C31CC 14002212 */  beq        $s1, $v0, .L800C3220
/* B39D0 800C31D0 FEFF0224 */   addiu     $v0, $zero, -2
/* B39D4 800C31D4 A40C0308 */  j          .L800C3290
/* B39D8 800C31D8 00000000 */   nop
.L800C31DC:
/* B39DC 800C31DC 8B37030C */  jal        FUN_800cde2c
/* B39E0 800C31E0 00000000 */   nop
/* B39E4 800C31E4 A12D030C */  jal        FUN_800cb684
/* B39E8 800C31E8 1000A427 */   addiu     $a0, $sp, 0x10
/* B39EC 800C31EC 12004004 */  bltz       $v0, .L800C3238
/* B39F0 800C31F0 0900022A */   slti      $v0, $s0, 9
/* B39F4 800C31F4 02004014 */  bnez       $v0, .L800C3200
/* B39F8 800C31F8 00000000 */   nop
/* B39FC 800C31FC 08001024 */  addiu      $s0, $zero, 8
.L800C3200:
/* B3A00 800C3200 1000A38F */  lw         $v1, 0x10($sp)
/* B3A04 800C3204 1400A78F */  lw         $a3, 0x14($sp)
/* B3A08 800C3208 500043AE */  sw         $v1, 0x50($s2)
/* B3A0C 800C320C 540047AE */  sw         $a3, 0x54($s2)
/* B3A10 800C3210 F80D030C */  jal        FUN_800c37e0
/* B3A14 800C3214 18004426 */   addiu     $a0, $s2, 0x18
/* B3A18 800C3218 980C0308 */  j          .L800C3260
/* B3A1C 800C321C 40201100 */   sll       $a0, $s1, 1
.L800C3220:
/* B3A20 800C3220 AD37030C */  jal        FUN_800cdeb4
/* B3A24 800C3224 00000000 */   nop
/* B3A28 800C3228 BF37030C */  jal        FUN_800cdefc
/* B3A2C 800C322C 1000A427 */   addiu     $a0, $sp, 0x10
/* B3A30 800C3230 03004104 */  bgez       $v0, .L800C3240
/* B3A34 800C3234 0900022A */   slti      $v0, $s0, 9
.L800C3238:
/* B3A38 800C3238 A40C0308 */  j          .L800C3290
/* B3A3C 800C323C FFFF0224 */   addiu     $v0, $zero, -1
.L800C3240:
/* B3A40 800C3240 02004014 */  bnez       $v0, .L800C324C
/* B3A44 800C3244 00000000 */   nop
/* B3A48 800C3248 08001024 */  addiu      $s0, $zero, 8
.L800C324C:
/* B3A4C 800C324C 1000A38F */  lw         $v1, 0x10($sp)
/* B3A50 800C3250 1400A78F */  lw         $a3, 0x14($sp)
/* B3A54 800C3254 B80043AE */  sw         $v1, 0xb8($s2)
/* B3A58 800C3258 BC0047AE */  sw         $a3, 0xbc($s2)
/* B3A5C 800C325C 40201100 */  sll        $a0, $s1, 1
.L800C3260:
/* B3A60 800C3260 21209100 */  addu       $a0, $a0, $s1
/* B3A64 800C3264 80200400 */  sll        $a0, $a0, 2
/* B3A68 800C3268 21209100 */  addu       $a0, $a0, $s1
/* B3A6C 800C326C 80200400 */  sll        $a0, $a0, 2
/* B3A70 800C3270 18008424 */  addiu      $a0, $a0, 0x18
/* B3A74 800C3274 E40E030C */  jal        FUN_800c3b90
/* B3A78 800C3278 21204402 */   addu      $a0, $s2, $a0
/* B3A7C 800C327C 21206002 */  addu       $a0, $s3, $zero
/* B3A80 800C3280 1000A527 */  addiu      $a1, $sp, 0x10
/* B3A84 800C3284 BD6B000C */  jal        memcpy
/* B3A88 800C3288 21300002 */   addu      $a2, $s0, $zero
/* B3A8C 800C328C 21100002 */  addu       $v0, $s0, $zero
.L800C3290:
/* B3A90 800C3290 3000BF8F */  lw         $ra, 0x30($sp)
/* B3A94 800C3294 2C00B38F */  lw         $s3, 0x2c($sp)
/* B3A98 800C3298 2800B28F */  lw         $s2, 0x28($sp)
/* B3A9C 800C329C 2400B18F */  lw         $s1, 0x24($sp)
/* B3AA0 800C32A0 2000B08F */  lw         $s0, 0x20($sp)
/* B3AA4 800C32A4 0800E003 */  jr         $ra
/* B3AA8 800C32A8 3800BD27 */   addiu     $sp, $sp, 0x38
