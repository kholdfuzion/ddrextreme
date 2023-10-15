.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001f470
/* FC70 8001F470 0F80033C */  lui        $v1, %hi(D_800F0028)
/* FC74 8001F474 28006594 */  lhu        $a1, %lo(D_800F0028)($v1)
/* FC78 8001F478 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* FC7C 8001F47C 2800B2AF */  sw         $s2, 0x28($sp)
/* FC80 8001F480 21908000 */  addu       $s2, $a0, $zero
/* FC84 8001F484 2400B1AF */  sw         $s1, 0x24($sp)
/* FC88 8001F488 21886000 */  addu       $s1, $v1, $zero
/* FC8C 8001F48C 2C00BFAF */  sw         $ra, 0x2c($sp)
/* FC90 8001F490 2000B0AF */  sw         $s0, 0x20($sp)
/* FC94 8001F494 E0FFA224 */  addiu      $v0, $a1, -0x20
/* FC98 8001F498 3471000C */  jal        FUN_8001c4d0
/* FC9C 8001F49C 0200422C */   sltiu     $v0, $v0, 2
/* FCA0 8001F4A0 1000A2AF */  sw         $v0, 0x10($sp)
/* FCA4 8001F4A4 3471000C */  jal        FUN_8001c4d0
/* FCA8 8001F4A8 00000000 */   nop
/* FCAC 8001F4AC 1000A38F */  lw         $v1, 0x10($sp)
/* FCB0 8001F4B0 00000000 */  nop
/* FCB4 8001F4B4 18006200 */  mult       $v1, $v0
/* FCB8 8001F4B8 1580023C */  lui        $v0, %hi(D_8014BA50)
/* FCBC 8001F4BC 50BA5024 */  addiu      $s0, $v0, %lo(D_8014BA50)
/* FCC0 8001F4C0 10000486 */  lh         $a0, 0x10($s0)
/* FCC4 8001F4C4 12180000 */  mflo       $v1
/* FCC8 8001F4C8 1000A3AF */  sw         $v1, 0x10($sp)
/* FCCC 8001F4CC 07008014 */  bnez       $a0, .L8001F4EC
/* FCD0 8001F4D0 28002226 */   addiu     $v0, $s1, 0x28
/* FCD4 8001F4D4 FFFF0424 */  addiu      $a0, $zero, -1
/* FCD8 8001F4D8 EDA9000C */  jal        FUN_8002a7b4
/* FCDC 8001F4DC 21280000 */   addu      $a1, $zero, $zero
/* FCE0 8001F4E0 12004014 */  bnez       $v0, .L8001F52C
/* FCE4 8001F4E4 1380033C */   lui       $v1, 0x8013
/* FCE8 8001F4E8 28002226 */  addiu      $v0, $s1, 0x28
.L8001F4EC:
/* FCEC 8001F4EC 13004380 */  lb         $v1, 0x13($v0)
/* FCF0 8001F4F0 00000000 */  nop
/* FCF4 8001F4F4 0D006014 */  bnez       $v1, .L8001F52C
/* FCF8 8001F4F8 1380033C */   lui       $v1, 0x8013
/* FCFC 8001F4FC 10000286 */  lh         $v0, 0x10($s0)
/* FD00 8001F500 00000000 */  nop
/* FD04 8001F504 26004010 */  beqz       $v0, .L8001F5A0
/* FD08 8001F508 00000000 */   nop
/* FD0C 8001F50C 59B3000C */  jal        FUN_8002cd64
/* FD10 8001F510 21200000 */   addu      $a0, $zero, $zero
/* FD14 8001F514 05004014 */  bnez       $v0, .L8001F52C
/* FD18 8001F518 1380033C */   lui       $v1, 0x8013
/* FD1C 8001F51C 59B3000C */  jal        FUN_8002cd64
/* FD20 8001F520 01000424 */   addiu     $a0, $zero, 1
/* FD24 8001F524 1E004010 */  beqz       $v0, .L8001F5A0
/* FD28 8001F528 1380033C */   lui       $v1, %hi(D_80129DA8)
.L8001F52C:
/* FD2C 8001F52C A89D6524 */  addiu      $a1, $v1, %lo(D_80129DA8)
/* FD30 8001F530 B40DA48C */  lw         $a0, 0xdb4($a1)
/* FD34 8001F534 00000000 */  nop
/* FD38 8001F538 F0008230 */  andi       $v0, $a0, 0xf0
/* FD3C 8001F53C 06004014 */  bnez       $v0, .L8001F558
/* FD40 8001F540 21806000 */   addu      $s0, $v1, $zero
/* FD44 8001F544 0FFF0224 */  addiu      $v0, $zero, -0xf1
/* FD48 8001F548 24108200 */  and        $v0, $a0, $v0
/* FD4C 8001F54C 20004234 */  ori        $v0, $v0, 0x20
/* FD50 8001F550 637D0008 */  j          .L8001F58C
/* FD54 8001F554 B40DA2AC */   sw        $v0, 0xdb4($a1)
.L8001F558:
/* FD58 8001F558 1800A427 */  addiu      $a0, $sp, 0x18
/* FD5C 8001F55C 21280000 */  addu       $a1, $zero, $zero
/* FD60 8001F560 80020224 */  addiu      $v0, $zero, 0x280
/* FD64 8001F564 F0010324 */  addiu      $v1, $zero, 0x1f0
/* FD68 8001F568 21300000 */  addu       $a2, $zero, $zero
/* FD6C 8001F56C 21380000 */  addu       $a3, $zero, $zero
/* FD70 8001F570 1800A0A7 */  sh         $zero, 0x18($sp)
/* FD74 8001F574 1A00A0A7 */  sh         $zero, 0x1a($sp)
/* FD78 8001F578 1C00A2A7 */  sh         $v0, 0x1c($sp)
/* FD7C 8001F57C 5D61000C */  jal        ClearImage2
/* FD80 8001F580 1E00A3A7 */   sh        $v1, 0x1e($sp)
/* FD84 8001F584 D860000C */  jal        DrawSync
/* FD88 8001F588 21200000 */   addu      $a0, $zero, $zero
.L8001F58C:
/* FD8C 8001F58C A89D0326 */  addiu      $v1, $s0, -0x6258
/* FD90 8001F590 01000224 */  addiu      $v0, $zero, 1
/* FD94 8001F594 B10D62A0 */  sb         $v0, 0xdb1($v1)
/* FD98 8001F598 6D7D0008 */  j          .L8001F5B4
/* FD9C 8001F59C 01000224 */   addiu     $v0, $zero, 1
.L8001F5A0:
/* FDA0 8001F5A0 E089000C */  jal        FUN_80022780
/* FDA4 8001F5A4 04004426 */   addiu     $a0, $s2, 4
/* FDA8 8001F5A8 557C000C */  jal        FUN_8001f154
/* FDAC 8001F5AC 00000000 */   nop
/* FDB0 8001F5B0 21100000 */  addu       $v0, $zero, $zero
.L8001F5B4:
/* FDB4 8001F5B4 2C00BF8F */  lw         $ra, 0x2c($sp)
/* FDB8 8001F5B8 2800B28F */  lw         $s2, 0x28($sp)
/* FDBC 8001F5BC 2400B18F */  lw         $s1, 0x24($sp)
/* FDC0 8001F5C0 2000B08F */  lw         $s0, 0x20($sp)
/* FDC4 8001F5C4 0800E003 */  jr         $ra
/* FDC8 8001F5C8 3000BD27 */   addiu     $sp, $sp, 0x30
