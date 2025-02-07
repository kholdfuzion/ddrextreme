.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80071180
/* 61980 80071180 1B80023C */  lui        $v0, %hi(D_801AFBF4)
/* 61984 80071184 F4FB448C */  lw         $a0, %lo(D_801AFBF4)($v0)
/* 61988 80071188 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 6198C 8007118C 3800BFAF */  sw         $ra, 0x38($sp)
/* 61990 80071190 3400B7AF */  sw         $s7, 0x34($sp)
/* 61994 80071194 3000B6AF */  sw         $s6, 0x30($sp)
/* 61998 80071198 2C00B5AF */  sw         $s5, 0x2c($sp)
/* 6199C 8007119C 2800B4AF */  sw         $s4, 0x28($sp)
/* 619A0 800711A0 2400B3AF */  sw         $s3, 0x24($sp)
/* 619A4 800711A4 2000B2AF */  sw         $s2, 0x20($sp)
/* 619A8 800711A8 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 619AC 800711AC 1800B0AF */  sw         $s0, 0x18($sp)
/* 619B0 800711B0 B8008384 */  lh         $v1, 0xb8($a0)
/* 619B4 800711B4 00000000 */  nop
/* 619B8 800711B8 03006014 */  bnez       $v1, .L800711C8
/* 619BC 800711BC 21B04000 */   addu      $s6, $v0, $zero
/* 619C0 800711C0 D4C40108 */  j          .L80071350
/* 619C4 800711C4 FFFF0224 */   addiu     $v0, $zero, -1
.L800711C8:
/* 619C8 800711C8 21880000 */  addu       $s1, $zero, $zero
/* 619CC 800711CC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 619D0 800711D0 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 619D4 800711D4 7AC40108 */  j          .L800711E8
/* 619D8 800711D8 460C4324 */   addiu     $v1, $v0, 0xc46
.L800711DC:
/* 619DC 800711DC FEFF60A4 */  sh         $zero, -2($v1)
/* 619E0 800711E0 000060A4 */  sh         $zero, ($v1)
/* 619E4 800711E4 08006324 */  addiu      $v1, $v1, 8
.L800711E8:
/* 619E8 800711E8 BC008284 */  lh         $v0, 0xbc($a0)
/* 619EC 800711EC 00000000 */  nop
/* 619F0 800711F0 02004104 */  bgez       $v0, .L800711FC
/* 619F4 800711F4 00000000 */   nop
/* 619F8 800711F8 0F004224 */  addiu      $v0, $v0, 0xf
.L800711FC:
/* 619FC 800711FC 03110200 */  sra        $v0, $v0, 4
/* 61A00 80071200 2A102202 */  slt        $v0, $s1, $v0
/* 61A04 80071204 F5FF4014 */  bnez       $v0, .L800711DC
/* 61A08 80071208 01003126 */   addiu     $s1, $s1, 1
/* 61A0C 8007120C 21880000 */  addu       $s1, $zero, $zero
/* 61A10 80071210 FFFF1524 */  addiu      $s5, $zero, -1
/* 61A14 80071214 40101100 */  sll        $v0, $s1, 1
.L80071218:
/* 61A18 80071218 21185100 */  addu       $v1, $v0, $s1
/* 61A1C 8007121C C0180300 */  sll        $v1, $v1, 3
/* 61A20 80071220 23187100 */  subu       $v1, $v1, $s1
/* 61A24 80071224 80180300 */  sll        $v1, $v1, 2
/* 61A28 80071228 F4FBC48E */  lw         $a0, -0x40c($s6)
/* 61A2C 8007122C 01003726 */  addiu      $s7, $s1, 1
/* 61A30 80071230 21208300 */  addu       $a0, $a0, $v1
/* 61A34 80071234 4400928C */  lw         $s2, 0x44($a0)
/* 61A38 80071238 00000000 */  nop
/* 61A3C 8007123C 19005512 */  beq        $s2, $s5, .L800712A4
/* 61A40 80071240 21984000 */   addu      $s3, $v0, $zero
/* 61A44 80071244 21800000 */  addu       $s0, $zero, $zero
/* 61A48 80071248 FFFF1424 */  addiu      $s4, $zero, -1
.L8007124C:
/* 61A4C 8007124C B4C7020C */  jal        FUN_800b1ed0
/* 61A50 80071250 00000000 */   nop
/* 61A54 80071254 E4C7020C */  jal        FUN_800b1f90
/* 61A58 80071258 21204002 */   addu      $a0, $s2, $zero
/* 61A5C 8007125C 0A005410 */  beq        $v0, $s4, .L80071288
/* 61A60 80071260 00000000 */   nop
/* 61A64 80071264 09004010 */  beqz       $v0, .L8007128C
/* 61A68 80071268 21107102 */   addu      $v0, $s3, $s1
/* 61A6C 8007126C CD6B000C */  jal        VSync
/* 61A70 80071270 21200000 */   addu      $a0, $zero, $zero
/* 61A74 80071274 7CAA000C */  jal        vsync_8002a9f0
/* 61A78 80071278 01001026 */   addiu     $s0, $s0, 1
/* 61A7C 8007127C 2003022A */  slti       $v0, $s0, 0x320
/* 61A80 80071280 F2FF4014 */  bnez       $v0, .L8007124C
/* 61A84 80071284 00000000 */   nop
.L80071288:
/* 61A88 80071288 21107102 */  addu       $v0, $s3, $s1
.L8007128C:
/* 61A8C 8007128C C0100200 */  sll        $v0, $v0, 3
/* 61A90 80071290 23105100 */  subu       $v0, $v0, $s1
/* 61A94 80071294 F4FBC38E */  lw         $v1, -0x40c($s6)
/* 61A98 80071298 80100200 */  sll        $v0, $v0, 2
/* 61A9C 8007129C 21186200 */  addu       $v1, $v1, $v0
/* 61AA0 800712A0 440075AC */  sw         $s5, 0x44($v1)
.L800712A4:
/* 61AA4 800712A4 21107102 */  addu       $v0, $s3, $s1
/* 61AA8 800712A8 C0100200 */  sll        $v0, $v0, 3
/* 61AAC 800712AC 23105100 */  subu       $v0, $v0, $s1
/* 61AB0 800712B0 F4FBC38E */  lw         $v1, -0x40c($s6)
/* 61AB4 800712B4 80100200 */  sll        $v0, $v0, 2
/* 61AB8 800712B8 21186200 */  addu       $v1, $v1, $v0
/* 61ABC 800712BC 3400728C */  lw         $s2, 0x34($v1)
/* 61AC0 800712C0 00000000 */  nop
/* 61AC4 800712C4 19005512 */  beq        $s2, $s5, .L8007132C
/* 61AC8 800712C8 00000000 */   nop
/* 61ACC 800712CC 21800000 */  addu       $s0, $zero, $zero
/* 61AD0 800712D0 FFFF1424 */  addiu      $s4, $zero, -1
.L800712D4:
/* 61AD4 800712D4 B4C7020C */  jal        FUN_800b1ed0
/* 61AD8 800712D8 00000000 */   nop
/* 61ADC 800712DC E4C7020C */  jal        FUN_800b1f90
/* 61AE0 800712E0 21204002 */   addu      $a0, $s2, $zero
/* 61AE4 800712E4 0A005410 */  beq        $v0, $s4, .L80071310
/* 61AE8 800712E8 00000000 */   nop
/* 61AEC 800712EC 09004010 */  beqz       $v0, .L80071314
/* 61AF0 800712F0 21107102 */   addu      $v0, $s3, $s1
/* 61AF4 800712F4 CD6B000C */  jal        VSync
/* 61AF8 800712F8 21200000 */   addu      $a0, $zero, $zero
/* 61AFC 800712FC 7CAA000C */  jal        vsync_8002a9f0
/* 61B00 80071300 01001026 */   addiu     $s0, $s0, 1
/* 61B04 80071304 2003022A */  slti       $v0, $s0, 0x320
/* 61B08 80071308 F2FF4014 */  bnez       $v0, .L800712D4
/* 61B0C 8007130C 00000000 */   nop
.L80071310:
/* 61B10 80071310 21107102 */  addu       $v0, $s3, $s1
.L80071314:
/* 61B14 80071314 C0100200 */  sll        $v0, $v0, 3
/* 61B18 80071318 23105100 */  subu       $v0, $v0, $s1
/* 61B1C 8007131C F4FBC38E */  lw         $v1, -0x40c($s6)
/* 61B20 80071320 80100200 */  sll        $v0, $v0, 2
/* 61B24 80071324 21186200 */  addu       $v1, $v1, $v0
/* 61B28 80071328 340075AC */  sw         $s5, 0x34($v1)
.L8007132C:
/* 61B2C 8007132C 2188E002 */  addu       $s1, $s7, $zero
/* 61B30 80071330 0200E22A */  slti       $v0, $s7, 2
/* 61B34 80071334 B8FF4014 */  bnez       $v0, .L80071218
/* 61B38 80071338 40101100 */   sll       $v0, $s1, 1
/* 61B3C 8007133C F4FBC28E */  lw         $v0, -0x40c($s6)
/* 61B40 80071340 21200000 */  addu       $a0, $zero, $zero
/* 61B44 80071344 51CC010C */  jal        DecDCTReset
/* 61B48 80071348 B80040A4 */   sh        $zero, 0xb8($v0)
/* 61B4C 8007134C 21100000 */  addu       $v0, $zero, $zero
.L80071350:
/* 61B50 80071350 3800BF8F */  lw         $ra, 0x38($sp)
/* 61B54 80071354 3400B78F */  lw         $s7, 0x34($sp)
/* 61B58 80071358 3000B68F */  lw         $s6, 0x30($sp)
/* 61B5C 8007135C 2C00B58F */  lw         $s5, 0x2c($sp)
/* 61B60 80071360 2800B48F */  lw         $s4, 0x28($sp)
/* 61B64 80071364 2400B38F */  lw         $s3, 0x24($sp)
/* 61B68 80071368 2000B28F */  lw         $s2, 0x20($sp)
/* 61B6C 8007136C 1C00B18F */  lw         $s1, 0x1c($sp)
/* 61B70 80071370 1800B08F */  lw         $s0, 0x18($sp)
/* 61B74 80071374 0800E003 */  jr         $ra
/* 61B78 80071378 4000BD27 */   addiu     $sp, $sp, 0x40
