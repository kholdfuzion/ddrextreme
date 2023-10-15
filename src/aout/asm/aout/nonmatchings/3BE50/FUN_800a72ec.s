.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a72ec
/* 97AEC 800A72EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97AF0 800A72F0 1000B0AF */  sw         $s0, 0x10($sp)
/* 97AF4 800A72F4 21808000 */  addu       $s0, $a0, $zero
/* 97AF8 800A72F8 01000226 */  addiu      $v0, $s0, 1
/* 97AFC 800A72FC 0200422C */  sltiu      $v0, $v0, 2
/* 97B00 800A7300 03004010 */  beqz       $v0, .L800A7310
/* 97B04 800A7304 1400BFAF */   sw        $ra, 0x14($sp)
/* 97B08 800A7308 949A020C */  jal        FUN_800a6a50
/* 97B0C 800A730C 0E000424 */   addiu     $a0, $zero, 0xe
.L800A7310:
/* 97B10 800A7310 01000224 */  addiu      $v0, $zero, 1
/* 97B14 800A7314 03000212 */  beq        $s0, $v0, .L800A7324
/* 97B18 800A7318 FFFF0224 */   addiu     $v0, $zero, -1
/* 97B1C 800A731C 03000216 */  bne        $s0, $v0, .L800A732C
/* 97B20 800A7320 00000000 */   nop
.L800A7324:
/* 97B24 800A7324 949A020C */  jal        FUN_800a6a50
/* 97B28 800A7328 0F000424 */   addiu     $a0, $zero, 0xf
.L800A732C:
/* 97B2C 800A732C 1400BF8F */  lw         $ra, 0x14($sp)
/* 97B30 800A7330 1000B08F */  lw         $s0, 0x10($sp)
/* 97B34 800A7334 0800E003 */  jr         $ra
/* 97B38 800A7338 1800BD27 */   addiu     $sp, $sp, 0x18
