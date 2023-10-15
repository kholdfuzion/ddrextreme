.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D2A2C
/* C322C 800D2A2C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* C3230 800D2A30 1000B0AF */  sw         $s0, 0x10($sp)
/* C3234 800D2A34 561F103C */  lui        $s0, 0x1f56
/* C3238 800D2A38 1800B2AF */  sw         $s2, 0x18($sp)
/* C323C 800D2A3C 20001224 */  addiu      $s2, $zero, 0x20
/* C3240 800D2A40 01000424 */  addiu      $a0, $zero, 1
/* C3244 800D2A44 1C00BFAF */  sw         $ra, 0x1c($sp)
/* C3248 800D2A48 1400B1AF */  sw         $s1, 0x14($sp)
/* C324C 800D2A4C 000000A6 */  sh         $zero, ($s0)
/* C3250 800D2A50 CD6B000C */  jal        VSync
/* C3254 800D2A54 00000000 */   nop
/* C3258 800D2A58 FFFF5130 */  andi       $s1, $v0, 0xffff
.L800D2A5C:
/* C325C 800D2A5C CD6B000C */  jal        VSync
/* C3260 800D2A60 01000424 */   addiu     $a0, $zero, 1
/* C3264 800D2A64 23105100 */  subu       $v0, $v0, $s1
/* C3268 800D2A68 FFFF4230 */  andi       $v0, $v0, 0xffff
/* C326C 800D2A6C 2A104202 */  slt        $v0, $s2, $v0
/* C3270 800D2A70 FAFF4010 */  beqz       $v0, .L800D2A5C
/* C3274 800D2A74 01000224 */   addiu     $v0, $zero, 1
/* C3278 800D2A78 000002A6 */  sh         $v0, ($s0)
/* C327C 800D2A7C 20001124 */  addiu      $s1, $zero, 0x20
/* C3280 800D2A80 CD6B000C */  jal        VSync
/* C3284 800D2A84 01000424 */   addiu     $a0, $zero, 1
/* C3288 800D2A88 FFFF5030 */  andi       $s0, $v0, 0xffff
.L800D2A8C:
/* C328C 800D2A8C CD6B000C */  jal        VSync
/* C3290 800D2A90 01000424 */   addiu     $a0, $zero, 1
/* C3294 800D2A94 23105000 */  subu       $v0, $v0, $s0
/* C3298 800D2A98 FFFF4230 */  andi       $v0, $v0, 0xffff
/* C329C 800D2A9C 2A102202 */  slt        $v0, $s1, $v0
/* C32A0 800D2AA0 FAFF4010 */  beqz       $v0, .L800D2A8C
/* C32A4 800D2AA4 00000000 */   nop
/* C32A8 800D2AA8 1C00BF8F */  lw         $ra, 0x1c($sp)
/* C32AC 800D2AAC 1800B28F */  lw         $s2, 0x18($sp)
/* C32B0 800D2AB0 1400B18F */  lw         $s1, 0x14($sp)
/* C32B4 800D2AB4 1000B08F */  lw         $s0, 0x10($sp)
/* C32B8 800D2AB8 0800E003 */  jr         $ra
/* C32BC 800D2ABC 2000BD27 */   addiu     $sp, $sp, 0x20
