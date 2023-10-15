.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6208
/* 96A08 800A6208 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 96A0C 800A620C 2800B4AF */  sw         $s4, 0x28($sp)
/* 96A10 800A6210 21A0C000 */  addu       $s4, $a2, $zero
/* 96A14 800A6214 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 96A18 800A6218 21880000 */  addu       $s1, $zero, $zero
/* 96A1C 800A621C 21600000 */  addu       $t4, $zero, $zero
/* 96A20 800A6220 1B80023C */  lui        $v0, %hi(D_801B2EF0)
/* 96A24 800A6224 F02E4B24 */  addiu      $t3, $v0, %lo(D_801B2EF0)
/* 96A28 800A6228 21406001 */  addu       $t0, $t3, $zero
/* 96A2C 800A622C 21480000 */  addu       $t1, $zero, $zero
/* 96A30 800A6230 FFFF0E24 */  addiu      $t6, $zero, -1
/* 96A34 800A6234 24000D25 */  addiu      $t5, $t0, 0x24
/* 96A38 800A6238 1000AA27 */  addiu      $t2, $sp, 0x10
/* 96A3C 800A623C 2C00BFAF */  sw         $ra, 0x2c($sp)
/* 96A40 800A6240 2400B3AF */  sw         $s3, 0x24($sp)
/* 96A44 800A6244 2000B2AF */  sw         $s2, 0x20($sp)
/* 96A48 800A6248 1800B0AF */  sw         $s0, 0x18($sp)
/* 96A4C 800A624C 1000A4AF */  sw         $a0, 0x10($sp)
/* 96A50 800A6250 1400A5AF */  sw         $a1, 0x14($sp)
.L800A6254:
/* 96A54 800A6254 0000478D */  lw         $a3, ($t2)
/* 96A58 800A6258 00000000 */  nop
/* 96A5C 800A625C 1300EE10 */  beq        $a3, $t6, .L800A62AC
/* 96A60 800A6260 80100C00 */   sll       $v0, $t4, 2
/* 96A64 800A6264 03000624 */  addiu      $a2, $zero, 3
/* 96A68 800A6268 21104D00 */  addu       $v0, $v0, $t5
/* 96A6C 800A626C 06004524 */  addiu      $a1, $v0, 6
/* 96A70 800A6270 21106901 */  addu       $v0, $t3, $t1
/* 96A74 800A6274 21184000 */  addu       $v1, $v0, $zero
/* 96A78 800A6278 21204000 */  addu       $a0, $v0, $zero
/* 96A7C 800A627C 000000AD */  sw         $zero, ($t0)
/* 96A80 800A6280 040040AC */  sw         $zero, 4($v0)
/* 96A84 800A6284 FEFF0224 */  addiu      $v0, $zero, -2
/* 96A88 800A6288 080060AC */  sw         $zero, 8($v1)
/* 96A8C 800A628C 0C0082AC */  sw         $v0, 0xc($a0)
/* 96A90 800A6290 FFFF0234 */  ori        $v0, $zero, 0xffff
/* 96A94 800A6294 100007AD */  sw         $a3, 0x10($t0)
/* 96A98 800A6298 220002A5 */  sh         $v0, 0x22($t0)
.L800A629C:
/* 96A9C 800A629C 0000A0A4 */  sh         $zero, ($a1)
/* 96AA0 800A62A0 FFFFC624 */  addiu      $a2, $a2, -1
/* 96AA4 800A62A4 FDFFC104 */  bgez       $a2, .L800A629C
/* 96AA8 800A62A8 FEFFA524 */   addiu     $a1, $a1, -2
.L800A62AC:
/* 96AAC 800A62AC 0B008C25 */  addiu      $t4, $t4, 0xb
/* 96AB0 800A62B0 2C000825 */  addiu      $t0, $t0, 0x2c
/* 96AB4 800A62B4 2C002925 */  addiu      $t1, $t1, 0x2c
/* 96AB8 800A62B8 01003126 */  addiu      $s1, $s1, 1
/* 96ABC 800A62BC 0200222A */  slti       $v0, $s1, 2
/* 96AC0 800A62C0 E4FF4014 */  bnez       $v0, .L800A6254
/* 96AC4 800A62C4 04004A25 */   addiu     $t2, $t2, 4
/* 96AC8 800A62C8 21980000 */  addu       $s3, $zero, $zero
/* 96ACC 800A62CC 21900000 */  addu       $s2, $zero, $zero
/* 96AD0 800A62D0 C6980208 */  j          .L800A6318
/* 96AD4 800A62D4 21880000 */   addu      $s1, $zero, $zero
.L800A62D8:
/* 96AD8 800A62D8 CD6B000C */  jal        VSync
/* 96ADC 800A62DC 01000424 */   addiu     $a0, $zero, 1
/* 96AE0 800A62E0 7CAA000C */  jal        vsync_8002a9f0
/* 96AE4 800A62E4 21804000 */   addu      $s0, $v0, $zero
/* 96AE8 800A62E8 BE980208 */  j          .L800A62F8
/* 96AEC 800A62EC 00000000 */   nop
.L800A62F0:
/* 96AF0 800A62F0 7CAA000C */  jal        vsync_8002a9f0
/* 96AF4 800A62F4 00000000 */   nop
.L800A62F8:
/* 96AF8 800A62F8 CD6B000C */  jal        VSync
/* 96AFC 800A62FC 01000424 */   addiu     $a0, $zero, 1
/* 96B00 800A6300 23105000 */  subu       $v0, $v0, $s0
/* 96B04 800A6304 FFFF4230 */  andi       $v0, $v0, 0xffff
/* 96B08 800A6308 1200422C */  sltiu      $v0, $v0, 0x12
/* 96B0C 800A630C F8FF4014 */  bnez       $v0, .L800A62F0
/* 96B10 800A6310 00000000 */   nop
/* 96B14 800A6314 01003126 */  addiu      $s1, $s1, 1
.L800A6318:
/* 96B18 800A6318 E803222A */  slti       $v0, $s1, 0x3e8
/* 96B1C 800A631C 14004010 */  beqz       $v0, .L800A6370
/* 96B20 800A6320 00000000 */   nop
/* 96B24 800A6324 1000A28F */  lw         $v0, 0x10($sp)
/* 96B28 800A6328 FFFF1024 */  addiu      $s0, $zero, -1
/* 96B2C 800A632C 04005010 */  beq        $v0, $s0, .L800A6340
/* 96B30 800A6330 21200000 */   addu      $a0, $zero, $zero
/* 96B34 800A6334 4C99020C */  jal        FUN_800a6530
/* 96B38 800A6338 21288002 */   addu      $a1, $s4, $zero
/* 96B3C 800A633C 21904000 */  addu       $s2, $v0, $zero
.L800A6340:
/* 96B40 800A6340 1400A28F */  lw         $v0, 0x14($sp)
/* 96B44 800A6344 00000000 */  nop
/* 96B48 800A6348 04005010 */  beq        $v0, $s0, .L800A635C
/* 96B4C 800A634C 01000424 */   addiu     $a0, $zero, 1
/* 96B50 800A6350 4C99020C */  jal        FUN_800a6530
/* 96B54 800A6354 21288002 */   addu      $a1, $s4, $zero
/* 96B58 800A6358 21984000 */  addu       $s3, $v0, $zero
.L800A635C:
/* 96B5C 800A635C FEFF0224 */  addiu      $v0, $zero, -2
/* 96B60 800A6360 DDFF4212 */  beq        $s2, $v0, .L800A62D8
/* 96B64 800A6364 00000000 */   nop
/* 96B68 800A6368 DBFF6212 */  beq        $s3, $v0, .L800A62D8
/* 96B6C 800A636C 00000000 */   nop
.L800A6370:
/* 96B70 800A6370 21880000 */  addu       $s1, $zero, $zero
/* 96B74 800A6374 1B80023C */  lui        $v0, %hi(D_801B2EF0)
/* 96B78 800A6378 F02E4224 */  addiu      $v0, $v0, %lo(D_801B2EF0)
/* 96B7C 800A637C 04005024 */  addiu      $s0, $v0, 4
.L800A6380:
/* 96B80 800A6380 000000AE */  sw         $zero, ($s0)
/* 96B84 800A6384 21202002 */  addu       $a0, $s1, $zero
/* 96B88 800A6388 00020524 */  addiu      $a1, $zero, 0x200
/* 96B8C 800A638C 3298020C */  jal        FUN_800a60c8
/* 96B90 800A6390 21300000 */   addu      $a2, $zero, $zero
/* 96B94 800A6394 21202002 */  addu       $a0, $s1, $zero
/* 96B98 800A6398 00010524 */  addiu      $a1, $zero, 0x100
/* 96B9C 800A639C 3298020C */  jal        FUN_800a60c8
/* 96BA0 800A63A0 21300000 */   addu      $a2, $zero, $zero
/* 96BA4 800A63A4 01003126 */  addiu      $s1, $s1, 1
/* 96BA8 800A63A8 0200222A */  slti       $v0, $s1, 2
/* 96BAC 800A63AC F4FF4014 */  bnez       $v0, .L800A6380
/* 96BB0 800A63B0 2C001026 */   addiu     $s0, $s0, 0x2c
/* 96BB4 800A63B4 FFFF0224 */  addiu      $v0, $zero, -1
/* 96BB8 800A63B8 03004212 */  beq        $s2, $v0, .L800A63C8
/* 96BBC 800A63BC 21180000 */   addu      $v1, $zero, $zero
/* 96BC0 800A63C0 08006216 */  bne        $s3, $v0, .L800A63E4
/* 96BC4 800A63C4 00000000 */   nop
.L800A63C8:
/* 96BC8 800A63C8 FFFF0324 */  addiu      $v1, $zero, -1
/* 96BCC 800A63CC 02004312 */  beq        $s2, $v1, .L800A63D8
/* 96BD0 800A63D0 00000000 */   nop
/* 96BD4 800A63D4 FEFF0324 */  addiu      $v1, $zero, -2
.L800A63D8:
/* 96BD8 800A63D8 02006212 */  beq        $s3, $v0, .L800A63E4
/* 96BDC 800A63DC FDFF0224 */   addiu     $v0, $zero, -3
/* 96BE0 800A63E0 24186200 */  and        $v1, $v1, $v0
.L800A63E4:
/* 96BE4 800A63E4 2C00BF8F */  lw         $ra, 0x2c($sp)
/* 96BE8 800A63E8 2800B48F */  lw         $s4, 0x28($sp)
/* 96BEC 800A63EC 2400B38F */  lw         $s3, 0x24($sp)
/* 96BF0 800A63F0 2000B28F */  lw         $s2, 0x20($sp)
/* 96BF4 800A63F4 1C00B18F */  lw         $s1, 0x1c($sp)
/* 96BF8 800A63F8 1800B08F */  lw         $s0, 0x18($sp)
/* 96BFC 800A63FC 21106000 */  addu       $v0, $v1, $zero
/* 96C00 800A6400 0800E003 */  jr         $ra
/* 96C04 800A6404 3000BD27 */   addiu     $sp, $sp, 0x30
