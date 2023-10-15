.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c8098
/* B8898 800C8098 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* B889C 800C809C 2C00B5AF */  sw         $s5, 0x2c($sp)
/* B88A0 800C80A0 FFFF1524 */  addiu      $s5, $zero, -1
/* B88A4 800C80A4 2400B3AF */  sw         $s3, 0x24($sp)
/* B88A8 800C80A8 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B88AC 800C80AC F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B88B0 800C80B0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B88B4 800C80B4 28005124 */  addiu      $s1, $v0, 0x28
/* B88B8 800C80B8 3000BFAF */  sw         $ra, 0x30($sp)
/* B88BC 800C80BC 2800B4AF */  sw         $s4, 0x28($sp)
/* B88C0 800C80C0 2000B2AF */  sw         $s2, 0x20($sp)
/* B88C4 800C80C4 1800B0AF */  sw         $s0, 0x18($sp)
/* B88C8 800C80C8 0800438C */  lw         $v1, 8($v0)
/* B88CC 800C80CC 0400548C */  lw         $s4, 4($v0)
/* B88D0 800C80D0 0900622C */  sltiu      $v0, $v1, 9
/* B88D4 800C80D4 B0004010 */  beqz       $v0, .L800C8398
/* B88D8 800C80D8 21980000 */   addu      $s3, $zero, $zero
/* B88DC 800C80DC 0180023C */  lui        $v0, %hi(D_800179D0)
/* B88E0 800C80E0 D0794224 */  addiu      $v0, $v0, %lo(D_800179D0)
/* B88E4 800C80E4 80180300 */  sll        $v1, $v1, 2
/* B88E8 800C80E8 21186200 */  addu       $v1, $v1, $v0
/* B88EC 800C80EC 0000628C */  lw         $v0, ($v1)
/* B88F0 800C80F0 00000000 */  nop
/* B88F4 800C80F4 08004000 */  jr         $v0
/* B88F8 800C80F8 00000000 */   nop
/* B88FC 800C80FC 2080023C */  lui        $v0, %hi(D_801FB7C8)
/* B8900 800C8100 2080043C */  lui        $a0, %hi(D_801FB7F0)
/* B8904 800C8104 F0B78424 */  addiu      $a0, $a0, %lo(D_801FB7F0)
/* B8908 800C8108 C8B740AC */  sw         $zero, %lo(D_801FB7C8)($v0)
/* B890C 800C810C 2080023C */  lui        $v0, %hi(D_801FB7C4)
/* B8910 800C8110 9800838C */  lw         $v1, 0x98($a0)
/* B8914 800C8114 2080053C */  lui        $a1, 0x8020
/* B8918 800C8118 C4B743AC */  sw         $v1, %lo(D_801FB7C4)($v0)
/* B891C 800C811C 9400828C */  lw         $v0, 0x94($a0)
/* B8920 800C8120 0800838C */  lw         $v1, 8($a0)
/* B8924 800C8124 07004230 */  andi       $v0, $v0, 7
/* B8928 800C8128 01006324 */  addiu      $v1, $v1, 1
/* B892C 800C812C CCB7A2AC */  sw         $v0, -0x4834($a1)
/* B8930 800C8130 080083AC */  sw         $v1, 8($a0)
/* B8934 800C8134 21202002 */  addu       $a0, $s1, $zero
/* B8938 800C8138 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B893C 800C813C F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B8940 800C8140 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B8944 800C8144 0200023C */  lui        $v0, 2
/* B8948 800C8148 9C00068E */  lw         $a2, 0x9c($s0)
/* B894C 800C814C F8FF0824 */  addiu      $t0, $zero, -8
/* B8950 800C8150 1400A2AF */  sw         $v0, 0x14($sp)
/* B8954 800C8154 2080023C */  lui        $v0, %hi(D_801FB7CC)
/* B8958 800C8158 2080033C */  lui        $v1, %hi(D_801FB7C4)
/* B895C 800C815C 9400078E */  lw         $a3, 0x94($s0)
/* B8960 800C8160 CCB7428C */  lw         $v0, %lo(D_801FB7CC)($v0)
/* B8964 800C8164 C4B7638C */  lw         $v1, %lo(D_801FB7C4)($v1)
/* B8968 800C8168 2438E800 */  and        $a3, $a3, $t0
/* B896C 800C816C 21104300 */  addu       $v0, $v0, $v1
/* B8970 800C8170 07004224 */  addiu      $v0, $v0, 7
/* B8974 800C8174 24104800 */  and        $v0, $v0, $t0
/* B8978 800C8178 D427030C */  jal        FUN_800c9f50
/* B897C 800C817C 1000A2AF */   sw        $v0, 0x10($sp)
/* B8980 800C8180 B9200308 */  j          .L800C82E4
/* B8984 800C8184 00000000 */   nop
/* B8988 800C8188 EE09030C */  jal        FUN_800c27b8
/* B898C 800C818C 21202002 */   addu      $a0, $s1, $zero
/* B8990 800C8190 21184000 */  addu       $v1, $v0, $zero
/* B8994 800C8194 FEFF0224 */  addiu      $v0, $zero, -2
/* B8998 800C8198 7F006210 */  beq        $v1, $v0, .L800C8398
/* B899C 800C819C 01000224 */   addiu     $v0, $zero, 1
/* B89A0 800C81A0 5D006214 */  bne        $v1, $v0, .L800C8318
/* B89A4 800C81A4 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B89A8 800C81A8 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B89AC 800C81AC 0800628C */  lw         $v0, 8($v1)
/* B89B0 800C81B0 00000000 */  nop
/* B89B4 800C81B4 01004224 */  addiu      $v0, $v0, 1
/* B89B8 800C81B8 080062AC */  sw         $v0, 8($v1)
/* B89BC 800C81BC 21202002 */  addu       $a0, $s1, $zero
/* B89C0 800C81C0 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B89C4 800C81C4 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B89C8 800C81C8 8A27030C */  jal        FUN_800c9e28
/* B89CC 800C81CC F0B71026 */   addiu     $s0, $s0, -0x4810
/* B89D0 800C81D0 B9200308 */  j          .L800C82E4
/* B89D4 800C81D4 00000000 */   nop
/* B89D8 800C81D8 EE09030C */  jal        FUN_800c27b8
/* B89DC 800C81DC 21202002 */   addu      $a0, $s1, $zero
/* B89E0 800C81E0 21184000 */  addu       $v1, $v0, $zero
/* B89E4 800C81E4 FEFF0224 */  addiu      $v0, $zero, -2
/* B89E8 800C81E8 6B006210 */  beq        $v1, $v0, .L800C8398
/* B89EC 800C81EC 01000224 */   addiu     $v0, $zero, 1
/* B89F0 800C81F0 49006214 */  bne        $v1, $v0, .L800C8318
/* B89F4 800C81F4 00000000 */   nop
/* B89F8 800C81F8 1C00238E */  lw         $v1, 0x1c($s1)
/* B89FC 800C81FC 00000000 */  nop
/* B8A00 800C8200 00006290 */  lbu        $v0, ($v1)
/* B8A04 800C8204 00000000 */  nop
/* B8A08 800C8208 78004230 */  andi       $v0, $v0, 0x78
/* B8A0C 800C820C 08004010 */  beqz       $v0, .L800C8230
/* B8A10 800C8210 00000000 */   nop
/* B8A14 800C8214 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B8A18 800C8218 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8A1C 800C821C 0800628C */  lw         $v0, 8($v1)
/* B8A20 800C8220 00000000 */  nop
/* B8A24 800C8224 FFFF4224 */  addiu      $v0, $v0, -1
/* B8A28 800C8228 E6200308 */  j          .L800C8398
/* B8A2C 800C822C 080062AC */   sw        $v0, 8($v1)
.L800C8230:
/* B8A30 800C8230 01006390 */  lbu        $v1, 1($v1)
/* B8A34 800C8234 00000000 */  nop
/* B8A38 800C8238 60006230 */  andi       $v0, $v1, 0x60
/* B8A3C 800C823C 0B004010 */  beqz       $v0, .L800C826C
/* B8A40 800C8240 40006230 */   andi      $v0, $v1, 0x40
/* B8A44 800C8244 02004010 */  beqz       $v0, .L800C8250
/* B8A48 800C8248 FAFF1524 */   addiu     $s5, $zero, -6
/* B8A4C 800C824C FBFF1524 */  addiu      $s5, $zero, -5
.L800C8250:
/* B8A50 800C8250 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B8A54 800C8254 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8A58 800C8258 9C00628C */  lw         $v0, 0x9c($v1)
/* B8A5C 800C825C 01001324 */  addiu      $s3, $zero, 1
/* B8A60 800C8260 21104300 */  addu       $v0, $v0, $v1
/* B8A64 800C8264 E6200308 */  j          .L800C8398
/* B8A68 800C8268 1E0040A0 */   sb        $zero, 0x1e($v0)
.L800C826C:
/* B8A6C 800C826C 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B8A70 800C8270 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8A74 800C8274 0800628C */  lw         $v0, 8($v1)
/* B8A78 800C8278 00000000 */  nop
/* B8A7C 800C827C 01004224 */  addiu      $v0, $v0, 1
/* B8A80 800C8280 080062AC */  sw         $v0, 8($v1)
/* B8A84 800C8284 2080023C */  lui        $v0, %hi(D_801FB7C4)
/* B8A88 800C8288 2080053C */  lui        $a1, %hi(D_801FB7F0)
/* B8A8C 800C828C F0B7B024 */  addiu      $s0, $a1, %lo(D_801FB7F0)
/* B8A90 800C8290 C4B7428C */  lw         $v0, %lo(D_801FB7C4)($v0)
/* B8A94 800C8294 A000048E */  lw         $a0, 0xa0($s0)
/* B8A98 800C8298 2080033C */  lui        $v1, %hi(D_801FB7D0)
/* B8A9C 800C829C D0B762AC */  sw         $v0, %lo(D_801FB7D0)($v1)
/* B8AA0 800C82A0 2A108200 */  slt        $v0, $a0, $v0
/* B8AA4 800C82A4 02004010 */  beqz       $v0, .L800C82B0
/* B8AA8 800C82A8 00000000 */   nop
/* B8AAC 800C82AC D0B764AC */  sw         $a0, -0x4830($v1)
.L800C82B0:
/* B8AB0 800C82B0 21202002 */  addu       $a0, $s1, $zero
/* B8AB4 800C82B4 B0000226 */  addiu      $v0, $s0, 0xb0
/* B8AB8 800C82B8 2080083C */  lui        $t0, 0x8020
/* B8ABC 800C82BC 1000A2AF */  sw         $v0, 0x10($sp)
/* B8AC0 800C82C0 2080023C */  lui        $v0, %hi(D_801FB7C8)
/* B8AC4 800C82C4 D0B7678C */  lw         $a3, -0x4830($v1)
/* B8AC8 800C82C8 0200033C */  lui        $v1, 2
/* B8ACC 800C82CC F0B7A58C */  lw         $a1, -0x4810($a1)
/* B8AD0 800C82D0 C8B7468C */  lw         $a2, %lo(D_801FB7C8)($v0)
/* B8AD4 800C82D4 CCB7028D */  lw         $v0, -0x4834($t0)
/* B8AD8 800C82D8 2130C300 */  addu       $a2, $a2, $v1
/* B8ADC 800C82DC C726030C */  jal        FUN_800c9b1c
/* B8AE0 800C82E0 21304600 */   addu      $a2, $v0, $a2
.L800C82E4:
/* B8AE4 800C82E4 0800028E */  lw         $v0, 8($s0)
/* B8AE8 800C82E8 00000000 */  nop
/* B8AEC 800C82EC 01004224 */  addiu      $v0, $v0, 1
/* B8AF0 800C82F0 E6200308 */  j          .L800C8398
/* B8AF4 800C82F4 080002AE */   sw        $v0, 8($s0)
/* B8AF8 800C82F8 EE09030C */  jal        FUN_800c27b8
/* B8AFC 800C82FC 21202002 */   addu      $a0, $s1, $zero
/* B8B00 800C8300 21184000 */  addu       $v1, $v0, $zero
/* B8B04 800C8304 FEFF0224 */  addiu      $v0, $zero, -2
/* B8B08 800C8308 23006210 */  beq        $v1, $v0, .L800C8398
/* B8B0C 800C830C 01000224 */   addiu     $v0, $zero, 1
/* B8B10 800C8310 03006210 */  beq        $v1, $v0, .L800C8320
/* B8B14 800C8314 2080103C */   lui       $s0, 0x8020
.L800C8318:
/* B8B18 800C8318 E6200308 */  j          .L800C8398
/* B8B1C 800C831C 21984000 */   addu      $s3, $v0, $zero
.L800C8320:
/* B8B20 800C8320 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B8B24 800C8324 F0B75224 */  addiu      $s2, $v0, %lo(D_801FB7F0)
/* B8B28 800C8328 B0004526 */  addiu      $a1, $s2, 0xb0
/* B8B2C 800C832C 2080113C */  lui        $s1, %hi(D_801FB7D0)
/* B8B30 800C8330 9000428E */  lw         $v0, 0x90($s2)
/* B8B34 800C8334 C8B7048E */  lw         $a0, -0x4838($s0)
/* B8B38 800C8338 D0B7268E */  lw         $a2, %lo(D_801FB7D0)($s1)
/* B8B3C 800C833C BD6B000C */  jal        memcpy
/* B8B40 800C8340 21204400 */   addu      $a0, $v0, $a0
/* B8B44 800C8344 2080053C */  lui        $a1, %hi(D_801FB7C4)
/* B8B48 800C8348 C8B7028E */  lw         $v0, -0x4838($s0)
/* B8B4C 800C834C D0B7248E */  lw         $a0, -0x4830($s1)
/* B8B50 800C8350 C4B7A38C */  lw         $v1, %lo(D_801FB7C4)($a1)
/* B8B54 800C8354 21104400 */  addu       $v0, $v0, $a0
/* B8B58 800C8358 23186400 */  subu       $v1, $v1, $a0
/* B8B5C 800C835C C8B702AE */  sw         $v0, -0x4838($s0)
/* B8B60 800C8360 06006018 */  blez       $v1, .L800C837C
/* B8B64 800C8364 C4B7A3AC */   sw        $v1, -0x483c($a1)
/* B8B68 800C8368 0800428E */  lw         $v0, 8($s2)
/* B8B6C 800C836C 00000000 */  nop
/* B8B70 800C8370 FFFF4224 */  addiu      $v0, $v0, -1
/* B8B74 800C8374 E6200308 */  j          .L800C8398
/* B8B78 800C8378 080042AE */   sw        $v0, 8($s2)
.L800C837C:
/* B8B7C 800C837C 0800428E */  lw         $v0, 8($s2)
/* B8B80 800C8380 00000000 */  nop
/* B8B84 800C8384 01004224 */  addiu      $v0, $v0, 1
/* B8B88 800C8388 080042AE */  sw         $v0, 8($s2)
/* B8B8C 800C838C 21A00000 */  addu       $s4, $zero, $zero
/* B8B90 800C8390 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B8B94 800C8394 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C8398:
/* B8B98 800C8398 03006012 */  beqz       $s3, .L800C83A8
/* B8B9C 800C839C 2080023C */   lui       $v0, %hi(D_801FB7FC)
/* B8BA0 800C83A0 21A00000 */  addu       $s4, $zero, $zero
/* B8BA4 800C83A4 FCB755AC */  sw         $s5, %lo(D_801FB7FC)($v0)
.L800C83A8:
/* B8BA8 800C83A8 21108002 */  addu       $v0, $s4, $zero
/* B8BAC 800C83AC 3000BF8F */  lw         $ra, 0x30($sp)
/* B8BB0 800C83B0 2C00B58F */  lw         $s5, 0x2c($sp)
/* B8BB4 800C83B4 2800B48F */  lw         $s4, 0x28($sp)
/* B8BB8 800C83B8 2400B38F */  lw         $s3, 0x24($sp)
/* B8BBC 800C83BC 2000B28F */  lw         $s2, 0x20($sp)
/* B8BC0 800C83C0 1C00B18F */  lw         $s1, 0x1c($sp)
/* B8BC4 800C83C4 1800B08F */  lw         $s0, 0x18($sp)
/* B8BC8 800C83C8 0800E003 */  jr         $ra
/* B8BCC 800C83CC 3800BD27 */   addiu     $sp, $sp, 0x38
