.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ccaec
/* BD2EC 800CCAEC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BD2F0 800CCAF0 2000B2AF */  sw         $s2, 0x20($sp)
/* BD2F4 800CCAF4 21908000 */  addu       $s2, $a0, $zero
/* BD2F8 800CCAF8 21200000 */  addu       $a0, $zero, $zero
/* BD2FC 800CCAFC 2C00BFAF */  sw         $ra, 0x2c($sp)
/* BD300 800CCB00 2800B4AF */  sw         $s4, 0x28($sp)
/* BD304 800CCB04 2400B3AF */  sw         $s3, 0x24($sp)
/* BD308 800CCB08 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BD30C 800CCB0C 78F0020C */  jal        FUN_800bc1e0
/* BD310 800CCB10 1800B0AF */   sw        $s0, 0x18($sp)
/* BD314 800CCB14 21180000 */  addu       $v1, $zero, $zero
/* BD318 800CCB18 401F043C */  lui        $a0, 0x1f40
/* BD31C 800CCB1C 1000A0AF */  sw         $zero, 0x10($sp)
/* BD320 800CCB20 1000A28F */  lw         $v0, 0x10($sp)
.L800CCB24:
/* BD324 800CCB24 06008294 */  lhu        $v0, 6($a0)
/* BD328 800CCB28 01006324 */  addiu      $v1, $v1, 1
/* BD32C 800CCB2C 3C006228 */  slti       $v0, $v1, 0x3c
/* BD330 800CCB30 FCFF4014 */  bnez       $v0, .L800CCB24
/* BD334 800CCB34 FEFF1324 */   addiu     $s3, $zero, -2
/* BD338 800CCB38 CD6B000C */  jal        VSync
/* BD33C 800CCB3C 01000424 */   addiu     $a0, $zero, 1
/* BD340 800CCB40 21884000 */  addu       $s1, $v0, $zero
/* BD344 800CCB44 401F143C */  lui        $s4, 0x1f40
.L800CCB48:
/* BD348 800CCB48 CD6B000C */  jal        VSync
/* BD34C 800CCB4C 01000424 */   addiu     $a0, $zero, 1
/* BD350 800CCB50 06008396 */  lhu        $v1, 6($s4)
/* BD354 800CCB54 00000000 */  nop
/* BD358 800CCB58 82180300 */  srl        $v1, $v1, 2
/* BD35C 800CCB5C 01006330 */  andi       $v1, $v1, 1
/* BD360 800CCB60 0C006010 */  beqz       $v1, .L800CCB94
/* BD364 800CCB64 23805100 */   subu      $s0, $v0, $s1
/* BD368 800CCB68 4A70000C */  jal        FUN_8001c128
/* BD36C 800CCB6C 00000000 */   nop
/* BD370 800CCB70 04004012 */  beqz       $s2, .L800CCB84
/* BD374 800CCB74 FFFF0232 */   andi      $v0, $s0, 0xffff
/* BD378 800CCB78 2A105200 */  slt        $v0, $v0, $s2
/* BD37C 800CCB7C F2FF4014 */  bnez       $v0, .L800CCB48
/* BD380 800CCB80 00000000 */   nop
.L800CCB84:
/* BD384 800CCB84 05006012 */  beqz       $s3, .L800CCB9C
/* BD388 800CCB88 FEFF0224 */   addiu     $v0, $zero, -2
/* BD38C 800CCB8C 04330308 */  j          .L800CCC10
/* BD390 800CCB90 00000000 */   nop
.L800CCB94:
/* BD394 800CCB94 E1320308 */  j          .L800CCB84
/* BD398 800CCB98 21980000 */   addu      $s3, $zero, $zero
.L800CCB9C:
/* BD39C 800CCB9C 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BD3A0 800CCBA0 21280000 */  addu       $a1, $zero, $zero
/* BD3A4 800CCBA4 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BD3A8 800CCBA8 6A1F023C */  lui        $v0, 0x1f6a
/* BD3AC 800CCBAC 02006334 */  ori        $v1, $v1, 2
/* BD3B0 800CCBB0 000043A4 */  sh         $v1, ($v0)
/* BD3B4 800CCBB4 1000A0AF */  sw         $zero, 0x10($sp)
/* BD3B8 800CCBB8 1000A28F */  lw         $v0, 0x10($sp)
/* BD3BC 800CCBBC 401F063C */  lui        $a2, 0x1f40
/* BD3C0 800CCBC0 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CCBC4:
/* BD3C4 800CCBC4 0600C294 */  lhu        $v0, 6($a2)
/* BD3C8 800CCBC8 0100A524 */  addiu      $a1, $a1, 1
/* BD3CC 800CCBCC 3C00A228 */  slti       $v0, $a1, 0x3c
/* BD3D0 800CCBD0 FCFF4014 */  bnez       $v0, .L800CCBC4
/* BD3D4 800CCBD4 2080043C */   lui       $a0, %hi(D_801FBD08)
/* BD3D8 800CCBD8 21280000 */  addu       $a1, $zero, $zero
/* BD3DC 800CCBDC 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BD3E0 800CCBE0 6A1F023C */  lui        $v0, 0x1f6a
/* BD3E4 800CCBE4 FDFF6330 */  andi       $v1, $v1, 0xfffd
/* BD3E8 800CCBE8 000043A4 */  sh         $v1, ($v0)
/* BD3EC 800CCBEC 1000A0AF */  sw         $zero, 0x10($sp)
/* BD3F0 800CCBF0 1000A28F */  lw         $v0, 0x10($sp)
/* BD3F4 800CCBF4 401F063C */  lui        $a2, 0x1f40
/* BD3F8 800CCBF8 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CCBFC:
/* BD3FC 800CCBFC 0600C294 */  lhu        $v0, 6($a2)
/* BD400 800CCC00 0100A524 */  addiu      $a1, $a1, 1
/* BD404 800CCC04 3C00A228 */  slti       $v0, $a1, 0x3c
/* BD408 800CCC08 FCFF4014 */  bnez       $v0, .L800CCBFC
/* BD40C 800CCC0C 21100000 */   addu      $v0, $zero, $zero
.L800CCC10:
/* BD410 800CCC10 2C00BF8F */  lw         $ra, 0x2c($sp)
/* BD414 800CCC14 2800B48F */  lw         $s4, 0x28($sp)
/* BD418 800CCC18 2400B38F */  lw         $s3, 0x24($sp)
/* BD41C 800CCC1C 2000B28F */  lw         $s2, 0x20($sp)
/* BD420 800CCC20 1C00B18F */  lw         $s1, 0x1c($sp)
/* BD424 800CCC24 1800B08F */  lw         $s0, 0x18($sp)
/* BD428 800CCC28 0800E003 */  jr         $ra
/* BD42C 800CCC2C 3000BD27 */   addiu     $sp, $sp, 0x30
