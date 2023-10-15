.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae958
/* 9F158 800AE958 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9F15C 800AE95C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 9F160 800AE960 1800B2AF */  sw         $s2, 0x18($sp)
/* 9F164 800AE964 1400B1AF */  sw         $s1, 0x14($sp)
/* 9F168 800AE968 E2C5020C */  jal        FUN_800b1788
/* 9F16C 800AE96C 1000B0AF */   sw        $s0, 0x10($sp)
/* 9F170 800AE970 1D80113C */  lui        $s1, %hi(D_801D0048)
/* 9F174 800AE974 17004010 */  beqz       $v0, .L800AE9D4
/* 9F178 800AE978 1D80123C */   lui       $s2, 0x801d
/* 9F17C 800AE97C 48002226 */  addiu      $v0, $s1, %lo(D_801D0048)
/* 9F180 800AE980 04004494 */  lhu        $a0, 4($v0)
/* 9F184 800AE984 21800000 */  addu       $s0, $zero, $zero
/* 9F188 800AE988 BDEF020C */  jal        FUN_800bbef4
/* 9F18C 800AE98C FDFF8430 */   andi      $a0, $a0, 0xfffd
/* 9F190 800AE990 67BA0208 */  j          .L800AE99C
/* 9F194 800AE994 1000022A */   slti      $v0, $s0, 0x10
.L800AE998:
/* 9F198 800AE998 1000022A */  slti       $v0, $s0, 0x10
.L800AE99C:
/* 9F19C 800AE99C 0D004010 */  beqz       $v0, .L800AE9D4
/* 9F1A0 800AE9A0 00000000 */   nop
/* 9F1A4 800AE9A4 7CAA000C */  jal        vsync_8002a9f0
/* 9F1A8 800AE9A8 00000000 */   nop
/* 9F1AC 800AE9AC D9C4020C */  jal        FUN_800b1364
/* 9F1B0 800AE9B0 00000000 */   nop
/* 9F1B4 800AE9B4 E2C5020C */  jal        FUN_800b1788
/* 9F1B8 800AE9B8 00000000 */   nop
/* 9F1BC 800AE9BC 05004010 */  beqz       $v0, .L800AE9D4
/* 9F1C0 800AE9C0 00000000 */   nop
/* 9F1C4 800AE9C4 CD6B000C */  jal        VSync
/* 9F1C8 800AE9C8 21200000 */   addu      $a0, $zero, $zero
/* 9F1CC 800AE9CC 66BA0208 */  j          .L800AE998
/* 9F1D0 800AE9D0 01001026 */   addiu     $s0, $s0, 1
.L800AE9D4:
/* 9F1D4 800AE9D4 0DC6020C */  jal        FUN_800b1834
/* 9F1D8 800AE9D8 00000000 */   nop
/* 9F1DC 800AE9DC CD6B000C */  jal        VSync
/* 9F1E0 800AE9E0 FFFF0424 */   addiu     $a0, $zero, -1
/* 9F1E4 800AE9E4 48002326 */  addiu      $v1, $s1, 0x48
/* 9F1E8 800AE9E8 380042AE */  sw         $v0, 0x38($s2)
/* 9F1EC 800AE9EC 01000224 */  addiu      $v0, $zero, 1
/* 9F1F0 800AE9F0 04006494 */  lhu        $a0, 4($v1)
/* 9F1F4 800AE9F4 FFFF0524 */  addiu      $a1, $zero, -1
/* 9F1F8 800AE9F8 0A0062A0 */  sb         $v0, 0xa($v1)
/* 9F1FC 800AE9FC BDEF020C */  jal        FUN_800bbef4
/* 9F200 800AEA00 100065AC */   sw        $a1, 0x10($v1)
/* 9F204 800AEA04 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9F208 800AEA08 1800B28F */  lw         $s2, 0x18($sp)
/* 9F20C 800AEA0C 1400B18F */  lw         $s1, 0x14($sp)
/* 9F210 800AEA10 1000B08F */  lw         $s0, 0x10($sp)
/* 9F214 800AEA14 0800E003 */  jr         $ra
/* 9F218 800AEA18 2000BD27 */   addiu     $sp, $sp, 0x20
