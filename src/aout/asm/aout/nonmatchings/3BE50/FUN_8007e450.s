.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e450
/* 6EC50 8007E450 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 6EC54 8007E454 2000B0AF */  sw         $s0, 0x20($sp)
/* 6EC58 8007E458 6000B08F */  lw         $s0, 0x60($sp)
/* 6EC5C 8007E45C 3800B6AF */  sw         $s6, 0x38($sp)
/* 6EC60 8007E460 6400B68F */  lw         $s6, 0x64($sp)
/* 6EC64 8007E464 4000BEAF */  sw         $fp, 0x40($sp)
/* 6EC68 8007E468 7C00BE8F */  lw         $fp, 0x7c($sp)
/* 6EC6C 8007E46C 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 6EC70 8007E470 8000B78F */  lw         $s7, 0x80($sp)
/* 6EC74 8007E474 3000B4AF */  sw         $s4, 0x30($sp)
/* 6EC78 8007E478 21A08000 */  addu       $s4, $a0, $zero
/* 6EC7C 8007E47C 2400B1AF */  sw         $s1, 0x24($sp)
/* 6EC80 8007E480 2188A000 */  addu       $s1, $a1, $zero
/* 6EC84 8007E484 4400BFAF */  sw         $ra, 0x44($sp)
/* 6EC88 8007E488 3400B5AF */  sw         $s5, 0x34($sp)
/* 6EC8C 8007E48C 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 6EC90 8007E490 2800B2AF */  sw         $s2, 0x28($sp)
/* 6EC94 8007E494 5000A6AF */  sw         $a2, 0x50($sp)
/* 6EC98 8007E498 5400A7AF */  sw         $a3, 0x54($sp)
/* 6EC9C 8007E49C 02000106 */  bgez       $s0, .L8007E4A8
/* 6ECA0 8007E4A0 21100002 */   addu      $v0, $s0, $zero
/* 6ECA4 8007E4A4 3F000226 */  addiu      $v0, $s0, 0x3f
.L8007E4A8:
/* 6ECA8 8007E4A8 83910200 */  sra        $s2, $v0, 6
/* 6ECAC 8007E4AC 80991200 */  sll        $s3, $s2, 6
/* 6ECB0 8007E4B0 2A107002 */  slt        $v0, $s3, $s0
/* 6ECB4 8007E4B4 20004010 */  beqz       $v0, .L8007E538
/* 6ECB8 8007E4B8 21208002 */   addu      $a0, $s4, $zero
/* 6ECBC 8007E4BC 21282002 */  addu       $a1, $s1, $zero
/* 6ECC0 8007E4C0 5000A38F */  lw         $v1, 0x50($sp)
/* 6ECC4 8007E4C4 5400A78F */  lw         $a3, 0x54($sp)
/* 6ECC8 8007E4C8 21307300 */  addu       $a2, $v1, $s3
/* 6ECCC 8007E4CC 6800A38F */  lw         $v1, 0x68($sp)
/* 6ECD0 8007E4D0 23801302 */  subu       $s0, $s0, $s3
/* 6ECD4 8007E4D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 6ECD8 8007E4D8 1400B6AF */  sw         $s6, 0x14($sp)
/* 6ECDC 8007E4DC 1C00B7AF */  sw         $s7, 0x1c($sp)
/* 6ECE0 8007E4E0 1769010C */  jal        FUN_8005a45c
/* 6ECE4 8007E4E4 1800A3AF */   sw        $v1, 0x18($sp)
/* 6ECE8 8007E4E8 21208002 */  addu       $a0, $s4, $zero
/* 6ECEC 8007E4EC 6C00A68F */  lw         $a2, 0x6c($sp)
/* 6ECF0 8007E4F0 7000A78F */  lw         $a3, 0x70($sp)
/* 6ECF4 8007E4F4 396D010C */  jal        FUN_8005b4e4
/* 6ECF8 8007E4F8 21282002 */   addu      $a1, $s1, $zero
/* 6ECFC 8007E4FC 21208002 */  addu       $a0, $s4, $zero
/* 6ED00 8007E500 5800A38F */  lw         $v1, 0x58($sp)
/* 6ED04 8007E504 5C00A78F */  lw         $a3, 0x5c($sp)
/* 6ED08 8007E508 21282002 */  addu       $a1, $s1, $zero
/* 6ED0C 8007E50C 1000B0AF */  sw         $s0, 0x10($sp)
/* 6ED10 8007E510 1400B6AF */  sw         $s6, 0x14($sp)
/* 6ED14 8007E514 976D010C */  jal        FUN_8005b65c
/* 6ED18 8007E518 21307300 */   addu      $a2, $v1, $s3
/* 6ED1C 8007E51C 21208002 */  addu       $a0, $s4, $zero
/* 6ED20 8007E520 7400A68F */  lw         $a2, 0x74($sp)
/* 6ED24 8007E524 7800A78F */  lw         $a3, 0x78($sp)
/* 6ED28 8007E528 21282002 */  addu       $a1, $s1, $zero
/* 6ED2C 8007E52C EB6C010C */  jal        FUN_8005b3ac
/* 6ED30 8007E530 1000BEAF */   sw        $fp, 0x10($sp)
/* 6ED34 8007E534 01003126 */  addiu      $s1, $s1, 1
.L8007E538:
/* 6ED38 8007E538 FFFF5226 */  addiu      $s2, $s2, -1
/* 6ED3C 8007E53C 28004006 */  bltz       $s2, .L8007E5E0
/* 6ED40 8007E540 80111200 */   sll       $v0, $s2, 6
/* 6ED44 8007E544 5800A38F */  lw         $v1, 0x58($sp)
/* 6ED48 8007E548 00000000 */  nop
/* 6ED4C 8007E54C 21984300 */  addu       $s3, $v0, $v1
/* 6ED50 8007E550 5000A38F */  lw         $v1, 0x50($sp)
/* 6ED54 8007E554 40001524 */  addiu      $s5, $zero, 0x40
/* 6ED58 8007E558 21804300 */  addu       $s0, $v0, $v1
.L8007E55C:
/* 6ED5C 8007E55C 21208002 */  addu       $a0, $s4, $zero
/* 6ED60 8007E560 21282002 */  addu       $a1, $s1, $zero
/* 6ED64 8007E564 5400A78F */  lw         $a3, 0x54($sp)
/* 6ED68 8007E568 6800A38F */  lw         $v1, 0x68($sp)
/* 6ED6C 8007E56C 21300002 */  addu       $a2, $s0, $zero
/* 6ED70 8007E570 1000B5AF */  sw         $s5, 0x10($sp)
/* 6ED74 8007E574 1400B6AF */  sw         $s6, 0x14($sp)
/* 6ED78 8007E578 1C00B7AF */  sw         $s7, 0x1c($sp)
/* 6ED7C 8007E57C 1769010C */  jal        FUN_8005a45c
/* 6ED80 8007E580 1800A3AF */   sw        $v1, 0x18($sp)
/* 6ED84 8007E584 21208002 */  addu       $a0, $s4, $zero
/* 6ED88 8007E588 6C00A68F */  lw         $a2, 0x6c($sp)
/* 6ED8C 8007E58C 7000A78F */  lw         $a3, 0x70($sp)
/* 6ED90 8007E590 396D010C */  jal        FUN_8005b4e4
/* 6ED94 8007E594 21282002 */   addu      $a1, $s1, $zero
/* 6ED98 8007E598 21208002 */  addu       $a0, $s4, $zero
/* 6ED9C 8007E59C 21282002 */  addu       $a1, $s1, $zero
/* 6EDA0 8007E5A0 5C00A78F */  lw         $a3, 0x5c($sp)
/* 6EDA4 8007E5A4 21306002 */  addu       $a2, $s3, $zero
/* 6EDA8 8007E5A8 1000B5AF */  sw         $s5, 0x10($sp)
/* 6EDAC 8007E5AC 976D010C */  jal        FUN_8005b65c
/* 6EDB0 8007E5B0 1400B6AF */   sw        $s6, 0x14($sp)
/* 6EDB4 8007E5B4 21208002 */  addu       $a0, $s4, $zero
/* 6EDB8 8007E5B8 7400A68F */  lw         $a2, 0x74($sp)
/* 6EDBC 8007E5BC 7800A78F */  lw         $a3, 0x78($sp)
/* 6EDC0 8007E5C0 21282002 */  addu       $a1, $s1, $zero
/* 6EDC4 8007E5C4 EB6C010C */  jal        FUN_8005b3ac
/* 6EDC8 8007E5C8 1000BEAF */   sw        $fp, 0x10($sp)
/* 6EDCC 8007E5CC 01003126 */  addiu      $s1, $s1, 1
/* 6EDD0 8007E5D0 C0FF7326 */  addiu      $s3, $s3, -0x40
/* 6EDD4 8007E5D4 FFFF5226 */  addiu      $s2, $s2, -1
/* 6EDD8 8007E5D8 E0FF4106 */  bgez       $s2, .L8007E55C
/* 6EDDC 8007E5DC C0FF1026 */   addiu     $s0, $s0, -0x40
.L8007E5E0:
/* 6EDE0 8007E5E0 21102002 */  addu       $v0, $s1, $zero
/* 6EDE4 8007E5E4 4400BF8F */  lw         $ra, 0x44($sp)
/* 6EDE8 8007E5E8 4000BE8F */  lw         $fp, 0x40($sp)
/* 6EDEC 8007E5EC 3C00B78F */  lw         $s7, 0x3c($sp)
/* 6EDF0 8007E5F0 3800B68F */  lw         $s6, 0x38($sp)
/* 6EDF4 8007E5F4 3400B58F */  lw         $s5, 0x34($sp)
/* 6EDF8 8007E5F8 3000B48F */  lw         $s4, 0x30($sp)
/* 6EDFC 8007E5FC 2C00B38F */  lw         $s3, 0x2c($sp)
/* 6EE00 8007E600 2800B28F */  lw         $s2, 0x28($sp)
/* 6EE04 8007E604 2400B18F */  lw         $s1, 0x24($sp)
/* 6EE08 8007E608 2000B08F */  lw         $s0, 0x20($sp)
/* 6EE0C 8007E60C 0800E003 */  jr         $ra
/* 6EE10 8007E610 4800BD27 */   addiu     $sp, $sp, 0x48
