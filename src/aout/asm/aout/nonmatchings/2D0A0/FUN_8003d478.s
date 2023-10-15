.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003d478
/* 2DC78 8003D478 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 2DC7C 8003D47C 1800BFAF */  sw         $ra, 0x18($sp)
/* 2DC80 8003D480 1400B1AF */  sw         $s1, 0x14($sp)
/* 2DC84 8003D484 7DC4000C */  jal        get_astruct_800311f4
/* 2DC88 8003D488 1000B0AF */   sw        $s0, 0x10($sp)
/* 2DC8C 8003D48C 21804000 */  addu       $s0, $v0, $zero
/* 2DC90 8003D490 04000386 */  lh         $v1, 4($s0)
/* 2DC94 8003D494 01001124 */  addiu      $s1, $zero, 1
/* 2DC98 8003D498 19007110 */  beq        $v1, $s1, .L8003D500
/* 2DC9C 8003D49C 02006228 */   slti      $v0, $v1, 2
/* 2DCA0 8003D4A0 05004010 */  beqz       $v0, .L8003D4B8
/* 2DCA4 8003D4A4 02000224 */   addiu     $v0, $zero, 2
/* 2DCA8 8003D4A8 09006010 */  beqz       $v1, .L8003D4D0
/* 2DCAC 8003D4AC 0E80023C */   lui       $v0, 0x800e
/* 2DCB0 8003D4B0 8BF50008 */  j          .L8003D62C
/* 2DCB4 8003D4B4 00000000 */   nop
.L8003D4B8:
/* 2DCB8 8003D4B8 55006210 */  beq        $v1, $v0, .L8003D610
/* 2DCBC 8003D4BC 0A000224 */   addiu     $v0, $zero, 0xa
/* 2DCC0 8003D4C0 55006210 */  beq        $v1, $v0, .L8003D618
/* 2DCC4 8003D4C4 00000000 */   nop
/* 2DCC8 8003D4C8 8BF50008 */  j          .L8003D62C
/* 2DCCC 8003D4CC 00000000 */   nop
.L8003D4D0:
/* 2DCD0 8003D4D0 549940AC */  sw         $zero, -0x66ac($v0)
/* 2DCD4 8003D4D4 140000A6 */  sh         $zero, 0x14($s0)
/* 2DCD8 8003D4D8 040011A6 */  sh         $s1, 4($s0)
/* 2DCDC 8003D4DC 080000A6 */  sh         $zero, 8($s0)
/* 2DCE0 8003D4E0 D80E00AE */  sw         $zero, 0xed8($s0)
/* 2DCE4 8003D4E4 D40E00AE */  sw         $zero, 0xed4($s0)
/* 2DCE8 8003D4E8 D00E00AE */  sw         $zero, 0xed0($s0)
/* 2DCEC 8003D4EC CC0E00AE */  sw         $zero, 0xecc($s0)
/* 2DCF0 8003D4F0 C80E00AE */  sw         $zero, 0xec8($s0)
/* 2DCF4 8003D4F4 C40E00AE */  sw         $zero, 0xec4($s0)
/* 2DCF8 8003D4F8 C00E00AE */  sw         $zero, 0xec0($s0)
/* 2DCFC 8003D4FC BC0E00AE */  sw         $zero, 0xebc($s0)
.L8003D500:
/* 2DD00 8003D500 47B3000C */  jal        FUN_8002cd1c
/* 2DD04 8003D504 21200000 */   addu      $a0, $zero, $zero
/* 2DD08 8003D508 13004010 */  beqz       $v0, .L8003D558
/* 2DD0C 8003D50C 00000000 */   nop
/* 2DD10 8003D510 14000296 */  lhu        $v0, 0x14($s0)
/* 2DD14 8003D514 00000000 */  nop
/* 2DD18 8003D518 FFFF4224 */  addiu      $v0, $v0, -1
/* 2DD1C 8003D51C 140002A6 */  sh         $v0, 0x14($s0)
/* 2DD20 8003D520 00140200 */  sll        $v0, $v0, 0x10
/* 2DD24 8003D524 02004104 */  bgez       $v0, .L8003D530
/* 2DD28 8003D528 01000224 */   addiu     $v0, $zero, 1
/* 2DD2C 8003D52C 140002A6 */  sh         $v0, 0x14($s0)
.L8003D530:
/* 2DD30 8003D530 14000286 */  lh         $v0, 0x14($s0)
/* 2DD34 8003D534 00000000 */  nop
/* 2DD38 8003D538 07004014 */  bnez       $v0, .L8003D558
/* 2DD3C 8003D53C 00000000 */   nop
/* 2DD40 8003D540 7CF8020C */  jal        FUN_800be1f0
/* 2DD44 8003D544 00000000 */   nop
/* 2DD48 8003D548 02004230 */  andi       $v0, $v0, 2
/* 2DD4C 8003D54C 02004014 */  bnez       $v0, .L8003D558
/* 2DD50 8003D550 01000224 */   addiu     $v0, $zero, 1
/* 2DD54 8003D554 140002A6 */  sh         $v0, 0x14($s0)
.L8003D558:
/* 2DD58 8003D558 50B3000C */  jal        FUN_8002cd40
/* 2DD5C 8003D55C 21200000 */   addu      $a0, $zero, $zero
/* 2DD60 8003D560 0B004010 */  beqz       $v0, .L8003D590
/* 2DD64 8003D564 00000000 */   nop
/* 2DD68 8003D568 14000296 */  lhu        $v0, 0x14($s0)
/* 2DD6C 8003D56C 00000000 */  nop
/* 2DD70 8003D570 01004224 */  addiu      $v0, $v0, 1
/* 2DD74 8003D574 140002A6 */  sh         $v0, 0x14($s0)
/* 2DD78 8003D578 00140200 */  sll        $v0, $v0, 0x10
/* 2DD7C 8003D57C 03140200 */  sra        $v0, $v0, 0x10
/* 2DD80 8003D580 02004228 */  slti       $v0, $v0, 2
/* 2DD84 8003D584 02004014 */  bnez       $v0, .L8003D590
/* 2DD88 8003D588 00000000 */   nop
/* 2DD8C 8003D58C 140000A6 */  sh         $zero, 0x14($s0)
.L8003D590:
/* 2DD90 8003D590 14000286 */  lh         $v0, 0x14($s0)
/* 2DD94 8003D594 00000000 */  nop
/* 2DD98 8003D598 07004014 */  bnez       $v0, .L8003D5B8
/* 2DD9C 8003D59C 00000000 */   nop
/* 2DDA0 8003D5A0 7CF8020C */  jal        FUN_800be1f0
/* 2DDA4 8003D5A4 00000000 */   nop
/* 2DDA8 8003D5A8 02004230 */  andi       $v0, $v0, 2
/* 2DDAC 8003D5AC 02004014 */  bnez       $v0, .L8003D5B8
/* 2DDB0 8003D5B0 01000224 */   addiu     $v0, $zero, 1
/* 2DDB4 8003D5B4 140002A6 */  sh         $v0, 0x14($s0)
.L8003D5B8:
/* 2DDB8 8003D5B8 6BB3000C */  jal        FUN_8002cdac
/* 2DDBC 8003D5BC 21200000 */   addu      $a0, $zero, $zero
/* 2DDC0 8003D5C0 1A004014 */  bnez       $v0, .L8003D62C
/* 2DDC4 8003D5C4 00000000 */   nop
/* 2DDC8 8003D5C8 35B3000C */  jal        FUN_8002ccd4
/* 2DDCC 8003D5CC 21200000 */   addu      $a0, $zero, $zero
/* 2DDD0 8003D5D0 16004010 */  beqz       $v0, .L8003D62C
/* 2DDD4 8003D5D4 00000000 */   nop
/* 2DDD8 8003D5D8 74B3000C */  jal        FUN_8002cdd0
/* 2DDDC 8003D5DC 21200000 */   addu      $a0, $zero, $zero
/* 2DDE0 8003D5E0 12004014 */  bnez       $v0, .L8003D62C
/* 2DDE4 8003D5E4 01000224 */   addiu     $v0, $zero, 1
/* 2DDE8 8003D5E8 14000386 */  lh         $v1, 0x14($s0)
/* 2DDEC 8003D5EC 00000000 */  nop
/* 2DDF0 8003D5F0 04006210 */  beq        $v1, $v0, .L8003D604
/* 2DDF4 8003D5F4 0A000224 */   addiu     $v0, $zero, 0xa
/* 2DDF8 8003D5F8 040002A6 */  sh         $v0, 4($s0)
/* 2DDFC 8003D5FC 8BF50008 */  j          .L8003D62C
/* 2DE00 8003D600 060000A6 */   sh        $zero, 6($s0)
.L8003D604:
/* 2DE04 8003D604 02000224 */  addiu      $v0, $zero, 2
/* 2DE08 8003D608 8BF50008 */  j          .L8003D62C
/* 2DE0C 8003D60C 040002A6 */   sh        $v0, 4($s0)
.L8003D610:
/* 2DE10 8003D610 8FF50008 */  j          .L8003D63C
/* 2DE14 8003D614 01000224 */   addiu     $v0, $zero, 1
.L8003D618:
/* 2DE18 8003D618 DAF6000C */  jal        FUN_8003db68
/* 2DE1C 8003D61C 02000424 */   addiu     $a0, $zero, 2
/* 2DE20 8003D620 02004010 */  beqz       $v0, .L8003D62C
/* 2DE24 8003D624 00000000 */   nop
/* 2DE28 8003D628 040011A6 */  sh         $s1, 4($s0)
.L8003D62C:
/* 2DE2C 8003D62C 14000486 */  lh         $a0, 0x14($s0)
/* 2DE30 8003D630 94F5000C */  jal        FUN_8003d650
/* 2DE34 8003D634 00000000 */   nop
/* 2DE38 8003D638 21100000 */  addu       $v0, $zero, $zero
.L8003D63C:
/* 2DE3C 8003D63C 1800BF8F */  lw         $ra, 0x18($sp)
/* 2DE40 8003D640 1400B18F */  lw         $s1, 0x14($sp)
/* 2DE44 8003D644 1000B08F */  lw         $s0, 0x10($sp)
/* 2DE48 8003D648 0800E003 */  jr         $ra
/* 2DE4C 8003D64C 2000BD27 */   addiu     $sp, $sp, 0x20
