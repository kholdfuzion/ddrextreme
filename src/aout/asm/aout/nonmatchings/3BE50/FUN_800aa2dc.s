.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aa2dc
/* 9AADC 800AA2DC 1C80043C */  lui        $a0, %hi(D_801C3EA4)
/* 9AAE0 800AA2E0 A43E8524 */  addiu      $a1, $a0, %lo(D_801C3EA4)
/* 9AAE4 800AA2E4 4000A724 */  addiu      $a3, $a1, 0x40
/* 9AAE8 800AA2E8 A43E8390 */  lbu        $v1, 0x3ea4($a0)
/* 9AAEC 800AA2EC 02000224 */  addiu      $v0, $zero, 2
/* 9AAF0 800AA2F0 03006210 */  beq        $v1, $v0, .L800AA300
/* 9AAF4 800AA2F4 8000A624 */   addiu     $a2, $a1, 0x80
/* 9AAF8 800AA2F8 0800E003 */  jr         $ra
/* 9AAFC 800AA2FC FFFF0224 */   addiu     $v0, $zero, -1
.L800AA300:
/* 9AB00 800AA300 0400A390 */  lbu        $v1, 4($a1)
/* 9AB04 800AA304 01000224 */  addiu      $v0, $zero, 1
/* 9AB08 800AA308 2A006214 */  bne        $v1, $v0, .L800AA3B4
/* 9AB0C 800AA30C FEFF0224 */   addiu     $v0, $zero, -2
/* 9AB10 800AA310 0800A28C */  lw         $v0, 8($a1)
/* 9AB14 800AA314 00000000 */  nop
/* 9AB18 800AA318 01004230 */  andi       $v0, $v0, 1
/* 9AB1C 800AA31C 25004014 */  bnez       $v0, .L800AA3B4
/* 9AB20 800AA320 FDFF0224 */   addiu     $v0, $zero, -3
/* 9AB24 800AA324 1000A28C */  lw         $v0, 0x10($a1)
/* 9AB28 800AA328 00000000 */  nop
/* 9AB2C 800AA32C 01004230 */  andi       $v0, $v0, 1
/* 9AB30 800AA330 20004014 */  bnez       $v0, .L800AA3B4
/* 9AB34 800AA334 FCFF0224 */   addiu     $v0, $zero, -4
/* 9AB38 800AA338 4000A38C */  lw         $v1, 0x40($a1)
/* 9AB3C 800AA33C 8000A28C */  lw         $v0, 0x80($a1)
/* 9AB40 800AA340 00000000 */  nop
/* 9AB44 800AA344 1B006214 */  bne        $v1, $v0, .L800AA3B4
/* 9AB48 800AA348 FBFF0224 */   addiu     $v0, $zero, -5
/* 9AB4C 800AA34C 0400E384 */  lh         $v1, 4($a3)
/* 9AB50 800AA350 0800C284 */  lh         $v0, 8($a2)
/* 9AB54 800AA354 00000000 */  nop
/* 9AB58 800AA358 16006214 */  bne        $v1, $v0, .L800AA3B4
/* 9AB5C 800AA35C FAFF0224 */   addiu     $v0, $zero, -6
/* 9AB60 800AA360 0600E390 */  lbu        $v1, 6($a3)
/* 9AB64 800AA364 0400C290 */  lbu        $v0, 4($a2)
/* 9AB68 800AA368 00000000 */  nop
/* 9AB6C 800AA36C 03006210 */  beq        $v1, $v0, .L800AA37C
/* 9AB70 800AA370 0300622C */   sltiu     $v0, $v1, 3
/* 9AB74 800AA374 0800E003 */  jr         $ra
/* 9AB78 800AA378 F9FF0224 */   addiu     $v0, $zero, -7
.L800AA37C:
/* 9AB7C 800AA37C 03004014 */  bnez       $v0, .L800AA38C
/* 9AB80 800AA380 03000224 */   addiu     $v0, $zero, 3
/* 9AB84 800AA384 0800E003 */  jr         $ra
/* 9AB88 800AA388 F8FF0224 */   addiu     $v0, $zero, -8
.L800AA38C:
/* 9AB8C 800AA38C 0500C390 */  lbu        $v1, 5($a2)
/* 9AB90 800AA390 00000000 */  nop
/* 9AB94 800AA394 07006214 */  bne        $v1, $v0, .L800AA3B4
/* 9AB98 800AA398 F7FF0224 */   addiu     $v0, $zero, -9
/* 9AB9C 800AA39C 0600C390 */  lbu        $v1, 6($a2)
/* 9ABA0 800AA3A0 00000000 */  nop
/* 9ABA4 800AA3A4 03006010 */  beqz       $v1, .L800AA3B4
/* 9ABA8 800AA3A8 F6FF0224 */   addiu     $v0, $zero, -0xa
/* 9ABAC 800AA3AC 0800E003 */  jr         $ra
/* 9ABB0 800AA3B0 21100000 */   addu      $v0, $zero, $zero
.L800AA3B4:
/* 9ABB4 800AA3B4 0800E003 */  jr         $ra
/* 9ABB8 800AA3B8 00000000 */   nop
