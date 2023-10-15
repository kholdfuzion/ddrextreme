.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002f094
/* 1F894 8002F094 70FABD27 */  addiu      $sp, $sp, -0x590
/* 1F898 8002F098 8804A327 */  addiu      $v1, $sp, 0x488
/* 1F89C 8002F09C 9405A5AF */  sw         $a1, 0x594($sp)
/* 1F8A0 8002F0A0 CC04A527 */  addiu      $a1, $sp, 0x4cc
/* 1F8A4 8002F0A4 8805BEAF */  sw         $fp, 0x588($sp)
/* 1F8A8 8002F0A8 A405BE8F */  lw         $fp, 0x5a4($sp)
/* 1F8AC 8002F0AC A805A88F */  lw         $t0, 0x5a8($sp)
/* 1F8B0 8002F0B0 2B106500 */  sltu       $v0, $v1, $a1
/* 1F8B4 8002F0B4 8405B7AF */  sw         $s7, 0x584($sp)
/* 1F8B8 8002F0B8 8005B6AF */  sw         $s6, 0x580($sp)
/* 1F8BC 8002F0BC 7C05B5AF */  sw         $s5, 0x57c($sp)
/* 1F8C0 8002F0C0 7805B4AF */  sw         $s4, 0x578($sp)
/* 1F8C4 8002F0C4 7405B3AF */  sw         $s3, 0x574($sp)
/* 1F8C8 8002F0C8 7005B2AF */  sw         $s2, 0x570($sp)
/* 1F8CC 8002F0CC 6C05B1AF */  sw         $s1, 0x56c($sp)
/* 1F8D0 8002F0D0 6805B0AF */  sw         $s0, 0x568($sp)
/* 1F8D4 8002F0D4 9805A6AF */  sw         $a2, 0x598($sp)
/* 1F8D8 8002F0D8 06004010 */  beqz       $v0, .L8002F0F4
/* 1F8DC 8002F0DC 9C05A7AF */   sw        $a3, 0x59c($sp)
.L8002F0E0:
/* 1F8E0 8002F0E0 000060AC */  sw         $zero, ($v1)
/* 1F8E4 8002F0E4 04006324 */  addiu      $v1, $v1, 4
/* 1F8E8 8002F0E8 2B106500 */  sltu       $v0, $v1, $a1
/* 1F8EC 8002F0EC FCFF4014 */  bnez       $v0, .L8002F0E0
/* 1F8F0 8002F0F0 00000000 */   nop
.L8002F0F4:
/* 1F8F4 8002F0F4 21708000 */  addu       $t6, $a0, $zero
/* 1F8F8 8002F0F8 9405AA8F */  lw         $t2, 0x594($sp)
/* 1F8FC 8002F0FC 8804A527 */  addiu      $a1, $sp, 0x488
.L8002F100:
/* 1F900 8002F100 0000C38D */  lw         $v1, ($t6)
/* 1F904 8002F104 0400CE25 */  addiu      $t6, $t6, 4
/* 1F908 8002F108 80180300 */  sll        $v1, $v1, 2
/* 1F90C 8002F10C 2118A300 */  addu       $v1, $a1, $v1
/* 1F910 8002F110 0000628C */  lw         $v0, ($v1)
/* 1F914 8002F114 FFFF4A25 */  addiu      $t2, $t2, -1
/* 1F918 8002F118 01004224 */  addiu      $v0, $v0, 1
/* 1F91C 8002F11C F8FF4015 */  bnez       $t2, .L8002F100
/* 1F920 8002F120 000062AC */   sw        $v0, ($v1)
/* 1F924 8002F124 8804A28F */  lw         $v0, 0x488($sp)
/* 1F928 8002F128 9405A38F */  lw         $v1, 0x594($sp)
/* 1F92C 8002F12C 00000000 */  nop
/* 1F930 8002F130 04004314 */  bne        $v0, $v1, .L8002F144
/* 1F934 8002F134 21100000 */   addu      $v0, $zero, $zero
/* 1F938 8002F138 0000C0AF */  sw         $zero, ($fp)
/* 1F93C 8002F13C 91BD0008 */  j          .L8002F644
/* 1F940 8002F140 000000AD */   sw        $zero, ($t0)
.L8002F144:
/* 1F944 8002F144 0000068D */  lw         $a2, ($t0)
/* 1F948 8002F148 8C04A28F */  lw         $v0, 0x48c($sp)
/* 1F94C 8002F14C C804A58F */  lw         $a1, 0x4c8($sp)
/* 1F950 8002F150 0B004014 */  bnez       $v0, .L8002F180
/* 1F954 8002F154 01000924 */   addiu     $t1, $zero, 1
/* 1F958 8002F158 8C04A327 */  addiu      $v1, $sp, 0x48c
/* 1F95C 8002F15C 01002925 */  addiu      $t1, $t1, 1
.L8002F160:
/* 1F960 8002F160 1100222D */  sltiu      $v0, $t1, 0x11
/* 1F964 8002F164 06004010 */  beqz       $v0, .L8002F180
/* 1F968 8002F168 04006324 */   addiu     $v1, $v1, 4
/* 1F96C 8002F16C 0000628C */  lw         $v0, ($v1)
/* 1F970 8002F170 00000000 */  nop
/* 1F974 8002F174 FAFF4010 */  beqz       $v0, .L8002F160
/* 1F978 8002F178 01002925 */   addiu     $t1, $t1, 1
/* 1F97C 8002F17C FFFF2925 */  addiu      $t1, $t1, -1
.L8002F180:
/* 1F980 8002F180 21902001 */  addu       $s2, $t1, $zero
/* 1F984 8002F184 2B10D200 */  sltu       $v0, $a2, $s2
/* 1F988 8002F188 02004010 */  beqz       $v0, .L8002F194
/* 1F98C 8002F18C 00000000 */   nop
/* 1F990 8002F190 21304002 */  addu       $a2, $s2, $zero
.L8002F194:
/* 1F994 8002F194 0A00A014 */  bnez       $a1, .L8002F1C0
/* 1F998 8002F198 10000A24 */   addiu     $t2, $zero, 0x10
/* 1F99C 8002F19C C804A327 */  addiu      $v1, $sp, 0x4c8
/* 1F9A0 8002F1A0 FFFF4A25 */  addiu      $t2, $t2, -1
.L8002F1A4:
/* 1F9A4 8002F1A4 06004011 */  beqz       $t2, .L8002F1C0
/* 1F9A8 8002F1A8 FCFF6324 */   addiu     $v1, $v1, -4
/* 1F9AC 8002F1AC 0000628C */  lw         $v0, ($v1)
/* 1F9B0 8002F1B0 00000000 */  nop
/* 1F9B4 8002F1B4 FBFF4010 */  beqz       $v0, .L8002F1A4
/* 1F9B8 8002F1B8 FFFF4A25 */   addiu     $t2, $t2, -1
/* 1F9BC 8002F1BC 01004A25 */  addiu      $t2, $t2, 1
.L8002F1C0:
/* 1F9C0 8002F1C0 21B84001 */  addu       $s7, $t2, $zero
/* 1F9C4 8002F1C4 2B10E602 */  sltu       $v0, $s7, $a2
/* 1F9C8 8002F1C8 02004010 */  beqz       $v0, .L8002F1D4
/* 1F9CC 8002F1CC 00000000 */   nop
/* 1F9D0 8002F1D0 2130E002 */  addu       $a2, $s7, $zero
.L8002F1D4:
/* 1F9D4 8002F1D4 000006AD */  sw         $a2, ($t0)
/* 1F9D8 8002F1D8 01000224 */  addiu      $v0, $zero, 1
/* 1F9DC 8002F1DC 2B183701 */  sltu       $v1, $t1, $s7
/* 1F9E0 8002F1E0 0D006010 */  beqz       $v1, .L8002F218
/* 1F9E4 8002F1E4 04A02201 */   sllv      $s4, $v0, $t1
/* 1F9E8 8002F1E8 80100900 */  sll        $v0, $t1, 2
/* 1F9EC 8002F1EC 21105D00 */  addu       $v0, $v0, $sp
/* 1F9F0 8002F1F0 88044324 */  addiu      $v1, $v0, 0x488
.L8002F1F4:
/* 1F9F4 8002F1F4 0000628C */  lw         $v0, ($v1)
/* 1F9F8 8002F1F8 00000000 */  nop
/* 1F9FC 8002F1FC 23A08202 */  subu       $s4, $s4, $v0
/* 1FA00 8002F200 0D008006 */  bltz       $s4, .L8002F238
/* 1FA04 8002F204 04006324 */   addiu     $v1, $v1, 4
/* 1FA08 8002F208 01002925 */  addiu      $t1, $t1, 1
/* 1FA0C 8002F20C 2B102A01 */  sltu       $v0, $t1, $t2
/* 1FA10 8002F210 F8FF4014 */  bnez       $v0, .L8002F1F4
/* 1FA14 8002F214 40A01400 */   sll       $s4, $s4, 1
.L8002F218:
/* 1FA18 8002F218 80100A00 */  sll        $v0, $t2, 2
/* 1FA1C 8002F21C 21105D00 */  addu       $v0, $v0, $sp
/* 1FA20 8002F220 88044324 */  addiu      $v1, $v0, 0x488
/* 1FA24 8002F224 0000628C */  lw         $v0, ($v1)
/* 1FA28 8002F228 00000000 */  nop
/* 1FA2C 8002F22C 23A08202 */  subu       $s4, $s4, $v0
/* 1FA30 8002F230 05008106 */  bgez       $s4, .L8002F248
/* 1FA34 8002F234 21480000 */   addu      $t1, $zero, $zero
.L8002F238:
/* 1FA38 8002F238 91BD0008 */  j          .L8002F644
/* 1FA3C 8002F23C 02000224 */   addiu     $v0, $zero, 2
.L8002F240:
/* 1FA40 8002F240 91BD0008 */  j          .L8002F644
/* 1FA44 8002F244 03000224 */   addiu     $v0, $zero, 3
.L8002F248:
/* 1FA48 8002F248 8C04AE27 */  addiu      $t6, $sp, 0x48c
/* 1FA4C 8002F24C D804A827 */  addiu      $t0, $sp, 0x4d8
/* 1FA50 8002F250 FFFF4A25 */  addiu      $t2, $t2, -1
/* 1FA54 8002F254 21105400 */  addu       $v0, $v0, $s4
/* 1FA58 8002F258 000062AC */  sw         $v0, ($v1)
/* 1FA5C 8002F25C 0800A227 */  addiu      $v0, $sp, 8
/* 1FA60 8002F260 23580600 */  negu       $t3, $a2
/* 1FA64 8002F264 2A68F202 */  slt        $t5, $s7, $s2
/* 1FA68 8002F268 D404A0AF */  sw         $zero, 0x4d4($sp)
/* 1FA6C 8002F26C 08004011 */  beqz       $t2, .L8002F290
/* 1FA70 8002F270 6005A2AF */   sw        $v0, 0x560($sp)
.L8002F274:
/* 1FA74 8002F274 0000C28D */  lw         $v0, ($t6)
/* 1FA78 8002F278 0400CE25 */  addiu      $t6, $t6, 4
/* 1FA7C 8002F27C FFFF4A25 */  addiu      $t2, $t2, -1
/* 1FA80 8002F280 21482201 */  addu       $t1, $t1, $v0
/* 1FA84 8002F284 000009AD */  sw         $t1, ($t0)
/* 1FA88 8002F288 FAFF4015 */  bnez       $t2, .L8002F274
/* 1FA8C 8002F28C 04000825 */   addiu     $t0, $t0, 4
.L8002F290:
/* 1FA90 8002F290 21708000 */  addu       $t6, $a0, $zero
/* 1FA94 8002F294 21500000 */  addu       $t2, $zero, $zero
/* 1FA98 8002F298 D004A827 */  addiu      $t0, $sp, 0x4d0
/* 1FA9C 8002F29C 6005A58F */  lw         $a1, 0x560($sp)
.L8002F2A0:
/* 1FAA0 8002F2A0 0000C98D */  lw         $t1, ($t6)
/* 1FAA4 8002F2A4 00000000 */  nop
/* 1FAA8 8002F2A8 0A002011 */  beqz       $t1, .L8002F2D4
/* 1FAAC 8002F2AC 0400CE25 */   addiu     $t6, $t6, 4
/* 1FAB0 8002F2B0 80200900 */  sll        $a0, $t1, 2
/* 1FAB4 8002F2B4 21200401 */  addu       $a0, $t0, $a0
/* 1FAB8 8002F2B8 0000838C */  lw         $v1, ($a0)
/* 1FABC 8002F2BC 00000000 */  nop
/* 1FAC0 8002F2C0 80100300 */  sll        $v0, $v1, 2
/* 1FAC4 8002F2C4 01006324 */  addiu      $v1, $v1, 1
/* 1FAC8 8002F2C8 2110A200 */  addu       $v0, $a1, $v0
/* 1FACC 8002F2CC 00004AAC */  sw         $t2, ($v0)
/* 1FAD0 8002F2D0 000083AC */  sw         $v1, ($a0)
.L8002F2D4:
/* 1FAD4 8002F2D4 9405A38F */  lw         $v1, 0x594($sp)
/* 1FAD8 8002F2D8 01004A25 */  addiu      $t2, $t2, 1
/* 1FADC 8002F2DC 2B104301 */  sltu       $v0, $t2, $v1
/* 1FAE0 8002F2E0 EFFF4014 */  bnez       $v0, .L8002F2A0
/* 1FAE4 8002F2E4 FFFF1324 */   addiu     $s3, $zero, -1
/* 1FAE8 8002F2E8 21500000 */  addu       $t2, $zero, $zero
/* 1FAEC 8002F2EC 21606001 */  addu       $t4, $t3, $zero
/* 1FAF0 8002F2F0 21C00000 */  addu       $t8, $zero, $zero
/* 1FAF4 8002F2F4 6005AE8F */  lw         $t6, 0x560($sp)
/* 1FAF8 8002F2F8 21380000 */  addu       $a3, $zero, $zero
/* 1FAFC 8002F2FC D004A0AF */  sw         $zero, 0x4d0($sp)
/* 1FB00 8002F300 CC00A015 */  bnez       $t5, .L8002F634
/* 1FB04 8002F304 1805A0AF */   sw        $zero, 0x518($sp)
/* 1FB08 8002F308 80181200 */  sll        $v1, $s2, 2
.L8002F30C:
/* 1FB0C 8002F30C 2120A303 */  addu       $a0, $sp, $v1
/* 1FB10 8002F310 88048224 */  addiu      $v0, $a0, 0x488
/* 1FB14 8002F314 0000598C */  lw         $t9, ($v0)
/* 1FB18 8002F318 FFFF0224 */  addiu      $v0, $zero, -1
/* 1FB1C 8002F31C FFFF3927 */  addiu      $t9, $t9, -1
/* 1FB20 8002F320 C0002213 */  beq        $t9, $v0, .L8002F624
/* 1FB24 8002F324 5C05A3AF */   sw        $v1, 0x55c($sp)
/* 1FB28 8002F328 80881300 */  sll        $s1, $s3, 2
/* 1FB2C 8002F32C 9405A38F */  lw         $v1, 0x594($sp)
/* 1FB30 8002F330 6005A48F */  lw         $a0, 0x560($sp)
/* 1FB34 8002F334 80100300 */  sll        $v0, $v1, 2
/* 1FB38 8002F338 21108200 */  addu       $v0, $a0, $v0
/* 1FB3C 8002F33C 5805A2AF */  sw         $v0, 0x558($sp)
/* 1FB40 8002F340 21588601 */  addu       $t3, $t4, $a2
.L8002F344:
/* 1FB44 8002F344 2A107201 */  slt        $v0, $t3, $s2
/* 1FB48 8002F348 59004010 */  beqz       $v0, .L8002F4B0
/* 1FB4C 8002F34C 80101300 */   sll       $v0, $s3, 2
/* 1FB50 8002F350 01001524 */  addiu      $s5, $zero, 1
/* 1FB54 8002F354 8804B627 */  addiu      $s6, $sp, 0x488
/* 1FB58 8002F358 FCFF5024 */  addiu      $s0, $v0, -4
/* 1FB5C 8002F35C 21784000 */  addu       $t7, $v0, $zero
/* 1FB60 8002F360 04001026 */  addiu      $s0, $s0, 4
.L8002F364:
/* 1FB64 8002F364 0400EF25 */  addiu      $t7, $t7, 4
/* 1FB68 8002F368 04003126 */  addiu      $s1, $s1, 4
/* 1FB6C 8002F36C 01007326 */  addiu      $s3, $s3, 1
/* 1FB70 8002F370 21606001 */  addu       $t4, $t3, $zero
/* 1FB74 8002F374 2338EC02 */  subu       $a3, $s7, $t4
/* 1FB78 8002F378 2B10C700 */  sltu       $v0, $a2, $a3
/* 1FB7C 8002F37C 02004010 */  beqz       $v0, .L8002F388
/* 1FB80 8002F380 2120E000 */   addu      $a0, $a3, $zero
/* 1FB84 8002F384 2120C000 */  addu       $a0, $a2, $zero
.L8002F388:
/* 1FB88 8002F388 21388000 */  addu       $a3, $a0, $zero
/* 1FB8C 8002F38C 23484C02 */  subu       $t1, $s2, $t4
/* 1FB90 8002F390 04283501 */  sllv       $a1, $s5, $t1
/* 1FB94 8002F394 01002227 */  addiu      $v0, $t9, 1
/* 1FB98 8002F398 2B104500 */  sltu       $v0, $v0, $a1
/* 1FB9C 8002F39C 12004010 */  beqz       $v0, .L8002F3E8
/* 1FBA0 8002F3A0 0E800D3C */   lui       $t5, 0x800e
/* 1FBA4 8002F3A4 FFFFA224 */  addiu      $v0, $a1, -1
/* 1FBA8 8002F3A8 23285900 */  subu       $a1, $v0, $t9
/* 1FBAC 8002F3AC 5C05A28F */  lw         $v0, 0x55c($sp)
/* 1FBB0 8002F3B0 01002925 */  addiu      $t1, $t1, 1
/* 1FBB4 8002F3B4 2140C202 */  addu       $t0, $s6, $v0
/* 1FBB8 8002F3B8 F2BC0008 */  j          .L8002F3C8
/* 1FBBC 8002F3BC 2B102701 */   sltu      $v0, $t1, $a3
.L8002F3C0:
/* 1FBC0 8002F3C0 01002925 */  addiu      $t1, $t1, 1
/* 1FBC4 8002F3C4 2B102401 */  sltu       $v0, $t1, $a0
.L8002F3C8:
/* 1FBC8 8002F3C8 07004010 */  beqz       $v0, .L8002F3E8
/* 1FBCC 8002F3CC 40280500 */   sll       $a1, $a1, 1
/* 1FBD0 8002F3D0 04000825 */  addiu      $t0, $t0, 4
/* 1FBD4 8002F3D4 0000038D */  lw         $v1, ($t0)
/* 1FBD8 8002F3D8 00000000 */  nop
/* 1FBDC 8002F3DC 2B106500 */  sltu       $v0, $v1, $a1
/* 1FBE0 8002F3E0 F7FF4014 */  bnez       $v0, .L8002F3C0
/* 1FBE4 8002F3E4 2328A300 */   subu      $a1, $a1, $v1
.L8002F3E8:
/* 1FBE8 8002F3E8 F48DA58D */  lw         $a1, -0x720c($t5)
/* 1FBEC 8002F3EC 04383501 */  sllv       $a3, $s5, $t1
/* 1FBF0 8002F3F0 1400A48C */  lw         $a0, 0x14($a1)
/* 1FBF4 8002F3F4 00000000 */  nop
/* 1FBF8 8002F3F8 02008014 */  bnez       $a0, .L8002F404
/* 1FBFC 8002F3FC C0180700 */   sll       $v1, $a3, 3
/* 1FC00 8002F400 1000A48C */  lw         $a0, 0x10($a1)
.L8002F404:
/* 1FC04 8002F404 00000000 */  nop
/* 1FC08 8002F408 21C08000 */  addu       $t8, $a0, $zero
/* 1FC0C 8002F40C 08006324 */  addiu      $v1, $v1, 8
/* 1FC10 8002F410 1000A28C */  lw         $v0, 0x10($a1)
/* 1FC14 8002F414 21188300 */  addu       $v1, $a0, $v1
/* 1FC18 8002F418 00604224 */  addiu      $v0, $v0, 0x6000
/* 1FC1C 8002F41C 2B104300 */  sltu       $v0, $v0, $v1
/* 1FC20 8002F420 02004010 */  beqz       $v0, .L8002F42C
/* 1FC24 8002F424 1400A3AC */   sw        $v1, 0x14($a1)
/* 1FC28 8002F428 21C00000 */  addu       $t8, $zero, $zero
.L8002F42C:
/* 1FC2C 8002F42C 84FF0013 */  beqz       $t8, .L8002F240
/* 1FC30 8002F430 08000227 */   addiu     $v0, $t8, 8
/* 1FC34 8002F434 0000C2AF */  sw         $v0, ($fp)
/* 1FC38 8002F438 04001E27 */  addiu      $fp, $t8, 4
/* 1FC3C 8002F43C 040000AF */  sw         $zero, 4($t8)
/* 1FC40 8002F440 21C04000 */  addu       $t8, $v0, $zero
/* 1FC44 8002F444 2168E001 */  addu       $t5, $t7, $zero
/* 1FC48 8002F448 1805A527 */  addiu      $a1, $sp, 0x518
/* 1FC4C 8002F44C 2110AF00 */  addu       $v0, $a1, $t7
/* 1FC50 8002F450 12006012 */  beqz       $s3, .L8002F49C
/* 1FC54 8002F454 000058AC */   sw        $t8, ($v0)
/* 1FC58 8002F458 10002425 */  addiu      $a0, $t1, 0x10
/* 1FC5C 8002F45C 23106601 */  subu       $v0, $t3, $a2
/* 1FC60 8002F460 06484A00 */  srlv       $t1, $t2, $v0
/* 1FC64 8002F464 2118AD03 */  addu       $v1, $sp, $t5
/* 1FC68 8002F468 2110B000 */  addu       $v0, $a1, $s0
/* 1FC6C 8002F46C D0046AAC */  sw         $t2, 0x4d0($v1)
/* 1FC70 8002F470 C0180900 */  sll        $v1, $t1, 3
/* 1FC74 8002F474 0100A6A3 */  sb         $a2, 1($sp)
/* 1FC78 8002F478 0000A4A3 */  sb         $a0, ($sp)
/* 1FC7C 8002F47C 0400B8AF */  sw         $t8, 4($sp)
/* 1FC80 8002F480 0000448C */  lw         $a0, ($v0)
/* 1FC84 8002F484 0000A58F */  lw         $a1, ($sp)
/* 1FC88 8002F488 21186400 */  addu       $v1, $v1, $a0
/* 1FC8C 8002F48C 000065AC */  sw         $a1, ($v1)
/* 1FC90 8002F490 0400A28F */  lw         $v0, 4($sp)
/* 1FC94 8002F494 00000000 */  nop
/* 1FC98 8002F498 040062AC */  sw         $v0, 4($v1)
.L8002F49C:
/* 1FC9C 8002F49C 21586601 */  addu       $t3, $t3, $a2
/* 1FCA0 8002F4A0 2A107201 */  slt        $v0, $t3, $s2
/* 1FCA4 8002F4A4 AFFF4014 */  bnez       $v0, .L8002F364
/* 1FCA8 8002F4A8 04001026 */   addiu     $s0, $s0, 4
/* 1FCAC 8002F4AC FCFF1026 */  addiu      $s0, $s0, -4
.L8002F4B0:
/* 1FCB0 8002F4B0 23104C02 */  subu       $v0, $s2, $t4
/* 1FCB4 8002F4B4 5805A48F */  lw         $a0, 0x558($sp)
/* 1FCB8 8002F4B8 21284000 */  addu       $a1, $v0, $zero
/* 1FCBC 8002F4BC 2B18C401 */  sltu       $v1, $t6, $a0
/* 1FCC0 8002F4C0 04006014 */  bnez       $v1, .L8002F4D4
/* 1FCC4 8002F4C4 0100A2A3 */   sb        $v0, 1($sp)
/* 1FCC8 8002F4C8 63000224 */  addiu      $v0, $zero, 0x63
/* 1FCCC 8002F4CC 53BD0008 */  j          .L8002F54C
/* 1FCD0 8002F4D0 0000A2A3 */   sb        $v0, ($sp)
.L8002F4D4:
/* 1FCD4 8002F4D4 0000C38D */  lw         $v1, ($t6)
/* 1FCD8 8002F4D8 9805A48F */  lw         $a0, 0x598($sp)
/* 1FCDC 8002F4DC 00000000 */  nop
/* 1FCE0 8002F4E0 2B106400 */  sltu       $v0, $v1, $a0
/* 1FCE4 8002F4E4 09004010 */  beqz       $v0, .L8002F50C
/* 1FCE8 8002F4E8 0001622C */   sltiu     $v0, $v1, 0x100
/* 1FCEC 8002F4EC 02004010 */  beqz       $v0, .L8002F4F8
/* 1FCF0 8002F4F0 0F000424 */   addiu     $a0, $zero, 0xf
/* 1FCF4 8002F4F4 10000424 */  addiu      $a0, $zero, 0x10
.L8002F4F8:
/* 1FCF8 8002F4F8 0000A4A3 */  sb         $a0, ($sp)
/* 1FCFC 8002F4FC 0000C295 */  lhu        $v0, ($t6)
/* 1FD00 8002F500 0400CE25 */  addiu      $t6, $t6, 4
/* 1FD04 8002F504 53BD0008 */  j          .L8002F54C
/* 1FD08 8002F508 0400A2A7 */   sh        $v0, 4($sp)
.L8002F50C:
/* 1FD0C 8002F50C 23106400 */  subu       $v0, $v1, $a0
/* 1FD10 8002F510 A005A38F */  lw         $v1, 0x5a0($sp)
/* 1FD14 8002F514 40100200 */  sll        $v0, $v0, 1
/* 1FD18 8002F518 21104300 */  addu       $v0, $v0, $v1
/* 1FD1C 8002F51C 00004390 */  lbu        $v1, ($v0)
/* 1FD20 8002F520 00000000 */  nop
/* 1FD24 8002F524 0000A3A3 */  sb         $v1, ($sp)
/* 1FD28 8002F528 0000C28D */  lw         $v0, ($t6)
/* 1FD2C 8002F52C 00000000 */  nop
/* 1FD30 8002F530 23104400 */  subu       $v0, $v0, $a0
/* 1FD34 8002F534 9C05A48F */  lw         $a0, 0x59c($sp)
/* 1FD38 8002F538 40100200 */  sll        $v0, $v0, 1
/* 1FD3C 8002F53C 21104400 */  addu       $v0, $v0, $a0
/* 1FD40 8002F540 00004394 */  lhu        $v1, ($v0)
/* 1FD44 8002F544 0400CE25 */  addiu      $t6, $t6, 4
/* 1FD48 8002F548 0400A3A7 */  sh         $v1, 4($sp)
.L8002F54C:
/* 1FD4C 8002F54C 01000224 */  addiu      $v0, $zero, 1
/* 1FD50 8002F550 0428A200 */  sllv       $a1, $v0, $a1
/* 1FD54 8002F554 06488A01 */  srlv       $t1, $t2, $t4
/* 1FD58 8002F558 80681300 */  sll        $t5, $s3, 2
/* 1FD5C 8002F55C 2B102701 */  sltu       $v0, $t1, $a3
/* 1FD60 8002F560 D004AB27 */  addiu      $t3, $sp, 0x4d0
/* 1FD64 8002F564 FFFF3027 */  addiu      $s0, $t9, -1
/* 1FD68 8002F568 0C004010 */  beqz       $v0, .L8002F59C
/* 1FD6C 8002F56C FFFF4F26 */   addiu     $t7, $s2, -1
/* 1FD70 8002F570 C0100900 */  sll        $v0, $t1, 3
/* 1FD74 8002F574 21205800 */  addu       $a0, $v0, $t8
/* 1FD78 8002F578 C0400500 */  sll        $t0, $a1, 3
.L8002F57C:
/* 1FD7C 8002F57C 0000A28F */  lw         $v0, ($sp)
/* 1FD80 8002F580 21482501 */  addu       $t1, $t1, $a1
/* 1FD84 8002F584 000082AC */  sw         $v0, ($a0)
/* 1FD88 8002F588 0400A38F */  lw         $v1, 4($sp)
/* 1FD8C 8002F58C 2B102701 */  sltu       $v0, $t1, $a3
/* 1FD90 8002F590 040083AC */  sw         $v1, 4($a0)
/* 1FD94 8002F594 F9FF4014 */  bnez       $v0, .L8002F57C
/* 1FD98 8002F598 21208800 */   addu      $a0, $a0, $t0
.L8002F59C:
/* 1FD9C 8002F59C 01000324 */  addiu      $v1, $zero, 1
/* 1FDA0 8002F5A0 0448E301 */  sllv       $t1, $v1, $t7
/* 1FDA4 8002F5A4 24104901 */  and        $v0, $t2, $t1
/* 1FDA8 8002F5A8 06004010 */  beqz       $v0, .L8002F5C4
/* 1FDAC 8002F5AC 00000000 */   nop
.L8002F5B0:
/* 1FDB0 8002F5B0 26504901 */  xor        $t2, $t2, $t1
/* 1FDB4 8002F5B4 42480900 */  srl        $t1, $t1, 1
/* 1FDB8 8002F5B8 24104901 */  and        $v0, $t2, $t1
/* 1FDBC 8002F5BC FCFF4014 */  bnez       $v0, .L8002F5B0
/* 1FDC0 8002F5C0 00000000 */   nop
.L8002F5C4:
/* 1FDC4 8002F5C4 26504901 */  xor        $t2, $t2, $t1
/* 1FDC8 8002F5C8 01000424 */  addiu      $a0, $zero, 1
/* 1FDCC 8002F5CC 04108401 */  sllv       $v0, $a0, $t4
/* 1FDD0 8002F5D0 FFFF4224 */  addiu      $v0, $v0, -1
/* 1FDD4 8002F5D4 21187101 */  addu       $v1, $t3, $s1
/* 1FDD8 8002F5D8 0000648C */  lw         $a0, ($v1)
/* 1FDDC 8002F5DC 24104201 */  and        $v0, $t2, $v0
/* 1FDE0 8002F5E0 0D004410 */  beq        $v0, $a0, .L8002F618
/* 1FDE4 8002F5E4 21C80002 */   addu      $t9, $s0, $zero
/* 1FDE8 8002F5E8 01000524 */  addiu      $a1, $zero, 1
/* 1FDEC 8002F5EC 2120AB01 */  addu       $a0, $t5, $t3
.L8002F5F0:
/* 1FDF0 8002F5F0 FCFF8424 */  addiu      $a0, $a0, -4
/* 1FDF4 8002F5F4 FCFF3126 */  addiu      $s1, $s1, -4
/* 1FDF8 8002F5F8 23608601 */  subu       $t4, $t4, $a2
/* 1FDFC 8002F5FC 04108501 */  sllv       $v0, $a1, $t4
/* 1FE00 8002F600 FFFF4224 */  addiu      $v0, $v0, -1
/* 1FE04 8002F604 0000838C */  lw         $v1, ($a0)
/* 1FE08 8002F608 24104201 */  and        $v0, $t2, $v0
/* 1FE0C 8002F60C F8FF4314 */  bne        $v0, $v1, .L8002F5F0
/* 1FE10 8002F610 FFFF7326 */   addiu     $s3, $s3, -1
/* 1FE14 8002F614 21C80002 */  addu       $t9, $s0, $zero
.L8002F618:
/* 1FE18 8002F618 FFFF0224 */  addiu      $v0, $zero, -1
/* 1FE1C 8002F61C 49FF2217 */  bne        $t9, $v0, .L8002F344
/* 1FE20 8002F620 21588601 */   addu      $t3, $t4, $a2
.L8002F624:
/* 1FE24 8002F624 01005226 */  addiu      $s2, $s2, 1
/* 1FE28 8002F628 2A10F202 */  slt        $v0, $s7, $s2
/* 1FE2C 8002F62C 37FF4010 */  beqz       $v0, .L8002F30C
/* 1FE30 8002F630 80181200 */   sll       $v1, $s2, 2
.L8002F634:
/* 1FE34 8002F634 03008012 */  beqz       $s4, .L8002F644
/* 1FE38 8002F638 21100000 */   addu      $v0, $zero, $zero
/* 1FE3C 8002F63C 0100E23A */  xori       $v0, $s7, 1
/* 1FE40 8002F640 2B100200 */  sltu       $v0, $zero, $v0
.L8002F644:
/* 1FE44 8002F644 8805BE8F */  lw         $fp, 0x588($sp)
/* 1FE48 8002F648 8405B78F */  lw         $s7, 0x584($sp)
/* 1FE4C 8002F64C 8005B68F */  lw         $s6, 0x580($sp)
/* 1FE50 8002F650 7C05B58F */  lw         $s5, 0x57c($sp)
/* 1FE54 8002F654 7805B48F */  lw         $s4, 0x578($sp)
/* 1FE58 8002F658 7405B38F */  lw         $s3, 0x574($sp)
/* 1FE5C 8002F65C 7005B28F */  lw         $s2, 0x570($sp)
/* 1FE60 8002F660 6C05B18F */  lw         $s1, 0x56c($sp)
/* 1FE64 8002F664 6805B08F */  lw         $s0, 0x568($sp)
/* 1FE68 8002F668 0800E003 */  jr         $ra
/* 1FE6C 8002F66C 9005BD27 */   addiu     $sp, $sp, 0x590
