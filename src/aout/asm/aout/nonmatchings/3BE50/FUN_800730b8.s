.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800730b8
/* 638B8 800730B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 638BC 800730BC 1000B0AF */  sw         $s0, 0x10($sp)
/* 638C0 800730C0 64001024 */  addiu      $s0, $zero, 0x64
/* 638C4 800730C4 01000424 */  addiu      $a0, $zero, 1
/* 638C8 800730C8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 638CC 800730CC 1800B2AF */  sw         $s2, 0x18($sp)
/* 638D0 800730D0 CD6B000C */  jal        VSync
/* 638D4 800730D4 1400B1AF */   sw        $s1, 0x14($sp)
/* 638D8 800730D8 21884000 */  addu       $s1, $v0, $zero
/* 638DC 800730DC 3ACC0108 */  j          .L800730E8
/* 638E0 800730E0 D7001224 */   addiu     $s2, $zero, 0xd7
.L800730E4:
/* 638E4 800730E4 FFFF1026 */  addiu      $s0, $s0, -1
.L800730E8:
/* 638E8 800730E8 1000001A */  blez       $s0, .L8007312C
/* 638EC 800730EC 21100002 */   addu      $v0, $s0, $zero
/* 638F0 800730F0 CD6B000C */  jal        VSync
/* 638F4 800730F4 01000424 */   addiu     $a0, $zero, 1
/* 638F8 800730F8 21184000 */  addu       $v1, $v0, $zero
/* 638FC 800730FC 2B104302 */  sltu       $v0, $s2, $v1
/* 63900 80073100 09004014 */  bnez       $v0, .L80073128
/* 63904 80073104 2A107100 */   slt       $v0, $v1, $s1
/* 63908 80073108 08004014 */  bnez       $v0, .L8007312C
/* 6390C 8007310C 21100002 */   addu      $v0, $s0, $zero
/* 63910 80073110 B4C7020C */  jal        FUN_800b1ed0
/* 63914 80073114 00000000 */   nop
/* 63918 80073118 54C9010C */  jal        FUN_80072550
/* 6391C 8007311C 00000000 */   nop
/* 63920 80073120 F0FF4014 */  bnez       $v0, .L800730E4
/* 63924 80073124 00000000 */   nop
.L80073128:
/* 63928 80073128 21100002 */  addu       $v0, $s0, $zero
.L8007312C:
/* 6392C 8007312C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 63930 80073130 1800B28F */  lw         $s2, 0x18($sp)
/* 63934 80073134 1400B18F */  lw         $s1, 0x14($sp)
/* 63938 80073138 1000B08F */  lw         $s0, 0x10($sp)
/* 6393C 8007313C 0800E003 */  jr         $ra
/* 63940 80073140 2000BD27 */   addiu     $sp, $sp, 0x20
