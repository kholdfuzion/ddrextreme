.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006abb0
/* 5B3B0 8006ABB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5B3B4 8006ABB4 1000B0AF */  sw         $s0, 0x10($sp)
/* 5B3B8 8006ABB8 21808000 */  addu       $s0, $a0, $zero
/* 5B3BC 8006ABBC 21280000 */  addu       $a1, $zero, $zero
/* 5B3C0 8006ABC0 1400BFAF */  sw         $ra, 0x14($sp)
/* 5B3C4 8006ABC4 F6A2000C */  jal        memset
/* 5B3C8 8006ABC8 1C000624 */   addiu     $a2, $zero, 0x1c
/* 5B3CC 8006ABCC 31000424 */  addiu      $a0, $zero, 0x31
/* 5B3D0 8006ABD0 FFFF0524 */  addiu      $a1, $zero, -1
/* 5B3D4 8006ABD4 8876000C */  jal        FUN_8001da20
/* 5B3D8 8006ABD8 FFFF0624 */   addiu     $a2, $zero, -1
/* 5B3DC 8006ABDC 0F80033C */  lui        $v1, %hi(D_800F001C)
/* 5B3E0 8006ABE0 1C00648C */  lw         $a0, %lo(D_800F001C)($v1)
/* 5B3E4 8006ABE4 80000224 */  addiu      $v0, $zero, 0x80
/* 5B3E8 8006ABE8 080002AE */  sw         $v0, 8($s0)
/* 5B3EC 8006ABEC 30010224 */  addiu      $v0, $zero, 0x130
/* 5B3F0 8006ABF0 B0000324 */  addiu      $v1, $zero, 0xb0
/* 5B3F4 8006ABF4 0C0000AE */  sw         $zero, 0xc($s0)
/* 5B3F8 8006ABF8 100002A6 */  sh         $v0, 0x10($s0)
/* 5B3FC 8006ABFC 120003A6 */  sh         $v1, 0x12($s0)
/* 5B400 8006AC00 D0C3010C */  jal        FUN_80070f40
/* 5B404 8006AC04 040004AE */   sw        $a0, 4($s0)
/* 5B408 8006AC08 10000486 */  lh         $a0, 0x10($s0)
/* 5B40C 8006AC0C 12000586 */  lh         $a1, 0x12($s0)
/* 5B410 8006AC10 CBCB010C */  jal        FUN_80072f2c
/* 5B414 8006AC14 08000624 */   addiu     $a2, $zero, 8
/* 5B418 8006AC18 01000424 */  addiu      $a0, $zero, 1
/* 5B41C 8006AC1C 01000524 */  addiu      $a1, $zero, 1
/* 5B420 8006AC20 E2CB010C */  jal        FUN_80072f88
/* 5B424 8006AC24 21300000 */   addu      $a2, $zero, $zero
/* 5B428 8006AC28 14000426 */  addiu      $a0, $s0, 0x14
/* 5B42C 8006AC2C 0180053C */  lui        $a1, %hi(D_80014744)
/* 5B430 8006AC30 4447A524 */  addiu      $a1, $a1, %lo(D_80014744)
/* 5B434 8006AC34 180000AE */  sw         $zero, 0x18($s0)
/* 5B438 8006AC38 7347030C */  jal        FUN_800d1dcc
/* 5B43C 8006AC3C 140000AE */   sw        $zero, 0x14($s0)
/* 5B440 8006AC40 1800068E */  lw         $a2, 0x18($s0)
/* 5B444 8006AC44 00000000 */  nop
/* 5B448 8006AC48 0500C010 */  beqz       $a2, .L8006AC60
/* 5B44C 8006AC4C 31000424 */   addiu     $a0, $zero, 0x31
/* 5B450 8006AC50 1400058E */  lw         $a1, 0x14($s0)
/* 5B454 8006AC54 B9C1010C */  jal        FUN_800706e4
/* 5B458 8006AC58 01000424 */   addiu     $a0, $zero, 1
/* 5B45C 8006AC5C 31000424 */  addiu      $a0, $zero, 0x31
.L8006AC60:
/* 5B460 8006AC60 FFFF0524 */  addiu      $a1, $zero, -1
/* 5B464 8006AC64 8876000C */  jal        FUN_8001da20
/* 5B468 8006AC68 FFFF0624 */   addiu     $a2, $zero, -1
/* 5B46C 8006AC6C 1400BF8F */  lw         $ra, 0x14($sp)
/* 5B470 8006AC70 1000B08F */  lw         $s0, 0x10($sp)
/* 5B474 8006AC74 0800E003 */  jr         $ra
/* 5B478 8006AC78 1800BD27 */   addiu     $sp, $sp, 0x18
