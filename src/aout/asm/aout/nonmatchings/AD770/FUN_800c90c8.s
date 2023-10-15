.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c90c8
/* B98C8 800C90C8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B98CC 800C90CC 2800B4AF */  sw         $s4, 0x28($sp)
/* B98D0 800C90D0 FFFF1424 */  addiu      $s4, $zero, -1
/* B98D4 800C90D4 2000B2AF */  sw         $s2, 0x20($sp)
/* B98D8 800C90D8 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B98DC 800C90DC F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B98E0 800C90E0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B98E4 800C90E4 28005124 */  addiu      $s1, $v0, 0x28
/* B98E8 800C90E8 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B98EC 800C90EC 2400B3AF */  sw         $s3, 0x24($sp)
/* B98F0 800C90F0 1800B0AF */  sw         $s0, 0x18($sp)
/* B98F4 800C90F4 0800438C */  lw         $v1, 8($v0)
/* B98F8 800C90F8 0400538C */  lw         $s3, 4($v0)
/* B98FC 800C90FC 0800622C */  sltiu      $v0, $v1, 8
/* B9900 800C9100 7C004010 */  beqz       $v0, .L800C92F4
/* B9904 800C9104 21900000 */   addu      $s2, $zero, $zero
/* B9908 800C9108 0180023C */  lui        $v0, %hi(D_80017A98)
/* B990C 800C910C 987A4224 */  addiu      $v0, $v0, %lo(D_80017A98)
/* B9910 800C9110 80180300 */  sll        $v1, $v1, 2
/* B9914 800C9114 21186200 */  addu       $v1, $v1, $v0
/* B9918 800C9118 0000628C */  lw         $v0, ($v1)
/* B991C 800C911C 00000000 */  nop
/* B9920 800C9120 08004000 */  jr         $v0
/* B9924 800C9124 00000000 */   nop
/* B9928 800C9128 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B992C 800C912C F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B9930 800C9130 0800438C */  lw         $v1, 8($v0)
/* B9934 800C9134 2080043C */  lui        $a0, %hi(D_801FB7EC)
/* B9938 800C9138 ECB780AC */  sw         $zero, %lo(D_801FB7EC)($a0)
/* B993C 800C913C 01006324 */  addiu      $v1, $v1, 1
/* B9940 800C9140 080043AC */  sw         $v1, 8($v0)
/* B9944 800C9144 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B9948 800C9148 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B994C 800C914C F0B71026 */  addiu      $s0, $s0, -0x4810
/* B9950 800C9150 2080023C */  lui        $v0, %hi(D_801FB7EC)
/* B9954 800C9154 9C00068E */  lw         $a2, 0x9c($s0)
/* B9958 800C9158 9000078E */  lw         $a3, 0x90($s0)
/* B995C 800C915C ECB7428C */  lw         $v0, %lo(D_801FB7EC)($v0)
/* B9960 800C9160 21202002 */  addu       $a0, $s1, $zero
/* B9964 800C9164 5C28030C */  jal        FUN_800ca170
/* B9968 800C9168 1000A2AF */   sw        $v0, 0x10($sp)
/* B996C 800C916C A6240308 */  j          .L800C9298
/* B9970 800C9170 00000000 */   nop
/* B9974 800C9174 EE09030C */  jal        FUN_800c27b8
/* B9978 800C9178 21202002 */   addu      $a0, $s1, $zero
/* B997C 800C917C 21184000 */  addu       $v1, $v0, $zero
/* B9980 800C9180 FEFF0224 */  addiu      $v0, $zero, -2
/* B9984 800C9184 5B006210 */  beq        $v1, $v0, .L800C92F4
/* B9988 800C9188 01000224 */   addiu     $v0, $zero, 1
/* B998C 800C918C 4F006214 */  bne        $v1, $v0, .L800C92CC
/* B9990 800C9190 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B9994 800C9194 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9998 800C9198 0800628C */  lw         $v0, 8($v1)
/* B999C 800C919C 00000000 */  nop
/* B99A0 800C91A0 01004224 */  addiu      $v0, $v0, 1
/* B99A4 800C91A4 080062AC */  sw         $v0, 8($v1)
/* B99A8 800C91A8 21202002 */  addu       $a0, $s1, $zero
/* B99AC 800C91AC 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B99B0 800C91B0 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B99B4 800C91B4 8A27030C */  jal        FUN_800c9e28
/* B99B8 800C91B8 F0B71026 */   addiu     $s0, $s0, -0x4810
/* B99BC 800C91BC A6240308 */  j          .L800C9298
/* B99C0 800C91C0 00000000 */   nop
/* B99C4 800C91C4 EE09030C */  jal        FUN_800c27b8
/* B99C8 800C91C8 21202002 */   addu      $a0, $s1, $zero
/* B99CC 800C91CC 21184000 */  addu       $v1, $v0, $zero
/* B99D0 800C91D0 FEFF0224 */  addiu      $v0, $zero, -2
/* B99D4 800C91D4 47006210 */  beq        $v1, $v0, .L800C92F4
/* B99D8 800C91D8 01000224 */   addiu     $v0, $zero, 1
/* B99DC 800C91DC 3B006214 */  bne        $v1, $v0, .L800C92CC
/* B99E0 800C91E0 00000000 */   nop
/* B99E4 800C91E4 1C00238E */  lw         $v1, 0x1c($s1)
/* B99E8 800C91E8 00000000 */  nop
/* B99EC 800C91EC 00006290 */  lbu        $v0, ($v1)
/* B99F0 800C91F0 00000000 */  nop
/* B99F4 800C91F4 78004230 */  andi       $v0, $v0, 0x78
/* B99F8 800C91F8 08004010 */  beqz       $v0, .L800C921C
/* B99FC 800C91FC 00000000 */   nop
/* B9A00 800C9200 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9A04 800C9204 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9A08 800C9208 0800628C */  lw         $v0, 8($v1)
/* B9A0C 800C920C 00000000 */  nop
/* B9A10 800C9210 FFFF4224 */  addiu      $v0, $v0, -1
/* B9A14 800C9214 BD240308 */  j          .L800C92F4
/* B9A18 800C9218 080062AC */   sw        $v0, 8($v1)
.L800C921C:
/* B9A1C 800C921C 01006390 */  lbu        $v1, 1($v1)
/* B9A20 800C9220 00000000 */  nop
/* B9A24 800C9224 60006230 */  andi       $v0, $v1, 0x60
/* B9A28 800C9228 0B004010 */  beqz       $v0, .L800C9258
/* B9A2C 800C922C 40006230 */   andi      $v0, $v1, 0x40
/* B9A30 800C9230 02004010 */  beqz       $v0, .L800C923C
/* B9A34 800C9234 FAFF1424 */   addiu     $s4, $zero, -6
/* B9A38 800C9238 FBFF1424 */  addiu      $s4, $zero, -5
.L800C923C:
/* B9A3C 800C923C 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9A40 800C9240 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9A44 800C9244 9C00628C */  lw         $v0, 0x9c($v1)
/* B9A48 800C9248 01001224 */  addiu      $s2, $zero, 1
/* B9A4C 800C924C 21104300 */  addu       $v0, $v0, $v1
/* B9A50 800C9250 BD240308 */  j          .L800C92F4
/* B9A54 800C9254 1E0040A0 */   sb        $zero, 0x1e($v0)
.L800C9258:
/* B9A58 800C9258 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9A5C 800C925C F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9A60 800C9260 0800628C */  lw         $v0, 8($v1)
/* B9A64 800C9264 00000000 */  nop
/* B9A68 800C9268 01004224 */  addiu      $v0, $v0, 1
/* B9A6C 800C926C 080062AC */  sw         $v0, 8($v1)
/* B9A70 800C9270 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B9A74 800C9274 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B9A78 800C9278 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B9A7C 800C927C 2080023C */  lui        $v0, %hi(D_801FB7EC)
/* B9A80 800C9280 9C00068E */  lw         $a2, 0x9c($s0)
/* B9A84 800C9284 9000078E */  lw         $a3, 0x90($s0)
/* B9A88 800C9288 ECB7428C */  lw         $v0, %lo(D_801FB7EC)($v0)
/* B9A8C 800C928C 21202002 */  addu       $a0, $s1, $zero
/* B9A90 800C9290 3428030C */  jal        FUN_800ca0d0
/* B9A94 800C9294 1000A2AF */   sw        $v0, 0x10($sp)
.L800C9298:
/* B9A98 800C9298 0800028E */  lw         $v0, 8($s0)
/* B9A9C 800C929C 00000000 */  nop
/* B9AA0 800C92A0 01004224 */  addiu      $v0, $v0, 1
/* B9AA4 800C92A4 BD240308 */  j          .L800C92F4
/* B9AA8 800C92A8 080002AE */   sw        $v0, 8($s0)
/* B9AAC 800C92AC EE09030C */  jal        FUN_800c27b8
/* B9AB0 800C92B0 21202002 */   addu      $a0, $s1, $zero
/* B9AB4 800C92B4 21184000 */  addu       $v1, $v0, $zero
/* B9AB8 800C92B8 FEFF0224 */  addiu      $v0, $zero, -2
/* B9ABC 800C92BC 0D006210 */  beq        $v1, $v0, .L800C92F4
/* B9AC0 800C92C0 01000224 */   addiu     $v0, $zero, 1
/* B9AC4 800C92C4 03006210 */  beq        $v1, $v0, .L800C92D4
/* B9AC8 800C92C8 2080033C */   lui       $v1, %hi(D_801FB7F0)
.L800C92CC:
/* B9ACC 800C92CC BD240308 */  j          .L800C92F4
/* B9AD0 800C92D0 21904000 */   addu      $s2, $v0, $zero
.L800C92D4:
/* B9AD4 800C92D4 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9AD8 800C92D8 0800628C */  lw         $v0, 8($v1)
/* B9ADC 800C92DC 00000000 */  nop
/* B9AE0 800C92E0 01004224 */  addiu      $v0, $v0, 1
/* B9AE4 800C92E4 080062AC */  sw         $v0, 8($v1)
/* B9AE8 800C92E8 21980000 */  addu       $s3, $zero, $zero
/* B9AEC 800C92EC 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B9AF0 800C92F0 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C92F4:
/* B9AF4 800C92F4 03004012 */  beqz       $s2, .L800C9304
/* B9AF8 800C92F8 2080023C */   lui       $v0, %hi(D_801FB7FC)
/* B9AFC 800C92FC 21980000 */  addu       $s3, $zero, $zero
/* B9B00 800C9300 FCB754AC */  sw         $s4, %lo(D_801FB7FC)($v0)
.L800C9304:
/* B9B04 800C9304 21106002 */  addu       $v0, $s3, $zero
/* B9B08 800C9308 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B9B0C 800C930C 2800B48F */  lw         $s4, 0x28($sp)
/* B9B10 800C9310 2400B38F */  lw         $s3, 0x24($sp)
/* B9B14 800C9314 2000B28F */  lw         $s2, 0x20($sp)
/* B9B18 800C9318 1C00B18F */  lw         $s1, 0x1c($sp)
/* B9B1C 800C931C 1800B08F */  lw         $s0, 0x18($sp)
/* B9B20 800C9320 0800E003 */  jr         $ra
/* B9B24 800C9324 3000BD27 */   addiu     $sp, $sp, 0x30
