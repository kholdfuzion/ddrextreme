.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80099A3C
/* 8A23C 80099A3C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8A240 80099A40 0A000524 */  addiu      $a1, $zero, 0xa
/* 8A244 80099A44 0A000624 */  addiu      $a2, $zero, 0xa
/* 8A248 80099A48 21388000 */  addu       $a3, $a0, $zero
/* 8A24C 80099A4C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 8A250 80099A50 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 8A254 80099A54 07000424 */  addiu      $a0, $zero, 7
/* 8A258 80099A58 1000BFAF */  sw         $ra, 0x10($sp)
/* 8A25C 80099A5C 8A006390 */  lbu        $v1, 0x8a($v1)
/* 8A260 80099A60 00000000 */  nop
/* 8A264 80099A64 06006410 */  beq        $v1, $a0, .L80099A80
/* 8A268 80099A68 21404000 */   addu      $t0, $v0, $zero
/* 8A26C 80099A6C 05006010 */  beqz       $v1, .L80099A84
/* 8A270 80099A70 28000225 */   addiu     $v0, $t0, 0x28
/* 8A274 80099A74 0800E28C */  lw         $v0, 8($a3)
/* 8A278 80099A78 00000000 */  nop
/* 8A27C 80099A7C 0F004530 */  andi       $a1, $v0, 0xf
.L80099A80:
/* 8A280 80099A80 28000225 */  addiu      $v0, $t0, 0x28
.L80099A84:
/* 8A284 80099A84 0100033C */  lui        $v1, 1
/* 8A288 80099A88 21104300 */  addu       $v0, $v0, $v1
/* 8A28C 80099A8C 06434290 */  lbu        $v0, 0x4306($v0)
/* 8A290 80099A90 07000324 */  addiu      $v1, $zero, 7
/* 8A294 80099A94 06004310 */  beq        $v0, $v1, .L80099AB0
/* 8A298 80099A98 00000000 */   nop
/* 8A29C 80099A9C 05004010 */  beqz       $v0, .L80099AB4
/* 8A2A0 80099AA0 2A10C500 */   slt       $v0, $a2, $a1
/* 8A2A4 80099AA4 0C00E28C */  lw         $v0, 0xc($a3)
/* 8A2A8 80099AA8 00000000 */  nop
/* 8A2AC 80099AAC 0F004630 */  andi       $a2, $v0, 0xf
.L80099AB0:
/* 8A2B0 80099AB0 2A10C500 */  slt        $v0, $a2, $a1
.L80099AB4:
/* 8A2B4 80099AB4 02004010 */  beqz       $v0, .L80099AC0
/* 8A2B8 80099AB8 00000000 */   nop
/* 8A2BC 80099ABC 2128C000 */  addu       $a1, $a2, $zero
.L80099AC0:
/* 8A2C0 80099AC0 0B00A018 */  blez       $a1, .L80099AF0
/* 8A2C4 80099AC4 0400A228 */   slti      $v0, $a1, 4
/* 8A2C8 80099AC8 05004010 */  beqz       $v0, .L80099AE0
/* 8A2CC 80099ACC 0600A228 */   slti      $v0, $a1, 6
/* 8A2D0 80099AD0 12CB020C */  jal        FUN_800b2c48
/* 8A2D4 80099AD4 89000424 */   addiu     $a0, $zero, 0x89
/* 8A2D8 80099AD8 BC660208 */  j          .L80099AF0
/* 8A2DC 80099ADC 00000000 */   nop
.L80099AE0:
/* 8A2E0 80099AE0 03004010 */  beqz       $v0, .L80099AF0
/* 8A2E4 80099AE4 00000000 */   nop
/* 8A2E8 80099AE8 12CB020C */  jal        FUN_800b2c48
/* 8A2EC 80099AEC 89000424 */   addiu     $a0, $zero, 0x89
.L80099AF0:
/* 8A2F0 80099AF0 1000BF8F */  lw         $ra, 0x10($sp)
/* 8A2F4 80099AF4 00000000 */  nop
/* 8A2F8 80099AF8 0800E003 */  jr         $ra
/* 8A2FC 80099AFC 1800BD27 */   addiu     $sp, $sp, 0x18
