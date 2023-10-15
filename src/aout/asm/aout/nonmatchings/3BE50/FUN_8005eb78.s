.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005eb78
/* 4F378 8005EB78 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4F37C 8005EB7C 3000B4AF */  sw         $s4, 0x30($sp)
/* 4F380 8005EB80 21A0C000 */  addu       $s4, $a2, $zero
/* 4F384 8005EB84 2800B2AF */  sw         $s2, 0x28($sp)
/* 4F388 8005EB88 2190A000 */  addu       $s2, $a1, $zero
/* 4F38C 8005EB8C 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 4F390 8005EB90 21988000 */  addu       $s3, $a0, $zero
/* 4F394 8005EB94 1380023C */  lui        $v0, %hi(D_8012812C)
/* 4F398 8005EB98 2148E000 */  addu       $t1, $a3, $zero
/* 4F39C 8005EB9C 2C814490 */  lbu        $a0, %lo(D_8012812C)($v0)
/* 4F3A0 8005EBA0 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4F3A4 8005EBA4 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4F3A8 8005EBA8 3800BFAF */  sw         $ra, 0x38($sp)
/* 4F3AC 8005EBAC 3400B5AF */  sw         $s5, 0x34($sp)
/* 4F3B0 8005EBB0 2400B1AF */  sw         $s1, 0x24($sp)
/* 4F3B4 8005EBB4 2000B0AF */  sw         $s0, 0x20($sp)
/* 4F3B8 8005EBB8 0000868E */  lw         $a2, ($s4)
/* 4F3BC 8005EBBC 5800A88F */  lw         $t0, 0x58($sp)
/* 4F3C0 8005EBC0 2128C000 */  addu       $a1, $a2, $zero
/* 4F3C4 8005EBC4 C0180400 */  sll        $v1, $a0, 3
/* 4F3C8 8005EBC8 23186400 */  subu       $v1, $v1, $a0
/* 4F3CC 8005EBCC 80180300 */  sll        $v1, $v1, 2
/* 4F3D0 8005EBD0 0200C104 */  bgez       $a2, .L8005EBDC
/* 4F3D4 8005EBD4 21806200 */   addu      $s0, $v1, $v0
/* 4F3D8 8005EBD8 0300C524 */  addiu      $a1, $a2, 3
.L8005EBDC:
/* 4F3DC 8005EBDC 83280500 */  sra        $a1, $a1, 2
/* 4F3E0 8005EBE0 80100500 */  sll        $v0, $a1, 2
/* 4F3E4 8005EBE4 2310C200 */  subu       $v0, $a2, $v0
/* 4F3E8 8005EBE8 C0180200 */  sll        $v1, $v0, 3
/* 4F3EC 8005EBEC 21186200 */  addu       $v1, $v1, $v0
/* 4F3F0 8005EBF0 5000A28F */  lw         $v0, 0x50($sp)
/* 4F3F4 8005EBF4 40180300 */  sll        $v1, $v1, 1
/* 4F3F8 8005EBF8 21884300 */  addu       $s1, $v0, $v1
/* 4F3FC 8005EBFC 21200001 */  addu       $a0, $t0, $zero
/* 4F400 8005EC00 40100500 */  sll        $v0, $a1, 1
/* 4F404 8005EC04 21104500 */  addu       $v0, $v0, $a1
/* 4F408 8005EC08 80100200 */  sll        $v0, $v0, 2
/* 4F40C 8005EC0C 5400A38F */  lw         $v1, 0x54($sp)
/* 4F410 8005EC10 04000586 */  lh         $a1, 4($s0)
/* 4F414 8005EC14 02000105 */  bgez       $t0, .L8005EC20
/* 4F418 8005EC18 23A86200 */   subu      $s5, $v1, $v0
/* 4F41C 8005EC1C 07000425 */  addiu      $a0, $t0, 7
.L8005EC20:
/* 4F420 8005EC20 C3200400 */  sra        $a0, $a0, 3
/* 4F424 8005EC24 C0180400 */  sll        $v1, $a0, 3
/* 4F428 8005EC28 23180301 */  subu       $v1, $t0, $v1
/* 4F42C 8005EC2C C0100300 */  sll        $v0, $v1, 3
/* 4F430 8005EC30 21104300 */  addu       $v0, $v0, $v1
/* 4F434 8005EC34 40100200 */  sll        $v0, $v0, 1
/* 4F438 8005EC38 2118A200 */  addu       $v1, $a1, $v0
/* 4F43C 8005EC3C 48006624 */  addiu      $a2, $v1, 0x48
/* 4F440 8005EC40 06000586 */  lh         $a1, 6($s0)
/* 4F444 8005EC44 40100400 */  sll        $v0, $a0, 1
/* 4F448 8005EC48 21104400 */  addu       $v0, $v0, $a0
/* 4F44C 8005EC4C 80100200 */  sll        $v0, $v0, 2
/* 4F450 8005EC50 02008428 */  slti       $a0, $a0, 2
/* 4F454 8005EC54 2110A200 */  addu       $v0, $a1, $v0
/* 4F458 8005EC58 03008014 */  bnez       $a0, .L8005EC68
/* 4F45C 8005EC5C 30004724 */   addiu     $a3, $v0, 0x30
/* 4F460 8005EC60 D8006624 */  addiu      $a2, $v1, 0xd8
/* 4F464 8005EC64 3C00A724 */  addiu      $a3, $a1, 0x3c
.L8005EC68:
/* 4F468 8005EC68 02002011 */  beqz       $t1, .L8005EC74
/* 4F46C 8005EC6C 23101100 */   negu      $v0, $s1
/* 4F470 8005EC70 EEFF5124 */  addiu      $s1, $v0, -0x12
.L8005EC74:
/* 4F474 8005EC74 21206002 */  addu       $a0, $s3, $zero
/* 4F478 8005EC78 21284002 */  addu       $a1, $s2, $zero
/* 4F47C 8005EC7C 12000224 */  addiu      $v0, $zero, 0x12
/* 4F480 8005EC80 0C000324 */  addiu      $v1, $zero, 0xc
/* 4F484 8005EC84 1000A2AF */  sw         $v0, 0x10($sp)
/* 4F488 8005EC88 1400A3AF */  sw         $v1, 0x14($sp)
/* 4F48C 8005EC8C 0C000886 */  lh         $t0, 0xc($s0)
/* 4F490 8005EC90 FFFF0224 */  addiu      $v0, $zero, -1
/* 4F494 8005EC94 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 4F498 8005EC98 25B2010C */  jal        FUN_8006c894
/* 4F49C 8005EC9C 1800A8AF */   sw        $t0, 0x18($sp)
/* 4F4A0 8005ECA0 21206002 */  addu       $a0, $s3, $zero
/* 4F4A4 8005ECA4 16000686 */  lh         $a2, 0x16($s0)
/* 4F4A8 8005ECA8 18000786 */  lh         $a3, 0x18($s0)
/* 4F4AC 8005ECAC FBB2010C */  jal        FUN_8006cbec
/* 4F4B0 8005ECB0 21284002 */   addu      $a1, $s2, $zero
/* 4F4B4 8005ECB4 21206002 */  addu       $a0, $s3, $zero
/* 4F4B8 8005ECB8 21284002 */  addu       $a1, $s2, $zero
/* 4F4BC 8005ECBC 21302002 */  addu       $a2, $s1, $zero
/* 4F4C0 8005ECC0 9BB2010C */  jal        FUN_8006ca6c
/* 4F4C4 8005ECC4 2138A002 */   addu      $a3, $s5, $zero
/* 4F4C8 8005ECC8 21206002 */  addu       $a0, $s3, $zero
/* 4F4CC 8005ECCC 21284002 */  addu       $a1, $s2, $zero
/* 4F4D0 8005ECD0 80000624 */  addiu      $a2, $zero, 0x80
/* 4F4D4 8005ECD4 80000724 */  addiu      $a3, $zero, 0x80
/* 4F4D8 8005ECD8 80000224 */  addiu      $v0, $zero, 0x80
/* 4F4DC 8005ECDC 79B2010C */  jal        FUN_8006c9e4
/* 4F4E0 8005ECE0 1000A2AF */   sw        $v0, 0x10($sp)
/* 4F4E4 8005ECE4 0000828E */  lw         $v0, ($s4)
/* 4F4E8 8005ECE8 3800BF8F */  lw         $ra, 0x38($sp)
/* 4F4EC 8005ECEC 3400B58F */  lw         $s5, 0x34($sp)
/* 4F4F0 8005ECF0 2C00B38F */  lw         $s3, 0x2c($sp)
/* 4F4F4 8005ECF4 2400B18F */  lw         $s1, 0x24($sp)
/* 4F4F8 8005ECF8 2000B08F */  lw         $s0, 0x20($sp)
/* 4F4FC 8005ECFC 01004224 */  addiu      $v0, $v0, 1
/* 4F500 8005ED00 000082AE */  sw         $v0, ($s4)
/* 4F504 8005ED04 01004226 */  addiu      $v0, $s2, 1
/* 4F508 8005ED08 3000B48F */  lw         $s4, 0x30($sp)
/* 4F50C 8005ED0C 2800B28F */  lw         $s2, 0x28($sp)
/* 4F510 8005ED10 0800E003 */  jr         $ra
/* 4F514 8005ED14 4000BD27 */   addiu     $sp, $sp, 0x40
