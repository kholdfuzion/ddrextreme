.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c41fc
/* B49FC 800C41FC 0400A5AF */  sw         $a1, 4($sp)
/* B4A00 800C4200 0800A6AF */  sw         $a2, 8($sp)
/* B4A04 800C4204 0C00A7AF */  sw         $a3, 0xc($sp)
/* B4A08 800C4208 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* B4A0C 800C420C 2800B4AF */  sw         $s4, 0x28($sp)
/* B4A10 800C4210 21A08000 */  addu       $s4, $a0, $zero
/* B4A14 800C4214 4800A827 */  addiu      $t0, $sp, 0x48
/* B4A18 800C4218 1000A8AF */  sw         $t0, 0x10($sp)
/* B4A1C 800C421C FFFF0824 */  addiu      $t0, $zero, -1
/* B4A20 800C4220 2080023C */  lui        $v0, %hi(D_801FB540)
/* B4A24 800C4224 2000B2AF */  sw         $s2, 0x20($sp)
/* B4A28 800C4228 40B55224 */  addiu      $s2, $v0, %lo(D_801FB540)
/* B4A2C 800C422C 2C00B5AF */  sw         $s5, 0x2c($sp)
/* B4A30 800C4230 21A80000 */  addu       $s5, $zero, $zero
/* B4A34 800C4234 3C00BFAF */  sw         $ra, 0x3c($sp)
/* B4A38 800C4238 3800BEAF */  sw         $fp, 0x38($sp)
/* B4A3C 800C423C 3400B7AF */  sw         $s7, 0x34($sp)
/* B4A40 800C4240 3000B6AF */  sw         $s6, 0x30($sp)
/* B4A44 800C4244 2400B3AF */  sw         $s3, 0x24($sp)
/* B4A48 800C4248 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B4A4C 800C424C 1800B0AF */  sw         $s0, 0x18($sp)
/* B4A50 800C4250 4400A5AF */  sw         $a1, 0x44($sp)
/* B4A54 800C4254 1400A8AF */  sw         $t0, 0x14($sp)
.L800C4258:
/* B4A58 800C4258 0400428E */  lw         $v0, 4($s2)
/* B4A5C 800C425C 00000000 */  nop
/* B4A60 800C4260 06004010 */  beqz       $v0, .L800C427C
/* B4A64 800C4264 0200A22A */   slti      $v0, $s5, 2
/* B4A68 800C4268 0100B526 */  addiu      $s5, $s5, 1
/* B4A6C 800C426C 0200A22A */  slti       $v0, $s5, 2
/* B4A70 800C4270 F9FF4014 */  bnez       $v0, .L800C4258
/* B4A74 800C4274 C8005226 */   addiu     $s2, $s2, 0xc8
/* B4A78 800C4278 0200A22A */  slti       $v0, $s5, 2
.L800C427C:
/* B4A7C 800C427C 60004010 */  beqz       $v0, .L800C4400
/* B4A80 800C4280 3A000224 */   addiu     $v0, $zero, 0x3a
/* B4A84 800C4284 01008392 */  lbu        $v1, 1($s4)
/* B4A88 800C4288 00000000 */  nop
/* B4A8C 800C428C 0A006214 */  bne        $v1, $v0, .L800C42B8
/* B4A90 800C4290 21980000 */   addu      $s3, $zero, $zero
/* B4A94 800C4294 00008292 */  lbu        $v0, ($s4)
/* B4A98 800C4298 00000000 */  nop
/* B4A9C 800C429C CFFF4224 */  addiu      $v0, $v0, -0x31
/* B4AA0 800C42A0 0200422C */  sltiu      $v0, $v0, 2
/* B4AA4 800C42A4 56004010 */  beqz       $v0, .L800C4400
/* B4AA8 800C42A8 00000000 */   nop
/* B4AAC 800C42AC 00008292 */  lbu        $v0, ($s4)
/* B4AB0 800C42B0 02009426 */  addiu      $s4, $s4, 2
/* B4AB4 800C42B4 CFFF5324 */  addiu      $s3, $v0, -0x31
.L800C42B8:
/* B4AB8 800C42B8 21206002 */  addu       $a0, $s3, $zero
/* B4ABC 800C42BC 80111300 */  sll        $v0, $s3, 6
/* B4AC0 800C42C0 21105300 */  addu       $v0, $v0, $s3
/* B4AC4 800C42C4 40110200 */  sll        $v0, $v0, 5
/* B4AC8 800C42C8 21105300 */  addu       $v0, $v0, $s3
/* B4ACC 800C42CC 80100200 */  sll        $v0, $v0, 2
/* B4AD0 800C42D0 1F80033C */  lui        $v1, %hi(D_801F7438)
/* B4AD4 800C42D4 38746324 */  addiu      $v1, $v1, %lo(D_801F7438)
/* B4AD8 800C42D8 2A1C030C */  jal        FUN_800c70a8
/* B4ADC 800C42DC 21B84300 */   addu      $s7, $v0, $v1
/* B4AE0 800C42E0 47004010 */  beqz       $v0, .L800C4400
/* B4AE4 800C42E4 21B00000 */   addu      $s6, $zero, $zero
/* B4AE8 800C42E8 8000F026 */  addiu      $s0, $s7, 0x80
/* B4AEC 800C42EC 2188C002 */  addu       $s1, $s6, $zero
/* B4AF0 800C42F0 51001E24 */  addiu      $fp, $zero, 0x51
.L800C42F4:
/* B4AF4 800C42F4 0000028E */  lw         $v0, ($s0)
/* B4AF8 800C42F8 00000000 */  nop
/* B4AFC 800C42FC 09005E14 */  bne        $v0, $fp, .L800C4324
/* B4B00 800C4300 21103702 */   addu      $v0, $s1, $s7
/* B4B04 800C4304 01204290 */  lbu        $v0, 0x2001($v0)
/* B4B08 800C4308 00000000 */  nop
/* B4B0C 800C430C 05004014 */  bnez       $v0, .L800C4324
/* B4B10 800C4310 0A000426 */   addiu     $a0, $s0, 0xa
/* B4B14 800C4314 DD5F000C */  jal        strcmp
/* B4B18 800C4318 21288002 */   addu      $a1, $s4, $zero
/* B4B1C 800C431C 2A004010 */  beqz       $v0, .L800C43C8
/* B4B20 800C4320 00000000 */   nop
.L800C4324:
/* B4B24 800C4324 01003126 */  addiu      $s1, $s1, 1
/* B4B28 800C4328 0F00222A */  slti       $v0, $s1, 0xf
/* B4B2C 800C432C F1FF4014 */  bnez       $v0, .L800C42F4
/* B4B30 800C4330 80001026 */   addiu     $s0, $s0, 0x80
/* B4B34 800C4334 0F00222A */  slti       $v0, $s1, 0xf
.L800C4338:
/* B4B38 800C4338 07004014 */  bnez       $v0, .L800C4358
/* B4B3C 800C433C 01000224 */   addiu     $v0, $zero, 1
/* B4B40 800C4340 4400A28F */  lw         $v0, 0x44($sp)
/* B4B44 800C4344 00000000 */  nop
/* B4B48 800C4348 00024230 */  andi       $v0, $v0, 0x200
/* B4B4C 800C434C 2C004010 */  beqz       $v0, .L800C4400
/* B4B50 800C4350 FFFF1134 */   ori       $s1, $zero, 0xffff
/* B4B54 800C4354 01000224 */  addiu      $v0, $zero, 1
.L800C4358:
/* B4B58 800C4358 040042AE */  sw         $v0, 4($s2)
/* B4B5C 800C435C 080040AE */  sw         $zero, 8($s2)
/* B4B60 800C4360 100040AE */  sw         $zero, 0x10($s2)
/* B4B64 800C4364 4400A38F */  lw         $v1, 0x44($sp)
/* B4B68 800C4368 FFFF0224 */  addiu      $v0, $zero, -1
/* B4B6C 800C436C 940042AE */  sw         $v0, 0x94($s2)
/* B4B70 800C4370 980053AE */  sw         $s3, 0x98($s2)
/* B4B74 800C4374 9C0051AE */  sw         $s1, 0x9c($s2)
/* B4B78 800C4378 A00056AE */  sw         $s6, 0xa0($s2)
/* B4B7C 800C437C A40040AE */  sw         $zero, 0xa4($s2)
/* B4B80 800C4380 A80040AE */  sw         $zero, 0xa8($s2)
/* B4B84 800C4384 AC0040AE */  sw         $zero, 0xac($s2)
/* B4B88 800C4388 07026230 */  andi       $v0, $v1, 0x207
/* B4B8C 800C438C 00026330 */  andi       $v1, $v1, 0x200
/* B4B90 800C4390 1A006010 */  beqz       $v1, .L800C43FC
/* B4B94 800C4394 0C0042AE */   sw        $v0, 0xc($s2)
/* B4B98 800C4398 2120E002 */  addu       $a0, $s7, $zero
/* B4B9C 800C439C 1000A88F */  lw         $t0, 0x10($sp)
/* B4BA0 800C43A0 21282002 */  addu       $a1, $s1, $zero
/* B4BA4 800C43A4 0000168D */  lw         $s6, ($t0)
/* B4BA8 800C43A8 21388002 */  addu       $a3, $s4, $zero
/* B4BAC 800C43AC 0F14030C */  jal        FUN_800c503c
/* B4BB0 800C43B0 2130C002 */   addu      $a2, $s6, $zero
/* B4BB4 800C43B4 21884000 */  addu       $s1, $v0, $zero
/* B4BB8 800C43B8 06002106 */  bgez       $s1, .L800C43D4
/* B4BBC 800C43BC A4004426 */   addiu     $a0, $s2, 0xa4
.L800C43C0:
/* B4BC0 800C43C0 00110308 */  j          .L800C4400
/* B4BC4 800C43C4 040040AE */   sw        $zero, 4($s2)
.L800C43C8:
/* B4BC8 800C43C8 0400168E */  lw         $s6, 4($s0)
/* B4BCC 800C43CC CE100308 */  j          .L800C4338
/* B4BD0 800C43D0 0F00222A */   slti      $v0, $s1, 0xf
.L800C43D4:
/* B4BD4 800C43D4 0C00468E */  lw         $a2, 0xc($s2)
/* B4BD8 800C43D8 21286002 */  addu       $a1, $s3, $zero
/* B4BDC 800C43DC 9C0051AE */  sw         $s1, 0x9c($s2)
/* B4BE0 800C43E0 A00056AE */  sw         $s6, 0xa0($s2)
/* B4BE4 800C43E4 82300600 */  srl        $a2, $a2, 2
/* B4BE8 800C43E8 0100C638 */  xori       $a2, $a2, 1
/* B4BEC 800C43EC 041B030C */  jal        FUN_800c6c10
/* B4BF0 800C43F0 0100C630 */   andi      $a2, $a2, 1
/* B4BF4 800C43F4 F2FF4004 */  bltz       $v0, .L800C43C0
/* B4BF8 800C43F8 00000000 */   nop
.L800C43FC:
/* B4BFC 800C43FC 1400B5AF */  sw         $s5, 0x14($sp)
.L800C4400:
/* B4C00 800C4400 1400A28F */  lw         $v0, 0x14($sp)
/* B4C04 800C4404 3C00BF8F */  lw         $ra, 0x3c($sp)
/* B4C08 800C4408 3800BE8F */  lw         $fp, 0x38($sp)
/* B4C0C 800C440C 3400B78F */  lw         $s7, 0x34($sp)
/* B4C10 800C4410 3000B68F */  lw         $s6, 0x30($sp)
/* B4C14 800C4414 2C00B58F */  lw         $s5, 0x2c($sp)
/* B4C18 800C4418 2800B48F */  lw         $s4, 0x28($sp)
/* B4C1C 800C441C 2400B38F */  lw         $s3, 0x24($sp)
/* B4C20 800C4420 2000B28F */  lw         $s2, 0x20($sp)
/* B4C24 800C4424 1C00B18F */  lw         $s1, 0x1c($sp)
/* B4C28 800C4428 1800B08F */  lw         $s0, 0x18($sp)
/* B4C2C 800C442C 0800E003 */  jr         $ra
/* B4C30 800C4430 4000BD27 */   addiu     $sp, $sp, 0x40
