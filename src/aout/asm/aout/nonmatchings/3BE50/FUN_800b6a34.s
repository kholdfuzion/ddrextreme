.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b6a34
/* A7234 800B6A34 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A7238 800B6A38 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A723C 800B6A3C 21988000 */  addu       $s3, $a0, $zero
/* A7240 800B6A40 1000B0AF */  sw         $s0, 0x10($sp)
/* A7244 800B6A44 2180A000 */  addu       $s0, $a1, $zero
/* A7248 800B6A48 1400B1AF */  sw         $s1, 0x14($sp)
/* A724C 800B6A4C 2188C000 */  addu       $s1, $a2, $zero
/* A7250 800B6A50 1800B2AF */  sw         $s2, 0x18($sp)
/* A7254 800B6A54 2000BFAF */  sw         $ra, 0x20($sp)
/* A7258 800B6A58 A5DA020C */  jal        FUN_800b6a94
/* A725C 800B6A5C 2190E000 */   addu      $s2, $a3, $zero
/* A7260 800B6A60 21200002 */  addu       $a0, $s0, $zero
/* A7264 800B6A64 21282002 */  addu       $a1, $s1, $zero
/* A7268 800B6A68 09F86002 */  jalr       $s3
/* A726C 800B6A6C 21304002 */   addu      $a2, $s2, $zero
/* A7270 800B6A70 B9DA020C */  jal        FUN_800b6ae4
/* A7274 800B6A74 00000000 */   nop
/* A7278 800B6A78 2000BF8F */  lw         $ra, 0x20($sp)
/* A727C 800B6A7C 1C00B38F */  lw         $s3, 0x1c($sp)
/* A7280 800B6A80 1800B28F */  lw         $s2, 0x18($sp)
/* A7284 800B6A84 1400B18F */  lw         $s1, 0x14($sp)
/* A7288 800B6A88 1000B08F */  lw         $s0, 0x10($sp)
/* A728C 800B6A8C 0800E003 */  jr         $ra
/* A7290 800B6A90 2800BD27 */   addiu     $sp, $sp, 0x28
