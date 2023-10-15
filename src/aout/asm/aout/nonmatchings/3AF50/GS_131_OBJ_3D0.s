.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_131_OBJ_3D0
/* 3B320 8004AB20 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3B324 8004AB24 1000B0AF */  sw         $s0, 0x10($sp)
/* 3B328 8004AB28 21808000 */  addu       $s0, $a0, $zero
/* 3B32C 8004AB2C 1400B1AF */  sw         $s1, 0x14($sp)
/* 3B330 8004AB30 1800BFAF */  sw         $ra, 0x18($sp)
/* 3B334 8004AB34 032B010C */  jal        GS_131_OBJ_4BC
/* 3B338 8004AB38 2188A000 */   addu      $s1, $a1, $zero
/* 3B33C 8004AB3C 352B010C */  jal        GS_131_OBJ_584
/* 3B340 8004AB40 21204000 */   addu      $a0, $v0, $zero
/* 3B344 8004AB44 21184000 */  addu       $v1, $v0, $zero
/* 3B348 8004AB48 10006228 */  slti       $v0, $v1, 0x10
/* 3B34C 8004AB4C 18004014 */  bnez       $v0, .L8004ABB0
/* 3B350 8004AB50 F1FF6324 */   addiu     $v1, $v1, -0xf
/* 3B354 8004AB54 0000028E */  lw         $v0, ($s0)
/* 3B358 8004AB58 00000000 */  nop
/* 3B35C 8004AB5C 07106200 */  srav       $v0, $v0, $v1
/* 3B360 8004AB60 000022AE */  sw         $v0, ($s1)
/* 3B364 8004AB64 0400028E */  lw         $v0, 4($s0)
/* 3B368 8004AB68 00000000 */  nop
/* 3B36C 8004AB6C 07106200 */  srav       $v0, $v0, $v1
/* 3B370 8004AB70 040022AE */  sw         $v0, 4($s1)
/* 3B374 8004AB74 0800028E */  lw         $v0, 8($s0)
/* 3B378 8004AB78 00000000 */  nop
/* 3B37C 8004AB7C 07106200 */  srav       $v0, $v0, $v1
/* 3B380 8004AB80 080022AE */  sw         $v0, 8($s1)
/* 3B384 8004AB84 0C00028E */  lw         $v0, 0xc($s0)
/* 3B388 8004AB88 00000000 */  nop
/* 3B38C 8004AB8C 07106200 */  srav       $v0, $v0, $v1
/* 3B390 8004AB90 0C0022AE */  sw         $v0, 0xc($s1)
/* 3B394 8004AB94 1000028E */  lw         $v0, 0x10($s0)
/* 3B398 8004AB98 00000000 */  nop
/* 3B39C 8004AB9C 07106200 */  srav       $v0, $v0, $v1
/* 3B3A0 8004ABA0 100022AE */  sw         $v0, 0x10($s1)
/* 3B3A4 8004ABA4 1400028E */  lw         $v0, 0x14($s0)
/* 3B3A8 8004ABA8 FD2A0108 */  j          GS_131_OBJ_4A4
/* 3B3AC 8004ABAC 07106200 */   srav      $v0, $v0, $v1
.L8004ABB0:
/* 3B3B0 8004ABB0 0000028E */  lw         $v0, ($s0)
/* 3B3B4 8004ABB4 00000000 */  nop
/* 3B3B8 8004ABB8 000022AE */  sw         $v0, ($s1)
/* 3B3BC 8004ABBC 0400028E */  lw         $v0, 4($s0)
/* 3B3C0 8004ABC0 00000000 */  nop
/* 3B3C4 8004ABC4 040022AE */  sw         $v0, 4($s1)
/* 3B3C8 8004ABC8 0800028E */  lw         $v0, 8($s0)
/* 3B3CC 8004ABCC 00000000 */  nop
/* 3B3D0 8004ABD0 080022AE */  sw         $v0, 8($s1)
/* 3B3D4 8004ABD4 0C00028E */  lw         $v0, 0xc($s0)
/* 3B3D8 8004ABD8 00000000 */  nop
/* 3B3DC 8004ABDC 0C0022AE */  sw         $v0, 0xc($s1)
/* 3B3E0 8004ABE0 1000028E */  lw         $v0, 0x10($s0)
/* 3B3E4 8004ABE4 00000000 */  nop
/* 3B3E8 8004ABE8 100022AE */  sw         $v0, 0x10($s1)
/* 3B3EC 8004ABEC 1400028E */  lw         $v0, 0x14($s0)
/* 3B3F0 8004ABF0 00000000 */  nop
