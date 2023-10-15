.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003f050
/* 2F850 8003F050 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2F854 8003F054 3800BEAF */  sw         $fp, 0x38($sp)
/* 2F858 8003F058 21F0A000 */  addu       $fp, $a1, $zero
/* 2F85C 8003F05C 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 2F860 8003F060 3400B7AF */  sw         $s7, 0x34($sp)
/* 2F864 8003F064 3000B6AF */  sw         $s6, 0x30($sp)
/* 2F868 8003F068 2C00B5AF */  sw         $s5, 0x2c($sp)
/* 2F86C 8003F06C 2800B4AF */  sw         $s4, 0x28($sp)
/* 2F870 8003F070 2400B3AF */  sw         $s3, 0x24($sp)
/* 2F874 8003F074 2000B2AF */  sw         $s2, 0x20($sp)
/* 2F878 8003F078 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 2F87C 8003F07C 1800B0AF */  sw         $s0, 0x18($sp)
/* 2F880 8003F080 7DC4000C */  jal        get_astruct_800311f4
/* 2F884 8003F084 4000A4AF */   sw        $a0, 0x40($sp)
/* 2F888 8003F088 1580033C */  lui        $v1, %hi(D_80156EE8)
/* 2F88C 8003F08C E86E7024 */  addiu      $s0, $v1, %lo(D_80156EE8)
/* 2F890 8003F090 21200002 */  addu       $a0, $s0, $zero
/* 2F894 8003F094 2319030C */  jal        FUN_800c648c
/* 2F898 8003F098 1000A2AF */   sw        $v0, 0x10($sp)
/* 2F89C 8003F09C 21980000 */  addu       $s3, $zero, $zero
/* 2F8A0 8003F0A0 21A84000 */  addu       $s5, $v0, $zero
/* 2F8A4 8003F0A4 3B00A01A */  blez       $s5, .L8003F194
/* 2F8A8 8003F0A8 21A00000 */   addu      $s4, $zero, $zero
/* 2F8AC 8003F0AC 21B00002 */  addu       $s6, $s0, $zero
/* 2F8B0 8003F0B0 0E00D726 */  addiu      $s7, $s6, 0xe
/* 2F8B4 8003F0B4 01000224 */  addiu      $v0, $zero, 1
.L8003F0B8:
/* 2F8B8 8003F0B8 4000A38F */  lw         $v1, 0x40($sp)
/* 2F8BC 8003F0BC 00000000 */  nop
/* 2F8C0 8003F0C0 09006214 */  bne        $v1, $v0, .L8003F0E8
/* 2F8C4 8003F0C4 C0881300 */   sll       $s1, $s3, 3
/* 2F8C8 8003F0C8 23103302 */  subu       $v0, $s1, $s3
/* 2F8CC 8003F0CC 80100200 */  sll        $v0, $v0, 2
/* 2F8D0 8003F0D0 21105600 */  addu       $v0, $v0, $s6
/* 2F8D4 8003F0D4 00004390 */  lbu        $v1, ($v0)
/* 2F8D8 8003F0D8 31000224 */  addiu      $v0, $zero, 0x31
/* 2F8DC 8003F0DC 29006214 */  bne        $v1, $v0, .L8003F184
/* 2F8E0 8003F0E0 01006526 */   addiu     $a1, $s3, 1
/* 2F8E4 8003F0E4 4000A38F */  lw         $v1, 0x40($sp)
.L8003F0E8:
/* 2F8E8 8003F0E8 02000224 */  addiu      $v0, $zero, 2
/* 2F8EC 8003F0EC 09006214 */  bne        $v1, $v0, .L8003F114
/* 2F8F0 8003F0F0 00811400 */   sll       $s0, $s4, 4
/* 2F8F4 8003F0F4 23103302 */  subu       $v0, $s1, $s3
/* 2F8F8 8003F0F8 80100200 */  sll        $v0, $v0, 2
/* 2F8FC 8003F0FC 21105600 */  addu       $v0, $v0, $s6
/* 2F900 8003F100 00004490 */  lbu        $a0, ($v0)
/* 2F904 8003F104 32000324 */  addiu      $v1, $zero, 0x32
/* 2F908 8003F108 1E008314 */  bne        $a0, $v1, .L8003F184
/* 2F90C 8003F10C 01006526 */   addiu     $a1, $s3, 1
/* 2F910 8003F110 00811400 */  sll        $s0, $s4, 4
.L8003F114:
/* 2F914 8003F114 2190D003 */  addu       $s2, $fp, $s0
/* 2F918 8003F118 21204002 */  addu       $a0, $s2, $zero
/* 2F91C 8003F11C 23883302 */  subu       $s1, $s1, $s3
/* 2F920 8003F120 80881100 */  sll        $s1, $s1, 2
/* 2F924 8003F124 21283702 */  addu       $a1, $s1, $s7
/* 2F928 8003F128 55BB000C */  jal        strncpy
/* 2F92C 8003F12C 08000624 */   addiu     $a2, $zero, 8
/* 2F930 8003F130 01008626 */  addiu      $a2, $s4, 1
/* 2F934 8003F134 01006526 */  addiu      $a1, $s3, 1
/* 2F938 8003F138 20000724 */  addiu      $a3, $zero, 0x20
/* 2F93C 8003F13C 1580033C */  lui        $v1, %hi(D_80156EF6)
/* 2F940 8003F140 F66E6324 */  addiu      $v1, $v1, %lo(D_80156EF6)
/* 2F944 8003F144 21102302 */  addu       $v0, $s1, $v1
/* 2F948 8003F148 07000424 */  addiu      $a0, $zero, 7
.L8003F14C:
/* 2F94C 8003F14C 00004390 */  lbu        $v1, ($v0)
/* 2F950 8003F150 00000000 */  nop
/* 2F954 8003F154 03006010 */  beqz       $v1, .L8003F164
/* 2F958 8003F158 00000000 */   nop
/* 2F95C 8003F15C 5AFC0008 */  j          .L8003F168
/* 2F960 8003F160 000043A2 */   sb        $v1, ($s2)
.L8003F164:
/* 2F964 8003F164 000047A2 */  sb         $a3, ($s2)
.L8003F168:
/* 2F968 8003F168 01005226 */  addiu      $s2, $s2, 1
/* 2F96C 8003F16C FFFF8424 */  addiu      $a0, $a0, -1
/* 2F970 8003F170 F6FF8104 */  bgez       $a0, .L8003F14C
/* 2F974 8003F174 01004224 */   addiu     $v0, $v0, 1
/* 2F978 8003F178 21101E02 */  addu       $v0, $s0, $fp
/* 2F97C 8003F17C 080040A0 */  sb         $zero, 8($v0)
/* 2F980 8003F180 21A0C000 */  addu       $s4, $a2, $zero
.L8003F184:
/* 2F984 8003F184 2198A000 */  addu       $s3, $a1, $zero
/* 2F988 8003F188 2A107502 */  slt        $v0, $s3, $s5
/* 2F98C 8003F18C CAFF4014 */  bnez       $v0, .L8003F0B8
/* 2F990 8003F190 01000224 */   addiu     $v0, $zero, 1
.L8003F194:
/* 2F994 8003F194 1000A28F */  lw         $v0, 0x10($sp)
/* 2F998 8003F198 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 2F99C 8003F19C 3800BE8F */  lw         $fp, 0x38($sp)
/* 2F9A0 8003F1A0 3400B78F */  lw         $s7, 0x34($sp)
/* 2F9A4 8003F1A4 3000B68F */  lw         $s6, 0x30($sp)
/* 2F9A8 8003F1A8 2400B38F */  lw         $s3, 0x24($sp)
/* 2F9AC 8003F1AC 2000B28F */  lw         $s2, 0x20($sp)
/* 2F9B0 8003F1B0 1C00B18F */  lw         $s1, 0x1c($sp)
/* 2F9B4 8003F1B4 1800B08F */  lw         $s0, 0x18($sp)
/* 2F9B8 8003F1B8 C00E54AC */  sw         $s4, 0xec0($v0)
/* 2F9BC 8003F1BC 2110A002 */  addu       $v0, $s5, $zero
/* 2F9C0 8003F1C0 2C00B58F */  lw         $s5, 0x2c($sp)
/* 2F9C4 8003F1C4 2800B48F */  lw         $s4, 0x28($sp)
/* 2F9C8 8003F1C8 0800E003 */  jr         $ra
/* 2F9CC 8003F1CC 4000BD27 */   addiu     $sp, $sp, 0x40
