.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae1c8
/* 9E9C8 800AE1C8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 9E9CC 800AE1CC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9E9D0 800AE1D0 2198C000 */  addu       $s3, $a2, $zero
/* 9E9D4 800AE1D4 1C80033C */  lui        $v1, %hi(D_801C4660)
/* 9E9D8 800AE1D8 60466290 */  lbu        $v0, %lo(D_801C4660)($v1)
/* 9E9DC 800AE1DC FFFF0624 */  addiu      $a2, $zero, -1
/* 9E9E0 800AE1E0 2400B5AF */  sw         $s5, 0x24($sp)
/* 9E9E4 800AE1E4 21A88000 */  addu       $s5, $a0, $zero
/* 9E9E8 800AE1E8 2800B6AF */  sw         $s6, 0x28($sp)
/* 9E9EC 800AE1EC 21B0A000 */  addu       $s6, $a1, $zero
/* 9E9F0 800AE1F0 1400B1AF */  sw         $s1, 0x14($sp)
/* 9E9F4 800AE1F4 2188E000 */  addu       $s1, $a3, $zero
/* 9E9F8 800AE1F8 2C00BFAF */  sw         $ra, 0x2c($sp)
/* 9E9FC 800AE1FC 2000B4AF */  sw         $s4, 0x20($sp)
/* 9EA00 800AE200 1800B2AF */  sw         $s2, 0x18($sp)
/* 9EA04 800AE204 07102202 */  srav       $v0, $v0, $s1
/* 9EA08 800AE208 01004230 */  andi       $v0, $v0, 1
/* 9EA0C 800AE20C 02004010 */  beqz       $v0, .L800AE218
/* 9EA10 800AE210 1000B0AF */   sw        $s0, 0x10($sp)
/* 9EA14 800AE214 21300000 */  addu       $a2, $zero, $zero
.L800AE218:
/* 9EA18 800AE218 5E00C014 */  bnez       $a2, .L800AE394
/* 9EA1C 800AE21C FFFF0224 */   addiu     $v0, $zero, -1
/* 9EA20 800AE220 0F00A016 */  bnez       $s5, .L800AE260
/* 9EA24 800AE224 00000000 */   nop
/* 9EA28 800AE228 E5B80208 */  j          .L800AE394
/* 9EA2C 800AE22C 00000000 */   nop
.L800AE230:
/* 9EA30 800AE230 01006290 */  lbu        $v0, 1($v1)
/* 9EA34 800AE234 E5B80208 */  j          .L800AE394
/* 9EA38 800AE238 00000000 */   nop
.L800AE23C:
/* 9EA3C 800AE23C 40180800 */  sll        $v1, $t0, 1
/* 9EA40 800AE240 21186800 */  addu       $v1, $v1, $t0
/* 9EA44 800AE244 C0180300 */  sll        $v1, $v1, 3
/* 9EA48 800AE248 21186302 */  addu       $v1, $s3, $v1
/* 9EA4C 800AE24C 21186400 */  addu       $v1, $v1, $a0
/* 9EA50 800AE250 2118A300 */  addu       $v1, $a1, $v1
/* 9EA54 800AE254 41006290 */  lbu        $v0, 0x41($v1)
/* 9EA58 800AE258 E5B80208 */  j          .L800AE394
/* 9EA5C 800AE25C 00000000 */   nop
.L800AE260:
/* 9EA60 800AE260 1BA2020C */  jal        FUN_800a886c
/* 9EA64 800AE264 2120A002 */   addu      $a0, $s5, $zero
/* 9EA68 800AE268 C0291100 */  sll        $a1, $s1, 7
/* 9EA6C 800AE26C 2128B100 */  addu       $a1, $a1, $s1
/* 9EA70 800AE270 C0290500 */  sll        $a1, $a1, 7
/* 9EA74 800AE274 1C80043C */  lui        $a0, %hi(D_801C47F8)
/* 9EA78 800AE278 F8478424 */  addiu      $a0, $a0, %lo(D_801C47F8)
/* 9EA7C 800AE27C 80FE8324 */  addiu      $v1, $a0, -0x180
/* 9EA80 800AE280 2118A300 */  addu       $v1, $a1, $v1
/* 9EA84 800AE284 00197224 */  addiu      $s2, $v1, 0x1900
/* 9EA88 800AE288 21804000 */  addu       $s0, $v0, $zero
/* 9EA8C 800AE28C 02000224 */  addiu      $v0, $zero, 2
/* 9EA90 800AE290 0200C216 */  bne        $s6, $v0, .L800AE29C
/* 9EA94 800AE294 21A0A400 */   addu      $s4, $a1, $a0
/* 9EA98 800AE298 80297224 */  addiu      $s2, $v1, 0x2980
.L800AE29C:
/* 9EA9C 800AE29C 44BA020C */  jal        FUN_800ae910
/* 9EAA0 800AE2A0 21206002 */   addu      $a0, $s3, $zero
/* 9EAA4 800AE2A4 3A000012 */  beqz       $s0, .L800AE390
/* 9EAA8 800AE2A8 21984000 */   addu      $s3, $v0, $zero
/* 9EAAC 800AE2AC 14000596 */  lhu        $a1, 0x14($s0)
/* 9EAB0 800AE2B0 FFFF0224 */  addiu      $v0, $zero, -1
/* 9EAB4 800AE2B4 3700A210 */  beq        $a1, $v0, .L800AE394
/* 9EAB8 800AE2B8 FF000624 */   addiu     $a2, $zero, 0xff
/* 9EABC 800AE2BC 21400000 */  addu       $t0, $zero, $zero
/* 9EAC0 800AE2C0 21204002 */  addu       $a0, $s2, $zero
.L800AE2C4:
/* 9EAC4 800AE2C4 00008290 */  lbu        $v0, ($a0)
/* 9EAC8 800AE2C8 00000000 */  nop
/* 9EACC 800AE2CC 06004610 */  beq        $v0, $a2, .L800AE2E8
/* 9EAD0 800AE2D0 40100200 */   sll       $v0, $v0, 1
/* 9EAD4 800AE2D4 21105400 */  addu       $v0, $v0, $s4
/* 9EAD8 800AE2D8 00004394 */  lhu        $v1, ($v0)
/* 9EADC 800AE2DC 00000000 */  nop
/* 9EAE0 800AE2E0 D3FF6510 */  beq        $v1, $a1, .L800AE230
/* 9EAE4 800AE2E4 21189300 */   addu      $v1, $a0, $s3
.L800AE2E8:
/* 9EAE8 800AE2E8 01000825 */  addiu      $t0, $t0, 1
/* 9EAEC 800AE2EC B0000229 */  slti       $v0, $t0, 0xb0
/* 9EAF0 800AE2F0 F4FF4014 */  bnez       $v0, .L800AE2C4
/* 9EAF4 800AE2F4 18008424 */   addiu     $a0, $a0, 0x18
/* 9EAF8 800AE2F8 21400000 */  addu       $t0, $zero, $zero
/* 9EAFC 800AE2FC 1D80053C */  lui        $a1, %hi(D_801CC778)
/* 9EB00 800AE300 78C7A724 */  addiu      $a3, $a1, %lo(D_801CC778)
/* 9EB04 800AE304 C0201100 */  sll        $a0, $s1, 3
/* 9EB08 800AE308 23109100 */  subu       $v0, $a0, $s1
/* 9EB0C 800AE30C 80100200 */  sll        $v0, $v0, 2
/* 9EB10 800AE310 21105100 */  addu       $v0, $v0, $s1
/* 9EB14 800AE314 C0300200 */  sll        $a2, $v0, 3
/* 9EB18 800AE318 2118C700 */  addu       $v1, $a2, $a3
/* 9EB1C 800AE31C 0000638C */  lw         $v1, ($v1)
/* 9EB20 800AE320 2150A000 */  addu       $t2, $a1, $zero
/* 9EB24 800AE324 0D006018 */  blez       $v1, .L800AE35C
/* 9EB28 800AE328 21488000 */   addu      $t1, $a0, $zero
/* 9EB2C 800AE32C 2128E000 */  addu       $a1, $a3, $zero
/* 9EB30 800AE330 0800A224 */  addiu      $v0, $a1, 8
/* 9EB34 800AE334 2120C000 */  addu       $a0, $a2, $zero
/* 9EB38 800AE338 21388200 */  addu       $a3, $a0, $v0
.L800AE33C:
/* 9EB3C 800AE33C 0000E28C */  lw         $v0, ($a3)
/* 9EB40 800AE340 00000000 */  nop
/* 9EB44 800AE344 BDFF5510 */  beq        $v0, $s5, .L800AE23C
/* 9EB48 800AE348 00000000 */   nop
/* 9EB4C 800AE34C 01000825 */  addiu      $t0, $t0, 1
/* 9EB50 800AE350 2A100301 */  slt        $v0, $t0, $v1
/* 9EB54 800AE354 F9FF4014 */  bnez       $v0, .L800AE33C
/* 9EB58 800AE358 0400E724 */   addiu     $a3, $a3, 4
.L800AE35C:
/* 9EB5C 800AE35C 78C74525 */  addiu      $a1, $t2, -0x3888
/* 9EB60 800AE360 23103101 */  subu       $v0, $t1, $s1
/* 9EB64 800AE364 80100200 */  sll        $v0, $v0, 2
/* 9EB68 800AE368 21105100 */  addu       $v0, $v0, $s1
/* 9EB6C 800AE36C C0100200 */  sll        $v0, $v0, 3
/* 9EB70 800AE370 2120A200 */  addu       $a0, $a1, $v0
/* 9EB74 800AE374 21104500 */  addu       $v0, $v0, $a1
/* 9EB78 800AE378 0400838C */  lw         $v1, 4($a0)
/* 9EB7C 800AE37C 0000458C */  lw         $a1, ($v0)
/* 9EB80 800AE380 00000000 */  nop
/* 9EB84 800AE384 23186500 */  subu       $v1, $v1, $a1
/* 9EB88 800AE388 02006018 */  blez       $v1, .L800AE394
/* 9EB8C 800AE38C FEFF0224 */   addiu     $v0, $zero, -2
.L800AE390:
/* 9EB90 800AE390 FFFF0224 */  addiu      $v0, $zero, -1
.L800AE394:
/* 9EB94 800AE394 2C00BF8F */  lw         $ra, 0x2c($sp)
/* 9EB98 800AE398 2800B68F */  lw         $s6, 0x28($sp)
/* 9EB9C 800AE39C 2400B58F */  lw         $s5, 0x24($sp)
/* 9EBA0 800AE3A0 2000B48F */  lw         $s4, 0x20($sp)
/* 9EBA4 800AE3A4 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9EBA8 800AE3A8 1800B28F */  lw         $s2, 0x18($sp)
/* 9EBAC 800AE3AC 1400B18F */  lw         $s1, 0x14($sp)
/* 9EBB0 800AE3B0 1000B08F */  lw         $s0, 0x10($sp)
/* 9EBB4 800AE3B4 0800E003 */  jr         $ra
/* 9EBB8 800AE3B8 3000BD27 */   addiu     $sp, $sp, 0x30
