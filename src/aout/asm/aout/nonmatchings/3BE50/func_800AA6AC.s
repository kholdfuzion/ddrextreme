.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800AA6AC
/* 9AEAC 800AA6AC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 9AEB0 800AA6B0 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 9AEB4 800AA6B4 FFFF1124 */  addiu      $s1, $zero, -1
/* 9AEB8 800AA6B8 3000B2AF */  sw         $s2, 0x30($sp)
/* 9AEBC 800AA6BC 21908000 */  addu       $s2, $a0, $zero
/* 9AEC0 800AA6C0 2800B0AF */  sw         $s0, 0x28($sp)
/* 9AEC4 800AA6C4 2180A000 */  addu       $s0, $a1, $zero
/* 9AEC8 800AA6C8 3400B3AF */  sw         $s3, 0x34($sp)
/* 9AECC 800AA6CC 2198C000 */  addu       $s3, $a2, $zero
/* 9AED0 800AA6D0 3800B4AF */  sw         $s4, 0x38($sp)
/* 9AED4 800AA6D4 21A0E000 */  addu       $s4, $a3, $zero
/* 9AED8 800AA6D8 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 9AEDC 800AA6DC 84AC020C */  jal        FUN_800ab210
/* 9AEE0 800AA6E0 FFFF4426 */   addiu     $a0, $s2, -1
/* 9AEE4 800AA6E4 21400000 */  addu       $t0, $zero, $zero
/* 9AEE8 800AA6E8 1C80023C */  lui        $v0, %hi(D_801C4308)
/* 9AEEC 800AA6EC 08434E24 */  addiu      $t6, $v0, %lo(D_801C4308)
/* 9AEF0 800AA6F0 1C800A3C */  lui        $t2, %hi(D_801BFBB8)
/* 9AEF4 800AA6F4 B8FB4925 */  addiu      $t1, $t2, %lo(D_801BFBB8)
/* 9AEF8 800AA6F8 01000D24 */  addiu      $t5, $zero, 1
/* 9AEFC 800AA6FC 31000C24 */  addiu      $t4, $zero, 0x31
/* 9AF00 800AA700 32000B24 */  addiu      $t3, $zero, 0x32
.L800AA704:
/* 9AF04 800AA704 0E002381 */  lb         $v1, 0xe($t1)
/* 9AF08 800AA708 00000000 */  nop
/* 9AF0C 800AA70C C0100300 */  sll        $v0, $v1, 3
/* 9AF10 800AA710 23104300 */  subu       $v0, $v0, $v1
/* 9AF14 800AA714 80100200 */  sll        $v0, $v0, 2
/* 9AF18 800AA718 21204E00 */  addu       $a0, $v0, $t6
/* 9AF1C 800AA71C 00008290 */  lbu        $v0, ($a0)
/* 9AF20 800AA720 07004D16 */  bne        $s2, $t5, .L800AA740
/* 9AF24 800AA724 00000000 */   nop
/* 9AF28 800AA728 1E004C14 */  bne        $v0, $t4, .L800AA7A4
/* 9AF2C 800AA72C 21380000 */   addu      $a3, $zero, $zero
/* 9AF30 800AA730 D3A90208 */  j          .L800AA74C
/* 9AF34 800AA734 21300000 */   addu      $a2, $zero, $zero
.L800AA738:
/* 9AF38 800AA738 E7A90208 */  j          .L800AA79C
/* 9AF3C 800AA73C 01000724 */   addiu     $a3, $zero, 1
.L800AA740:
/* 9AF40 800AA740 18004B14 */  bne        $v0, $t3, .L800AA7A4
/* 9AF44 800AA744 21380000 */   addu      $a3, $zero, $zero
/* 9AF48 800AA748 21300000 */  addu       $a2, $zero, $zero
.L800AA74C:
/* 9AF4C 800AA74C 0E008390 */  lbu        $v1, 0xe($a0)
/* 9AF50 800AA750 00000292 */  lbu        $v0, ($s0)
/* 9AF54 800AA754 00000000 */  nop
/* 9AF58 800AA758 F7FF6214 */  bne        $v1, $v0, .L800AA738
/* 9AF5C 800AA75C 0E008524 */   addiu     $a1, $a0, 0xe
/* 9AF60 800AA760 0E006010 */  beqz       $v1, .L800AA79C
/* 9AF64 800AA764 00000000 */   nop
/* 9AF68 800AA768 0100C624 */  addiu      $a2, $a2, 1
.L800AA76C:
/* 9AF6C 800AA76C 0800C228 */  slti       $v0, $a2, 8
/* 9AF70 800AA770 0A004010 */  beqz       $v0, .L800AA79C
/* 9AF74 800AA774 0100A524 */   addiu     $a1, $a1, 1
/* 9AF78 800AA778 21180602 */  addu       $v1, $s0, $a2
/* 9AF7C 800AA77C 0000A490 */  lbu        $a0, ($a1)
/* 9AF80 800AA780 00006290 */  lbu        $v0, ($v1)
/* 9AF84 800AA784 00000000 */  nop
/* 9AF88 800AA788 EBFF8214 */  bne        $a0, $v0, .L800AA738
/* 9AF8C 800AA78C 00000000 */   nop
/* 9AF90 800AA790 F6FF8014 */  bnez       $a0, .L800AA76C
/* 9AF94 800AA794 0100C624 */   addiu     $a2, $a2, 1
/* 9AF98 800AA798 FFFFC624 */  addiu      $a2, $a2, -1
.L800AA79C:
/* 9AF9C 800AA79C 1400E010 */  beqz       $a3, .L800AA7F0
/* 9AFA0 800AA7A0 00000000 */   nop
.L800AA7A4:
/* 9AFA4 800AA7A4 01000825 */  addiu      $t0, $t0, 1
/* 9AFA8 800AA7A8 1E000229 */  slti       $v0, $t0, 0x1e
/* 9AFAC 800AA7AC D5FF4014 */  bnez       $v0, .L800AA704
/* 9AFB0 800AA7B0 18002925 */   addiu     $t1, $t1, 0x18
.L800AA7B4:
/* 9AFB4 800AA7B4 B8FB4425 */  addiu      $a0, $t2, -0x448
/* 9AFB8 800AA7B8 40181100 */  sll        $v1, $s1, 1
/* 9AFBC 800AA7BC 21107100 */  addu       $v0, $v1, $s1
/* 9AFC0 800AA7C0 C0100200 */  sll        $v0, $v0, 3
/* 9AFC4 800AA7C4 21104400 */  addu       $v0, $v0, $a0
/* 9AFC8 800AA7C8 0F004480 */  lb         $a0, 0xf($v0)
/* 9AFCC 800AA7CC 0C006006 */  bltz       $s3, .L800AA800
/* 9AFD0 800AA7D0 0200622A */   slti      $v0, $s3, 2
/* 9AFD4 800AA7D4 0B004014 */  bnez       $v0, .L800AA804
/* 9AFD8 800AA7D8 0200822C */   sltiu     $v0, $a0, 2
/* 9AFDC 800AA7DC 02000224 */  addiu      $v0, $zero, 2
/* 9AFE0 800AA7E0 05006212 */  beq        $s3, $v0, .L800AA7F8
/* 9AFE4 800AA7E4 02008238 */   xori      $v0, $a0, 2
/* 9AFE8 800AA7E8 01AA0208 */  j          .L800AA804
/* 9AFEC 800AA7EC 21100000 */   addu      $v0, $zero, $zero
.L800AA7F0:
/* 9AFF0 800AA7F0 EDA90208 */  j          .L800AA7B4
/* 9AFF4 800AA7F4 21880001 */   addu      $s1, $t0, $zero
.L800AA7F8:
/* 9AFF8 800AA7F8 01AA0208 */  j          .L800AA804
/* 9AFFC 800AA7FC 0100422C */   sltiu     $v0, $v0, 1
.L800AA800:
/* 9B000 800AA800 21100000 */  addu       $v0, $zero, $zero
.L800AA804:
/* 9B004 800AA804 08004010 */  beqz       $v0, .L800AA828
/* 9B008 800AA808 B8FB4225 */   addiu     $v0, $t2, -0x448
/* 9B00C 800AA80C 21187100 */  addu       $v1, $v1, $s1
/* 9B010 800AA810 C0180300 */  sll        $v1, $v1, 3
/* 9B014 800AA814 21104300 */  addu       $v0, $v0, $v1
/* 9B018 800AA818 1400448C */  lw         $a0, 0x14($v0)
/* 9B01C 800AA81C 00000000 */  nop
/* 9B020 800AA820 03009410 */  beq        $a0, $s4, .L800AA830
/* 9B024 800AA824 21102002 */   addu      $v0, $s1, $zero
.L800AA828:
/* 9B028 800AA828 FFFF1124 */  addiu      $s1, $zero, -1
/* 9B02C 800AA82C 21102002 */  addu       $v0, $s1, $zero
.L800AA830:
/* 9B030 800AA830 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 9B034 800AA834 3800B48F */  lw         $s4, 0x38($sp)
/* 9B038 800AA838 3400B38F */  lw         $s3, 0x34($sp)
/* 9B03C 800AA83C 3000B28F */  lw         $s2, 0x30($sp)
/* 9B040 800AA840 2C00B18F */  lw         $s1, 0x2c($sp)
/* 9B044 800AA844 2800B08F */  lw         $s0, 0x28($sp)
/* 9B048 800AA848 0800E003 */  jr         $ra
/* 9B04C 800AA84C 4000BD27 */   addiu     $sp, $sp, 0x40
