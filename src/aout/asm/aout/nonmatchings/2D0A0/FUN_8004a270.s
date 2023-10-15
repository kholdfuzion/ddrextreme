.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a270
/* 3AA70 8004A270 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 3AA74 8004A274 3000B4AF */  sw         $s4, 0x30($sp)
/* 3AA78 8004A278 21A08000 */  addu       $s4, $a0, $zero
/* 3AA7C 8004A27C 2000B0AF */  sw         $s0, 0x20($sp)
/* 3AA80 8004A280 2180A000 */  addu       $s0, $a1, $zero
/* 3AA84 8004A284 3800B6AF */  sw         $s6, 0x38($sp)
/* 3AA88 8004A288 21B0C000 */  addu       $s6, $a2, $zero
/* 3AA8C 8004A28C 2800B2AF */  sw         $s2, 0x28($sp)
/* 3AA90 8004A290 60FF1224 */  addiu      $s2, $zero, -0xa0
/* 3AA94 8004A294 3400B5AF */  sw         $s5, 0x34($sp)
/* 3AA98 8004A298 21A80000 */  addu       $s5, $zero, $zero
/* 3AA9C 8004A29C 1380023C */  lui        $v0, %hi(D_801280F2)
/* 3AAA0 8004A2A0 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 3AAA4 8004A2A4 0F80173C */  lui        $s7, 0x800f
/* 3AAA8 8004A2A8 F2804490 */  lbu        $a0, %lo(D_801280F2)($v0)
/* 3AAAC 8004A2AC 1380023C */  lui        $v0, %hi(D_801282E0)
/* 3AAB0 8004A2B0 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 3AAB4 8004A2B4 4000BFAF */  sw         $ra, 0x40($sp)
/* 3AAB8 8004A2B8 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 3AABC 8004A2BC 2400B1AF */  sw         $s1, 0x24($sp)
/* 3AAC0 8004A2C0 C0180400 */  sll        $v1, $a0, 3
/* 3AAC4 8004A2C4 23186400 */  subu       $v1, $v1, $a0
/* 3AAC8 8004A2C8 80180300 */  sll        $v1, $v1, 2
/* 3AACC 8004A2CC 21886200 */  addu       $s1, $v1, $v0
.L8004A2D0:
/* 3AAD0 8004A2D0 80005326 */  addiu      $s3, $s2, 0x80
/* 3AAD4 8004A2D4 A100622A */  slti       $v0, $s3, 0xa1
/* 3AAD8 8004A2D8 03004014 */  bnez       $v0, .L8004A2E8
/* 3AADC 8004A2DC 80000824 */   addiu     $t0, $zero, 0x80
/* 3AAE0 8004A2E0 A0000224 */  addiu      $v0, $zero, 0xa0
/* 3AAE4 8004A2E4 23405200 */  subu       $t0, $v0, $s2
.L8004A2E8:
/* 3AAE8 8004A2E8 2800E226 */  addiu      $v0, $s7, 0x28
/* 3AAEC 8004A2EC 06002586 */  lh         $a1, 6($s1)
/* 3AAF0 8004A2F0 04002386 */  lh         $v1, 4($s1)
/* 3AAF4 8004A2F4 18004480 */  lb         $a0, 0x18($v0)
/* 3AAF8 8004A2F8 3400A724 */  addiu      $a3, $a1, 0x34
/* 3AAFC 8004A2FC 02008010 */  beqz       $a0, .L8004A308
/* 3AB00 8004A300 21307500 */   addu      $a2, $v1, $s5
/* 3AB04 8004A304 C000A724 */  addiu      $a3, $a1, 0xc0
.L8004A308:
/* 3AB08 8004A308 21208002 */  addu       $a0, $s4, $zero
/* 3AB0C 8004A30C 21280002 */  addu       $a1, $s0, $zero
/* 3AB10 8004A310 8000B526 */  addiu      $s5, $s5, 0x80
/* 3AB14 8004A314 08000224 */  addiu      $v0, $zero, 8
/* 3AB18 8004A318 1000A8AF */  sw         $t0, 0x10($sp)
/* 3AB1C 8004A31C 1400A2AF */  sw         $v0, 0x14($sp)
/* 3AB20 8004A320 0C002386 */  lh         $v1, 0xc($s1)
/* 3AB24 8004A324 FFFF0224 */  addiu      $v0, $zero, -1
/* 3AB28 8004A328 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 3AB2C 8004A32C 25B2010C */  jal        FUN_8006c894
/* 3AB30 8004A330 1800A3AF */   sw        $v1, 0x18($sp)
/* 3AB34 8004A334 21208002 */  addu       $a0, $s4, $zero
/* 3AB38 8004A338 21280002 */  addu       $a1, $s0, $zero
/* 3AB3C 8004A33C 2130C002 */  addu       $a2, $s6, $zero
/* 3AB40 8004A340 2138C002 */  addu       $a3, $s6, $zero
/* 3AB44 8004A344 79B2010C */  jal        FUN_8006c9e4
/* 3AB48 8004A348 1000B6AF */   sw        $s6, 0x10($sp)
/* 3AB4C 8004A34C 21208002 */  addu       $a0, $s4, $zero
/* 3AB50 8004A350 16002686 */  lh         $a2, 0x16($s1)
/* 3AB54 8004A354 18002786 */  lh         $a3, 0x18($s1)
/* 3AB58 8004A358 FBB2010C */  jal        FUN_8006cbec
/* 3AB5C 8004A35C 21280002 */   addu      $a1, $s0, $zero
/* 3AB60 8004A360 21208002 */  addu       $a0, $s4, $zero
/* 3AB64 8004A364 21280002 */  addu       $a1, $s0, $zero
/* 3AB68 8004A368 21304002 */  addu       $a2, $s2, $zero
/* 3AB6C 8004A36C 9BB2010C */  jal        FUN_8006ca6c
/* 3AB70 8004A370 6C000724 */   addiu     $a3, $zero, 0x6c
/* 3AB74 8004A374 21906002 */  addu       $s2, $s3, $zero
/* 3AB78 8004A378 A000422A */  slti       $v0, $s2, 0xa0
/* 3AB7C 8004A37C D4FF4014 */  bnez       $v0, .L8004A2D0
/* 3AB80 8004A380 01001026 */   addiu     $s0, $s0, 1
/* 3AB84 8004A384 21100002 */  addu       $v0, $s0, $zero
/* 3AB88 8004A388 4000BF8F */  lw         $ra, 0x40($sp)
/* 3AB8C 8004A38C 3C00B78F */  lw         $s7, 0x3c($sp)
/* 3AB90 8004A390 3800B68F */  lw         $s6, 0x38($sp)
/* 3AB94 8004A394 3400B58F */  lw         $s5, 0x34($sp)
/* 3AB98 8004A398 3000B48F */  lw         $s4, 0x30($sp)
/* 3AB9C 8004A39C 2C00B38F */  lw         $s3, 0x2c($sp)
/* 3ABA0 8004A3A0 2800B28F */  lw         $s2, 0x28($sp)
/* 3ABA4 8004A3A4 2400B18F */  lw         $s1, 0x24($sp)
/* 3ABA8 8004A3A8 2000B08F */  lw         $s0, 0x20($sp)
/* 3ABAC 8004A3AC 0800E003 */  jr         $ra
/* 3ABB0 8004A3B0 4800BD27 */   addiu     $sp, $sp, 0x48
