.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c88b8
/* B90B8 800C88B8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B90BC 800C88BC 2400B3AF */  sw         $s3, 0x24($sp)
/* B90C0 800C88C0 FFFF1324 */  addiu      $s3, $zero, -1
/* B90C4 800C88C4 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B90C8 800C88C8 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B90CC 800C88CC F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B90D0 800C88D0 1800B0AF */  sw         $s0, 0x18($sp)
/* B90D4 800C88D4 28005024 */  addiu      $s0, $v0, 0x28
/* B90D8 800C88D8 2800BFAF */  sw         $ra, 0x28($sp)
/* B90DC 800C88DC 2000B2AF */  sw         $s2, 0x20($sp)
/* B90E0 800C88E0 0800438C */  lw         $v1, 8($v0)
/* B90E4 800C88E4 0400528C */  lw         $s2, 4($v0)
/* B90E8 800C88E8 0800622C */  sltiu      $v0, $v1, 8
/* B90EC 800C88EC 7E004010 */  beqz       $v0, .L800C8AE8
/* B90F0 800C88F0 21880000 */   addu      $s1, $zero, $zero
/* B90F4 800C88F4 0180023C */  lui        $v0, %hi(D_80017A38)
/* B90F8 800C88F8 387A4224 */  addiu      $v0, $v0, %lo(D_80017A38)
/* B90FC 800C88FC 80180300 */  sll        $v1, $v1, 2
/* B9100 800C8900 21186200 */  addu       $v1, $v1, $v0
/* B9104 800C8904 0000628C */  lw         $v0, ($v1)
/* B9108 800C8908 00000000 */  nop
/* B910C 800C890C 08004000 */  jr         $v0
/* B9110 800C8910 00000000 */   nop
/* B9114 800C8914 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9118 800C8918 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B911C 800C891C 0800628C */  lw         $v0, 8($v1)
/* B9120 800C8920 00000000 */  nop
/* B9124 800C8924 01004224 */  addiu      $v0, $v0, 1
/* B9128 800C8928 080062AC */  sw         $v0, 8($v1)
/* B912C 800C892C 21200002 */  addu       $a0, $s0, $zero
/* B9130 800C8930 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B9134 800C8934 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B9138 800C8938 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B913C 800C893C 9C00068E */  lw         $a2, 0x9c($s0)
/* B9140 800C8940 8428030C */  jal        FUN_800ca210
/* B9144 800C8944 0200073C */   lui       $a3, 2
/* B9148 800C8948 9C220308 */  j          .L800C8A70
/* B914C 800C894C 00000000 */   nop
/* B9150 800C8950 EE09030C */  jal        FUN_800c27b8
/* B9154 800C8954 21200002 */   addu      $a0, $s0, $zero
/* B9158 800C8958 21184000 */  addu       $v1, $v0, $zero
/* B915C 800C895C FEFF0224 */  addiu      $v0, $zero, -2
/* B9160 800C8960 61006210 */  beq        $v1, $v0, .L800C8AE8
/* B9164 800C8964 01000224 */   addiu     $v0, $zero, 1
/* B9168 800C8968 4E006214 */  bne        $v1, $v0, .L800C8AA4
/* B916C 800C896C 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B9170 800C8970 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9174 800C8974 0800628C */  lw         $v0, 8($v1)
/* B9178 800C8978 00000000 */  nop
/* B917C 800C897C 01004224 */  addiu      $v0, $v0, 1
/* B9180 800C8980 080062AC */  sw         $v0, 8($v1)
/* B9184 800C8984 21200002 */  addu       $a0, $s0, $zero
/* B9188 800C8988 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B918C 800C898C F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B9190 800C8990 8A27030C */  jal        FUN_800c9e28
/* B9194 800C8994 F0B71026 */   addiu     $s0, $s0, -0x4810
/* B9198 800C8998 9C220308 */  j          .L800C8A70
/* B919C 800C899C 00000000 */   nop
/* B91A0 800C89A0 EE09030C */  jal        FUN_800c27b8
/* B91A4 800C89A4 21200002 */   addu      $a0, $s0, $zero
/* B91A8 800C89A8 21184000 */  addu       $v1, $v0, $zero
/* B91AC 800C89AC FEFF0224 */  addiu      $v0, $zero, -2
/* B91B0 800C89B0 4D006210 */  beq        $v1, $v0, .L800C8AE8
/* B91B4 800C89B4 01000224 */   addiu     $v0, $zero, 1
/* B91B8 800C89B8 3A006214 */  bne        $v1, $v0, .L800C8AA4
/* B91BC 800C89BC 00000000 */   nop
/* B91C0 800C89C0 1C00038E */  lw         $v1, 0x1c($s0)
/* B91C4 800C89C4 00000000 */  nop
/* B91C8 800C89C8 00006290 */  lbu        $v0, ($v1)
/* B91CC 800C89CC 00000000 */  nop
/* B91D0 800C89D0 10004230 */  andi       $v0, $v0, 0x10
/* B91D4 800C89D4 08004010 */  beqz       $v0, .L800C89F8
/* B91D8 800C89D8 00000000 */   nop
/* B91DC 800C89DC 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B91E0 800C89E0 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B91E4 800C89E4 0800628C */  lw         $v0, 8($v1)
/* B91E8 800C89E8 00000000 */  nop
/* B91EC 800C89EC FFFF4224 */  addiu      $v0, $v0, -1
/* B91F0 800C89F0 BA220308 */  j          .L800C8AE8
/* B91F4 800C89F4 080062AC */   sw        $v0, 8($v1)
.L800C89F8:
/* B91F8 800C89F8 01006390 */  lbu        $v1, 1($v1)
/* B91FC 800C89FC 00000000 */  nop
/* B9200 800C8A00 60006230 */  andi       $v0, $v1, 0x60
/* B9204 800C8A04 0B004010 */  beqz       $v0, .L800C8A34
/* B9208 800C8A08 40006230 */   andi      $v0, $v1, 0x40
/* B920C 800C8A0C 02004010 */  beqz       $v0, .L800C8A18
/* B9210 800C8A10 FAFF1324 */   addiu     $s3, $zero, -6
/* B9214 800C8A14 FBFF1324 */  addiu      $s3, $zero, -5
.L800C8A18:
/* B9218 800C8A18 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B921C 800C8A1C F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9220 800C8A20 9C00628C */  lw         $v0, 0x9c($v1)
/* B9224 800C8A24 01001124 */  addiu      $s1, $zero, 1
/* B9228 800C8A28 21104300 */  addu       $v0, $v0, $v1
/* B922C 800C8A2C BA220308 */  j          .L800C8AE8
/* B9230 800C8A30 1E0040A0 */   sb        $zero, 0x1e($v0)
.L800C8A34:
/* B9234 800C8A34 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9238 800C8A38 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B923C 800C8A3C 0800628C */  lw         $v0, 8($v1)
/* B9240 800C8A40 00000000 */  nop
/* B9244 800C8A44 01004224 */  addiu      $v0, $v0, 1
/* B9248 800C8A48 080062AC */  sw         $v0, 8($v1)
/* B924C 800C8A4C 21200002 */  addu       $a0, $s0, $zero
/* B9250 800C8A50 0200063C */  lui        $a2, 2
/* B9254 800C8A54 05000724 */  addiu      $a3, $zero, 5
/* B9258 800C8A58 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B925C 800C8A5C F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B9260 800C8A60 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B9264 800C8A64 B0000226 */  addiu      $v0, $s0, 0xb0
/* B9268 800C8A68 C726030C */  jal        FUN_800c9b1c
/* B926C 800C8A6C 1000A2AF */   sw        $v0, 0x10($sp)
.L800C8A70:
/* B9270 800C8A70 0800028E */  lw         $v0, 8($s0)
/* B9274 800C8A74 00000000 */  nop
/* B9278 800C8A78 01004224 */  addiu      $v0, $v0, 1
/* B927C 800C8A7C BA220308 */  j          .L800C8AE8
/* B9280 800C8A80 080002AE */   sw        $v0, 8($s0)
/* B9284 800C8A84 EE09030C */  jal        FUN_800c27b8
/* B9288 800C8A88 21200002 */   addu      $a0, $s0, $zero
/* B928C 800C8A8C 21184000 */  addu       $v1, $v0, $zero
/* B9290 800C8A90 FEFF0224 */  addiu      $v0, $zero, -2
/* B9294 800C8A94 14006210 */  beq        $v1, $v0, .L800C8AE8
/* B9298 800C8A98 01000224 */   addiu     $v0, $zero, 1
/* B929C 800C8A9C 03006210 */  beq        $v1, $v0, .L800C8AAC
/* B92A0 800C8AA0 2080033C */   lui       $v1, %hi(D_801FB7F0)
.L800C8AA4:
/* B92A4 800C8AA4 BA220308 */  j          .L800C8AE8
/* B92A8 800C8AA8 21884000 */   addu      $s1, $v0, $zero
.L800C8AAC:
/* B92AC 800C8AAC F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B92B0 800C8AB0 9000628C */  lw         $v0, 0x90($v1)
/* B92B4 800C8AB4 B3006888 */  lwl        $t0, 0xb3($v1)
/* B92B8 800C8AB8 B0006898 */  lwr        $t0, 0xb0($v1)
/* B92BC 800C8ABC B4006980 */  lb         $t1, 0xb4($v1)
/* B92C0 800C8AC0 030048A8 */  swl        $t0, 3($v0)
/* B92C4 800C8AC4 000048B8 */  swr        $t0, ($v0)
/* B92C8 800C8AC8 040049A0 */  sb         $t1, 4($v0)
/* B92CC 800C8ACC 0800628C */  lw         $v0, 8($v1)
/* B92D0 800C8AD0 00000000 */  nop
/* B92D4 800C8AD4 01004224 */  addiu      $v0, $v0, 1
/* B92D8 800C8AD8 080062AC */  sw         $v0, 8($v1)
/* B92DC 800C8ADC 21900000 */  addu       $s2, $zero, $zero
/* B92E0 800C8AE0 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B92E4 800C8AE4 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C8AE8:
/* B92E8 800C8AE8 03002012 */  beqz       $s1, .L800C8AF8
/* B92EC 800C8AEC 2080023C */   lui       $v0, %hi(D_801FB7FC)
/* B92F0 800C8AF0 21900000 */  addu       $s2, $zero, $zero
/* B92F4 800C8AF4 FCB753AC */  sw         $s3, %lo(D_801FB7FC)($v0)
.L800C8AF8:
/* B92F8 800C8AF8 21104002 */  addu       $v0, $s2, $zero
/* B92FC 800C8AFC 2800BF8F */  lw         $ra, 0x28($sp)
/* B9300 800C8B00 2400B38F */  lw         $s3, 0x24($sp)
/* B9304 800C8B04 2000B28F */  lw         $s2, 0x20($sp)
/* B9308 800C8B08 1C00B18F */  lw         $s1, 0x1c($sp)
/* B930C 800C8B0C 1800B08F */  lw         $s0, 0x18($sp)
/* B9310 800C8B10 0800E003 */  jr         $ra
/* B9314 800C8B14 3000BD27 */   addiu     $sp, $sp, 0x30
