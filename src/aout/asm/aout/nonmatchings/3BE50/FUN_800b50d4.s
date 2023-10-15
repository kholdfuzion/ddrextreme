.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b50d4
/* A58D4 800B50D4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* A58D8 800B50D8 2800B6AF */  sw         $s6, 0x28($sp)
/* A58DC 800B50DC 21B08000 */  addu       $s6, $a0, $zero
/* A58E0 800B50E0 3000BEAF */  sw         $fp, 0x30($sp)
/* A58E4 800B50E4 21F0A000 */  addu       $fp, $a1, $zero
/* A58E8 800B50E8 3400BFAF */  sw         $ra, 0x34($sp)
/* A58EC 800B50EC 2C00B7AF */  sw         $s7, 0x2c($sp)
/* A58F0 800B50F0 2400B5AF */  sw         $s5, 0x24($sp)
/* A58F4 800B50F4 2000B4AF */  sw         $s4, 0x20($sp)
/* A58F8 800B50F8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A58FC 800B50FC 1800B2AF */  sw         $s2, 0x18($sp)
/* A5900 800B5100 1400B1AF */  sw         $s1, 0x14($sp)
/* A5904 800B5104 1000B0AF */  sw         $s0, 0x10($sp)
/* A5908 800B5108 AE6C000C */  jal        CheckCallback
/* A590C 800B510C 4000A6AF */   sw        $a2, 0x40($sp)
/* A5910 800B5110 0D004014 */  bnez       $v0, .L800B5148
/* A5914 800B5114 21A80000 */   addu      $s5, $zero, $zero
/* A5918 800B5118 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A591C 800B511C B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A5920 800B5120 00000000 */  nop
/* A5924 800B5124 03004014 */  bnez       $v0, .L800B5134
/* A5928 800B5128 00000000 */   nop
/* A592C 800B512C 1D6E000C */  jal        FUN_8001b874
/* A5930 800B5130 00000000 */   nop
.L800B5134:
/* A5934 800B5134 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A5938 800B5138 00000000 */  nop
/* A593C 800B513C 01004224 */  addiu      $v0, $v0, 1
/* A5940 800B5140 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A5944 800B5144 21A80000 */  addu       $s5, $zero, $zero
.L800B5148:
/* A5948 800B5148 0400D426 */  addiu      $s4, $s6, 4
/* A594C 800B514C 1E80023C */  lui        $v0, %hi(D_801E07E0)
/* A5950 800B5150 E0075124 */  addiu      $s1, $v0, %lo(D_801E07E0)
/* A5954 800B5154 21982002 */  addu       $s3, $s1, $zero
.L800B5158:
/* A5958 800B5158 40811500 */  sll        $s0, $s5, 5
/* A595C 800B515C 1C002226 */  addiu      $v0, $s1, 0x1c
/* A5960 800B5160 21100202 */  addu       $v0, $s0, $v0
/* A5964 800B5164 0000438C */  lw         $v1, ($v0)
/* A5968 800B5168 00000000 */  nop
/* A596C 800B516C 48006014 */  bnez       $v1, .L800B5290
/* A5970 800B5170 01001724 */   addiu     $s7, $zero, 1
/* A5974 800B5174 000057AC */  sw         $s7, ($v0)
/* A5978 800B5178 21103002 */  addu       $v0, $s1, $s0
/* A597C 800B517C 21184000 */  addu       $v1, $v0, $zero
/* A5980 800B5180 000076AE */  sw         $s6, ($s3)
/* A5984 800B5184 04005EAC */  sw         $fp, 4($v0)
/* A5988 800B5188 4000A28F */  lw         $v0, 0x40($sp)
/* A598C 800B518C 00000000 */  nop
/* A5990 800B5190 080062AC */  sw         $v0, 8($v1)
/* A5994 800B5194 18002226 */  addiu      $v0, $s1, 0x18
/* A5998 800B5198 A5DA020C */  jal        FUN_800b6a94
/* A599C 800B519C 21900202 */   addu      $s2, $s0, $v0
/* A59A0 800B51A0 21204002 */  addu       $a0, $s2, $zero
/* A59A4 800B51A4 2128C002 */  addu       $a1, $s6, $zero
/* A59A8 800B51A8 4000A28F */  lw         $v0, 0x40($sp)
/* A59AC 800B51AC 00000000 */  nop
/* A59B0 800B51B0 09F84000 */  jalr       $v0
/* A59B4 800B51B4 04000624 */   addiu     $a2, $zero, 4
/* A59B8 800B51B8 B9DA020C */  jal        FUN_800b6ae4
/* A59BC 800B51BC 00000000 */   nop
/* A59C0 800B51C0 0C002526 */  addiu      $a1, $s1, 0xc
/* A59C4 800B51C4 21280502 */  addu       $a1, $s0, $a1
/* A59C8 800B51C8 0000B4AC */  sw         $s4, ($a1)
/* A59CC 800B51CC 0000428E */  lw         $v0, ($s2)
/* A59D0 800B51D0 21303002 */  addu       $a2, $s1, $s0
/* A59D4 800B51D4 40180200 */  sll        $v1, $v0, 1
/* A59D8 800B51D8 21186200 */  addu       $v1, $v1, $v0
/* A59DC 800B51DC 80180300 */  sll        $v1, $v1, 2
/* A59E0 800B51E0 21188302 */  addu       $v1, $s4, $v1
/* A59E4 800B51E4 1000C3AC */  sw         $v1, 0x10($a2)
/* A59E8 800B51E8 0000448E */  lw         $a0, ($s2)
/* A59EC 800B51EC 00000000 */  nop
/* A59F0 800B51F0 40100400 */  sll        $v0, $a0, 1
/* A59F4 800B51F4 21104400 */  addu       $v0, $v0, $a0
/* A59F8 800B51F8 80100200 */  sll        $v0, $v0, 2
/* A59FC 800B51FC 21186200 */  addu       $v1, $v1, $v0
/* A5A00 800B5200 140063AE */  sw         $v1, 0x14($s3)
/* A5A04 800B5204 0000B18C */  lw         $s1, ($a1)
/* A5A08 800B5208 00000000 */  nop
/* A5A0C 800B520C 0F00D113 */  beq        $fp, $s1, .L800B524C
/* A5A10 800B5210 00000000 */   nop
/* A5A14 800B5214 0000428E */  lw         $v0, ($s2)
/* A5A18 800B5218 00000000 */  nop
/* A5A1C 800B521C 40800200 */  sll        $s0, $v0, 1
/* A5A20 800B5220 21800202 */  addu       $s0, $s0, $v0
/* A5A24 800B5224 A5DA020C */  jal        FUN_800b6a94
/* A5A28 800B5228 80801000 */   sll       $s0, $s0, 2
/* A5A2C 800B522C 2120C003 */  addu       $a0, $fp, $zero
/* A5A30 800B5230 21282002 */  addu       $a1, $s1, $zero
/* A5A34 800B5234 4000A28F */  lw         $v0, 0x40($sp)
/* A5A38 800B5238 00000000 */  nop
/* A5A3C 800B523C 09F84000 */  jalr       $v0
/* A5A40 800B5240 21300002 */   addu      $a2, $s0, $zero
/* A5A44 800B5244 B9DA020C */  jal        FUN_800b6ae4
/* A5A48 800B5248 00000000 */   nop
.L800B524C:
/* A5A4C 800B524C AE6C000C */  jal        CheckCallback
/* A5A50 800B5250 00000000 */   nop
/* A5A54 800B5254 22004014 */  bnez       $v0, .L800B52E0
/* A5A58 800B5258 2110A002 */   addu      $v0, $s5, $zero
/* A5A5C 800B525C 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A5A60 800B5260 B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A5A64 800B5264 00000000 */  nop
/* A5A68 800B5268 03005714 */  bne        $v0, $s7, .L800B5278
/* A5A6C 800B526C 00000000 */   nop
/* A5A70 800B5270 216E000C */  jal        FUN_8001b884
/* A5A74 800B5274 00000000 */   nop
.L800B5278:
/* A5A78 800B5278 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A5A7C 800B527C 00000000 */  nop
/* A5A80 800B5280 FFFF4224 */  addiu      $v0, $v0, -1
/* A5A84 800B5284 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A5A88 800B5288 B8D40208 */  j          .L800B52E0
/* A5A8C 800B528C 2110A002 */   addu      $v0, $s5, $zero
.L800B5290:
/* A5A90 800B5290 0100B526 */  addiu      $s5, $s5, 1
/* A5A94 800B5294 1000A22E */  sltiu      $v0, $s5, 0x10
/* A5A98 800B5298 AFFF4014 */  bnez       $v0, .L800B5158
/* A5A9C 800B529C 20007326 */   addiu     $s3, $s3, 0x20
/* A5AA0 800B52A0 AE6C000C */  jal        CheckCallback
/* A5AA4 800B52A4 00000000 */   nop
/* A5AA8 800B52A8 0D004014 */  bnez       $v0, .L800B52E0
/* A5AAC 800B52AC FFFF0224 */   addiu     $v0, $zero, -1
/* A5AB0 800B52B0 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A5AB4 800B52B4 B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A5AB8 800B52B8 01000224 */  addiu      $v0, $zero, 1
/* A5ABC 800B52BC 03006214 */  bne        $v1, $v0, .L800B52CC
/* A5AC0 800B52C0 00000000 */   nop
/* A5AC4 800B52C4 216E000C */  jal        FUN_8001b884
/* A5AC8 800B52C8 00000000 */   nop
.L800B52CC:
/* A5ACC 800B52CC B0070292 */  lbu        $v0, 0x7b0($s0)
/* A5AD0 800B52D0 00000000 */  nop
/* A5AD4 800B52D4 FFFF4224 */  addiu      $v0, $v0, -1
/* A5AD8 800B52D8 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A5ADC 800B52DC FFFF0224 */  addiu      $v0, $zero, -1
.L800B52E0:
/* A5AE0 800B52E0 3400BF8F */  lw         $ra, 0x34($sp)
/* A5AE4 800B52E4 3000BE8F */  lw         $fp, 0x30($sp)
/* A5AE8 800B52E8 2C00B78F */  lw         $s7, 0x2c($sp)
/* A5AEC 800B52EC 2800B68F */  lw         $s6, 0x28($sp)
/* A5AF0 800B52F0 2400B58F */  lw         $s5, 0x24($sp)
/* A5AF4 800B52F4 2000B48F */  lw         $s4, 0x20($sp)
/* A5AF8 800B52F8 1C00B38F */  lw         $s3, 0x1c($sp)
/* A5AFC 800B52FC 1800B28F */  lw         $s2, 0x18($sp)
/* A5B00 800B5300 1400B18F */  lw         $s1, 0x14($sp)
/* A5B04 800B5304 1000B08F */  lw         $s0, 0x10($sp)
/* A5B08 800B5308 0800E003 */  jr         $ra
/* A5B0C 800B530C 3800BD27 */   addiu     $sp, $sp, 0x38
