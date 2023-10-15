.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80067ac0
/* 582C0 80067AC0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 582C4 80067AC4 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 582C8 80067AC8 21980000 */  addu       $s3, $zero, $zero
/* 582CC 80067ACC 1380023C */  lui        $v0, %hi(D_801280E0)
/* 582D0 80067AD0 E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 582D4 80067AD4 21188200 */  addu       $v1, $a0, $v0
/* 582D8 80067AD8 21200000 */  addu       $a0, $zero, $zero
/* 582DC 80067ADC 3000B4AF */  sw         $s4, 0x30($sp)
/* 582E0 80067AE0 21A0A000 */  addu       $s4, $a1, $zero
/* 582E4 80067AE4 01000524 */  addiu      $a1, $zero, 1
/* 582E8 80067AE8 2800B2AF */  sw         $s2, 0x28($sp)
/* 582EC 80067AEC 21900000 */  addu       $s2, $zero, $zero
/* 582F0 80067AF0 3800BFAF */  sw         $ra, 0x38($sp)
/* 582F4 80067AF4 3400B5AF */  sw         $s5, 0x34($sp)
/* 582F8 80067AF8 2400B1AF */  sw         $s1, 0x24($sp)
/* 582FC 80067AFC 2000B0AF */  sw         $s0, 0x20($sp)
/* 58300 80067B00 00006290 */  lbu        $v0, ($v1)
/* 58304 80067B04 21A8C000 */  addu       $s5, $a2, $zero
/* 58308 80067B08 C0180200 */  sll        $v1, $v0, 3
/* 5830C 80067B0C 23186200 */  subu       $v1, $v1, $v0
/* 58310 80067B10 80180300 */  sll        $v1, $v1, 2
/* 58314 80067B14 1380023C */  lui        $v0, %hi(D_801282E0)
/* 58318 80067B18 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 5831C 80067B1C C3B0010C */  jal        FUN_8006c30c
/* 58320 80067B20 21806200 */   addu      $s0, $v1, $v0
/* 58324 80067B24 21200000 */  addu       $a0, $zero, $zero
/* 58328 80067B28 0BB2010C */  jal        FUN_8006c82c
/* 5832C 80067B2C FF000524 */   addiu     $a1, $zero, 0xff
/* 58330 80067B30 21200000 */  addu       $a0, $zero, $zero
/* 58334 80067B34 08000524 */  addiu      $a1, $zero, 8
/* 58338 80067B38 19000624 */  addiu      $a2, $zero, 0x19
/* 5833C 80067B3C 30010724 */  addiu      $a3, $zero, 0x130
/* 58340 80067B40 B0000224 */  addiu      $v0, $zero, 0xb0
/* 58344 80067B44 9CAE010C */  jal        FUN_8006ba70
/* 58348 80067B48 1000A2AF */   sw        $v0, 0x10($sp)
/* 5834C 80067B4C 21200000 */  addu       $a0, $zero, $zero
/* 58350 80067B50 33B1010C */  jal        FUN_8006c4cc
/* 58354 80067B54 21280000 */   addu      $a1, $zero, $zero
/* 58358 80067B58 21200000 */  addu       $a0, $zero, $zero
/* 5835C 80067B5C 81B1010C */  jal        FUN_8006c604
/* 58360 80067B60 FFFF0524 */   addiu     $a1, $zero, -1
.L80067B64:
/* 58364 80067B64 80005126 */  addiu      $s1, $s2, 0x80
/* 58368 80067B68 4101222A */  slti       $v0, $s1, 0x141
/* 5836C 80067B6C 03004014 */  bnez       $v0, .L80067B7C
/* 58370 80067B70 80000324 */   addiu     $v1, $zero, 0x80
/* 58374 80067B74 40010224 */  addiu      $v0, $zero, 0x140
/* 58378 80067B78 23185200 */  subu       $v1, $v0, $s2
.L80067B7C:
/* 5837C 80067B7C 21200000 */  addu       $a0, $zero, $zero
/* 58380 80067B80 21286002 */  addu       $a1, $s3, $zero
/* 58384 80067B84 1000A3AF */  sw         $v1, 0x10($sp)
/* 58388 80067B88 04000686 */  lh         $a2, 4($s0)
/* 5838C 80067B8C F0000224 */  addiu      $v0, $zero, 0xf0
/* 58390 80067B90 1400A2AF */  sw         $v0, 0x14($sp)
/* 58394 80067B94 1C00B5AF */  sw         $s5, 0x1c($sp)
/* 58398 80067B98 06000786 */  lh         $a3, 6($s0)
/* 5839C 80067B9C 0C000286 */  lh         $v0, 0xc($s0)
/* 583A0 80067BA0 2130D200 */  addu       $a2, $a2, $s2
/* 583A4 80067BA4 25B2010C */  jal        FUN_8006c894
/* 583A8 80067BA8 1800A2AF */   sw        $v0, 0x18($sp)
/* 583AC 80067BAC 21200000 */  addu       $a0, $zero, $zero
/* 583B0 80067BB0 21286002 */  addu       $a1, $s3, $zero
/* 583B4 80067BB4 21308002 */  addu       $a2, $s4, $zero
/* 583B8 80067BB8 21388002 */  addu       $a3, $s4, $zero
/* 583BC 80067BBC 79B2010C */  jal        FUN_8006c9e4
/* 583C0 80067BC0 1000B4AF */   sw        $s4, 0x10($sp)
/* 583C4 80067BC4 21200000 */  addu       $a0, $zero, $zero
/* 583C8 80067BC8 16000686 */  lh         $a2, 0x16($s0)
/* 583CC 80067BCC 18000786 */  lh         $a3, 0x18($s0)
/* 583D0 80067BD0 FBB2010C */  jal        FUN_8006cbec
/* 583D4 80067BD4 21286002 */   addu      $a1, $s3, $zero
/* 583D8 80067BD8 21200000 */  addu       $a0, $zero, $zero
/* 583DC 80067BDC 21286002 */  addu       $a1, $s3, $zero
/* 583E0 80067BE0 68FF4626 */  addiu      $a2, $s2, -0x98
/* 583E4 80067BE4 9BB2010C */  jal        FUN_8006ca6c
/* 583E8 80067BE8 A1FF0724 */   addiu     $a3, $zero, -0x5f
/* 583EC 80067BEC 21902002 */  addu       $s2, $s1, $zero
/* 583F0 80067BF0 4001422A */  slti       $v0, $s2, 0x140
/* 583F4 80067BF4 DBFF4014 */  bnez       $v0, .L80067B64
/* 583F8 80067BF8 01007326 */   addiu     $s3, $s3, 1
/* 583FC 80067BFC 21200000 */  addu       $a0, $zero, $zero
/* 58400 80067C00 15B1010C */  jal        FUN_8006c454
/* 58404 80067C04 21286002 */   addu      $a1, $s3, $zero
/* 58408 80067C08 EAAE010C */  jal        FUN_8006bba8
/* 5840C 80067C0C 21200000 */   addu      $a0, $zero, $zero
/* 58410 80067C10 3800BF8F */  lw         $ra, 0x38($sp)
/* 58414 80067C14 3400B58F */  lw         $s5, 0x34($sp)
/* 58418 80067C18 3000B48F */  lw         $s4, 0x30($sp)
/* 5841C 80067C1C 2C00B38F */  lw         $s3, 0x2c($sp)
/* 58420 80067C20 2800B28F */  lw         $s2, 0x28($sp)
/* 58424 80067C24 2400B18F */  lw         $s1, 0x24($sp)
/* 58428 80067C28 2000B08F */  lw         $s0, 0x20($sp)
/* 5842C 80067C2C 0800E003 */  jr         $ra
/* 58430 80067C30 4000BD27 */   addiu     $sp, $sp, 0x40
