.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_5C0
/* A9C94 800B9494 1000A28F */  lw         $v0, 0x10($sp)
/* A9C98 800B9498 00000000 */  nop
/* A9C9C 800B949C 02004228 */  slti       $v0, $v0, 2
/* A9CA0 800B94A0 F1FF4014 */  bnez       $v0, .L800B9468
/* A9CA4 800B94A4 00000000 */   nop
/* A9CA8 800B94A8 3000BF8F */  lw         $ra, 0x30($sp)
/* A9CAC 800B94AC 2C00B58F */  lw         $s5, 0x2c($sp)
/* A9CB0 800B94B0 2800B48F */  lw         $s4, 0x28($sp)
/* A9CB4 800B94B4 2400B38F */  lw         $s3, 0x24($sp)
/* A9CB8 800B94B8 2000B28F */  lw         $s2, 0x20($sp)
/* A9CBC 800B94BC 1C00B18F */  lw         $s1, 0x1c($sp)
/* A9CC0 800B94C0 1800B08F */  lw         $s0, 0x18($sp)
/* A9CC4 800B94C4 0800E003 */  jr         $ra
/* A9CC8 800B94C8 3800BD27 */   addiu     $sp, $sp, 0x38
/* A9CCC 800B94CC 00000000 */  nop
/* A9CD0 800B94D0 00000000 */  nop
