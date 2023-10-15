.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007ebc4
/* 6F3C4 8007EBC4 00F5BD27 */  addiu      $sp, $sp, -0xb00
/* 6F3C8 8007EBC8 EC0AB5AF */  sw         $s5, 0xaec($sp)
/* 6F3CC 8007EBCC 21A88000 */  addu       $s5, $a0, $zero
/* 6F3D0 8007EBD0 FC0ABFAF */  sw         $ra, 0xafc($sp)
/* 6F3D4 8007EBD4 F80ABEAF */  sw         $fp, 0xaf8($sp)
/* 6F3D8 8007EBD8 F40AB7AF */  sw         $s7, 0xaf4($sp)
/* 6F3DC 8007EBDC F00AB6AF */  sw         $s6, 0xaf0($sp)
/* 6F3E0 8007EBE0 E80AB4AF */  sw         $s4, 0xae8($sp)
/* 6F3E4 8007EBE4 E40AB3AF */  sw         $s3, 0xae4($sp)
/* 6F3E8 8007EBE8 E00AB2AF */  sw         $s2, 0xae0($sp)
/* 6F3EC 8007EBEC DC0AB1AF */  sw         $s1, 0xadc($sp)
/* 6F3F0 8007EBF0 D80AB0AF */  sw         $s0, 0xad8($sp)
/* 6F3F4 8007EBF4 AC48A292 */  lbu        $v0, 0x48ac($s5)
/* 6F3F8 8007EBF8 01000B24 */  addiu      $t3, $zero, 1
/* 6F3FC 8007EBFC D00AABAF */  sw         $t3, 0xad0($sp)
/* 6F400 8007EC00 95004B14 */  bne        $v0, $t3, .L8007EE58
/* 6F404 8007EC04 BC0AA0AE */   sw        $zero, 0xabc($s5)
/* 6F408 8007EC08 0F80023C */  lui        $v0, %hi(D_800F0048)
/* 6F40C 8007EC0C 48004380 */  lb         $v1, %lo(D_800F0048)($v0)
/* 6F410 8007EC10 02000224 */  addiu      $v0, $zero, 2
/* 6F414 8007EC14 04006214 */  bne        $v1, $v0, .L8007EC28
/* 6F418 8007EC18 21980000 */   addu      $s3, $zero, $zero
/* 6F41C 8007EC1C 20000424 */  addiu      $a0, $zero, 0x20
/* 6F420 8007EC20 0CFB0108 */  j          .L8007EC30
/* 6F424 8007EC24 40001624 */   addiu     $s6, $zero, 0x40
.L8007EC28:
/* 6F428 8007EC28 01000424 */  addiu      $a0, $zero, 1
/* 6F42C 8007EC2C 20001624 */  addiu      $s6, $zero, 0x20
.L8007EC30:
/* 6F430 8007EC30 FF000524 */  addiu      $a1, $zero, 0xff
/* 6F434 8007EC34 F8001124 */  addiu      $s1, $zero, 0xf8
/* 6F438 8007EC38 F001A326 */  addiu      $v1, $s5, 0x1f0
.L8007EC3C:
/* 6F43C 8007EC3C 0A0265A4 */  sh         $a1, 0x20a($v1)
/* 6F440 8007EC40 FFFF3126 */  addiu      $s1, $s1, -1
/* 6F444 8007EC44 FDFF2106 */  bgez       $s1, .L8007EC3C
/* 6F448 8007EC48 FEFF6324 */   addiu     $v1, $v1, -2
/* 6F44C 8007EC4C 1F001124 */  addiu      $s1, $zero, 0x1f
/* 6F450 8007EC50 4C0AA327 */  addiu      $v1, $sp, 0xa4c
.L8007EC54:
/* 6F454 8007EC54 000060AC */  sw         $zero, ($v1)
/* 6F458 8007EC58 FFFF3126 */  addiu      $s1, $s1, -1
/* 6F45C 8007EC5C FDFF2106 */  bgez       $s1, .L8007EC54
/* 6F460 8007EC60 FCFF6324 */   addiu     $v1, $v1, -4
/* 6F464 8007EC64 1F001124 */  addiu      $s1, $zero, 0x1f
/* 6F468 8007EC68 CC0AA327 */  addiu      $v1, $sp, 0xacc
.L8007EC6C:
/* 6F46C 8007EC6C 000060AC */  sw         $zero, ($v1)
/* 6F470 8007EC70 FFFF3126 */  addiu      $s1, $s1, -1
/* 6F474 8007EC74 FDFF2106 */  bgez       $s1, .L8007EC6C
/* 6F478 8007EC78 FCFF6324 */   addiu     $v1, $v1, -4
/* 6F47C 8007EC7C 21808000 */  addu       $s0, $a0, $zero
/* 6F480 8007EC80 2A101602 */  slt        $v0, $s0, $s6
/* 6F484 8007EC84 1C004010 */  beqz       $v0, .L8007ECF8
/* 6F488 8007EC88 01001124 */   addiu     $s1, $zero, 1
/* 6F48C 8007EC8C 500AA227 */  addiu      $v0, $sp, 0xa50
/* 6F490 8007EC90 80181300 */  sll        $v1, $s3, 2
/* 6F494 8007EC94 21A06200 */  addu       $s4, $v1, $v0
/* 6F498 8007EC98 D009A227 */  addiu      $v0, $sp, 0x9d0
/* 6F49C 8007EC9C 21906200 */  addu       $s2, $v1, $v0
.L8007ECA0:
/* 6F4A0 8007ECA0 2000222A */  slti       $v0, $s1, 0x20
/* 6F4A4 8007ECA4 14004010 */  beqz       $v0, .L8007ECF8
/* 6F4A8 8007ECA8 00000000 */   nop
/* 6F4AC 8007ECAC 3489020C */  jal        FUN_800a24d0
/* 6F4B0 8007ECB0 21200002 */   addu      $a0, $s0, $zero
/* 6F4B4 8007ECB4 0C004010 */  beqz       $v0, .L8007ECE8
/* 6F4B8 8007ECB8 00000000 */   nop
/* 6F4BC 8007ECBC 7F89020C */  jal        FUN_800a25fc
/* 6F4C0 8007ECC0 21200002 */   addu      $a0, $s0, $zero
/* 6F4C4 8007ECC4 08004004 */  bltz       $v0, .L8007ECE8
/* 6F4C8 8007ECC8 00000000 */   nop
/* 6F4CC 8007ECCC 7F89020C */  jal        FUN_800a25fc
/* 6F4D0 8007ECD0 21200002 */   addu      $a0, $s0, $zero
/* 6F4D4 8007ECD4 000042AE */  sw         $v0, ($s2)
/* 6F4D8 8007ECD8 000090AE */  sw         $s0, ($s4)
/* 6F4DC 8007ECDC 04009426 */  addiu      $s4, $s4, 4
/* 6F4E0 8007ECE0 04005226 */  addiu      $s2, $s2, 4
/* 6F4E4 8007ECE4 01007326 */  addiu      $s3, $s3, 1
.L8007ECE8:
/* 6F4E8 8007ECE8 01001026 */  addiu      $s0, $s0, 1
/* 6F4EC 8007ECEC 2A101602 */  slt        $v0, $s0, $s6
/* 6F4F0 8007ECF0 EBFF4014 */  bnez       $v0, .L8007ECA0
/* 6F4F4 8007ECF4 01003126 */   addiu     $s1, $s1, 1
.L8007ECF8:
/* 6F4F8 8007ECF8 D009B427 */  addiu      $s4, $sp, 0x9d0
/* 6F4FC 8007ECFC 500AB227 */  addiu      $s2, $sp, 0xa50
.L8007ED00:
/* 6F500 8007ED00 FFFF1024 */  addiu      $s0, $zero, -1
/* 6F504 8007ED04 21107002 */  addu       $v0, $s3, $s0
/* 6F508 8007ED08 18004018 */  blez       $v0, .L8007ED6C
/* 6F50C 8007ED0C 21880000 */   addu      $s1, $zero, $zero
/* 6F510 8007ED10 21504000 */  addu       $t2, $v0, $zero
/* 6F514 8007ED14 80401100 */  sll        $t0, $s1, 2
.L8007ED18:
/* 6F518 8007ED18 21308802 */  addu       $a2, $s4, $t0
/* 6F51C 8007ED1C 01002926 */  addiu      $t1, $s1, 1
/* 6F520 8007ED20 80380900 */  sll        $a3, $t1, 2
/* 6F524 8007ED24 21288702 */  addu       $a1, $s4, $a3
/* 6F528 8007ED28 0000C48C */  lw         $a0, ($a2)
/* 6F52C 8007ED2C 0000A38C */  lw         $v1, ($a1)
/* 6F530 8007ED30 00000000 */  nop
/* 6F534 8007ED34 2A106400 */  slt        $v0, $v1, $a0
/* 6F538 8007ED38 09004010 */  beqz       $v0, .L8007ED60
/* 6F53C 8007ED3C 21882001 */   addu      $s1, $t1, $zero
/* 6F540 8007ED40 0000C3AC */  sw         $v1, ($a2)
/* 6F544 8007ED44 0000A4AC */  sw         $a0, ($a1)
/* 6F548 8007ED48 21204802 */  addu       $a0, $s2, $t0
/* 6F54C 8007ED4C 21184702 */  addu       $v1, $s2, $a3
/* 6F550 8007ED50 0000628C */  lw         $v0, ($v1)
/* 6F554 8007ED54 0000908C */  lw         $s0, ($a0)
/* 6F558 8007ED58 000082AC */  sw         $v0, ($a0)
/* 6F55C 8007ED5C 000070AC */  sw         $s0, ($v1)
.L8007ED60:
/* 6F560 8007ED60 2A102A02 */  slt        $v0, $s1, $t2
/* 6F564 8007ED64 ECFF4014 */  bnez       $v0, .L8007ED18
/* 6F568 8007ED68 80401100 */   sll       $t0, $s1, 2
.L8007ED6C:
/* 6F56C 8007ED6C 7CAA000C */  jal        vsync_8002a9f0
/* 6F570 8007ED70 00000000 */   nop
/* 6F574 8007ED74 E2FF0106 */  bgez       $s0, .L8007ED00
/* 6F578 8007ED78 21280000 */   addu      $a1, $zero, $zero
/* 6F57C 8007ED7C 2188A000 */  addu       $s1, $a1, $zero
/* 6F580 8007ED80 2900601A */  blez       $s3, .L8007EE28
/* 6F584 8007ED84 2140A000 */   addu      $t0, $a1, $zero
/* 6F588 8007ED88 500AA727 */  addiu      $a3, $sp, 0xa50
.L8007ED8C:
/* 6F58C 8007ED8C 21300000 */  addu       $a2, $zero, $zero
/* 6F590 8007ED90 21181101 */  addu       $v1, $t0, $s1
.L8007ED94:
/* 6F594 8007ED94 0200A104 */  bgez       $a1, .L8007EDA0
/* 6F598 8007ED98 2110A000 */   addu      $v0, $a1, $zero
/* 6F59C 8007ED9C 1F00A224 */  addiu      $v0, $a1, 0x1f
.L8007EDA0:
/* 6F5A0 8007EDA0 43110200 */  sra        $v0, $v0, 5
/* 6F5A4 8007EDA4 40110200 */  sll        $v0, $v0, 5
/* 6F5A8 8007EDA8 2310A200 */  subu       $v0, $a1, $v0
/* 6F5AC 8007EDAC 80100200 */  sll        $v0, $v0, 2
/* 6F5B0 8007EDB0 2120E200 */  addu       $a0, $a3, $v0
/* 6F5B4 8007EDB4 0000828C */  lw         $v0, ($a0)
/* 6F5B8 8007EDB8 00000000 */  nop
/* 6F5BC 8007EDBC 12004010 */  beqz       $v0, .L8007EE08
/* 6F5C0 8007EDC0 00000000 */   nop
/* 6F5C4 8007EDC4 1A007300 */  div        $zero, $v1, $s3
/* 6F5C8 8007EDC8 02006016 */  bnez       $s3, .L8007EDD4
/* 6F5CC 8007EDCC 00000000 */   nop
/* 6F5D0 8007EDD0 0D000700 */  break      7
.L8007EDD4:
/* 6F5D4 8007EDD4 FFFF0124 */   addiu     $at, $zero, -1
/* 6F5D8 8007EDD8 04006116 */  bne        $s3, $at, .L8007EDEC
/* 6F5DC 8007EDDC 0080013C */   lui       $at, 0x8000
/* 6F5E0 8007EDE0 02006114 */  bne        $v1, $at, .L8007EDEC
/* 6F5E4 8007EDE4 00000000 */   nop
/* 6F5E8 8007EDE8 0D000600 */  break      6
.L8007EDEC:
/* 6F5EC 8007EDEC 10100000 */   mfhi      $v0
/* 6F5F0 8007EDF0 0100A524 */  addiu      $a1, $a1, 1
/* 6F5F4 8007EDF4 00008394 */  lhu        $v1, ($a0)
/* 6F5F8 8007EDF8 40100200 */  sll        $v0, $v0, 1
/* 6F5FC 8007EDFC 2110A202 */  addu       $v0, $s5, $v0
/* 6F600 8007EE00 86FB0108 */  j          .L8007EE18
/* 6F604 8007EE04 0A0243A4 */   sh        $v1, 0x20a($v0)
.L8007EE08:
/* 6F608 8007EE08 0100C624 */  addiu      $a2, $a2, 1
/* 6F60C 8007EE0C 2000C228 */  slti       $v0, $a2, 0x20
/* 6F610 8007EE10 E0FF4014 */  bnez       $v0, .L8007ED94
/* 6F614 8007EE14 0100A524 */   addiu     $a1, $a1, 1
.L8007EE18:
/* 6F618 8007EE18 01003126 */  addiu      $s1, $s1, 1
/* 6F61C 8007EE1C 2A103302 */  slt        $v0, $s1, $s3
/* 6F620 8007EE20 DAFF4014 */  bnez       $v0, .L8007ED8C
/* 6F624 8007EE24 00000000 */   nop
.L8007EE28:
/* 6F628 8007EE28 0900622A */  slti       $v0, $s3, 9
/* 6F62C 8007EE2C 9D004010 */  beqz       $v0, .L8007F0A4
/* 6F630 8007EE30 BC0AB3AE */   sw        $s3, 0xabc($s5)
/* 6F634 8007EE34 40101300 */  sll        $v0, $s3, 1
/* 6F638 8007EE38 2110A202 */  addu       $v0, $s5, $v0
/* 6F63C 8007EE3C FF000324 */  addiu      $v1, $zero, 0xff
/* 6F640 8007EE40 0A0243A4 */  sh         $v1, 0x20a($v0)
/* 6F644 8007EE44 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6F648 8007EE48 00000000 */  nop
/* 6F64C 8007EE4C 01004224 */  addiu      $v0, $v0, 1
/* 6F650 8007EE50 29FC0108 */  j          .L8007F0A4
/* 6F654 8007EE54 BC0AA2AE */   sw        $v0, 0xabc($s5)
.L8007EE58:
/* 6F658 8007EE58 9C0BA282 */  lb         $v0, 0xb9c($s5)
/* 6F65C 8007EE5C 00000000 */  nop
/* 6F660 8007EE60 92004010 */  beqz       $v0, .L8007F0AC
/* 6F664 8007EE64 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 6F668 8007EE68 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 6F66C 8007EE6C 3C006280 */  lb         $v0, 0x3c($v1)
/* 6F670 8007EE70 02000524 */  addiu      $a1, $zero, 2
/* 6F674 8007EE74 1A004510 */  beq        $v0, $a1, .L8007EEE0
/* 6F678 8007EE78 04000424 */   addiu     $a0, $zero, 4
/* 6F67C 8007EE7C 18004410 */  beq        $v0, $a0, .L8007EEE0
/* 6F680 8007EE80 0100023C */   lui       $v0, 1
/* 6F684 8007EE84 21306200 */  addu       $a2, $v1, $v0
/* 6F688 8007EE88 B842C280 */  lb         $v0, 0x42b8($a2)
/* 6F68C 8007EE8C 00000000 */  nop
/* 6F690 8007EE90 11004510 */  beq        $v0, $a1, .L8007EED8
/* 6F694 8007EE94 00000000 */   nop
/* 6F698 8007EE98 0F004410 */  beq        $v0, $a0, .L8007EED8
/* 6F69C 8007EE9C 00000000 */   nop
/* 6F6A0 8007EEA0 8A006290 */  lbu        $v0, 0x8a($v1)
/* 6F6A4 8007EEA4 07000324 */  addiu      $v1, $zero, 7
/* 6F6A8 8007EEA8 03004310 */  beq        $v0, $v1, .L8007EEB8
/* 6F6AC 8007EEAC 00000000 */   nop
/* 6F6B0 8007EEB0 0C004014 */  bnez       $v0, .L8007EEE4
/* 6F6B4 8007EEB4 21280000 */   addu      $a1, $zero, $zero
.L8007EEB8:
/* 6F6B8 8007EEB8 0643C290 */  lbu        $v0, 0x4306($a2)
/* 6F6BC 8007EEBC 00000000 */  nop
/* 6F6C0 8007EEC0 08004310 */  beq        $v0, $v1, .L8007EEE4
/* 6F6C4 8007EEC4 FFFF0524 */   addiu     $a1, $zero, -1
/* 6F6C8 8007EEC8 06004014 */  bnez       $v0, .L8007EEE4
/* 6F6CC 8007EECC 21280000 */   addu      $a1, $zero, $zero
/* 6F6D0 8007EED0 B9FB0108 */  j          .L8007EEE4
/* 6F6D4 8007EED4 FFFF0524 */   addiu     $a1, $zero, -1
.L8007EED8:
/* 6F6D8 8007EED8 B9FB0108 */  j          .L8007EEE4
/* 6F6DC 8007EEDC 01000524 */   addiu     $a1, $zero, 1
.L8007EEE0:
/* 6F6E0 8007EEE0 21280000 */  addu       $a1, $zero, $zero
.L8007EEE4:
/* 6F6E4 8007EEE4 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 6F6E8 8007EEE8 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6F6EC 8007EEEC 80100500 */  sll        $v0, $a1, 2
/* 6F6F0 8007EEF0 21104500 */  addu       $v0, $v0, $a1
/* 6F6F4 8007EEF4 C0190200 */  sll        $v1, $v0, 7
/* 6F6F8 8007EEF8 21104300 */  addu       $v0, $v0, $v1
/* 6F6FC 8007EEFC 40110200 */  sll        $v0, $v0, 5
/* 6F700 8007EF00 23104500 */  subu       $v0, $v0, $a1
/* 6F704 8007EF04 80100200 */  sll        $v0, $v0, 2
/* 6F708 8007EF08 21104400 */  addu       $v0, $v0, $a0
/* 6F70C 8007EF0C 8A004390 */  lbu        $v1, 0x8a($v0)
/* 6F710 8007EF10 01000224 */  addiu      $v0, $zero, 1
/* 6F714 8007EF14 07006210 */  beq        $v1, $v0, .L8007EF34
/* 6F718 8007EF18 05000224 */   addiu     $v0, $zero, 5
/* 6F71C 8007EF1C 05006210 */  beq        $v1, $v0, .L8007EF34
/* 6F720 8007EF20 02000224 */   addiu     $v0, $zero, 2
/* 6F724 8007EF24 04006214 */  bne        $v1, $v0, .L8007EF38
/* 6F728 8007EF28 01001224 */   addiu     $s2, $zero, 1
/* 6F72C 8007EF2C CEFB0108 */  j          .L8007EF38
/* 6F730 8007EF30 21904000 */   addu      $s2, $v0, $zero
.L8007EF34:
/* 6F734 8007EF34 21900000 */  addu       $s2, $zero, $zero
.L8007EF38:
/* 6F738 8007EF38 21800000 */  addu       $s0, $zero, $zero
/* 6F73C 8007EF3C 21880002 */  addu       $s1, $s0, $zero
/* 6F740 8007EF40 FFFF0624 */  addiu      $a2, $zero, -1
/* 6F744 8007EF44 BC0AA0AE */  sw         $zero, 0xabc($s5)
/* 6F748 8007EF48 01001424 */  addiu      $s4, $zero, 1
/* 6F74C 8007EF4C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6F750 8007EF50 28005324 */  addiu      $s3, $v0, %lo(D_800F0028)
.L8007EF54:
/* 6F754 8007EF54 14001412 */  beq        $s0, $s4, .L8007EFA8
/* 6F758 8007EF58 0200022A */   slti      $v0, $s0, 2
/* 6F75C 8007EF5C 05004010 */  beqz       $v0, .L8007EF74
/* 6F760 8007EF60 02000224 */   addiu     $v0, $zero, 2
/* 6F764 8007EF64 09000012 */  beqz       $s0, .L8007EF8C
/* 6F768 8007EF68 04001024 */   addiu     $s0, $zero, 4
/* 6F76C 8007EF6C 18FC0108 */  j          .L8007F060
/* 6F770 8007EF70 00000000 */   nop
.L8007EF74:
/* 6F774 8007EF74 1B000212 */  beq        $s0, $v0, .L8007EFE4
/* 6F778 8007EF78 03000224 */   addiu     $v0, $zero, 3
/* 6F77C 8007EF7C 24000212 */  beq        $s0, $v0, .L8007F010
/* 6F780 8007EF80 0200222A */   slti      $v0, $s1, 2
/* 6F784 8007EF84 18FC0108 */  j          .L8007F060
/* 6F788 8007EF88 04001024 */   addiu     $s0, $zero, 4
.L8007EF8C:
/* 6F78C 8007EF8C FFFF0624 */  addiu      $a2, $zero, -1
/* 6F790 8007EF90 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6F794 8007EF94 01001024 */  addiu      $s0, $zero, 1
/* 6F798 8007EF98 04100202 */  sllv       $v0, $v0, $s0
/* 6F79C 8007EF9C 2110A202 */  addu       $v0, $s5, $v0
/* 6F7A0 8007EFA0 18FC0108 */  j          .L8007F060
/* 6F7A4 8007EFA4 0A0240A4 */   sh        $zero, 0x20a($v0)
.L8007EFA8:
/* 6F7A8 8007EFA8 0400648E */  lw         $a0, 4($s3)
/* 6F7AC 8007EFAC 13AE020C */  jal        FUN_800ab84c
/* 6F7B0 8007EFB0 21284002 */   addu      $a1, $s2, $zero
/* 6F7B4 8007EFB4 21304000 */  addu       $a2, $v0, $zero
/* 6F7B8 8007EFB8 0700C004 */  bltz       $a2, .L8007EFD8
/* 6F7BC 8007EFBC 0100C324 */   addiu     $v1, $a2, 1
/* 6F7C0 8007EFC0 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6F7C4 8007EFC4 00000000 */  nop
/* 6F7C8 8007EFC8 40100200 */  sll        $v0, $v0, 1
/* 6F7CC 8007EFCC 2110A202 */  addu       $v0, $s5, $v0
/* 6F7D0 8007EFD0 18FC0108 */  j          .L8007F060
/* 6F7D4 8007EFD4 0A0243A4 */   sh        $v1, 0x20a($v0)
.L8007EFD8:
/* 6F7D8 8007EFD8 FFFF0624 */  addiu      $a2, $zero, -1
/* 6F7DC 8007EFDC 26FC0108 */  j          .L8007F098
/* 6F7E0 8007EFE0 02001024 */   addiu     $s0, $zero, 2
.L8007EFE4:
/* 6F7E4 8007EFE4 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6F7E8 8007EFE8 FFFF0324 */  addiu      $v1, $zero, -1
/* 6F7EC 8007EFEC 40100200 */  sll        $v0, $v0, 1
/* 6F7F0 8007EFF0 2110A202 */  addu       $v0, $s5, $v0
/* 6F7F4 8007EFF4 0A0243A4 */  sh         $v1, 0x20a($v0)
/* 6F7F8 8007EFF8 0900C228 */  slti       $v0, $a2, 9
/* 6F7FC 8007EFFC 18004014 */  bnez       $v0, .L8007F060
/* 6F800 8007F000 0100C624 */   addiu     $a2, $a2, 1
/* 6F804 8007F004 FFFF0624 */  addiu      $a2, $zero, -1
/* 6F808 8007F008 18FC0108 */  j          .L8007F060
/* 6F80C 8007F00C 03001024 */   addiu     $s0, $zero, 3
.L8007F010:
/* 6F810 8007F010 04004014 */  bnez       $v0, .L8007F024
/* 6F814 8007F014 21284002 */   addu      $a1, $s2, $zero
/* 6F818 8007F018 FFFF0624 */  addiu      $a2, $zero, -1
/* 6F81C 8007F01C 26FC0108 */  j          .L8007F098
/* 6F820 8007F020 04001024 */   addiu     $s0, $zero, 4
.L8007F024:
/* 6F824 8007F024 0400648E */  lw         $a0, 4($s3)
/* 6F828 8007F028 19AD020C */  jal        FUN_800ab464
/* 6F82C 8007F02C 21302002 */   addu      $a2, $s1, $zero
/* 6F830 8007F030 21304000 */  addu       $a2, $v0, $zero
/* 6F834 8007F034 0800C004 */  bltz       $a2, .L8007F058
/* 6F838 8007F038 1F00C224 */   addiu     $v0, $a2, 0x1f
/* 6F83C 8007F03C 01003126 */  addiu      $s1, $s1, 1
/* 6F840 8007F040 BC0AA38E */  lw         $v1, 0xabc($s5)
/* 6F844 8007F044 00000000 */  nop
/* 6F848 8007F048 40180300 */  sll        $v1, $v1, 1
/* 6F84C 8007F04C 2118A302 */  addu       $v1, $s5, $v1
/* 6F850 8007F050 18FC0108 */  j          .L8007F060
/* 6F854 8007F054 0A0262A4 */   sh        $v0, 0x20a($v1)
.L8007F058:
/* 6F858 8007F058 26FC0108 */  j          .L8007F098
/* 6F85C 8007F05C 01003126 */   addiu     $s1, $s1, 1
.L8007F060:
/* 6F860 8007F060 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6F864 8007F064 00000000 */  nop
/* 6F868 8007F068 80100200 */  sll        $v0, $v0, 2
/* 6F86C 8007F06C 2110A203 */  addu       $v0, $sp, $v0
/* 6F870 8007F070 F00454AC */  sw         $s4, 0x4f0($v0)
/* 6F874 8007F074 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6F878 8007F078 00000000 */  nop
/* 6F87C 8007F07C 01004224 */  addiu      $v0, $v0, 1
/* 6F880 8007F080 BC0AA2AE */  sw         $v0, 0xabc($s5)
/* 6F884 8007F084 F9004228 */  slti       $v0, $v0, 0xf9
/* 6F888 8007F088 04004014 */  bnez       $v0, .L8007F09C
/* 6F88C 8007F08C 0400022A */   slti      $v0, $s0, 4
/* 6F890 8007F090 F8000224 */  addiu      $v0, $zero, 0xf8
/* 6F894 8007F094 BC0AA2AE */  sw         $v0, 0xabc($s5)
.L8007F098:
/* 6F898 8007F098 0400022A */  slti       $v0, $s0, 4
.L8007F09C:
/* 6F89C 8007F09C ADFF4014 */  bnez       $v0, .L8007EF54
/* 6F8A0 8007F0A0 00000000 */   nop
.L8007F0A4:
/* 6F8A4 8007F0A4 23FD0108 */  j          .L8007F48C
/* 6F8A8 8007F0A8 D00AA0AF */   sw        $zero, 0xad0($sp)
.L8007F0AC:
/* 6F8AC 8007F0AC 21880000 */  addu       $s1, $zero, $zero
/* 6F8B0 8007F0B0 28005E24 */  addiu      $fp, $v0, 0x28
/* 6F8B4 8007F0B4 01001724 */  addiu      $s7, $zero, 1
/* 6F8B8 8007F0B8 F004B227 */  addiu      $s2, $sp, 0x4f0
/* 6F8BC 8007F0BC 21A04002 */  addu       $s4, $s2, $zero
/* 6F8C0 8007F0C0 21982002 */  addu       $s3, $s1, $zero
/* 6F8C4 8007F0C4 1000B627 */  addiu      $s6, $sp, 0x10
.L8007F0C8:
/* 6F8C8 8007F0C8 0200023C */  lui        $v0, 2
/* 6F8CC 8007F0CC 00804234 */  ori        $v0, $v0, 0x8000
/* 6F8D0 8007F0D0 21183E02 */  addu       $v1, $s1, $fp
/* 6F8D4 8007F0D4 21186200 */  addu       $v1, $v1, $v0
/* 6F8D8 8007F0D8 28056280 */  lb         $v0, 0x528($v1)
/* 6F8DC 8007F0DC 00000000 */  nop
/* 6F8E0 8007F0E0 E2005714 */  bne        $v0, $s7, .L8007F46C
/* 6F8E4 8007F0E4 00000000 */   nop
/* 6F8E8 8007F0E8 1BA2020C */  jal        FUN_800a886c
/* 6F8EC 8007F0EC 21202002 */   addu      $a0, $s1, $zero
/* 6F8F0 8007F0F0 21204000 */  addu       $a0, $v0, $zero
/* 6F8F4 8007F0F4 DD008010 */  beqz       $a0, .L8007F46C
/* 6F8F8 8007F0F8 00000000 */   nop
/* 6F8FC 8007F0FC A848A28E */  lw         $v0, 0x48a8($s5)
/* 6F900 8007F100 00000000 */  nop
/* 6F904 8007F104 0C004010 */  beqz       $v0, .L8007F138
/* 6F908 8007F108 00000000 */   nop
/* 6F90C 8007F10C 2400838C */  lw         $v1, 0x24($a0)
/* 6F910 8007F110 00000000 */  nop
/* 6F914 8007F114 60006230 */  andi       $v0, $v1, 0x60
/* 6F918 8007F118 03004014 */  bnez       $v0, .L8007F128
/* 6F91C 8007F11C 80006230 */   andi      $v0, $v1, 0x80
/* 6F920 8007F120 05004010 */  beqz       $v0, .L8007F138
/* 6F924 8007F124 00000000 */   nop
.L8007F128:
/* 6F928 8007F128 1700C283 */  lb         $v0, 0x17($fp)
/* 6F92C 8007F12C 00000000 */  nop
/* 6F930 8007F130 CE004010 */  beqz       $v0, .L8007F46C
/* 6F934 8007F134 00000000 */   nop
.L8007F138:
/* 6F938 8007F138 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6F93C 8007F13C 00000000 */  nop
/* 6F940 8007F140 40100200 */  sll        $v0, $v0, 1
/* 6F944 8007F144 2110A202 */  addu       $v0, $s5, $v0
/* 6F948 8007F148 0A0251A4 */  sh         $s1, 0x20a($v0)
/* 6F94C 8007F14C 40101100 */  sll        $v0, $s1, 1
/* 6F950 8007F150 2110A202 */  addu       $v0, $s5, $v0
/* 6F954 8007F154 E60640A4 */  sh         $zero, 0x6e6($v0)
/* 6F958 8007F158 2400828C */  lw         $v0, 0x24($a0)
/* 6F95C 8007F15C 00000000 */  nop
/* 6F960 8007F160 02004230 */  andi       $v0, $v0, 2
/* 6F964 8007F164 05004010 */  beqz       $v0, .L8007F17C
/* 6F968 8007F168 00000000 */   nop
/* 6F96C 8007F16C 1600C283 */  lb         $v0, 0x16($fp)
/* 6F970 8007F170 00000000 */  nop
/* 6F974 8007F174 BD005714 */  bne        $v0, $s7, .L8007F46C
/* 6F978 8007F178 00000000 */   nop
.L8007F17C:
/* 6F97C 8007F17C 1600C293 */  lbu        $v0, 0x16($fp)
/* 6F980 8007F180 00000000 */  nop
/* 6F984 8007F184 FFFF4224 */  addiu      $v0, $v0, -1
/* 6F988 8007F188 00160200 */  sll        $v0, $v0, 0x18
/* 6F98C 8007F18C 031E0200 */  sra        $v1, $v0, 0x18
/* 6F990 8007F190 0800622C */  sltiu      $v0, $v1, 8
/* 6F994 8007F194 B1004010 */  beqz       $v0, .L8007F45C
/* 6F998 8007F198 0180023C */   lui       $v0, %hi(D_80015984)
/* 6F99C 8007F19C 84594224 */  addiu      $v0, $v0, %lo(D_80015984)
/* 6F9A0 8007F1A0 80180300 */  sll        $v1, $v1, 2
/* 6F9A4 8007F1A4 21186200 */  addu       $v1, $v1, $v0
/* 6F9A8 8007F1A8 0000628C */  lw         $v0, ($v1)
/* 6F9AC 8007F1AC 00000000 */  nop
/* 6F9B0 8007F1B0 08004000 */  jr         $v0
/* 6F9B4 8007F1B4 00000000 */   nop
/* 6F9B8 8007F1B8 2400828C */  lw         $v0, 0x24($a0)
/* 6F9BC 8007F1BC 00000000 */  nop
/* 6F9C0 8007F1C0 00014230 */  andi       $v0, $v0, 0x100
/* 6F9C4 8007F1C4 A9004010 */  beqz       $v0, .L8007F46C
/* 6F9C8 8007F1C8 00000000 */   nop
/* 6F9CC 8007F1CC 0CA4020C */  jal        FUN_800a9030
/* 6F9D0 8007F1D0 00000000 */   nop
/* 6F9D4 8007F1D4 01005024 */  addiu      $s0, $v0, 1
/* 6F9D8 8007F1D8 1BA2020C */  jal        FUN_800a886c
/* 6F9DC 8007F1DC 21202002 */   addu      $a0, $s1, $zero
/* 6F9E0 8007F1E0 0A004384 */  lh         $v1, 0xa($v0)
/* 6F9E4 8007F1E4 06000224 */  addiu      $v0, $zero, 6
/* 6F9E8 8007F1E8 03000216 */  bne        $s0, $v0, .L8007F1F8
/* 6F9EC 8007F1EC 04000224 */   addiu     $v0, $zero, 4
/* 6F9F0 8007F1F0 81FC0108 */  j          .L8007F204
/* 6F9F4 8007F1F4 04001024 */   addiu     $s0, $zero, 4
.L8007F1F8:
/* 6F9F8 8007F1F8 03000216 */  bne        $s0, $v0, .L8007F208
/* 6F9FC 8007F1FC 0400022A */   slti      $v0, $s0, 4
/* 6FA00 8007F200 06001024 */  addiu      $s0, $zero, 6
.L8007F204:
/* 6FA04 8007F204 0400022A */  slti       $v0, $s0, 4
.L8007F208:
/* 6FA08 8007F208 02004014 */  bnez       $v0, .L8007F214
/* 6FA0C 8007F20C 00151000 */   sll       $v0, $s0, 0x14
/* 6FA10 8007F210 00141000 */  sll        $v0, $s0, 0x10
.L8007F214:
/* 6FA14 8007F214 23184300 */  subu       $v1, $v0, $v1
/* 6FA18 8007F218 0000C3AE */  sw         $v1, ($s6)
/* 6FA1C 8007F21C 17FD0108 */  j          .L8007F45C
/* 6FA20 8007F220 000057AE */   sw        $s7, ($s2)
/* 6FA24 8007F224 F9000224 */  addiu      $v0, $zero, 0xf9
/* 6FA28 8007F228 94FC0108 */  j          .L8007F250
/* 6FA2C 8007F22C 23105100 */   subu      $v0, $v0, $s1
/* 6FA30 8007F230 21202002 */  addu       $a0, $s1, $zero
/* 6FA34 8007F234 FCA6020C */  jal        FUN_800a9bf0
/* 6FA38 8007F238 03000524 */   addiu     $a1, $zero, 3
/* 6FA3C 8007F23C 95FC0108 */  j          .L8007F254
/* 6FA40 8007F240 0000C2AE */   sw        $v0, ($s6)
/* 6FA44 8007F244 10008394 */  lhu        $v1, 0x10($a0)
/* 6FA48 8007F248 0F270224 */  addiu      $v0, $zero, 0x270f
/* 6FA4C 8007F24C 23104300 */  subu       $v0, $v0, $v1
.L8007F250:
/* 6FA50 8007F250 0000C2AE */  sw         $v0, ($s6)
.L8007F254:
/* 6FA54 8007F254 17FD0108 */  j          .L8007F45C
/* 6FA58 8007F258 000057AE */   sw        $s7, ($s2)
/* 6FA5C 8007F25C 1BA2020C */  jal        FUN_800a886c
/* 6FA60 8007F260 21202002 */   addu      $a0, $s1, $zero
/* 6FA64 8007F264 7800428C */  lw         $v0, 0x78($v0)
/* 6FA68 8007F268 00000000 */  nop
/* 6FA6C 8007F26C 00004390 */  lbu        $v1, ($v0)
/* 6FA70 8007F270 00000000 */  nop
/* 6FA74 8007F274 BFFF6224 */  addiu      $v0, $v1, -0x41
/* 6FA78 8007F278 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 6FA7C 8007F27C 07004014 */  bnez       $v0, .L8007F29C
/* 6FA80 8007F280 F9000224 */   addiu     $v0, $zero, 0xf9
/* 6FA84 8007F284 9FFF6224 */  addiu      $v0, $v1, -0x61
/* 6FA88 8007F288 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 6FA8C 8007F28C 02004014 */  bnez       $v0, .L8007F298
/* 6FA90 8007F290 E0FF6324 */   addiu     $v1, $v1, -0x20
/* 6FA94 8007F294 23000324 */  addiu      $v1, $zero, 0x23
.L8007F298:
/* 6FA98 8007F298 F9000224 */  addiu      $v0, $zero, 0xf9
.L8007F29C:
/* 6FA9C 8007F29C 23105100 */  subu       $v0, $v0, $s1
/* 6FAA0 8007F2A0 0000C2AE */  sw         $v0, ($s6)
/* 6FAA4 8007F2A4 17FD0108 */  j          .L8007F45C
/* 6FAA8 8007F2A8 000043AE */   sw        $v1, ($s2)
/* 6FAAC 8007F2AC F9000224 */  addiu      $v0, $zero, 0xf9
/* 6FAB0 8007F2B0 23105100 */  subu       $v0, $v0, $s1
/* 6FAB4 8007F2B4 0000C2AE */  sw         $v0, ($s6)
/* 6FAB8 8007F2B8 2400838C */  lw         $v1, 0x24($a0)
/* 6FABC 8007F2BC 00000000 */  nop
/* 6FAC0 8007F2C0 00026230 */  andi       $v0, $v1, 0x200
/* 6FAC4 8007F2C4 64004014 */  bnez       $v0, .L8007F458
/* 6FAC8 8007F2C8 41000224 */   addiu     $v0, $zero, 0x41
/* 6FACC 8007F2CC 00046230 */  andi       $v0, $v1, 0x400
/* 6FAD0 8007F2D0 04004010 */  beqz       $v0, .L8007F2E4
/* 6FAD4 8007F2D4 42000224 */   addiu     $v0, $zero, 0x42
/* 6FAD8 8007F2D8 21189302 */  addu       $v1, $s4, $s3
/* 6FADC 8007F2DC 17FD0108 */  j          .L8007F45C
/* 6FAE0 8007F2E0 000062AC */   sw        $v0, ($v1)
.L8007F2E4:
/* 6FAE4 8007F2E4 00086230 */  andi       $v0, $v1, 0x800
/* 6FAE8 8007F2E8 04004010 */  beqz       $v0, .L8007F2FC
/* 6FAEC 8007F2EC 43000224 */   addiu     $v0, $zero, 0x43
/* 6FAF0 8007F2F0 21189302 */  addu       $v1, $s4, $s3
/* 6FAF4 8007F2F4 17FD0108 */  j          .L8007F45C
/* 6FAF8 8007F2F8 000062AC */   sw        $v0, ($v1)
.L8007F2FC:
/* 6FAFC 8007F2FC 00106230 */  andi       $v0, $v1, 0x1000
/* 6FB00 8007F300 04004010 */  beqz       $v0, .L8007F314
/* 6FB04 8007F304 44000224 */   addiu     $v0, $zero, 0x44
/* 6FB08 8007F308 21189302 */  addu       $v1, $s4, $s3
/* 6FB0C 8007F30C 17FD0108 */  j          .L8007F45C
/* 6FB10 8007F310 000062AC */   sw        $v0, ($v1)
.L8007F314:
/* 6FB14 8007F314 00206230 */  andi       $v0, $v1, 0x2000
/* 6FB18 8007F318 04004010 */  beqz       $v0, .L8007F32C
/* 6FB1C 8007F31C 45000224 */   addiu     $v0, $zero, 0x45
/* 6FB20 8007F320 21189302 */  addu       $v1, $s4, $s3
/* 6FB24 8007F324 17FD0108 */  j          .L8007F45C
/* 6FB28 8007F328 000062AC */   sw        $v0, ($v1)
.L8007F32C:
/* 6FB2C 8007F32C 00406230 */  andi       $v0, $v1, 0x4000
/* 6FB30 8007F330 04004010 */  beqz       $v0, .L8007F344
/* 6FB34 8007F334 46000224 */   addiu     $v0, $zero, 0x46
/* 6FB38 8007F338 21189302 */  addu       $v1, $s4, $s3
/* 6FB3C 8007F33C 17FD0108 */  j          .L8007F45C
/* 6FB40 8007F340 000062AC */   sw        $v0, ($v1)
.L8007F344:
/* 6FB44 8007F344 00806230 */  andi       $v0, $v1, 0x8000
/* 6FB48 8007F348 04004010 */  beqz       $v0, .L8007F35C
/* 6FB4C 8007F34C 47000224 */   addiu     $v0, $zero, 0x47
/* 6FB50 8007F350 21189302 */  addu       $v1, $s4, $s3
/* 6FB54 8007F354 17FD0108 */  j          .L8007F45C
/* 6FB58 8007F358 000062AC */   sw        $v0, ($v1)
.L8007F35C:
/* 6FB5C 8007F35C 0100023C */  lui        $v0, 1
/* 6FB60 8007F360 24106200 */  and        $v0, $v1, $v0
/* 6FB64 8007F364 04004010 */  beqz       $v0, .L8007F378
/* 6FB68 8007F368 48000224 */   addiu     $v0, $zero, 0x48
/* 6FB6C 8007F36C 21189302 */  addu       $v1, $s4, $s3
/* 6FB70 8007F370 17FD0108 */  j          .L8007F45C
/* 6FB74 8007F374 000062AC */   sw        $v0, ($v1)
.L8007F378:
/* 6FB78 8007F378 0200023C */  lui        $v0, 2
/* 6FB7C 8007F37C 24106200 */  and        $v0, $v1, $v0
/* 6FB80 8007F380 04004010 */  beqz       $v0, .L8007F394
/* 6FB84 8007F384 49000224 */   addiu     $v0, $zero, 0x49
/* 6FB88 8007F388 21189302 */  addu       $v1, $s4, $s3
/* 6FB8C 8007F38C 17FD0108 */  j          .L8007F45C
/* 6FB90 8007F390 000062AC */   sw        $v0, ($v1)
.L8007F394:
/* 6FB94 8007F394 0400023C */  lui        $v0, 4
/* 6FB98 8007F398 24106200 */  and        $v0, $v1, $v0
/* 6FB9C 8007F39C 04004010 */  beqz       $v0, .L8007F3B0
/* 6FBA0 8007F3A0 21189302 */   addu      $v1, $s4, $s3
/* 6FBA4 8007F3A4 4A000224 */  addiu      $v0, $zero, 0x4a
/* 6FBA8 8007F3A8 17FD0108 */  j          .L8007F45C
/* 6FBAC 8007F3AC 000062AC */   sw        $v0, ($v1)
.L8007F3B0:
/* 6FBB0 8007F3B0 2400848C */  lw         $a0, 0x24($a0)
/* 6FBB4 8007F3B4 0800023C */  lui        $v0, 8
/* 6FBB8 8007F3B8 24108200 */  and        $v0, $a0, $v0
/* 6FBBC 8007F3BC 26004014 */  bnez       $v0, .L8007F458
/* 6FBC0 8007F3C0 4B000224 */   addiu     $v0, $zero, 0x4b
/* 6FBC4 8007F3C4 1000023C */  lui        $v0, 0x10
/* 6FBC8 8007F3C8 24108200 */  and        $v0, $a0, $v0
/* 6FBCC 8007F3CC 22004014 */  bnez       $v0, .L8007F458
/* 6FBD0 8007F3D0 4C000224 */   addiu     $v0, $zero, 0x4c
/* 6FBD4 8007F3D4 2000023C */  lui        $v0, 0x20
/* 6FBD8 8007F3D8 24108200 */  and        $v0, $a0, $v0
/* 6FBDC 8007F3DC 1E004014 */  bnez       $v0, .L8007F458
/* 6FBE0 8007F3E0 4D000224 */   addiu     $v0, $zero, 0x4d
/* 6FBE4 8007F3E4 4000023C */  lui        $v0, 0x40
/* 6FBE8 8007F3E8 24108200 */  and        $v0, $a0, $v0
/* 6FBEC 8007F3EC 1A004014 */  bnez       $v0, .L8007F458
/* 6FBF0 8007F3F0 4E000224 */   addiu     $v0, $zero, 0x4e
/* 6FBF4 8007F3F4 8000023C */  lui        $v0, 0x80
/* 6FBF8 8007F3F8 24108200 */  and        $v0, $a0, $v0
/* 6FBFC 8007F3FC 16004014 */  bnez       $v0, .L8007F458
/* 6FC00 8007F400 4F000224 */   addiu     $v0, $zero, 0x4f
/* 6FC04 8007F404 0001023C */  lui        $v0, 0x100
/* 6FC08 8007F408 24108200 */  and        $v0, $a0, $v0
/* 6FC0C 8007F40C 12004014 */  bnez       $v0, .L8007F458
/* 6FC10 8007F410 50000224 */   addiu     $v0, $zero, 0x50
/* 6FC14 8007F414 0002023C */  lui        $v0, 0x200
/* 6FC18 8007F418 24108200 */  and        $v0, $a0, $v0
/* 6FC1C 8007F41C 0E004014 */  bnez       $v0, .L8007F458
/* 6FC20 8007F420 51000224 */   addiu     $v0, $zero, 0x51
/* 6FC24 8007F424 0004023C */  lui        $v0, 0x400
/* 6FC28 8007F428 24108200 */  and        $v0, $a0, $v0
/* 6FC2C 8007F42C 0A004014 */  bnez       $v0, .L8007F458
/* 6FC30 8007F430 52000224 */   addiu     $v0, $zero, 0x52
/* 6FC34 8007F434 0008023C */  lui        $v0, 0x800
/* 6FC38 8007F438 24108200 */  and        $v0, $a0, $v0
/* 6FC3C 8007F43C 06004014 */  bnez       $v0, .L8007F458
/* 6FC40 8007F440 53000224 */   addiu     $v0, $zero, 0x53
/* 6FC44 8007F444 0010023C */  lui        $v0, 0x1000
/* 6FC48 8007F448 24108200 */  and        $v0, $a0, $v0
/* 6FC4C 8007F44C 02004014 */  bnez       $v0, .L8007F458
/* 6FC50 8007F450 54000224 */   addiu     $v0, $zero, 0x54
/* 6FC54 8007F454 55000224 */  addiu      $v0, $zero, 0x55
.L8007F458:
/* 6FC58 8007F458 000042AE */  sw         $v0, ($s2)
.L8007F45C:
/* 6FC5C 8007F45C BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6FC60 8007F460 00000000 */  nop
/* 6FC64 8007F464 01004224 */  addiu      $v0, $v0, 1
/* 6FC68 8007F468 BC0AA2AE */  sw         $v0, 0xabc($s5)
.L8007F46C:
/* 6FC6C 8007F46C 04005226 */  addiu      $s2, $s2, 4
/* 6FC70 8007F470 04007326 */  addiu      $s3, $s3, 4
/* 6FC74 8007F474 01003126 */  addiu      $s1, $s1, 1
/* 6FC78 8007F478 F900222A */  slti       $v0, $s1, 0xf9
/* 6FC7C 8007F47C 12FF4014 */  bnez       $v0, .L8007F0C8
/* 6FC80 8007F480 0400D626 */   addiu     $s6, $s6, 4
/* 6FC84 8007F484 7CAA000C */  jal        vsync_8002a9f0
/* 6FC88 8007F488 00000000 */   nop
.L8007F48C:
/* 6FC8C 8007F48C D00AAB8F */  lw         $t3, 0xad0($sp)
/* 6FC90 8007F490 00000000 */  nop
/* 6FC94 8007F494 50006011 */  beqz       $t3, .L8007F5D8
/* 6FC98 8007F498 FFFF1024 */   addiu     $s0, $zero, -1
/* 6FC9C 8007F49C 1000B227 */  addiu      $s2, $sp, 0x10
.L8007F4A0:
/* 6FCA0 8007F4A0 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6FCA4 8007F4A4 00000000 */  nop
/* 6FCA8 8007F4A8 21105000 */  addu       $v0, $v0, $s0
/* 6FCAC 8007F4AC 1C004018 */  blez       $v0, .L8007F520
/* 6FCB0 8007F4B0 21880000 */   addu      $s1, $zero, $zero
/* 6FCB4 8007F4B4 40101100 */  sll        $v0, $s1, 1
.L8007F4B8:
/* 6FCB8 8007F4B8 2138A202 */  addu       $a3, $s5, $v0
/* 6FCBC 8007F4BC 01002426 */  addiu      $a0, $s1, 1
/* 6FCC0 8007F4C0 40100400 */  sll        $v0, $a0, 1
/* 6FCC4 8007F4C4 2128A202 */  addu       $a1, $s5, $v0
/* 6FCC8 8007F4C8 0A02E684 */  lh         $a2, 0x20a($a3)
/* 6FCCC 8007F4CC 0A02A284 */  lh         $v0, 0x20a($a1)
/* 6FCD0 8007F4D0 80180600 */  sll        $v1, $a2, 2
/* 6FCD4 8007F4D4 21184302 */  addu       $v1, $s2, $v1
/* 6FCD8 8007F4D8 80100200 */  sll        $v0, $v0, 2
/* 6FCDC 8007F4DC 21104202 */  addu       $v0, $s2, $v0
/* 6FCE0 8007F4E0 0000638C */  lw         $v1, ($v1)
/* 6FCE4 8007F4E4 0000428C */  lw         $v0, ($v0)
/* 6FCE8 8007F4E8 00000000 */  nop
/* 6FCEC 8007F4EC 2A186200 */  slt        $v1, $v1, $v0
/* 6FCF0 8007F4F0 0A02A294 */  lhu        $v0, 0x20a($a1)
/* 6FCF4 8007F4F4 04006010 */  beqz       $v1, .L8007F508
/* 6FCF8 8007F4F8 00000000 */   nop
/* 6FCFC 8007F4FC 2180C000 */  addu       $s0, $a2, $zero
/* 6FD00 8007F500 0A02E2A4 */  sh         $v0, 0x20a($a3)
/* 6FD04 8007F504 0A02B0A4 */  sh         $s0, 0x20a($a1)
.L8007F508:
/* 6FD08 8007F508 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6FD0C 8007F50C 21888000 */  addu       $s1, $a0, $zero
/* 6FD10 8007F510 FFFF4224 */  addiu      $v0, $v0, -1
/* 6FD14 8007F514 2A102202 */  slt        $v0, $s1, $v0
/* 6FD18 8007F518 E7FF4014 */  bnez       $v0, .L8007F4B8
/* 6FD1C 8007F51C 40101100 */   sll       $v0, $s1, 1
.L8007F520:
/* 6FD20 8007F520 7CAA000C */  jal        vsync_8002a9f0
/* 6FD24 8007F524 00000000 */   nop
/* 6FD28 8007F528 DDFF0106 */  bgez       $s0, .L8007F4A0
/* 6FD2C 8007F52C FFFF1024 */   addiu     $s0, $zero, -1
/* 6FD30 8007F530 0F80023C */  lui        $v0, %hi(D_800F003E)
/* 6FD34 8007F534 3E004380 */  lb         $v1, %lo(D_800F003E)($v0)
/* 6FD38 8007F538 08000224 */  addiu      $v0, $zero, 8
/* 6FD3C 8007F53C 26006214 */  bne        $v1, $v0, .L8007F5D8
/* 6FD40 8007F540 00000000 */   nop
/* 6FD44 8007F544 F004B227 */  addiu      $s2, $sp, 0x4f0
.L8007F548:
/* 6FD48 8007F548 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6FD4C 8007F54C 00000000 */  nop
/* 6FD50 8007F550 21105000 */  addu       $v0, $v0, $s0
/* 6FD54 8007F554 1C004018 */  blez       $v0, .L8007F5C8
/* 6FD58 8007F558 21880000 */   addu      $s1, $zero, $zero
/* 6FD5C 8007F55C 40101100 */  sll        $v0, $s1, 1
.L8007F560:
/* 6FD60 8007F560 2138A202 */  addu       $a3, $s5, $v0
/* 6FD64 8007F564 01002426 */  addiu      $a0, $s1, 1
/* 6FD68 8007F568 40100400 */  sll        $v0, $a0, 1
/* 6FD6C 8007F56C 2128A202 */  addu       $a1, $s5, $v0
/* 6FD70 8007F570 0A02E684 */  lh         $a2, 0x20a($a3)
/* 6FD74 8007F574 0A02A284 */  lh         $v0, 0x20a($a1)
/* 6FD78 8007F578 80180600 */  sll        $v1, $a2, 2
/* 6FD7C 8007F57C 21184302 */  addu       $v1, $s2, $v1
/* 6FD80 8007F580 80100200 */  sll        $v0, $v0, 2
/* 6FD84 8007F584 21104202 */  addu       $v0, $s2, $v0
/* 6FD88 8007F588 0000638C */  lw         $v1, ($v1)
/* 6FD8C 8007F58C 0000428C */  lw         $v0, ($v0)
/* 6FD90 8007F590 00000000 */  nop
/* 6FD94 8007F594 2A104300 */  slt        $v0, $v0, $v1
/* 6FD98 8007F598 0A02A394 */  lhu        $v1, 0x20a($a1)
/* 6FD9C 8007F59C 04004010 */  beqz       $v0, .L8007F5B0
/* 6FDA0 8007F5A0 00000000 */   nop
/* 6FDA4 8007F5A4 2180C000 */  addu       $s0, $a2, $zero
/* 6FDA8 8007F5A8 0A02E3A4 */  sh         $v1, 0x20a($a3)
/* 6FDAC 8007F5AC 0A02B0A4 */  sh         $s0, 0x20a($a1)
.L8007F5B0:
/* 6FDB0 8007F5B0 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6FDB4 8007F5B4 21888000 */  addu       $s1, $a0, $zero
/* 6FDB8 8007F5B8 FFFF4224 */  addiu      $v0, $v0, -1
/* 6FDBC 8007F5BC 2A102202 */  slt        $v0, $s1, $v0
/* 6FDC0 8007F5C0 E7FF4014 */  bnez       $v0, .L8007F560
/* 6FDC4 8007F5C4 40101100 */   sll       $v0, $s1, 1
.L8007F5C8:
/* 6FDC8 8007F5C8 7CAA000C */  jal        vsync_8002a9f0
/* 6FDCC 8007F5CC 00000000 */   nop
/* 6FDD0 8007F5D0 DDFF0106 */  bgez       $s0, .L8007F548
/* 6FDD4 8007F5D4 FFFF1024 */   addiu     $s0, $zero, -1
.L8007F5D8:
/* 6FDD8 8007F5D8 9C0BA282 */  lb         $v0, 0xb9c($s5)
/* 6FDDC 8007F5DC 00000000 */  nop
/* 6FDE0 8007F5E0 AD004014 */  bnez       $v0, .L8007F898
/* 6FDE4 8007F5E4 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 6FDE8 8007F5E8 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 6FDEC 8007F5EC 20006280 */  lb         $v0, 0x20($v1)
/* 6FDF0 8007F5F0 00000000 */  nop
/* 6FDF4 8007F5F4 93004014 */  bnez       $v0, .L8007F844
/* 6FDF8 8007F5F8 00000000 */   nop
/* 6FDFC 8007F5FC 6047A28E */  lw         $v0, 0x4760($s5)
/* 6FE00 8007F600 00000000 */  nop
/* 6FE04 8007F604 8F004004 */  bltz       $v0, .L8007F844
/* 6FE08 8007F608 00000000 */   nop
/* 6FE0C 8007F60C 10004014 */  bnez       $v0, .L8007F650
/* 6FE10 8007F610 01000224 */   addiu     $v0, $zero, 1
/* 6FE14 8007F614 16006380 */  lb         $v1, 0x16($v1)
/* 6FE18 8007F618 00000000 */  nop
/* 6FE1C 8007F61C 89006214 */  bne        $v1, $v0, .L8007F844
/* 6FE20 8007F620 00000000 */   nop
/* 6FE24 8007F624 D808A3AF */  sw         $v1, 0x8d8($sp)
/* 6FE28 8007F628 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6FE2C 8007F62C FA001124 */  addiu      $s1, $zero, 0xfa
/* 6FE30 8007F630 40100200 */  sll        $v0, $v0, 1
/* 6FE34 8007F634 2110A202 */  addu       $v0, $s5, $v0
/* 6FE38 8007F638 0A0251A4 */  sh         $s1, 0x20a($v0)
/* 6FE3C 8007F63C BC0AA28E */  lw         $v0, 0xabc($s5)
/* 6FE40 8007F640 00000000 */  nop
/* 6FE44 8007F644 01004224 */  addiu      $v0, $v0, 1
/* 6FE48 8007F648 11FE0108 */  j          .L8007F844
/* 6FE4C 8007F64C BC0AA2AE */   sw        $v0, 0xabc($s5)
.L8007F650:
/* 6FE50 8007F650 A848A28E */  lw         $v0, 0x48a8($s5)
/* 6FE54 8007F654 00000000 */  nop
/* 6FE58 8007F658 7A004010 */  beqz       $v0, .L8007F844
/* 6FE5C 8007F65C 00000000 */   nop
/* 6FE60 8007F660 FFFF1224 */  addiu      $s2, $zero, -1
/* 6FE64 8007F664 21880000 */  addu       $s1, $zero, $zero
/* 6FE68 8007F668 21B06000 */  addu       $s6, $v1, $zero
/* 6FE6C 8007F66C 01001424 */  addiu      $s4, $zero, 1
/* 6FE70 8007F670 21802002 */  addu       $s0, $s1, $zero
/* 6FE74 8007F674 21982002 */  addu       $s3, $s1, $zero
.L8007F678:
/* 6FE78 8007F678 0200023C */  lui        $v0, 2
/* 6FE7C 8007F67C 00804234 */  ori        $v0, $v0, 0x8000
/* 6FE80 8007F680 21183602 */  addu       $v1, $s1, $s6
/* 6FE84 8007F684 21186200 */  addu       $v1, $v1, $v0
/* 6FE88 8007F688 28056280 */  lb         $v0, 0x528($v1)
/* 6FE8C 8007F68C 00000000 */  nop
/* 6FE90 8007F690 67005414 */  bne        $v0, $s4, .L8007F830
/* 6FE94 8007F694 00000000 */   nop
/* 6FE98 8007F698 1BA2020C */  jal        FUN_800a886c
/* 6FE9C 8007F69C 21202002 */   addu      $a0, $s1, $zero
/* 6FEA0 8007F6A0 21284000 */  addu       $a1, $v0, $zero
/* 6FEA4 8007F6A4 6200A010 */  beqz       $a1, .L8007F830
/* 6FEA8 8007F6A8 A0000224 */   addiu     $v0, $zero, 0xa0
/* 6FEAC 8007F6AC 2400A48C */  lw         $a0, 0x24($a1)
/* 6FEB0 8007F6B0 00000000 */  nop
/* 6FEB4 8007F6B4 A0008330 */  andi       $v1, $a0, 0xa0
/* 6FEB8 8007F6B8 5D006214 */  bne        $v1, $v0, .L8007F830
/* 6FEBC 8007F6BC 60008230 */   andi      $v0, $a0, 0x60
/* 6FEC0 8007F6C0 09004010 */  beqz       $v0, .L8007F6E8
/* 6FEC4 8007F6C4 00000000 */   nop
/* 6FEC8 8007F6C8 1700C282 */  lb         $v0, 0x17($s6)
/* 6FECC 8007F6CC 00000000 */  nop
/* 6FED0 8007F6D0 05004010 */  beqz       $v0, .L8007F6E8
/* 6FED4 8007F6D4 00000000 */   nop
/* 6FED8 8007F6D8 0400C28E */  lw         $v0, 4($s6)
/* 6FEDC 8007F6DC 00000000 */  nop
/* 6FEE0 8007F6E0 5300A210 */  beq        $a1, $v0, .L8007F830
/* 6FEE4 8007F6E4 00000000 */   nop
.L8007F6E8:
/* 6FEE8 8007F6E8 11004106 */  bgez       $s2, .L8007F730
/* 6FEEC 8007F6EC 00000000 */   nop
/* 6FEF0 8007F6F0 D80AA28E */  lw         $v0, 0xad8($s5)
/* 6FEF4 8007F6F4 BC0AA38E */  lw         $v1, 0xabc($s5)
/* 6FEF8 8007F6F8 21105300 */  addu       $v0, $v0, $s3
/* 6FEFC 8007F6FC 1A004300 */  div        $zero, $v0, $v1
/* 6FF00 8007F700 02006014 */  bnez       $v1, .L8007F70C
/* 6FF04 8007F704 00000000 */   nop
/* 6FF08 8007F708 0D000700 */  break      7
.L8007F70C:
/* 6FF0C 8007F70C FFFF0124 */   addiu     $at, $zero, -1
/* 6FF10 8007F710 04006114 */  bne        $v1, $at, .L8007F724
/* 6FF14 8007F714 0080013C */   lui       $at, 0x8000
/* 6FF18 8007F718 02004114 */  bne        $v0, $at, .L8007F724
/* 6FF1C 8007F71C 00000000 */   nop
/* 6FF20 8007F720 0D000600 */  break      6
.L8007F724:
/* 6FF24 8007F724 10280000 */   mfhi      $a1
/* 6FF28 8007F728 EFFD0108 */  j          .L8007F7BC
/* 6FF2C 8007F72C 00000000 */   nop
.L8007F730:
/* 6FF30 8007F730 BC0AA48E */  lw         $a0, 0xabc($s5)
/* 6FF34 8007F734 00000000 */  nop
/* 6FF38 8007F738 02008104 */  bgez       $a0, .L8007F744
/* 6FF3C 8007F73C 21108000 */   addu      $v0, $a0, $zero
/* 6FF40 8007F740 03008224 */  addiu      $v0, $a0, 3
.L8007F744:
/* 6FF44 8007F744 83100200 */  sra        $v0, $v0, 2
/* 6FF48 8007F748 0200401C */  bgtz       $v0, .L8007F754
/* 6FF4C 8007F74C 00000000 */   nop
/* 6FF50 8007F750 01000224 */  addiu      $v0, $zero, 1
.L8007F754:
/* 6FF54 8007F754 1A000202 */  div        $zero, $s0, $v0
/* 6FF58 8007F758 02004014 */  bnez       $v0, .L8007F764
/* 6FF5C 8007F75C 00000000 */   nop
/* 6FF60 8007F760 0D000700 */  break      7
.L8007F764:
/* 6FF64 8007F764 FFFF0124 */   addiu     $at, $zero, -1
/* 6FF68 8007F768 04004114 */  bne        $v0, $at, .L8007F77C
/* 6FF6C 8007F76C 0080013C */   lui       $at, 0x8000
/* 6FF70 8007F770 02000116 */  bne        $s0, $at, .L8007F77C
/* 6FF74 8007F774 00000000 */   nop
/* 6FF78 8007F778 0D000600 */  break      6
.L8007F77C:
/* 6FF7C 8007F77C 10100000 */   mfhi      $v0
/* 6FF80 8007F780 00000000 */  nop
/* 6FF84 8007F784 40100200 */  sll        $v0, $v0, 1
/* 6FF88 8007F788 02004224 */  addiu      $v0, $v0, 2
/* 6FF8C 8007F78C 21104202 */  addu       $v0, $s2, $v0
/* 6FF90 8007F790 1A004400 */  div        $zero, $v0, $a0
/* 6FF94 8007F794 02008014 */  bnez       $a0, .L8007F7A0
/* 6FF98 8007F798 00000000 */   nop
/* 6FF9C 8007F79C 0D000700 */  break      7
.L8007F7A0:
/* 6FFA0 8007F7A0 FFFF0124 */   addiu     $at, $zero, -1
/* 6FFA4 8007F7A4 04008114 */  bne        $a0, $at, .L8007F7B8
/* 6FFA8 8007F7A8 0080013C */   lui       $at, 0x8000
/* 6FFAC 8007F7AC 02004114 */  bne        $v0, $at, .L8007F7B8
/* 6FFB0 8007F7B0 00000000 */   nop
/* 6FFB4 8007F7B4 0D000600 */  break      6
.L8007F7B8:
/* 6FFB8 8007F7B8 10280000 */   mfhi      $a1
.L8007F7BC:
/* 6FFBC 8007F7BC BC0AA48E */  lw         $a0, 0xabc($s5)
/* 6FFC0 8007F7C0 00000000 */  nop
/* 6FFC4 8007F7C4 2A10A400 */  slt        $v0, $a1, $a0
/* 6FFC8 8007F7C8 0C004010 */  beqz       $v0, .L8007F7FC
/* 6FFCC 8007F7CC 2190A000 */   addu      $s2, $a1, $zero
/* 6FFD0 8007F7D0 40180400 */  sll        $v1, $a0, 1
.L8007F7D4:
/* 6FFD4 8007F7D4 FFFF8224 */  addiu      $v0, $a0, -1
/* 6FFD8 8007F7D8 21204000 */  addu       $a0, $v0, $zero
/* 6FFDC 8007F7DC 40100400 */  sll        $v0, $a0, 1
/* 6FFE0 8007F7E0 2110A202 */  addu       $v0, $s5, $v0
/* 6FFE4 8007F7E4 0A024294 */  lhu        $v0, 0x20a($v0)
/* 6FFE8 8007F7E8 2118A302 */  addu       $v1, $s5, $v1
/* 6FFEC 8007F7EC 0A0262A4 */  sh         $v0, 0x20a($v1)
/* 6FFF0 8007F7F0 2A10A400 */  slt        $v0, $a1, $a0
/* 6FFF4 8007F7F4 F7FF4014 */  bnez       $v0, .L8007F7D4
/* 6FFF8 8007F7F8 40180400 */   sll       $v1, $a0, 1
.L8007F7FC:
/* 6FFFC 8007F7FC 80101100 */  sll        $v0, $s1, 2
/* 70000 8007F800 2110A203 */  addu       $v0, $sp, $v0
/* 70004 8007F804 F00454AC */  sw         $s4, 0x4f0($v0)
/* 70008 8007F808 40101100 */  sll        $v0, $s1, 1
/* 7000C 8007F80C 2110A202 */  addu       $v0, $s5, $v0
/* 70010 8007F810 E60654A4 */  sh         $s4, 0x6e6($v0)
/* 70014 8007F814 40100500 */  sll        $v0, $a1, 1
/* 70018 8007F818 2110A202 */  addu       $v0, $s5, $v0
/* 7001C 8007F81C 0A0251A4 */  sh         $s1, 0x20a($v0)
/* 70020 8007F820 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 70024 8007F824 00000000 */  nop
/* 70028 8007F828 01004224 */  addiu      $v0, $v0, 1
/* 7002C 8007F82C BC0AA2AE */  sw         $v0, 0xabc($s5)
.L8007F830:
/* 70030 8007F830 D2041026 */  addiu      $s0, $s0, 0x4d2
/* 70034 8007F834 01003126 */  addiu      $s1, $s1, 1
/* 70038 8007F838 F900222A */  slti       $v0, $s1, 0xf9
/* 7003C 8007F83C 8EFF4014 */  bnez       $v0, .L8007F678
/* 70040 8007F840 7B007326 */   addiu     $s3, $s3, 0x7b
.L8007F844:
/* 70044 8007F844 9C0BA282 */  lb         $v0, 0xb9c($s5)
/* 70048 8007F848 00000000 */  nop
/* 7004C 8007F84C 12004014 */  bnez       $v0, .L8007F898
/* 70050 8007F850 0F80023C */   lui       $v0, 0x800f
/* 70054 8007F854 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 70058 8007F858 00000000 */  nop
/* 7005C 8007F85C 1F004228 */  slti       $v0, $v0, 0x1f
/* 70060 8007F860 0D004014 */  bnez       $v0, .L8007F898
/* 70064 8007F864 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 70068 8007F868 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7006C 8007F86C 20006280 */  lb         $v0, 0x20($v1)
/* 70070 8007F870 00000000 */  nop
/* 70074 8007F874 08004014 */  bnez       $v0, .L8007F898
/* 70078 8007F878 0F80023C */   lui       $v0, 0x800f
/* 7007C 8007F87C 16006380 */  lb         $v1, 0x16($v1)
/* 70080 8007F880 04000224 */  addiu      $v0, $zero, 4
/* 70084 8007F884 04006214 */  bne        $v1, $v0, .L8007F898
/* 70088 8007F888 0F80023C */   lui       $v0, 0x800f
/* 7008C 8007F88C 1E000224 */  addiu      $v0, $zero, 0x1e
/* 70090 8007F890 BC0AA2AE */  sw         $v0, 0xabc($s5)
/* 70094 8007F894 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8007F898:
/* 70098 8007F898 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 7009C 8007F89C 0400A0AE */  sw         $zero, 4($s5)
/* 700A0 8007F8A0 F004A28F */  lw         $v0, 0x4f0($sp)
/* 700A4 8007F8A4 20008380 */  lb         $v1, 0x20($a0)
/* 700A8 8007F8A8 00000000 */  nop
/* 700AC 8007F8AC 0D006014 */  bnez       $v1, .L8007F8E4
/* 700B0 8007F8B0 01004624 */   addiu     $a2, $v0, 1
/* 700B4 8007F8B4 9C0BA282 */  lb         $v0, 0xb9c($s5)
/* 700B8 8007F8B8 00000000 */  nop
/* 700BC 8007F8BC 0A004014 */  bnez       $v0, .L8007F8E8
/* 700C0 8007F8C0 21280000 */   addu      $a1, $zero, $zero
/* 700C4 8007F8C4 16008380 */  lb         $v1, 0x16($a0)
/* 700C8 8007F8C8 02000224 */  addiu      $v0, $zero, 2
/* 700CC 8007F8CC 03006210 */  beq        $v1, $v0, .L8007F8DC
/* 700D0 8007F8D0 08000224 */   addiu     $v0, $zero, 8
/* 700D4 8007F8D4 04006214 */  bne        $v1, $v0, .L8007F8E8
/* 700D8 8007F8D8 00000000 */   nop
.L8007F8DC:
/* 700DC 8007F8DC 3AFE0108 */  j          .L8007F8E8
/* 700E0 8007F8E0 01000524 */   addiu     $a1, $zero, 1
.L8007F8E4:
/* 700E4 8007F8E4 21280000 */  addu       $a1, $zero, $zero
.L8007F8E8:
/* 700E8 8007F8E8 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 700EC 8007F8EC 00000000 */  nop
/* 700F0 8007F8F0 3D004018 */  blez       $v0, .L8007F9E8
/* 700F4 8007F8F4 21880000 */   addu      $s1, $zero, $zero
/* 700F8 8007F8F8 F004A727 */  addiu      $a3, $sp, 0x4f0
/* 700FC 8007F8FC 2120A002 */  addu       $a0, $s5, $zero
.L8007F900:
/* 70100 8007F900 2D00A010 */  beqz       $a1, .L8007F9B8
/* 70104 8007F904 00000000 */   nop
/* 70108 8007F908 0A028284 */  lh         $v0, 0x20a($a0)
/* 7010C 8007F90C 00000000 */  nop
/* 70110 8007F910 80100200 */  sll        $v0, $v0, 2
/* 70114 8007F914 2110E200 */  addu       $v0, $a3, $v0
/* 70118 8007F918 0000438C */  lw         $v1, ($v0)
/* 7011C 8007F91C 00000000 */  nop
/* 70120 8007F920 1A00C310 */  beq        $a2, $v1, .L8007F98C
/* 70124 8007F924 00000000 */   nop
/* 70128 8007F928 0400A28E */  lw         $v0, 4($s5)
/* 7012C 8007F92C 21306000 */  addu       $a2, $v1, $zero
/* 70130 8007F930 40100200 */  sll        $v0, $v0, 1
/* 70134 8007F934 2110A202 */  addu       $v0, $s5, $v0
/* 70138 8007F938 540946A4 */  sh         $a2, 0x954($v0)
/* 7013C 8007F93C 0400A28E */  lw         $v0, 4($s5)
/* 70140 8007F940 00000000 */  nop
/* 70144 8007F944 40100200 */  sll        $v0, $v0, 1
/* 70148 8007F948 2110A202 */  addu       $v0, $s5, $v0
/* 7014C 8007F94C CC0951A4 */  sh         $s1, 0x9cc($v0)
/* 70150 8007F950 0400A28E */  lw         $v0, 4($s5)
/* 70154 8007F954 00000000 */  nop
/* 70158 8007F958 40100200 */  sll        $v0, $v0, 1
/* 7015C 8007F95C 2110A202 */  addu       $v0, $s5, $v0
/* 70160 8007F960 440A40A4 */  sh         $zero, 0xa44($v0)
/* 70164 8007F964 0400A38E */  lw         $v1, 4($s5)
/* 70168 8007F968 0400A296 */  lhu        $v0, 4($s5)
/* 7016C 8007F96C 40180300 */  sll        $v1, $v1, 1
/* 70170 8007F970 2118A302 */  addu       $v1, $s5, $v1
/* 70174 8007F974 FB004224 */  addiu      $v0, $v0, 0xfb
/* 70178 8007F978 180062A4 */  sh         $v0, 0x18($v1)
/* 7017C 8007F97C 0400A28E */  lw         $v0, 4($s5)
/* 70180 8007F980 00000000 */  nop
/* 70184 8007F984 01004224 */  addiu      $v0, $v0, 1
/* 70188 8007F988 0400A2AE */  sw         $v0, 4($s5)
.L8007F98C:
/* 7018C 8007F98C 0400A38E */  lw         $v1, 4($s5)
/* 70190 8007F990 00000000 */  nop
/* 70194 8007F994 0F006018 */  blez       $v1, .L8007F9D4
/* 70198 8007F998 FFFF6324 */   addiu     $v1, $v1, -1
/* 7019C 8007F99C 40180300 */  sll        $v1, $v1, 1
/* 701A0 8007F9A0 2118A302 */  addu       $v1, $s5, $v1
/* 701A4 8007F9A4 440A6294 */  lhu        $v0, 0xa44($v1)
/* 701A8 8007F9A8 00000000 */  nop
/* 701AC 8007F9AC 01004224 */  addiu      $v0, $v0, 1
/* 701B0 8007F9B0 75FE0108 */  j          .L8007F9D4
/* 701B4 8007F9B4 440A62A4 */   sh        $v0, 0xa44($v1)
.L8007F9B8:
/* 701B8 8007F9B8 0A028294 */  lhu        $v0, 0x20a($a0)
/* 701BC 8007F9BC 00000000 */  nop
/* 701C0 8007F9C0 180082A4 */  sh         $v0, 0x18($a0)
/* 701C4 8007F9C4 0400A28E */  lw         $v0, 4($s5)
/* 701C8 8007F9C8 00000000 */  nop
/* 701CC 8007F9CC 01004224 */  addiu      $v0, $v0, 1
/* 701D0 8007F9D0 0400A2AE */  sw         $v0, 4($s5)
.L8007F9D4:
/* 701D4 8007F9D4 BC0AA28E */  lw         $v0, 0xabc($s5)
/* 701D8 8007F9D8 01003126 */  addiu      $s1, $s1, 1
/* 701DC 8007F9DC 2A102202 */  slt        $v0, $s1, $v0
/* 701E0 8007F9E0 C7FF4014 */  bnez       $v0, .L8007F900
/* 701E4 8007F9E4 02008424 */   addiu     $a0, $a0, 2
.L8007F9E8:
/* 701E8 8007F9E8 7CAA000C */  jal        vsync_8002a9f0
/* 701EC 8007F9EC 00000000 */   nop
/* 701F0 8007F9F0 FC0ABF8F */  lw         $ra, 0xafc($sp)
/* 701F4 8007F9F4 F80ABE8F */  lw         $fp, 0xaf8($sp)
/* 701F8 8007F9F8 F40AB78F */  lw         $s7, 0xaf4($sp)
/* 701FC 8007F9FC F00AB68F */  lw         $s6, 0xaf0($sp)
/* 70200 8007FA00 EC0AB58F */  lw         $s5, 0xaec($sp)
/* 70204 8007FA04 E80AB48F */  lw         $s4, 0xae8($sp)
/* 70208 8007FA08 E40AB38F */  lw         $s3, 0xae4($sp)
/* 7020C 8007FA0C E00AB28F */  lw         $s2, 0xae0($sp)
/* 70210 8007FA10 DC0AB18F */  lw         $s1, 0xadc($sp)
/* 70214 8007FA14 D80AB08F */  lw         $s0, 0xad8($sp)
/* 70218 8007FA18 0800E003 */  jr         $ra
/* 7021C 8007FA1C 000BBD27 */   addiu     $sp, $sp, 0xb00
