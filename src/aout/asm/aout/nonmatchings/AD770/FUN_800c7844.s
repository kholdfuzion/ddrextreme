.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c7844
/* B8044 800C7844 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B8048 800C7848 2400B3AF */  sw         $s3, 0x24($sp)
/* B804C 800C784C 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B8050 800C7850 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B8054 800C7854 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B8058 800C7858 28005124 */  addiu      $s1, $v0, 0x28
/* B805C 800C785C 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B8060 800C7860 2800B4AF */  sw         $s4, 0x28($sp)
/* B8064 800C7864 2000B2AF */  sw         $s2, 0x20($sp)
/* B8068 800C7868 1800B0AF */  sw         $s0, 0x18($sp)
/* B806C 800C786C 0800438C */  lw         $v1, 8($v0)
/* B8070 800C7870 0400548C */  lw         $s4, 4($v0)
/* B8074 800C7874 0800622C */  sltiu      $v0, $v1, 8
/* B8078 800C7878 CA004010 */  beqz       $v0, .L800C7BA4
/* B807C 800C787C 21980000 */   addu      $s3, $zero, $zero
/* B8080 800C7880 0180023C */  lui        $v0, %hi(D_80017978)
/* B8084 800C7884 78794224 */  addiu      $v0, $v0, %lo(D_80017978)
/* B8088 800C7888 80180300 */  sll        $v1, $v1, 2
/* B808C 800C788C 21186200 */  addu       $v1, $v1, $v0
/* B8090 800C7890 0000628C */  lw         $v0, ($v1)
/* B8094 800C7894 00000000 */  nop
/* B8098 800C7898 08004000 */  jr         $v0
/* B809C 800C789C 00000000 */   nop
/* B80A0 800C78A0 2080023C */  lui        $v0, %hi(D_801FB7B0)
/* B80A4 800C78A4 2080053C */  lui        $a1, 0x8020
/* B80A8 800C78A8 2080043C */  lui        $a0, %hi(D_801FB7F0)
/* B80AC 800C78AC F0B78424 */  addiu      $a0, $a0, %lo(D_801FB7F0)
/* B80B0 800C78B0 B0B740AC */  sw         $zero, %lo(D_801FB7B0)($v0)
/* B80B4 800C78B4 9800828C */  lw         $v0, 0x98($a0)
/* B80B8 800C78B8 0800838C */  lw         $v1, 8($a0)
/* B80BC 800C78BC C0110200 */  sll        $v0, $v0, 7
/* B80C0 800C78C0 01006324 */  addiu      $v1, $v1, 1
/* B80C4 800C78C4 ACB7A2AC */  sw         $v0, -0x4854($a1)
/* B80C8 800C78C8 080083AC */  sw         $v1, 8($a0)
/* B80CC 800C78CC 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B80D0 800C78D0 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B80D4 800C78D4 A227030C */  jal        FUN_800c9e88
/* B80D8 800C78D8 34002426 */   addiu     $a0, $s1, 0x34
/* B80DC 800C78DC 21202002 */  addu       $a0, $s1, $zero
/* B80E0 800C78E0 F0B7058E */  lw         $a1, -0x4810($s0)
/* B80E4 800C78E4 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B80E8 800C78E8 9C00068E */  lw         $a2, 0x9c($s0)
/* B80EC 800C78EC 9400078E */  lw         $a3, 0x94($s0)
/* B80F0 800C78F0 9800038E */  lw         $v1, 0x98($s0)
/* B80F4 800C78F4 0200023C */  lui        $v0, 2
/* B80F8 800C78F8 1400A2AF */  sw         $v0, 0x14($sp)
/* B80FC 800C78FC 5927030C */  jal        FUN_800c9d64
/* B8100 800C7900 1000A3AF */   sw        $v1, 0x10($sp)
/* B8104 800C7904 BC1E0308 */  j          .L800C7AF0
/* B8108 800C7908 00000000 */   nop
/* B810C 800C790C EE09030C */  jal        FUN_800c27b8
/* B8110 800C7910 21202002 */   addu      $a0, $s1, $zero
/* B8114 800C7914 21184000 */  addu       $v1, $v0, $zero
/* B8118 800C7918 FEFF0224 */  addiu      $v0, $zero, -2
/* B811C 800C791C A1006210 */  beq        $v1, $v0, .L800C7BA4
/* B8120 800C7920 01000224 */   addiu     $v0, $zero, 1
/* B8124 800C7924 7F006214 */  bne        $v1, $v0, .L800C7B24
/* B8128 800C7928 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B812C 800C792C F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8130 800C7930 0800628C */  lw         $v0, 8($v1)
/* B8134 800C7934 00000000 */  nop
/* B8138 800C7938 01004224 */  addiu      $v0, $v0, 1
/* B813C 800C793C 080062AC */  sw         $v0, 8($v1)
/* B8140 800C7940 21202002 */  addu       $a0, $s1, $zero
/* B8144 800C7944 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B8148 800C7948 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B814C 800C794C 8A27030C */  jal        FUN_800c9e28
/* B8150 800C7950 F0B71026 */   addiu     $s0, $s0, -0x4810
/* B8154 800C7954 BC1E0308 */  j          .L800C7AF0
/* B8158 800C7958 00000000 */   nop
/* B815C 800C795C EE09030C */  jal        FUN_800c27b8
/* B8160 800C7960 21202002 */   addu      $a0, $s1, $zero
/* B8164 800C7964 21184000 */  addu       $v1, $v0, $zero
/* B8168 800C7968 FEFF0224 */  addiu      $v0, $zero, -2
/* B816C 800C796C 8D006210 */  beq        $v1, $v0, .L800C7BA4
/* B8170 800C7970 01000224 */   addiu     $v0, $zero, 1
/* B8174 800C7974 6B006214 */  bne        $v1, $v0, .L800C7B24
/* B8178 800C7978 00000000 */   nop
/* B817C 800C797C 1C00238E */  lw         $v1, 0x1c($s1)
/* B8180 800C7980 00000000 */  nop
/* B8184 800C7984 00006490 */  lbu        $a0, ($v1)
/* B8188 800C7988 00000000 */  nop
/* B818C 800C798C 02008230 */  andi       $v0, $a0, 2
/* B8190 800C7990 08004010 */  beqz       $v0, .L800C79B4
/* B8194 800C7994 00000000 */   nop
/* B8198 800C7998 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B819C 800C799C F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B81A0 800C79A0 0800628C */  lw         $v0, 8($v1)
/* B81A4 800C79A4 00000000 */  nop
/* B81A8 800C79A8 FFFF4224 */  addiu      $v0, $v0, -1
/* B81AC 800C79AC E91E0308 */  j          .L800C7BA4
/* B81B0 800C79B0 080062AC */   sw        $v0, 8($v1)
.L800C79B4:
/* B81B4 800C79B4 01006390 */  lbu        $v1, 1($v1)
/* B81B8 800C79B8 00000000 */  nop
/* B81BC 800C79BC 0E006230 */  andi       $v0, $v1, 0xe
/* B81C0 800C79C0 0E004010 */  beqz       $v0, .L800C79FC
/* B81C4 800C79C4 08006230 */   andi      $v0, $v1, 8
/* B81C8 800C79C8 56004010 */  beqz       $v0, .L800C7B24
/* B81CC 800C79CC 2080023C */   lui       $v0, %hi(D_801FB7F0)
/* B81D0 800C79D0 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B81D4 800C79D4 9C00448C */  lw         $a0, 0x9c($v0)
/* B81D8 800C79D8 00000000 */  nop
/* B81DC 800C79DC 21208200 */  addu       $a0, $a0, $v0
/* B81E0 800C79E0 0F80023C */  lui        $v0, %hi(D_800EE63C)
/* B81E4 800C79E4 1C008390 */  lbu        $v1, 0x1c($a0)
/* B81E8 800C79E8 3CE64224 */  addiu      $v0, $v0, %lo(D_800EE63C)
/* B81EC 800C79EC 21186200 */  addu       $v1, $v1, $v0
/* B81F0 800C79F0 00006290 */  lbu        $v0, ($v1)
/* B81F4 800C79F4 C91E0308 */  j          .L800C7B24
/* B81F8 800C79F8 1C0082A0 */   sb        $v0, 0x1c($a0)
.L800C79FC:
/* B81FC 800C79FC 80008230 */  andi       $v0, $a0, 0x80
/* B8200 800C7A00 0C004010 */  beqz       $v0, .L800C7A34
/* B8204 800C7A04 2080023C */   lui       $v0, %hi(D_801FB7F0)
/* B8208 800C7A08 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B820C 800C7A0C 9C00448C */  lw         $a0, 0x9c($v0)
/* B8210 800C7A10 00000000 */  nop
/* B8214 800C7A14 21208200 */  addu       $a0, $a0, $v0
/* B8218 800C7A18 0F80023C */  lui        $v0, %hi(D_800EE63C)
/* B821C 800C7A1C 1C008390 */  lbu        $v1, 0x1c($a0)
/* B8220 800C7A20 3CE64224 */  addiu      $v0, $v0, %lo(D_800EE63C)
/* B8224 800C7A24 21186200 */  addu       $v1, $v1, $v0
/* B8228 800C7A28 08006290 */  lbu        $v0, 8($v1)
/* B822C 800C7A2C 981E0308 */  j          .L800C7A60
/* B8230 800C7A30 1C0082A0 */   sb        $v0, 0x1c($a0)
.L800C7A34:
/* B8234 800C7A34 F0B74224 */  addiu      $v0, $v0, -0x4810
/* B8238 800C7A38 9C00448C */  lw         $a0, 0x9c($v0)
/* B823C 800C7A3C 00000000 */  nop
/* B8240 800C7A40 21208200 */  addu       $a0, $a0, $v0
/* B8244 800C7A44 0F80023C */  lui        $v0, %hi(D_800EE63C)
/* B8248 800C7A48 1C008390 */  lbu        $v1, 0x1c($a0)
/* B824C 800C7A4C 3CE64224 */  addiu      $v0, $v0, %lo(D_800EE63C)
/* B8250 800C7A50 21186200 */  addu       $v1, $v1, $v0
/* B8254 800C7A54 18006290 */  lbu        $v0, 0x18($v1)
/* B8258 800C7A58 00000000 */  nop
/* B825C 800C7A5C 1C0082A0 */  sb         $v0, 0x1c($a0)
.L800C7A60:
/* B8260 800C7A60 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B8264 800C7A64 F0B74324 */  addiu      $v1, $v0, %lo(D_801FB7F0)
/* B8268 800C7A68 2000628C */  lw         $v0, 0x20($v1)
/* B826C 800C7A6C 00000000 */  nop
/* B8270 800C7A70 06004010 */  beqz       $v0, .L800C7A8C
/* B8274 800C7A74 00000000 */   nop
/* B8278 800C7A78 0800628C */  lw         $v0, 8($v1)
/* B827C 800C7A7C 00000000 */  nop
/* B8280 800C7A80 03004224 */  addiu      $v0, $v0, 3
/* B8284 800C7A84 E91E0308 */  j          .L800C7BA4
/* B8288 800C7A88 080062AC */   sw        $v0, 8($v1)
.L800C7A8C:
/* B828C 800C7A8C 0800628C */  lw         $v0, 8($v1)
/* B8290 800C7A90 00000000 */  nop
/* B8294 800C7A94 01004224 */  addiu      $v0, $v0, 1
/* B8298 800C7A98 080062AC */  sw         $v0, 8($v1)
/* B829C 800C7A9C 2080023C */  lui        $v0, %hi(D_801FB7AC)
/* B82A0 800C7AA0 2080053C */  lui        $a1, %hi(D_801FB7F0)
/* B82A4 800C7AA4 F0B7B024 */  addiu      $s0, $a1, %lo(D_801FB7F0)
/* B82A8 800C7AA8 ACB7428C */  lw         $v0, %lo(D_801FB7AC)($v0)
/* B82AC 800C7AAC A000048E */  lw         $a0, 0xa0($s0)
/* B82B0 800C7AB0 2080033C */  lui        $v1, %hi(D_801FB7B4)
/* B82B4 800C7AB4 B4B762AC */  sw         $v0, %lo(D_801FB7B4)($v1)
/* B82B8 800C7AB8 2A108200 */  slt        $v0, $a0, $v0
/* B82BC 800C7ABC 02004010 */  beqz       $v0, .L800C7AC8
/* B82C0 800C7AC0 00000000 */   nop
/* B82C4 800C7AC4 B4B764AC */  sw         $a0, -0x484c($v1)
.L800C7AC8:
/* B82C8 800C7AC8 21202002 */  addu       $a0, $s1, $zero
/* B82CC 800C7ACC B0000226 */  addiu      $v0, $s0, 0xb0
/* B82D0 800C7AD0 1000A2AF */  sw         $v0, 0x10($sp)
/* B82D4 800C7AD4 2080023C */  lui        $v0, %hi(D_801FB7B0)
/* B82D8 800C7AD8 0200063C */  lui        $a2, 2
/* B82DC 800C7ADC F0B7A58C */  lw         $a1, -0x4810($a1)
/* B82E0 800C7AE0 B0B7428C */  lw         $v0, %lo(D_801FB7B0)($v0)
/* B82E4 800C7AE4 B4B7678C */  lw         $a3, -0x484c($v1)
/* B82E8 800C7AE8 C726030C */  jal        FUN_800c9b1c
/* B82EC 800C7AEC 21304600 */   addu      $a2, $v0, $a2
.L800C7AF0:
/* B82F0 800C7AF0 0800028E */  lw         $v0, 8($s0)
/* B82F4 800C7AF4 00000000 */  nop
/* B82F8 800C7AF8 01004224 */  addiu      $v0, $v0, 1
/* B82FC 800C7AFC E91E0308 */  j          .L800C7BA4
/* B8300 800C7B00 080002AE */   sw        $v0, 8($s0)
/* B8304 800C7B04 EE09030C */  jal        FUN_800c27b8
/* B8308 800C7B08 21202002 */   addu      $a0, $s1, $zero
/* B830C 800C7B0C 21184000 */  addu       $v1, $v0, $zero
/* B8310 800C7B10 FEFF0224 */  addiu      $v0, $zero, -2
/* B8314 800C7B14 23006210 */  beq        $v1, $v0, .L800C7BA4
/* B8318 800C7B18 01000224 */   addiu     $v0, $zero, 1
/* B831C 800C7B1C 03006210 */  beq        $v1, $v0, .L800C7B2C
/* B8320 800C7B20 2080023C */   lui       $v0, %hi(D_801FB7F0)
.L800C7B24:
/* B8324 800C7B24 E91E0308 */  j          .L800C7BA4
/* B8328 800C7B28 01001324 */   addiu     $s3, $zero, 1
.L800C7B2C:
/* B832C 800C7B2C F0B75224 */  addiu      $s2, $v0, %lo(D_801FB7F0)
/* B8330 800C7B30 2080103C */  lui        $s0, %hi(D_801FB7B0)
/* B8334 800C7B34 1C00258E */  lw         $a1, 0x1c($s1)
/* B8338 800C7B38 2080113C */  lui        $s1, %hi(D_801FB7B4)
/* B833C 800C7B3C 9000428E */  lw         $v0, 0x90($s2)
/* B8340 800C7B40 B0B7048E */  lw         $a0, %lo(D_801FB7B0)($s0)
/* B8344 800C7B44 B4B7268E */  lw         $a2, %lo(D_801FB7B4)($s1)
/* B8348 800C7B48 BD6B000C */  jal        memcpy
/* B834C 800C7B4C 21204400 */   addu      $a0, $v0, $a0
/* B8350 800C7B50 2080053C */  lui        $a1, %hi(D_801FB7AC)
/* B8354 800C7B54 B0B7028E */  lw         $v0, -0x4850($s0)
/* B8358 800C7B58 B4B7248E */  lw         $a0, -0x484c($s1)
/* B835C 800C7B5C ACB7A38C */  lw         $v1, %lo(D_801FB7AC)($a1)
/* B8360 800C7B60 21104400 */  addu       $v0, $v0, $a0
/* B8364 800C7B64 23186400 */  subu       $v1, $v1, $a0
/* B8368 800C7B68 B0B702AE */  sw         $v0, -0x4850($s0)
/* B836C 800C7B6C 06006018 */  blez       $v1, .L800C7B88
/* B8370 800C7B70 ACB7A3AC */   sw        $v1, -0x4854($a1)
/* B8374 800C7B74 0800428E */  lw         $v0, 8($s2)
/* B8378 800C7B78 00000000 */  nop
/* B837C 800C7B7C FFFF4224 */  addiu      $v0, $v0, -1
/* B8380 800C7B80 E91E0308 */  j          .L800C7BA4
/* B8384 800C7B84 080042AE */   sw        $v0, 8($s2)
.L800C7B88:
/* B8388 800C7B88 0800428E */  lw         $v0, 8($s2)
/* B838C 800C7B8C 00000000 */  nop
/* B8390 800C7B90 01004224 */  addiu      $v0, $v0, 1
/* B8394 800C7B94 080042AE */  sw         $v0, 8($s2)
/* B8398 800C7B98 21A00000 */  addu       $s4, $zero, $zero
/* B839C 800C7B9C 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B83A0 800C7BA0 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C7BA4:
/* B83A4 800C7BA4 04006012 */  beqz       $s3, .L800C7BB8
/* B83A8 800C7BA8 2080033C */   lui       $v1, %hi(D_801FB7FC)
/* B83AC 800C7BAC 21A00000 */  addu       $s4, $zero, $zero
/* B83B0 800C7BB0 FFFF0224 */  addiu      $v0, $zero, -1
/* B83B4 800C7BB4 FCB762AC */  sw         $v0, %lo(D_801FB7FC)($v1)
.L800C7BB8:
/* B83B8 800C7BB8 21108002 */  addu       $v0, $s4, $zero
/* B83BC 800C7BBC 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B83C0 800C7BC0 2800B48F */  lw         $s4, 0x28($sp)
/* B83C4 800C7BC4 2400B38F */  lw         $s3, 0x24($sp)
/* B83C8 800C7BC8 2000B28F */  lw         $s2, 0x20($sp)
/* B83CC 800C7BCC 1C00B18F */  lw         $s1, 0x1c($sp)
/* B83D0 800C7BD0 1800B08F */  lw         $s0, 0x18($sp)
/* B83D4 800C7BD4 0800E003 */  jr         $ra
/* B83D8 800C7BD8 3000BD27 */   addiu     $sp, $sp, 0x30
