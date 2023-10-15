.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006FAFC
/* 602FC 8006FAFC A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 60300 8006FB00 6800A38F */  lw         $v1, 0x68($sp)
/* 60304 8006FB04 6C00A88F */  lw         $t0, 0x6c($sp)
/* 60308 8006FB08 7000A98F */  lw         $t1, 0x70($sp)
/* 6030C 8006FB0C 7400AA8F */  lw         $t2, 0x74($sp)
/* 60310 8006FB10 7800AB8F */  lw         $t3, 0x78($sp)
/* 60314 8006FB14 7C00AC8F */  lw         $t4, 0x7c($sp)
/* 60318 8006FB18 8000AD8F */  lw         $t5, 0x80($sp)
/* 6031C 8006FB1C 8400AE8F */  lw         $t6, 0x84($sp)
/* 60320 8006FB20 8800AF8F */  lw         $t7, 0x88($sp)
/* 60324 8006FB24 4800B0AF */  sw         $s0, 0x48($sp)
/* 60328 8006FB28 8C00B08F */  lw         $s0, 0x8c($sp)
/* 6032C 8006FB2C 4C00B1AF */  sw         $s1, 0x4c($sp)
/* 60330 8006FB30 9000B18F */  lw         $s1, 0x90($sp)
/* 60334 8006FB34 5000B2AF */  sw         $s2, 0x50($sp)
/* 60338 8006FB38 9400B28F */  lw         $s2, 0x94($sp)
/* 6033C 8006FB3C FFFF0224 */  addiu      $v0, $zero, -1
/* 60340 8006FB40 5400BFAF */  sw         $ra, 0x54($sp)
/* 60344 8006FB44 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 60348 8006FB48 1000A3AF */  sw         $v1, 0x10($sp)
/* 6034C 8006FB4C 1400A8AF */  sw         $t0, 0x14($sp)
/* 60350 8006FB50 1800A9AF */  sw         $t1, 0x18($sp)
/* 60354 8006FB54 2000AAAF */  sw         $t2, 0x20($sp)
/* 60358 8006FB58 2400ABAF */  sw         $t3, 0x24($sp)
/* 6035C 8006FB5C 2800ACAF */  sw         $t4, 0x28($sp)
/* 60360 8006FB60 2C00ADAF */  sw         $t5, 0x2c($sp)
/* 60364 8006FB64 3000AEAF */  sw         $t6, 0x30($sp)
/* 60368 8006FB68 3400AFAF */  sw         $t7, 0x34($sp)
/* 6036C 8006FB6C 3800B0AF */  sw         $s0, 0x38($sp)
/* 60370 8006FB70 3C00B1AF */  sw         $s1, 0x3c($sp)
/* 60374 8006FB74 01BC010C */  jal        FUN_8006f004
/* 60378 8006FB78 4000B2AF */   sw        $s2, 0x40($sp)
/* 6037C 8006FB7C 5400BF8F */  lw         $ra, 0x54($sp)
/* 60380 8006FB80 5000B28F */  lw         $s2, 0x50($sp)
/* 60384 8006FB84 4C00B18F */  lw         $s1, 0x4c($sp)
/* 60388 8006FB88 4800B08F */  lw         $s0, 0x48($sp)
/* 6038C 8006FB8C 0800E003 */  jr         $ra
/* 60390 8006FB90 5800BD27 */   addiu     $sp, $sp, 0x58
