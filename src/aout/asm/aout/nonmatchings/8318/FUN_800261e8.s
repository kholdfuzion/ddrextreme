.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800261e8
/* 169E8 800261E8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 169EC 800261EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 169F0 800261F0 21808000 */  addu       $s0, $a0, $zero
/* 169F4 800261F4 2000BFAF */  sw         $ra, 0x20($sp)
/* 169F8 800261F8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 169FC 800261FC 1800B2AF */  sw         $s2, 0x18($sp)
/* 16A00 80026200 A3C2020C */  jal        FUN_800b0a8c
/* 16A04 80026204 1400B1AF */   sw        $s1, 0x14($sp)
/* 16A08 80026208 6A19030C */  jal        FUN_800c65a8
/* 16A0C 8002620C 01000424 */   addiu     $a0, $zero, 1
/* 16A10 80026210 0F80023C */  lui        $v0, %hi(D_800F0024)
/* 16A14 80026214 21880000 */  addu       $s1, $zero, $zero
/* 16A18 80026218 240040A0 */  sb         $zero, %lo(D_800F0024)($v0)
.L8002621C:
/* 16A1C 8002621C 15B0000C */  jal        FUN_8002c054
/* 16A20 80026220 21202002 */   addu      $a0, $s1, $zero
/* 16A24 80026224 01003126 */  addiu      $s1, $s1, 1
/* 16A28 80026228 0200222A */  slti       $v0, $s1, 2
/* 16A2C 8002622C FBFF4014 */  bnez       $v0, .L8002621C
/* 16A30 80026230 00000000 */   nop
/* 16A34 80026234 F8AE020C */  jal        FUN_800abbe0
/* 16A38 80026238 00000000 */   nop
/* 16A3C 8002623C 06004010 */  beqz       $v0, .L80026258
/* 16A40 80026240 21200002 */   addu      $a0, $s0, $zero
/* 16A44 80026244 6618030C */  jal        FUN_800c6198
/* 16A48 80026248 21200000 */   addu      $a0, $zero, $zero
/* 16A4C 8002624C 6618030C */  jal        FUN_800c6198
/* 16A50 80026250 01000424 */   addiu     $a0, $zero, 1
/* 16A54 80026254 21200002 */  addu       $a0, $s0, $zero
.L80026258:
/* 16A58 80026258 21880000 */  addu       $s1, $zero, $zero
/* 16A5C 8002625C 0100133C */  lui        $s3, 1
/* 16A60 80026260 0E80023C */  lui        $v0, %hi(D_800D8B54)
/* 16A64 80026264 0000058E */  lw         $a1, ($s0)
/* 16A68 80026268 548B4224 */  addiu      $v0, $v0, %lo(D_800D8B54)
/* 16A6C 8002626C 80180500 */  sll        $v1, $a1, 2
/* 16A70 80026270 21104300 */  addu       $v0, $v0, $v1
/* 16A74 80026274 7800468C */  lw         $a2, 0x78($v0)
/* 16A78 80026278 00000000 */  nop
/* 16A7C 8002627C 09F8C000 */  jalr       $a2
/* 16A80 80026280 7C427336 */   ori       $s3, $s3, 0x427c
/* 16A84 80026284 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 16A88 80026288 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 16A8C 8002628C 3C005224 */  addiu      $s2, $v0, 0x3c
/* 16A90 80026290 38005024 */  addiu      $s0, $v0, 0x38
.L80026294:
/* 16A94 80026294 21202002 */  addu       $a0, $s1, $zero
/* 16A98 80026298 F4FF40AE */  sw         $zero, -0xc($s2)
/* 16A9C 8002629C FCFF00AE */  sw         $zero, -4($s0)
/* 16AA0 800262A0 000000AE */  sw         $zero, ($s0)
/* 16AA4 800262A4 D196000C */  jal        FUN_80025b44
/* 16AA8 800262A8 000040A2 */   sb        $zero, ($s2)
/* 16AAC 800262AC 21905302 */  addu       $s2, $s2, $s3
/* 16AB0 800262B0 01003126 */  addiu      $s1, $s1, 1
/* 16AB4 800262B4 0200222A */  slti       $v0, $s1, 2
/* 16AB8 800262B8 F6FF4014 */  bnez       $v0, .L80026294
/* 16ABC 800262BC 21801302 */   addu      $s0, $s0, $s3
/* 16AC0 800262C0 21200000 */  addu       $a0, $zero, $zero
/* 16AC4 800262C4 3EA2020C */  jal        FUN_800a88f8
/* 16AC8 800262C8 21280000 */   addu      $a1, $zero, $zero
/* 16ACC 800262CC 0F80103C */  lui        $s0, %hi(D_800F0028)
/* 16AD0 800262D0 28001026 */  addiu      $s0, $s0, %lo(D_800F0028)
/* 16AD4 800262D4 FFFF0324 */  addiu      $v1, $zero, -1
/* 16AD8 800262D8 040002AE */  sw         $v0, 4($s0)
/* 16ADC 800262DC FFFF0224 */  addiu      $v0, $zero, -1
/* 16AE0 800262E0 0F0003A2 */  sb         $v1, 0xf($s0)
/* 16AE4 800262E4 0C0003A2 */  sb         $v1, 0xc($s0)
/* 16AE8 800262E8 535F000C */  jal        SecuCasCheck_80017d4c
/* 16AEC 800262EC 1E0002A6 */   sh        $v0, 0x1e($s0)
/* 16AF0 800262F0 0E000324 */  addiu      $v1, $zero, 0xe
/* 16AF4 800262F4 0100023C */  lui        $v0, 1
/* 16AF8 800262F8 21100202 */  addu       $v0, $s0, $v0
/* 16AFC 800262FC 410003A2 */  sb         $v1, 0x41($s0)
/* 16B00 80026300 BD4243A0 */  sb         $v1, 0x42bd($v0)
/* 16B04 80026304 EDC1020C */  jal        FUN_800b07b4
/* 16B08 80026308 0E0000A2 */   sb        $zero, 0xe($s0)
/* 16B0C 8002630C B8C1020C */  jal        FUN_800b06e0
/* 16B10 80026310 FE000424 */   addiu     $a0, $zero, 0xfe
/* 16B14 80026314 36A6020C */  jal        FUN_800a98d8
/* 16B18 80026318 00000000 */   nop
/* 16B1C 8002631C F727010C */  jal        FUN_80049fdc
/* 16B20 80026320 00000000 */   nop
/* 16B24 80026324 2000BF8F */  lw         $ra, 0x20($sp)
/* 16B28 80026328 1C00B38F */  lw         $s3, 0x1c($sp)
/* 16B2C 8002632C 1800B28F */  lw         $s2, 0x18($sp)
/* 16B30 80026330 1400B18F */  lw         $s1, 0x14($sp)
/* 16B34 80026334 260000A2 */  sb         $zero, 0x26($s0)
/* 16B38 80026338 200000A2 */  sb         $zero, 0x20($s0)
/* 16B3C 8002633C 1000B08F */  lw         $s0, 0x10($sp)
/* 16B40 80026340 0800E003 */  jr         $ra
/* 16B44 80026344 2800BD27 */   addiu     $sp, $sp, 0x28
