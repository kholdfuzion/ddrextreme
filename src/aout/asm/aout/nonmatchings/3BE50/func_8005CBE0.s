.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005CBE0
/* 4D3E0 8005CBE0 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 4D3E4 8005CBE4 6000BEAF */  sw         $fp, 0x60($sp)
/* 4D3E8 8005CBE8 21F08000 */  addu       $fp, $a0, $zero
/* 4D3EC 8005CBEC 1380043C */  lui        $a0, %hi(D_801280E0)
/* 4D3F0 8005CBF0 0180023C */  lui        $v0, %hi(D_80014038)
/* 4D3F4 8005CBF4 38404224 */  addiu      $v0, $v0, %lo(D_80014038)
/* 4D3F8 8005CBF8 7000A6AF */  sw         $a2, 0x70($sp)
/* 4D3FC 8005CBFC 8400A68F */  lw         $a2, 0x84($sp)
/* 4D400 8005CC00 E0808424 */  addiu      $a0, $a0, %lo(D_801280E0)
/* 4D404 8005CC04 6400BFAF */  sw         $ra, 0x64($sp)
/* 4D408 8005CC08 5C00B7AF */  sw         $s7, 0x5c($sp)
/* 4D40C 8005CC0C 5800B6AF */  sw         $s6, 0x58($sp)
/* 4D410 8005CC10 5400B5AF */  sw         $s5, 0x54($sp)
/* 4D414 8005CC14 5000B4AF */  sw         $s4, 0x50($sp)
/* 4D418 8005CC18 4C00B3AF */  sw         $s3, 0x4c($sp)
/* 4D41C 8005CC1C 4800B2AF */  sw         $s2, 0x48($sp)
/* 4D420 8005CC20 4400B1AF */  sw         $s1, 0x44($sp)
/* 4D424 8005CC24 4000B0AF */  sw         $s0, 0x40($sp)
/* 4D428 8005CC28 6C00A5AF */  sw         $a1, 0x6c($sp)
/* 4D42C 8005CC2C 0F00C530 */  andi       $a1, $a2, 0xf
/* 4D430 8005CC30 80280500 */  sll        $a1, $a1, 2
/* 4D434 8005CC34 2110A200 */  addu       $v0, $a1, $v0
/* 4D438 8005CC38 0000438C */  lw         $v1, ($v0)
/* 4D43C 8005CC3C 02350600 */  srl        $a2, $a2, 0x14
/* 4D440 8005CC40 21186400 */  addu       $v1, $v1, $a0
/* 4D444 8005CC44 0180043C */  lui        $a0, %hi(D_80014078)
/* 4D448 8005CC48 78408424 */  addiu      $a0, $a0, %lo(D_80014078)
/* 4D44C 8005CC4C 2120A400 */  addu       $a0, $a1, $a0
/* 4D450 8005CC50 00006290 */  lbu        $v0, ($v1)
/* 4D454 8005CC54 0000968C */  lw         $s6, ($a0)
/* 4D458 8005CC58 F000C630 */  andi       $a2, $a2, 0xf0
/* 4D45C 8005CC5C 7400A7AF */  sw         $a3, 0x74($sp)
/* 4D460 8005CC60 C0180200 */  sll        $v1, $v0, 3
/* 4D464 8005CC64 23186200 */  subu       $v1, $v1, $v0
/* 4D468 8005CC68 80180300 */  sll        $v1, $v1, 2
/* 4D46C 8005CC6C 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4D470 8005CC70 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4D474 8005CC74 21B86200 */  addu       $s7, $v1, $v0
/* 4D478 8005CC78 0180023C */  lui        $v0, %hi(D_800140F8)
/* 4D47C 8005CC7C F8404224 */  addiu      $v0, $v0, %lo(D_800140F8)
/* 4D480 8005CC80 2128A200 */  addu       $a1, $a1, $v0
/* 4D484 8005CC84 1600E286 */  lh         $v0, 0x16($s7)
/* 4D488 8005CC88 0000B48C */  lw         $s4, ($a1)
/* 4D48C 8005CC8C 21104600 */  addu       $v0, $v0, $a2
/* 4D490 8005CC90 2000A2AF */  sw         $v0, 0x20($sp)
/* 4D494 8005CC94 6C00A28F */  lw         $v0, 0x6c($sp)
/* 4D498 8005CC98 00000000 */  nop
/* 4D49C 8005CC9C 3000A2AF */  sw         $v0, 0x30($sp)
/* 4D4A0 8005CCA0 1800E386 */  lh         $v1, 0x18($s7)
/* 4D4A4 8005CCA4 7C00A28F */  lw         $v0, 0x7c($sp)
/* 4D4A8 8005CCA8 2400A3AF */  sw         $v1, 0x24($sp)
/* 4D4AC 8005CCAC 0400E486 */  lh         $a0, 4($s7)
/* 4D4B0 8005CCB0 00000000 */  nop
/* 4D4B4 8005CCB4 2800A4AF */  sw         $a0, 0x28($sp)
/* 4D4B8 8005CCB8 0600E586 */  lh         $a1, 6($s7)
/* 4D4BC 8005CCBC 62004018 */  blez       $v0, .L8005CE48
/* 4D4C0 8005CCC0 2C00A5AF */   sw        $a1, 0x2c($sp)
/* 4D4C4 8005CCC4 2110F400 */  addu       $v0, $a3, $s4
/* 4D4C8 8005CCC8 8000A38F */  lw         $v1, 0x80($sp)
/* 4D4CC 8005CCCC 7800A48F */  lw         $a0, 0x78($sp)
/* 4D4D0 8005CCD0 7C00B28F */  lw         $s2, 0x7c($sp)
/* 4D4D4 8005CCD4 21104300 */  addu       $v0, $v0, $v1
/* 4D4D8 8005CCD8 3800A2AF */  sw         $v0, 0x38($sp)
/* 4D4DC 8005CCDC 3C00A4AF */  sw         $a0, 0x3c($sp)
.L8005CCE0:
/* 4D4E0 8005CCE0 3C00A58F */  lw         $a1, 0x3c($sp)
/* 4D4E4 8005CCE4 00000000 */  nop
/* 4D4E8 8005CCE8 0000A48C */  lw         $a0, ($a1)
/* 4D4EC 8005CCEC 8000A58F */  lw         $a1, 0x80($sp)
/* 4D4F0 8005CCF0 1F008330 */  andi       $v1, $a0, 0x1f
/* 4D4F4 8005CCF4 21108502 */  addu       $v0, $s4, $a1
/* 4D4F8 8005CCF8 18006200 */  mult       $v1, $v0
/* 4D4FC 8005CCFC 21888002 */  addu       $s1, $s4, $zero
/* 4D500 8005CD00 21A88002 */  addu       $s5, $s4, $zero
/* 4D504 8005CD04 12180000 */  mflo       $v1
/* 4D508 8005CD08 43190300 */  sra        $v1, $v1, 5
/* 4D50C 8005CD0C 2A107500 */  slt        $v0, $v1, $s5
/* 4D510 8005CD10 02004010 */  beqz       $v0, .L8005CD1C
/* 4D514 8005CD14 43210400 */   sra       $a0, $a0, 5
/* 4D518 8005CD18 21A86000 */  addu       $s5, $v1, $zero
.L8005CD1C:
/* 4D51C 8005CD1C 3800A28F */  lw         $v0, 0x38($sp)
/* 4D520 8005CD20 8000A58F */  lw         $a1, 0x80($sp)
/* 4D524 8005CD24 23104300 */  subu       $v0, $v0, $v1
/* 4D528 8005CD28 3400A2AF */  sw         $v0, 0x34($sp)
/* 4D52C 8005CD2C 2A10A300 */  slt        $v0, $a1, $v1
/* 4D530 8005CD30 03004010 */  beqz       $v0, .L8005CD40
/* 4D534 8005CD34 23106500 */   subu      $v0, $v1, $a1
/* 4D538 8005CD38 23888202 */  subu       $s1, $s4, $v0
/* 4D53C 8005CD3C 2118A000 */  addu       $v1, $a1, $zero
.L8005CD40:
/* 4D540 8005CD40 01009324 */  addiu      $s3, $a0, 1
/* 4D544 8005CD44 7400A28F */  lw         $v0, 0x74($sp)
/* 4D548 8005CD48 00000000 */  nop
/* 4D54C 8005CD4C 23384300 */  subu       $a3, $v0, $v1
/* 4D550 8005CD50 09000224 */  addiu      $v0, $zero, 9
/* 4D554 8005CD54 02008214 */  bne        $a0, $v0, .L8005CD60
/* 4D558 8005CD58 21806002 */   addu      $s0, $s3, $zero
/* 4D55C 8005CD5C 21980000 */  addu       $s3, $zero, $zero
.L8005CD60:
/* 4D560 8005CD60 02008104 */  bgez       $a0, .L8005CD6C
/* 4D564 8005CD64 00000000 */   nop
/* 4D568 8005CD68 0B001024 */  addiu      $s0, $zero, 0xb
.L8005CD6C:
/* 4D56C 8005CD6C 6C00A58F */  lw         $a1, 0x6c($sp)
/* 4D570 8005CD70 7000A68F */  lw         $a2, 0x70($sp)
/* 4D574 8005CD74 2120C003 */  addu       $a0, $fp, $zero
/* 4D578 8005CD78 1000B6AF */  sw         $s6, 0x10($sp)
/* 4D57C 8005CD7C 976D010C */  jal        FUN_8005b65c
/* 4D580 8005CD80 1400B1AF */   sw        $s1, 0x14($sp)
/* 4D584 8005CD84 18009002 */  mult       $s4, $s0
/* 4D588 8005CD88 2120C003 */  addu       $a0, $fp, $zero
/* 4D58C 8005CD8C 6C00A58F */  lw         $a1, 0x6c($sp)
/* 4D590 8005CD90 0C00E286 */  lh         $v0, 0xc($s7)
/* 4D594 8005CD94 2800A68F */  lw         $a2, 0x28($sp)
/* 4D598 8005CD98 FFFF0324 */  addiu      $v1, $zero, -1
/* 4D59C 8005CD9C 1000B6AF */  sw         $s6, 0x10($sp)
/* 4D5A0 8005CDA0 1400B1AF */  sw         $s1, 0x14($sp)
/* 4D5A4 8005CDA4 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 4D5A8 8005CDA8 1800A2AF */  sw         $v0, 0x18($sp)
/* 4D5AC 8005CDAC 2C00A28F */  lw         $v0, 0x2c($sp)
/* 4D5B0 8005CDB0 12380000 */  mflo       $a3
/* 4D5B4 8005CDB4 21384700 */  addu       $a3, $v0, $a3
/* 4D5B8 8005CDB8 1769010C */  jal        FUN_8005a45c
/* 4D5BC 8005CDBC 2338F100 */   subu      $a3, $a3, $s1
/* 4D5C0 8005CDC0 6C00A38F */  lw         $v1, 0x6c($sp)
/* 4D5C4 8005CDC4 7000A68F */  lw         $a2, 0x70($sp)
/* 4D5C8 8005CDC8 3400A78F */  lw         $a3, 0x34($sp)
/* 4D5CC 8005CDCC 2120C003 */  addu       $a0, $fp, $zero
/* 4D5D0 8005CDD0 1000B6AF */  sw         $s6, 0x10($sp)
/* 4D5D4 8005CDD4 1400B5AF */  sw         $s5, 0x14($sp)
/* 4D5D8 8005CDD8 01007024 */  addiu      $s0, $v1, 1
/* 4D5DC 8005CDDC 976D010C */  jal        FUN_8005b65c
/* 4D5E0 8005CDE0 21280002 */   addu      $a1, $s0, $zero
/* 4D5E4 8005CDE4 FFFF5226 */  addiu      $s2, $s2, -1
/* 4D5E8 8005CDE8 2120C003 */  addu       $a0, $fp, $zero
/* 4D5EC 8005CDEC 21280002 */  addu       $a1, $s0, $zero
/* 4D5F0 8005CDF0 18009302 */  mult       $s4, $s3
/* 4D5F4 8005CDF4 3C00A28F */  lw         $v0, 0x3c($sp)
/* 4D5F8 8005CDF8 2800A68F */  lw         $a2, 0x28($sp)
/* 4D5FC 8005CDFC 04004224 */  addiu      $v0, $v0, 4
/* 4D600 8005CE00 3C00A2AF */  sw         $v0, 0x3c($sp)
/* 4D604 8005CE04 0C00E286 */  lh         $v0, 0xc($s7)
/* 4D608 8005CE08 FFFF0324 */  addiu      $v1, $zero, -1
/* 4D60C 8005CE0C 1000B6AF */  sw         $s6, 0x10($sp)
/* 4D610 8005CE10 1400B5AF */  sw         $s5, 0x14($sp)
/* 4D614 8005CE14 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 4D618 8005CE18 1800A2AF */  sw         $v0, 0x18($sp)
/* 4D61C 8005CE1C 2C00A28F */  lw         $v0, 0x2c($sp)
/* 4D620 8005CE20 12380000 */  mflo       $a3
/* 4D624 8005CE24 1769010C */  jal        FUN_8005a45c
/* 4D628 8005CE28 21384700 */   addu      $a3, $v0, $a3
/* 4D62C 8005CE2C 7000A38F */  lw         $v1, 0x70($sp)
/* 4D630 8005CE30 6C00A48F */  lw         $a0, 0x6c($sp)
/* 4D634 8005CE34 21187600 */  addu       $v1, $v1, $s6
/* 4D638 8005CE38 02008424 */  addiu      $a0, $a0, 2
/* 4D63C 8005CE3C 7000A3AF */  sw         $v1, 0x70($sp)
/* 4D640 8005CE40 A7FF4016 */  bnez       $s2, .L8005CCE0
/* 4D644 8005CE44 6C00A4AF */   sw        $a0, 0x6c($sp)
.L8005CE48:
/* 4D648 8005CE48 7C00A58F */  lw         $a1, 0x7c($sp)
/* 4D64C 8005CE4C 00000000 */  nop
/* 4D650 8005CE50 4F00A018 */  blez       $a1, .L8005CF90
/* 4D654 8005CE54 21900000 */   addu      $s2, $zero, $zero
/* 4D658 8005CE58 40001424 */  addiu      $s4, $zero, 0x40
/* 4D65C 8005CE5C 3000A28F */  lw         $v0, 0x30($sp)
/* 4D660 8005CE60 7800B38F */  lw         $s3, 0x78($sp)
/* 4D664 8005CE64 01005124 */  addiu      $s1, $v0, 1
/* 4D668 8005CE68 21804000 */  addu       $s0, $v0, $zero
.L8005CE6C:
/* 4D66C 8005CE6C 2120C003 */  addu       $a0, $fp, $zero
/* 4D670 8005CE70 2000A68F */  lw         $a2, 0x20($sp)
/* 4D674 8005CE74 2400A78F */  lw         $a3, 0x24($sp)
/* 4D678 8005CE78 396D010C */  jal        FUN_8005b4e4
/* 4D67C 8005CE7C 21280002 */   addu      $a1, $s0, $zero
/* 4D680 8005CE80 2120C003 */  addu       $a0, $fp, $zero
/* 4D684 8005CE84 2000A68F */  lw         $a2, 0x20($sp)
/* 4D688 8005CE88 2400A78F */  lw         $a3, 0x24($sp)
/* 4D68C 8005CE8C 396D010C */  jal        FUN_8005b4e4
/* 4D690 8005CE90 21282002 */   addu      $a1, $s1, $zero
/* 4D694 8005CE94 2120C003 */  addu       $a0, $fp, $zero
/* 4D698 8005CE98 21280002 */  addu       $a1, $s0, $zero
/* 4D69C 8005CE9C 40000624 */  addiu      $a2, $zero, 0x40
/* 4D6A0 8005CEA0 40000724 */  addiu      $a3, $zero, 0x40
/* 4D6A4 8005CEA4 EB6C010C */  jal        FUN_8005b3ac
/* 4D6A8 8005CEA8 1000B4AF */   sw        $s4, 0x10($sp)
/* 4D6AC 8005CEAC 2120C003 */  addu       $a0, $fp, $zero
/* 4D6B0 8005CEB0 21282002 */  addu       $a1, $s1, $zero
/* 4D6B4 8005CEB4 40000624 */  addiu      $a2, $zero, 0x40
/* 4D6B8 8005CEB8 40000724 */  addiu      $a3, $zero, 0x40
/* 4D6BC 8005CEBC EB6C010C */  jal        FUN_8005b3ac
/* 4D6C0 8005CEC0 1000B4AF */   sw        $s4, 0x10($sp)
/* 4D6C4 8005CEC4 7C00A38F */  lw         $v1, 0x7c($sp)
/* 4D6C8 8005CEC8 00000000 */  nop
/* 4D6CC 8005CECC FFFF6224 */  addiu      $v0, $v1, -1
/* 4D6D0 8005CED0 0A004212 */  beq        $s2, $v0, .L8005CEFC
/* 4D6D4 8005CED4 00000000 */   nop
/* 4D6D8 8005CED8 0000628E */  lw         $v0, ($s3)
/* 4D6DC 8005CEDC 00000000 */  nop
/* 4D6E0 8005CEE0 0600401C */  bgtz       $v0, .L8005CEFC
/* 4D6E4 8005CEE4 04007326 */   addiu     $s3, $s3, 4
/* 4D6E8 8005CEE8 02003126 */  addiu      $s1, $s1, 2
/* 4D6EC 8005CEEC 01005226 */  addiu      $s2, $s2, 1
/* 4D6F0 8005CEF0 2A104302 */  slt        $v0, $s2, $v1
/* 4D6F4 8005CEF4 DDFF4014 */  bnez       $v0, .L8005CE6C
/* 4D6F8 8005CEF8 02001026 */   addiu     $s0, $s0, 2
.L8005CEFC:
/* 4D6FC 8005CEFC 7C00A48F */  lw         $a0, 0x7c($sp)
/* 4D700 8005CF00 00000000 */  nop
/* 4D704 8005CF04 2A104402 */  slt        $v0, $s2, $a0
/* 4D708 8005CF08 21004010 */  beqz       $v0, .L8005CF90
/* 4D70C 8005CF0C 80001324 */   addiu     $s3, $zero, 0x80
/* 4D710 8005CF10 40181200 */  sll        $v1, $s2, 1
/* 4D714 8005CF14 01006224 */  addiu      $v0, $v1, 1
/* 4D718 8005CF18 3000A58F */  lw         $a1, 0x30($sp)
/* 4D71C 8005CF1C 23909200 */  subu       $s2, $a0, $s2
/* 4D720 8005CF20 21884500 */  addu       $s1, $v0, $a1
/* 4D724 8005CF24 21806500 */  addu       $s0, $v1, $a1
.L8005CF28:
/* 4D728 8005CF28 2120C003 */  addu       $a0, $fp, $zero
/* 4D72C 8005CF2C 2000A68F */  lw         $a2, 0x20($sp)
/* 4D730 8005CF30 2400A78F */  lw         $a3, 0x24($sp)
/* 4D734 8005CF34 396D010C */  jal        FUN_8005b4e4
/* 4D738 8005CF38 21280002 */   addu      $a1, $s0, $zero
/* 4D73C 8005CF3C 2120C003 */  addu       $a0, $fp, $zero
/* 4D740 8005CF40 2000A68F */  lw         $a2, 0x20($sp)
/* 4D744 8005CF44 2400A78F */  lw         $a3, 0x24($sp)
/* 4D748 8005CF48 396D010C */  jal        FUN_8005b4e4
/* 4D74C 8005CF4C 21282002 */   addu      $a1, $s1, $zero
/* 4D750 8005CF50 2120C003 */  addu       $a0, $fp, $zero
/* 4D754 8005CF54 21280002 */  addu       $a1, $s0, $zero
/* 4D758 8005CF58 80000624 */  addiu      $a2, $zero, 0x80
/* 4D75C 8005CF5C 80000724 */  addiu      $a3, $zero, 0x80
/* 4D760 8005CF60 EB6C010C */  jal        FUN_8005b3ac
/* 4D764 8005CF64 1000B3AF */   sw        $s3, 0x10($sp)
/* 4D768 8005CF68 2120C003 */  addu       $a0, $fp, $zero
/* 4D76C 8005CF6C 21282002 */  addu       $a1, $s1, $zero
/* 4D770 8005CF70 80000624 */  addiu      $a2, $zero, 0x80
/* 4D774 8005CF74 80000724 */  addiu      $a3, $zero, 0x80
/* 4D778 8005CF78 EB6C010C */  jal        FUN_8005b3ac
/* 4D77C 8005CF7C 1000B3AF */   sw        $s3, 0x10($sp)
/* 4D780 8005CF80 02003126 */  addiu      $s1, $s1, 2
/* 4D784 8005CF84 FFFF5226 */  addiu      $s2, $s2, -1
/* 4D788 8005CF88 E7FF4016 */  bnez       $s2, .L8005CF28
/* 4D78C 8005CF8C 02001026 */   addiu     $s0, $s0, 2
.L8005CF90:
/* 4D790 8005CF90 6C00A28F */  lw         $v0, 0x6c($sp)
/* 4D794 8005CF94 6400BF8F */  lw         $ra, 0x64($sp)
/* 4D798 8005CF98 6000BE8F */  lw         $fp, 0x60($sp)
/* 4D79C 8005CF9C 5C00B78F */  lw         $s7, 0x5c($sp)
/* 4D7A0 8005CFA0 5800B68F */  lw         $s6, 0x58($sp)
/* 4D7A4 8005CFA4 5400B58F */  lw         $s5, 0x54($sp)
/* 4D7A8 8005CFA8 5000B48F */  lw         $s4, 0x50($sp)
/* 4D7AC 8005CFAC 4C00B38F */  lw         $s3, 0x4c($sp)
/* 4D7B0 8005CFB0 4800B28F */  lw         $s2, 0x48($sp)
/* 4D7B4 8005CFB4 4400B18F */  lw         $s1, 0x44($sp)
/* 4D7B8 8005CFB8 4000B08F */  lw         $s0, 0x40($sp)
/* 4D7BC 8005CFBC 0800E003 */  jr         $ra
/* 4D7C0 8005CFC0 6800BD27 */   addiu     $sp, $sp, 0x68
