.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel strtol
/* 1F5C4 8002EDC4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1F5C8 8002EDC8 1000B0AF */  sw         $s0, 0x10($sp)
/* 1F5CC 8002EDCC 21808000 */  addu       $s0, $a0, $zero
/* 1F5D0 8002EDD0 2000B4AF */  sw         $s4, 0x20($sp)
/* 1F5D4 8002EDD4 21A0A000 */  addu       $s4, $a1, $zero
/* 1F5D8 8002EDD8 1400B1AF */  sw         $s1, 0x14($sp)
/* 1F5DC 8002EDDC 2188C000 */  addu       $s1, $a2, $zero
/* 1F5E0 8002EDE0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 1F5E4 8002EDE4 01001324 */  addiu      $s3, $zero, 1
/* 1F5E8 8002EDE8 1800B2AF */  sw         $s2, 0x18($sp)
/* 1F5EC 8002EDEC 21900000 */  addu       $s2, $zero, $zero
/* 1F5F0 8002EDF0 2400BFAF */  sw         $ra, 0x24($sp)
/* 1F5F4 8002EDF4 4E000012 */  beqz       $s0, .L8002EF30
/* 1F5F8 8002EDF8 21100000 */   addu      $v0, $zero, $zero
.L8002EDFC:
/* 1F5FC 8002EDFC 00000292 */  lbu        $v0, ($s0)
/* 1F600 8002EE00 0E80013C */  lui        $at, %hi(D_800D8C0D)
/* 1F604 8002EE04 21082200 */  addu       $at, $at, $v0
/* 1F608 8002EE08 0D8C2290 */  lbu        $v0, %lo(D_800D8C0D)($at)
/* 1F60C 8002EE0C 00000000 */  nop
/* 1F610 8002EE10 08004230 */  andi       $v0, $v0, 8
/* 1F614 8002EE14 F9FF4014 */  bnez       $v0, .L8002EDFC
/* 1F618 8002EE18 01001026 */   addiu     $s0, $s0, 1
/* 1F61C 8002EE1C FFFF1026 */  addiu      $s0, $s0, -1
/* 1F620 8002EE20 00000382 */  lb         $v1, ($s0)
/* 1F624 8002EE24 2D000224 */  addiu      $v0, $zero, 0x2d
/* 1F628 8002EE28 08006214 */  bne        $v1, $v0, .L8002EE4C
/* 1F62C 8002EE2C FEFF2226 */   addiu     $v0, $s1, -2
/* 1F630 8002EE30 2D000324 */  addiu      $v1, $zero, 0x2d
.L8002EE34:
/* 1F634 8002EE34 01001026 */  addiu      $s0, $s0, 1
/* 1F638 8002EE38 00000282 */  lb         $v0, ($s0)
/* 1F63C 8002EE3C 00000000 */  nop
/* 1F640 8002EE40 FCFF4310 */  beq        $v0, $v1, .L8002EE34
/* 1F644 8002EE44 23981300 */   negu      $s3, $s3
/* 1F648 8002EE48 FEFF2226 */  addiu      $v0, $s1, -2
.L8002EE4C:
/* 1F64C 8002EE4C 2300422C */  sltiu      $v0, $v0, 0x23
/* 1F650 8002EE50 02004014 */  bnez       $v0, .L8002EE5C
/* 1F654 8002EE54 00000000 */   nop
/* 1F658 8002EE58 21880000 */  addu       $s1, $zero, $zero
.L8002EE5C:
/* 1F65C 8002EE5C 02002016 */  bnez       $s1, .L8002EE68
/* 1F660 8002EE60 00000000 */   nop
/* 1F664 8002EE64 0A001124 */  addiu      $s1, $zero, 0xa
.L8002EE68:
/* 1F668 8002EE68 00000482 */  lb         $a0, ($s0)
/* 1F66C 8002EE6C 30000224 */  addiu      $v0, $zero, 0x30
/* 1F670 8002EE70 17008214 */  bne        $a0, $v0, .L8002EED0
/* 1F674 8002EE74 58000224 */   addiu     $v0, $zero, 0x58
/* 1F678 8002EE78 01001026 */  addiu      $s0, $s0, 1
/* 1F67C 8002EE7C 00000382 */  lb         $v1, ($s0)
/* 1F680 8002EE80 00000000 */  nop
/* 1F684 8002EE84 0C006210 */  beq        $v1, $v0, .L8002EEB8
/* 1F688 8002EE88 59006228 */   slti      $v0, $v1, 0x59
/* 1F68C 8002EE8C 05004010 */  beqz       $v0, .L8002EEA4
/* 1F690 8002EE90 42000224 */   addiu     $v0, $zero, 0x42
/* 1F694 8002EE94 0B006210 */  beq        $v1, $v0, .L8002EEC4
/* 1F698 8002EE98 00000000 */   nop
/* 1F69C 8002EE9C BDBB0008 */  j          STRTOL_OBJ_130
/* 1F6A0 8002EEA0 00000000 */   nop
.L8002EEA4:
/* 1F6A4 8002EEA4 62000224 */  addiu      $v0, $zero, 0x62
/* 1F6A8 8002EEA8 06006210 */  beq        $v1, $v0, .L8002EEC4
/* 1F6AC 8002EEAC 78000224 */   addiu     $v0, $zero, 0x78
/* 1F6B0 8002EEB0 10006214 */  bne        $v1, $v0, STRTOL_OBJ_130
/* 1F6B4 8002EEB4 00000000 */   nop
.L8002EEB8:
/* 1F6B8 8002EEB8 01001026 */  addiu      $s0, $s0, 1
/* 1F6BC 8002EEBC BDBB0008 */  j          STRTOL_OBJ_130
/* 1F6C0 8002EEC0 10001124 */   addiu     $s1, $zero, 0x10
.L8002EEC4:
/* 1F6C4 8002EEC4 01001026 */  addiu      $s0, $s0, 1
/* 1F6C8 8002EEC8 BDBB0008 */  j          STRTOL_OBJ_130
/* 1F6CC 8002EECC 02001124 */   addiu     $s1, $zero, 2
.L8002EED0:
/* 1F6D0 8002EED0 D5BB000C */  jal        toupper
/* 1F6D4 8002EED4 00000000 */   nop
/* 1F6D8 8002EED8 00160200 */  sll        $v0, $v0, 0x18
/* 1F6DC 8002EEDC 03160200 */  sra        $v0, $v0, 0x18
/* 1F6E0 8002EEE0 4F000324 */  addiu      $v1, $zero, 0x4f
/* 1F6E4 8002EEE4 03004314 */  bne        $v0, $v1, STRTOL_OBJ_130
/* 1F6E8 8002EEE8 00000000 */   nop
/* 1F6EC 8002EEEC 01001026 */  addiu      $s0, $s0, 1
/* 1F6F0 8002EEF0 08001124 */  addiu      $s1, $zero, 8
