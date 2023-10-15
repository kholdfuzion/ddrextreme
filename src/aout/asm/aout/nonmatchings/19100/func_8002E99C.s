.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002E99C
/* 1F19C 8002E99C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1F1A0 8002E9A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 1F1A4 8002E9A4 21800000 */  addu       $s0, $zero, $zero
/* 1F1A8 8002E9A8 6DBA0008 */  j          .L8002E9B4
/* 1F1AC 8002E9AC 1400BFAF */   sw        $ra, 0x14($sp)
.L8002E9B0:
/* 1F1B0 8002E9B0 01001026 */  addiu      $s0, $s0, 1
.L8002E9B4:
/* 1F1B4 8002E9B4 0400022A */  slti       $v0, $s0, 4
/* 1F1B8 8002E9B8 09004010 */  beqz       $v0, .L8002E9E0
/* 1F1BC 8002E9BC 00000000 */   nop
/* 1F1C0 8002E9C0 CD6B000C */  jal        VSync
/* 1F1C4 8002E9C4 21200000 */   addu      $a0, $zero, $zero
/* 1F1C8 8002E9C8 7CAA000C */  jal        vsync_8002a9f0
/* 1F1CC 8002E9CC 00000000 */   nop
/* 1F1D0 8002E9D0 1F05030C */  jal        FUN_800c147c
/* 1F1D4 8002E9D4 00000000 */   nop
/* 1F1D8 8002E9D8 F5FF4014 */  bnez       $v0, .L8002E9B0
/* 1F1DC 8002E9DC 00000000 */   nop
.L8002E9E0:
/* 1F1E0 8002E9E0 CD6B000C */  jal        VSync
/* 1F1E4 8002E9E4 21200000 */   addu      $a0, $zero, $zero
/* 1F1E8 8002E9E8 7CAA000C */  jal        vsync_8002a9f0
/* 1F1EC 8002E9EC 00000000 */   nop
/* 1F1F0 8002E9F0 04000224 */  addiu      $v0, $zero, 4
/* 1F1F4 8002E9F4 03000216 */  bne        $s0, $v0, .L8002EA04
/* 1F1F8 8002E9F8 00000000 */   nop
/* 1F1FC 8002E9FC DFB9000C */  jal        FUN_8002e77c
/* 1F200 8002EA00 01000424 */   addiu     $a0, $zero, 1
.L8002EA04:
/* 1F204 8002EA04 1400BF8F */  lw         $ra, 0x14($sp)
/* 1F208 8002EA08 1000B08F */  lw         $s0, 0x10($sp)
/* 1F20C 8002EA0C 0800E003 */  jr         $ra
/* 1F210 8002EA10 1800BD27 */   addiu     $sp, $sp, 0x18
