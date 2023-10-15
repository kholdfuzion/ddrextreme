.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetDispMask
/* 8AC8 800182C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8ACC 800182CC 1400B1AF */  sw         $s1, 0x14($sp)
/* 8AD0 800182D0 0D80113C */  lui        $s1, %hi(D_800D2B9A)
/* 8AD4 800182D4 9A2B3126 */  addiu      $s1, $s1, %lo(D_800D2B9A)
/* 8AD8 800182D8 1800BFAF */  sw         $ra, 0x18($sp)
/* 8ADC 800182DC 1000B0AF */  sw         $s0, 0x10($sp)
/* 8AE0 800182E0 00002292 */  lbu        $v0, ($s1)
/* 8AE4 800182E4 00000000 */  nop
/* 8AE8 800182E8 0200422C */  sltiu      $v0, $v0, 2
/* 8AEC 800182EC 08004014 */  bnez       $v0, .L80018310
/* 8AF0 800182F0 21808000 */   addu      $s0, $a0, $zero
/* 8AF4 800182F4 0180043C */  lui        $a0, %hi(D_80010168)
/* 8AF8 800182F8 68018424 */  addiu      $a0, $a0, %lo(D_80010168)
/* 8AFC 800182FC 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 8B00 80018300 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 8B04 80018304 00000000 */  nop
/* 8B08 80018308 09F84000 */  jalr       $v0
/* 8B0C 8001830C 21280002 */   addu      $a1, $s0, $zero
.L80018310:
/* 8B10 80018310 04000016 */  bnez       $s0, .L80018324
/* 8B14 80018314 6A002426 */   addiu     $a0, $s1, 0x6a
/* 8B18 80018318 FFFF0524 */  addiu      $a1, $zero, -1
/* 8B1C 8001831C AF6B000C */  jal        SYS_OBJ_2ED8
/* 8B20 80018320 14000624 */   addiu     $a2, $zero, 0x14
.L80018324:
/* 8B24 80018324 0003043C */  lui        $a0, 0x300
/* 8B28 80018328 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 8B2C 8001832C 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 8B30 80018330 02000012 */  beqz       $s0, .L8001833C
/* 8B34 80018334 01008434 */   ori       $a0, $a0, 1
/* 8B38 80018338 0003043C */  lui        $a0, 0x300
.L8001833C:
/* 8B3C 8001833C 1000428C */  lw         $v0, 0x10($v0)
/* 8B40 80018340 00000000 */  nop
/* 8B44 80018344 09F84000 */  jalr       $v0
/* 8B48 80018348 00000000 */   nop
/* 8B4C 8001834C 1800BF8F */  lw         $ra, 0x18($sp)
/* 8B50 80018350 1400B18F */  lw         $s1, 0x14($sp)
/* 8B54 80018354 1000B08F */  lw         $s0, 0x10($sp)
/* 8B58 80018358 0800E003 */  jr         $ra
/* 8B5C 8001835C 2000BD27 */   addiu     $sp, $sp, 0x20
