.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ad5ec
/* 9DDEC 800AD5EC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 9DDF0 800AD5F0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 9DDF4 800AD5F4 5800B18F */  lw         $s1, 0x58($sp)
/* 9DDF8 800AD5F8 3400B7AF */  sw         $s7, 0x34($sp)
/* 9DDFC 800AD5FC 21B88000 */  addu       $s7, $a0, $zero
/* 9DE00 800AD600 1800B0AF */  sw         $s0, 0x18($sp)
/* 9DE04 800AD604 5C00B08F */  lw         $s0, 0x5c($sp)
/* 9DE08 800AD608 3800BEAF */  sw         $fp, 0x38($sp)
/* 9DE0C 800AD60C 21F0C000 */  addu       $fp, $a2, $zero
/* 9DE10 800AD610 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 9DE14 800AD614 3000B6AF */  sw         $s6, 0x30($sp)
/* 9DE18 800AD618 2C00B5AF */  sw         $s5, 0x2c($sp)
/* 9DE1C 800AD61C 2800B4AF */  sw         $s4, 0x28($sp)
/* 9DE20 800AD620 2400B3AF */  sw         $s3, 0x24($sp)
/* 9DE24 800AD624 2000B2AF */  sw         $s2, 0x20($sp)
/* 9DE28 800AD628 4400A5AF */  sw         $a1, 0x44($sp)
/* 9DE2C 800AD62C AAAF020C */  jal        FUN_800abea8
/* 9DE30 800AD630 4C00A7AF */   sw        $a3, 0x4c($sp)
/* 9DE34 800AD634 A2014014 */  bnez       $v0, .L800ADCC0
/* 9DE38 800AD638 FFFF0224 */   addiu     $v0, $zero, -1
/* 9DE3C 800AD63C 2120E002 */  addu       $a0, $s7, $zero
/* 9DE40 800AD640 19B9020C */  jal        FUN_800ae464
/* 9DE44 800AD644 21280000 */   addu      $a1, $zero, $zero
/* 9DE48 800AD648 9D014010 */  beqz       $v0, .L800ADCC0
/* 9DE4C 800AD64C FFFF0224 */   addiu     $v0, $zero, -1
/* 9DE50 800AD650 38BA020C */  jal        FUN_800ae8e0
/* 9DE54 800AD654 21202002 */   addu      $a0, $s1, $zero
/* 9DE58 800AD658 21884000 */  addu       $s1, $v0, $zero
/* 9DE5C 800AD65C 44BA020C */  jal        FUN_800ae910
/* 9DE60 800AD660 21200002 */   addu      $a0, $s0, $zero
/* 9DE64 800AD664 4400A38F */  lw         $v1, 0x44($sp)
/* 9DE68 800AD668 21804000 */  addu       $s0, $v0, $zero
/* 9DE6C 800AD66C FFFF6224 */  addiu      $v0, $v1, -1
/* 9DE70 800AD670 F800422C */  sltiu      $v0, $v0, 0xf8
/* 9DE74 800AD674 14004010 */  beqz       $v0, .L800AD6C8
/* 9DE78 800AD678 9A3B023C */   lui       $v0, 0x3b9a
/* 9DE7C 800AD67C FFC94234 */  ori        $v0, $v0, 0xc9ff
/* 9DE80 800AD680 2B105E00 */  sltu       $v0, $v0, $fp
/* 9DE84 800AD684 10004014 */  bnez       $v0, .L800AD6C8
/* 9DE88 800AD688 00000000 */   nop
/* 9DE8C 800AD68C 5000A48F */  lw         $a0, 0x50($sp)
/* 9DE90 800AD690 00000000 */  nop
/* 9DE94 800AD694 0C008004 */  bltz       $a0, .L800AD6C8
/* 9DE98 800AD698 00000000 */   nop
/* 9DE9C 800AD69C 5400A58F */  lw         $a1, 0x54($sp)
/* 9DEA0 800AD6A0 00000000 */  nop
/* 9DEA4 800AD6A4 FFFFA224 */  addiu      $v0, $a1, -1
/* 9DEA8 800AD6A8 0700422C */  sltiu      $v0, $v0, 7
/* 9DEAC 800AD6AC 06004010 */  beqz       $v0, .L800AD6C8
/* 9DEB0 800AD6B0 0200222E */   sltiu     $v0, $s1, 2
/* 9DEB4 800AD6B4 05004010 */  beqz       $v0, .L800AD6CC
/* 9DEB8 800AD6B8 FFFF0324 */   addiu     $v1, $zero, -1
/* 9DEBC 800AD6BC 0300022E */  sltiu      $v0, $s0, 3
/* 9DEC0 800AD6C0 02004014 */  bnez       $v0, .L800AD6CC
/* 9DEC4 800AD6C4 21180000 */   addu      $v1, $zero, $zero
.L800AD6C8:
/* 9DEC8 800AD6C8 FFFF0324 */  addiu      $v1, $zero, -1
.L800AD6CC:
/* 9DECC 800AD6CC 7C016004 */  bltz       $v1, .L800ADCC0
/* 9DED0 800AD6D0 FFFF0224 */   addiu     $v0, $zero, -1
/* 9DED4 800AD6D4 0200E22E */  sltiu      $v0, $s7, 2
/* 9DED8 800AD6D8 79014010 */  beqz       $v0, .L800ADCC0
/* 9DEDC 800AD6DC FFFF0224 */   addiu     $v0, $zero, -1
/* 9DEE0 800AD6E0 4400A28F */  lw         $v0, 0x44($sp)
/* 9DEE4 800AD6E4 00000000 */  nop
/* 9DEE8 800AD6E8 74014010 */  beqz       $v0, .L800ADCBC
/* 9DEEC 800AD6EC FF001424 */   addiu     $s4, $zero, 0xff
/* 9DEF0 800AD6F0 4400A48F */  lw         $a0, 0x44($sp)
/* 9DEF4 800AD6F4 1BA2020C */  jal        FUN_800a886c
/* 9DEF8 800AD6F8 00000000 */   nop
/* 9DEFC 800AD6FC C0291700 */  sll        $a1, $s7, 7
/* 9DF00 800AD700 2118B700 */  addu       $v1, $a1, $s7
/* 9DF04 800AD704 C0390300 */  sll        $a3, $v1, 7
/* 9DF08 800AD708 1C80043C */  lui        $a0, %hi(D_801C47F8)
/* 9DF0C 800AD70C F8478824 */  addiu      $t0, $a0, %lo(D_801C47F8)
/* 9DF10 800AD710 80FE0325 */  addiu      $v1, $t0, -0x180
/* 9DF14 800AD714 2118E300 */  addu       $v1, $a3, $v1
/* 9DF18 800AD718 00196D24 */  addiu      $t5, $v1, 0x1900
/* 9DF1C 800AD71C 21784000 */  addu       $t7, $v0, $zero
/* 9DF20 800AD720 2120E800 */  addu       $a0, $a3, $t0
/* 9DF24 800AD724 01000224 */  addiu      $v0, $zero, 1
/* 9DF28 800AD728 1000A4AF */  sw         $a0, 0x10($sp)
/* 9DF2C 800AD72C 02002216 */  bne        $s1, $v0, .L800AD738
/* 9DF30 800AD730 1400A5AF */   sw        $a1, 0x14($sp)
/* 9DF34 800AD734 80296D24 */  addiu      $t5, $v1, 0x2980
.L800AD738:
/* 9DF38 800AD738 1D80043C */  lui        $a0, %hi(D_801CC778)
/* 9DF3C 800AD73C 78C78524 */  addiu      $a1, $a0, %lo(D_801CC778)
/* 9DF40 800AD740 C0181700 */  sll        $v1, $s7, 3
/* 9DF44 800AD744 23107700 */  subu       $v0, $v1, $s7
/* 9DF48 800AD748 80100200 */  sll        $v0, $v0, 2
/* 9DF4C 800AD74C 21105700 */  addu       $v0, $v0, $s7
/* 9DF50 800AD750 C0100200 */  sll        $v0, $v0, 3
/* 9DF54 800AD754 21104500 */  addu       $v0, $v0, $a1
/* 9DF58 800AD758 00004B8C */  lw         $t3, ($v0)
/* 9DF5C 800AD75C 5701E011 */  beqz       $t7, .L800ADCBC
/* 9DF60 800AD760 21286000 */   addu      $a1, $v1, $zero
/* 9DF64 800AD764 21500000 */  addu       $t2, $zero, $zero
/* 9DF68 800AD768 01000E24 */  addiu      $t6, $zero, 1
/* 9DF6C 800AD76C 2190E000 */  addu       $s2, $a3, $zero
/* 9DF70 800AD770 97291624 */  addiu      $s6, $zero, 0x2997
/* 9DF74 800AD774 18001524 */  addiu      $s5, $zero, 0x18
/* 9DF78 800AD778 01001324 */  addiu      $s3, $zero, 1
/* 9DF7C 800AD77C 21300000 */  addu       $a2, $zero, $zero
/* 9DF80 800AD780 00191924 */  addiu      $t9, $zero, 0x1900
/* 9DF84 800AD784 80291824 */  addiu      $t8, $zero, 0x2980
/* 9DF88 800AD788 1000AC25 */  addiu      $t4, $t5, 0x10
/* 9DF8C 800AD78C 01000226 */  addiu      $v0, $s0, 1
/* 9DF90 800AD790 2140A201 */  addu       $t0, $t5, $v0
/* 9DF94 800AD794 0400A925 */  addiu      $t1, $t5, 4
/* 9DF98 800AD798 2138A001 */  addu       $a3, $t5, $zero
.L800AD79C:
/* 9DF9C 800AD79C 0000E390 */  lbu        $v1, ($a3)
/* 9DFA0 800AD7A0 FF000224 */  addiu      $v0, $zero, 0xff
/* 9DFA4 800AD7A4 09006214 */  bne        $v1, $v0, .L800AD7CC
/* 9DFA8 800AD7A8 00000000 */   nop
/* 9DFAC 800AD7AC 5C008316 */  bne        $s4, $v1, .L800AD920
/* 9DFB0 800AD7B0 00000000 */   nop
/* 9DFB4 800AD7B4 03006011 */  beqz       $t3, .L800AD7C4
/* 9DFB8 800AD7B8 00000000 */   nop
/* 9DFBC 800AD7BC 48B60208 */  j          .L800AD920
/* 9DFC0 800AD7C0 FFFF6B25 */   addiu     $t3, $t3, -1
.L800AD7C4:
/* 9DFC4 800AD7C4 48B60208 */  j          .L800AD920
/* 9DFC8 800AD7C8 21A04001 */   addu      $s4, $t2, $zero
.L800AD7CC:
/* 9DFCC 800AD7CC B000622C */  sltiu      $v0, $v1, 0xb0
/* 9DFD0 800AD7D0 53004010 */  beqz       $v0, .L800AD920
/* 9DFD4 800AD7D4 00000000 */   nop
/* 9DFD8 800AD7D8 0000E290 */  lbu        $v0, ($a3)
/* 9DFDC 800AD7DC 1000A38F */  lw         $v1, 0x10($sp)
/* 9DFE0 800AD7E0 40100200 */  sll        $v0, $v0, 1
/* 9DFE4 800AD7E4 21104300 */  addu       $v0, $v0, $v1
/* 9DFE8 800AD7E8 00004494 */  lhu        $a0, ($v0)
/* 9DFEC 800AD7EC 1400E395 */  lhu        $v1, 0x14($t7)
/* 9DFF0 800AD7F0 00000000 */  nop
/* 9DFF4 800AD7F4 4A008314 */  bne        $a0, $v1, .L800AD920
/* 9DFF8 800AD7F8 80181000 */   sll       $v1, $s0, 2
/* 9DFFC 800AD7FC 21202301 */  addu       $a0, $t1, $v1
/* 9E000 800AD800 0000828C */  lw         $v0, ($a0)
/* 9E004 800AD804 4C00A58F */  lw         $a1, 0x4c($sp)
/* 9E008 800AD808 00000000 */  nop
/* 9E00C 800AD80C 2B10A200 */  sltu       $v0, $a1, $v0
/* 9E010 800AD810 02004010 */  beqz       $v0, .L800AD81C
/* 9E014 800AD814 00000000 */   nop
/* 9E018 800AD818 000080AC */  sw         $zero, ($a0)
.L800AD81C:
/* 9E01C 800AD81C 00000291 */  lbu        $v0, ($t0)
/* 9E020 800AD820 00000000 */  nop
/* 9E024 800AD824 0800422C */  sltiu      $v0, $v0, 8
/* 9E028 800AD828 02004014 */  bnez       $v0, .L800AD834
/* 9E02C 800AD82C 00000000 */   nop
/* 9E030 800AD830 000000A1 */  sb         $zero, ($t0)
.L800AD834:
/* 9E034 800AD834 0000828C */  lw         $v0, ($a0)
/* 9E038 800AD838 00000000 */  nop
/* 9E03C 800AD83C 2B105E00 */  sltu       $v0, $v0, $fp
/* 9E040 800AD840 77004010 */  beqz       $v0, .L800ADA20
/* 9E044 800AD844 40101000 */   sll       $v0, $s0, 1
/* 9E048 800AD848 00009EAC */  sw         $fp, ($a0)
/* 9E04C 800AD84C 5000A38F */  lw         $v1, 0x50($sp)
/* 9E050 800AD850 21108201 */  addu       $v0, $t4, $v0
/* 9E054 800AD854 000043A4 */  sh         $v1, ($v0)
/* 9E058 800AD858 1C80023C */  lui        $v0, %hi(D_801C4678)
/* 9E05C 800AD85C 5400A48F */  lw         $a0, 0x54($sp)
/* 9E060 800AD860 78464524 */  addiu      $a1, $v0, %lo(D_801C4678)
/* 9E064 800AD864 03002E16 */  bne        $s1, $t6, .L800AD874
/* 9E068 800AD868 000004A1 */   sb        $a0, ($t0)
/* 9E06C 800AD86C 1EB60208 */  j          .L800AD878
/* 9E070 800AD870 C2111800 */   srl       $v0, $t8, 7
.L800AD874:
/* 9E074 800AD874 C2111900 */  srl        $v0, $t9, 7
.L800AD878:
/* 9E078 800AD878 21105200 */  addu       $v0, $v0, $s2
/* 9E07C 800AD87C 1D80043C */  lui        $a0, %hi(D_801C8678)
/* 9E080 800AD880 78868424 */  addiu      $a0, $a0, %lo(D_801C8678)
/* 9E084 800AD884 21184400 */  addu       $v1, $v0, $a0
/* 9E088 800AD888 2110A200 */  addu       $v0, $a1, $v0
/* 9E08C 800AD88C 00006490 */  lbu        $a0, ($v1)
/* 9E090 800AD890 21286002 */  addu       $a1, $s3, $zero
/* 9E094 800AD894 02008434 */  ori        $a0, $a0, 2
/* 9E098 800AD898 004044A0 */  sb         $a0, 0x4000($v0)
/* 9E09C 800AD89C 03002E16 */  bne        $s1, $t6, .L800AD8AC
/* 9E0A0 800AD8A0 2120C000 */   addu      $a0, $a2, $zero
/* 9E0A4 800AD8A4 2DB60208 */  j          .L800AD8B4
/* 9E0A8 800AD8A8 C2191600 */   srl       $v1, $s6, 7
.L800AD8AC:
/* 9E0AC 800AD8AC FF18A226 */  addiu      $v0, $s5, 0x18ff
/* 9E0B0 800AD8B0 C2190200 */  srl        $v1, $v0, 7
.L800AD8B4:
/* 9E0B4 800AD8B4 07002E16 */  bne        $s1, $t6, .L800AD8D4
/* 9E0B8 800AD8B8 00198224 */   addiu     $v0, $a0, 0x1900
/* 9E0BC 800AD8BC 80298224 */  addiu      $v0, $a0, 0x2980
/* 9E0C0 800AD8C0 C2110200 */  srl        $v0, $v0, 7
/* 9E0C4 800AD8C4 06006214 */  bne        $v1, $v0, .L800AD8E0
/* 9E0C8 800AD8C8 1C80023C */   lui       $v0, 0x801c
/* 9E0CC 800AD8CC 30B70208 */  j          .L800ADCC0
/* 9E0D0 800AD8D0 01000224 */   addiu     $v0, $zero, 1
.L800AD8D4:
/* 9E0D4 800AD8D4 C2110200 */  srl        $v0, $v0, 7
/* 9E0D8 800AD8D8 EC006210 */  beq        $v1, $v0, .L800ADC8C
/* 9E0DC 800AD8DC 1C80023C */   lui       $v0, %hi(D_801C4678)
.L800AD8E0:
/* 9E0E0 800AD8E0 78464624 */  addiu      $a2, $v0, %lo(D_801C4678)
/* 9E0E4 800AD8E4 40100500 */  sll        $v0, $a1, 1
/* 9E0E8 800AD8E8 21104500 */  addu       $v0, $v0, $a1
/* 9E0EC 800AD8EC 03002E16 */  bne        $s1, $t6, .L800AD8FC
/* 9E0F0 800AD8F0 C0100200 */   sll       $v0, $v0, 3
/* 9E0F4 800AD8F4 40B60208 */  j          .L800AD900
/* 9E0F8 800AD8F8 7F294224 */   addiu     $v0, $v0, 0x297f
.L800AD8FC:
/* 9E0FC 800AD8FC FF184224 */  addiu      $v0, $v0, 0x18ff
.L800AD900:
/* 9E100 800AD900 C2110200 */  srl        $v0, $v0, 7
/* 9E104 800AD904 21105200 */  addu       $v0, $v0, $s2
/* 9E108 800AD908 1D80043C */  lui        $a0, %hi(D_801C8678)
/* 9E10C 800AD90C 78868424 */  addiu      $a0, $a0, %lo(D_801C8678)
/* 9E110 800AD910 21184400 */  addu       $v1, $v0, $a0
/* 9E114 800AD914 00006490 */  lbu        $a0, ($v1)
/* 9E118 800AD918 21B70208 */  j          .L800ADC84
/* 9E11C 800AD91C 2110C200 */   addu      $v0, $a2, $v0
.L800AD920:
/* 9E120 800AD920 1800D626 */  addiu      $s6, $s6, 0x18
/* 9E124 800AD924 1800B526 */  addiu      $s5, $s5, 0x18
/* 9E128 800AD928 01007326 */  addiu      $s3, $s3, 1
/* 9E12C 800AD92C 1800C624 */  addiu      $a2, $a2, 0x18
/* 9E130 800AD930 18003927 */  addiu      $t9, $t9, 0x18
/* 9E134 800AD934 18001827 */  addiu      $t8, $t8, 0x18
/* 9E138 800AD938 18008C25 */  addiu      $t4, $t4, 0x18
/* 9E13C 800AD93C 18000825 */  addiu      $t0, $t0, 0x18
/* 9E140 800AD940 18002925 */  addiu      $t1, $t1, 0x18
/* 9E144 800AD944 01004A25 */  addiu      $t2, $t2, 1
/* 9E148 800AD948 B0004229 */  slti       $v0, $t2, 0xb0
/* 9E14C 800AD94C 93FF4014 */  bnez       $v0, .L800AD79C
/* 9E150 800AD950 1800E724 */   addiu     $a3, $a3, 0x18
/* 9E154 800AD954 1D80023C */  lui        $v0, %hi(D_801CC778)
/* 9E158 800AD958 78C74424 */  addiu      $a0, $v0, %lo(D_801CC778)
/* 9E15C 800AD95C 2310B700 */  subu       $v0, $a1, $s7
/* 9E160 800AD960 80100200 */  sll        $v0, $v0, 2
/* 9E164 800AD964 21105700 */  addu       $v0, $v0, $s7
/* 9E168 800AD968 C0380200 */  sll        $a3, $v0, 3
/* 9E16C 800AD96C 2118E400 */  addu       $v1, $a3, $a0
/* 9E170 800AD970 0000628C */  lw         $v0, ($v1)
/* 9E174 800AD974 00000000 */  nop
/* 9E178 800AD978 32004018 */  blez       $v0, .L800ADA44
/* 9E17C 800AD97C 21500000 */   addu      $t2, $zero, $zero
/* 9E180 800AD980 0400A925 */  addiu      $t1, $t5, 4
/* 9E184 800AD984 21600000 */  addu       $t4, $zero, $zero
/* 9E188 800AD988 21588000 */  addu       $t3, $a0, $zero
/* 9E18C 800AD98C 08006225 */  addiu      $v0, $t3, 8
/* 9E190 800AD990 2140E000 */  addu       $t0, $a3, $zero
/* 9E194 800AD994 21200201 */  addu       $a0, $t0, $v0
.L800AD998:
/* 9E198 800AD998 0000828C */  lw         $v0, ($a0)
/* 9E19C 800AD99C 4400A38F */  lw         $v1, 0x44($sp)
/* 9E1A0 800AD9A0 00000000 */  nop
/* 9E1A4 800AD9A4 20004314 */  bne        $v0, $v1, .L800ADA28
/* 9E1A8 800AD9A8 21100B01 */   addu      $v0, $t0, $t3
/* 9E1AC 800AD9AC 80301000 */  sll        $a2, $s0, 2
/* 9E1B0 800AD9B0 21288001 */  addu       $a1, $t4, $zero
/* 9E1B4 800AD9B4 2110C500 */  addu       $v0, $a2, $a1
/* 9E1B8 800AD9B8 21104800 */  addu       $v0, $v0, $t0
/* 9E1BC 800AD9BC 44006425 */  addiu      $a0, $t3, 0x44
/* 9E1C0 800AD9C0 21384400 */  addu       $a3, $v0, $a0
/* 9E1C4 800AD9C4 0000E38C */  lw         $v1, ($a3)
/* 9E1C8 800AD9C8 4C00A48F */  lw         $a0, 0x4c($sp)
/* 9E1CC 800AD9CC 00000000 */  nop
/* 9E1D0 800AD9D0 2B188300 */  sltu       $v1, $a0, $v1
/* 9E1D4 800AD9D4 02006010 */  beqz       $v1, .L800AD9E0
/* 9E1D8 800AD9D8 21102601 */   addu      $v0, $t1, $a2
/* 9E1DC 800AD9DC 000040AC */  sw         $zero, ($v0)
.L800AD9E0:
/* 9E1E0 800AD9E0 21100502 */  addu       $v0, $s0, $a1
/* 9E1E4 800AD9E4 21104800 */  addu       $v0, $v0, $t0
/* 9E1E8 800AD9E8 41006425 */  addiu      $a0, $t3, 0x41
/* 9E1EC 800AD9EC 21204400 */  addu       $a0, $v0, $a0
/* 9E1F0 800AD9F0 00008390 */  lbu        $v1, ($a0)
/* 9E1F4 800AD9F4 00000000 */  nop
/* 9E1F8 800AD9F8 0800632C */  sltiu      $v1, $v1, 8
/* 9E1FC 800AD9FC 03006014 */  bnez       $v1, .L800ADA0C
/* 9E200 800ADA00 2110AD00 */   addu      $v0, $a1, $t5
/* 9E204 800ADA04 21105000 */  addu       $v0, $v0, $s0
/* 9E208 800ADA08 010040A0 */  sb         $zero, 1($v0)
.L800ADA0C:
/* 9E20C 800ADA0C 0000E28C */  lw         $v0, ($a3)
/* 9E210 800ADA10 00000000 */  nop
/* 9E214 800ADA14 2B105E00 */  sltu       $v0, $v0, $fp
/* 9E218 800ADA18 9E004014 */  bnez       $v0, .L800ADC94
/* 9E21C 800ADA1C 40181000 */   sll       $v1, $s0, 1
.L800ADA20:
/* 9E220 800ADA20 30B70208 */  j          .L800ADCC0
/* 9E224 800ADA24 21100000 */   addu      $v0, $zero, $zero
.L800ADA28:
/* 9E228 800ADA28 18002925 */  addiu      $t1, $t1, 0x18
/* 9E22C 800ADA2C 18008C25 */  addiu      $t4, $t4, 0x18
/* 9E230 800ADA30 0000438C */  lw         $v1, ($v0)
/* 9E234 800ADA34 01004A25 */  addiu      $t2, $t2, 1
/* 9E238 800ADA38 2A184301 */  slt        $v1, $t2, $v1
/* 9E23C 800ADA3C D6FF6014 */  bnez       $v1, .L800AD998
/* 9E240 800ADA40 04008424 */   addiu     $a0, $a0, 4
.L800ADA44:
/* 9E244 800ADA44 FF000224 */  addiu      $v0, $zero, 0xff
/* 9E248 800ADA48 9C008212 */  beq        $s4, $v0, .L800ADCBC
/* 9E24C 800ADA4C 1D80023C */   lui       $v0, %hi(D_801CC778)
/* 9E250 800ADA50 78C74624 */  addiu      $a2, $v0, %lo(D_801CC778)
/* 9E254 800ADA54 2328B700 */  subu       $a1, $a1, $s7
/* 9E258 800ADA58 80280500 */  sll        $a1, $a1, 2
/* 9E25C 800ADA5C 2128B700 */  addu       $a1, $a1, $s7
/* 9E260 800ADA60 C0280500 */  sll        $a1, $a1, 3
/* 9E264 800ADA64 2138A600 */  addu       $a3, $a1, $a2
/* 9E268 800ADA68 0000E28C */  lw         $v0, ($a3)
/* 9E26C 800ADA6C 4400A38F */  lw         $v1, 0x44($sp)
/* 9E270 800ADA70 80100200 */  sll        $v0, $v0, 2
/* 9E274 800ADA74 21104500 */  addu       $v0, $v0, $a1
/* 9E278 800ADA78 2110C200 */  addu       $v0, $a2, $v0
/* 9E27C 800ADA7C 080043AC */  sw         $v1, 8($v0)
/* 9E280 800ADA80 0000E38C */  lw         $v1, ($a3)
/* 9E284 800ADA84 00000000 */  nop
/* 9E288 800ADA88 80180300 */  sll        $v1, $v1, 2
/* 9E28C 800ADA8C 21186500 */  addu       $v1, $v1, $a1
/* 9E290 800ADA90 2118C300 */  addu       $v1, $a2, $v1
/* 9E294 800ADA94 240074AC */  sw         $s4, 0x24($v1)
/* 9E298 800ADA98 0000E48C */  lw         $a0, ($a3)
/* 9E29C 800ADA9C 00000000 */  nop
/* 9E2A0 800ADAA0 40100400 */  sll        $v0, $a0, 1
/* 9E2A4 800ADAA4 21104400 */  addu       $v0, $v0, $a0
/* 9E2A8 800ADAA8 C0100200 */  sll        $v0, $v0, 3
/* 9E2AC 800ADAAC 21104500 */  addu       $v0, $v0, $a1
/* 9E2B0 800ADAB0 21104600 */  addu       $v0, $v0, $a2
/* 9E2B4 800ADAB4 400054A0 */  sb         $s4, 0x40($v0)
/* 9E2B8 800ADAB8 0000E48C */  lw         $a0, ($a3)
/* 9E2BC 800ADABC 80181000 */  sll        $v1, $s0, 2
/* 9E2C0 800ADAC0 40100400 */  sll        $v0, $a0, 1
/* 9E2C4 800ADAC4 21104400 */  addu       $v0, $v0, $a0
/* 9E2C8 800ADAC8 C0100200 */  sll        $v0, $v0, 3
/* 9E2CC 800ADACC 21186200 */  addu       $v1, $v1, $v0
/* 9E2D0 800ADAD0 21186500 */  addu       $v1, $v1, $a1
/* 9E2D4 800ADAD4 2118C300 */  addu       $v1, $a2, $v1
/* 9E2D8 800ADAD8 44007EAC */  sw         $fp, 0x44($v1)
/* 9E2DC 800ADADC 0000E48C */  lw         $a0, ($a3)
/* 9E2E0 800ADAE0 40181000 */  sll        $v1, $s0, 1
/* 9E2E4 800ADAE4 40100400 */  sll        $v0, $a0, 1
/* 9E2E8 800ADAE8 21104400 */  addu       $v0, $v0, $a0
/* 9E2EC 800ADAEC C0100200 */  sll        $v0, $v0, 3
/* 9E2F0 800ADAF0 21186200 */  addu       $v1, $v1, $v0
/* 9E2F4 800ADAF4 21186500 */  addu       $v1, $v1, $a1
/* 9E2F8 800ADAF8 5000A48F */  lw         $a0, 0x50($sp)
/* 9E2FC 800ADAFC 2118C300 */  addu       $v1, $a2, $v1
/* 9E300 800ADB00 500064A4 */  sh         $a0, 0x50($v1)
/* 9E304 800ADB04 0000E48C */  lw         $a0, ($a3)
/* 9E308 800ADB08 00000000 */  nop
/* 9E30C 800ADB0C 40100400 */  sll        $v0, $a0, 1
/* 9E310 800ADB10 21104400 */  addu       $v0, $v0, $a0
/* 9E314 800ADB14 C0100200 */  sll        $v0, $v0, 3
/* 9E318 800ADB18 21100202 */  addu       $v0, $s0, $v0
/* 9E31C 800ADB1C 21104500 */  addu       $v0, $v0, $a1
/* 9E320 800ADB20 5400A58F */  lw         $a1, 0x54($sp)
/* 9E324 800ADB24 2130C200 */  addu       $a2, $a2, $v0
/* 9E328 800ADB28 4100C5A0 */  sb         $a1, 0x41($a2)
/* 9E32C 800ADB2C 0000E28C */  lw         $v0, ($a3)
/* 9E330 800ADB30 00000000 */  nop
/* 9E334 800ADB34 01004224 */  addiu      $v0, $v0, 1
/* 9E338 800ADB38 0000E2AC */  sw         $v0, ($a3)
/* 9E33C 800ADB3C 08004228 */  slti       $v0, $v0, 8
/* 9E340 800ADB40 03004014 */  bnez       $v0, .L800ADB50
/* 9E344 800ADB44 00000000 */   nop
/* 9E348 800ADB48 07000224 */  addiu      $v0, $zero, 7
/* 9E34C 800ADB4C 0000E2AC */  sw         $v0, ($a3)
.L800ADB50:
/* 9E350 800ADB50 1C80073C */  lui        $a3, %hi(D_801C4678)
/* 9E354 800ADB54 7846E624 */  addiu      $a2, $a3, %lo(D_801C4678)
/* 9E358 800ADB58 C0008426 */  addiu      $a0, $s4, 0xc0
/* 9E35C 800ADB5C 82210400 */  srl        $a0, $a0, 6
/* 9E360 800ADB60 1400A28F */  lw         $v0, 0x14($sp)
/* 9E364 800ADB64 0040C624 */  addiu      $a2, $a2, 0x4000
/* 9E368 800ADB68 21285700 */  addu       $a1, $v0, $s7
/* 9E36C 800ADB6C C0290500 */  sll        $a1, $a1, 7
/* 9E370 800ADB70 21208500 */  addu       $a0, $a0, $a1
/* 9E374 800ADB74 21208600 */  addu       $a0, $a0, $a2
/* 9E378 800ADB78 18008226 */  addiu      $v0, $s4, 0x18
/* 9E37C 800ADB7C 82100200 */  srl        $v0, $v0, 2
/* 9E380 800ADB80 21104500 */  addu       $v0, $v0, $a1
/* 9E384 800ADB84 00008390 */  lbu        $v1, ($a0)
/* 9E388 800ADB88 21104600 */  addu       $v0, $v0, $a2
/* 9E38C 800ADB8C 02006334 */  ori        $v1, $v1, 2
/* 9E390 800ADB90 000083A0 */  sb         $v1, ($a0)
/* 9E394 800ADB94 40201400 */  sll        $a0, $s4, 1
/* 9E398 800ADB98 21209400 */  addu       $a0, $a0, $s4
/* 9E39C 800ADB9C 00004390 */  lbu        $v1, ($v0)
/* 9E3A0 800ADBA0 C0400400 */  sll        $t0, $a0, 3
/* 9E3A4 800ADBA4 02006334 */  ori        $v1, $v1, 2
/* 9E3A8 800ADBA8 000043A0 */  sb         $v1, ($v0)
/* 9E3AC 800ADBAC 00190225 */  addiu      $v0, $t0, 0x1900
/* 9E3B0 800ADBB0 C2110200 */  srl        $v0, $v0, 7
/* 9E3B4 800ADBB4 21104500 */  addu       $v0, $v0, $a1
/* 9E3B8 800ADBB8 21104600 */  addu       $v0, $v0, $a2
/* 9E3BC 800ADBBC 80290325 */  addiu      $v1, $t0, 0x2980
/* 9E3C0 800ADBC0 C2190300 */  srl        $v1, $v1, 7
/* 9E3C4 800ADBC4 21186500 */  addu       $v1, $v1, $a1
/* 9E3C8 800ADBC8 00004490 */  lbu        $a0, ($v0)
/* 9E3CC 800ADBCC 21186600 */  addu       $v1, $v1, $a2
/* 9E3D0 800ADBD0 02008434 */  ori        $a0, $a0, 2
/* 9E3D4 800ADBD4 000044A0 */  sb         $a0, ($v0)
/* 9E3D8 800ADBD8 00006290 */  lbu        $v0, ($v1)
/* 9E3DC 800ADBDC 01008426 */  addiu      $a0, $s4, 1
/* 9E3E0 800ADBE0 02004234 */  ori        $v0, $v0, 2
/* 9E3E4 800ADBE4 000062A0 */  sb         $v0, ($v1)
/* 9E3E8 800ADBE8 40100400 */  sll        $v0, $a0, 1
/* 9E3EC 800ADBEC 21104400 */  addu       $v0, $v0, $a0
/* 9E3F0 800ADBF0 01000324 */  addiu      $v1, $zero, 1
/* 9E3F4 800ADBF4 03002316 */  bne        $s1, $v1, .L800ADC04
/* 9E3F8 800ADBF8 C0100200 */   sll       $v0, $v0, 3
/* 9E3FC 800ADBFC 02B70208 */  j          .L800ADC08
/* 9E400 800ADC00 7F294224 */   addiu     $v0, $v0, 0x297f
.L800ADC04:
/* 9E404 800ADC04 FF184224 */  addiu      $v0, $v0, 0x18ff
.L800ADC08:
/* 9E408 800ADC08 C2190200 */  srl        $v1, $v0, 7
/* 9E40C 800ADC0C 01000224 */  addiu      $v0, $zero, 1
/* 9E410 800ADC10 07002216 */  bne        $s1, $v0, .L800ADC30
/* 9E414 800ADC14 00190225 */   addiu     $v0, $t0, 0x1900
/* 9E418 800ADC18 80290225 */  addiu      $v0, $t0, 0x2980
/* 9E41C 800ADC1C C2110200 */  srl        $v0, $v0, 7
/* 9E420 800ADC20 06006214 */  bne        $v1, $v0, .L800ADC3C
/* 9E424 800ADC24 7846E524 */   addiu     $a1, $a3, 0x4678
/* 9E428 800ADC28 30B70208 */  j          .L800ADCC0
/* 9E42C 800ADC2C 01000224 */   addiu     $v0, $zero, 1
.L800ADC30:
/* 9E430 800ADC30 C2110200 */  srl        $v0, $v0, 7
/* 9E434 800ADC34 15006210 */  beq        $v1, $v0, .L800ADC8C
/* 9E438 800ADC38 7846E524 */   addiu     $a1, $a3, 0x4678
.L800ADC3C:
/* 9E43C 800ADC3C 40100400 */  sll        $v0, $a0, 1
/* 9E440 800ADC40 21104400 */  addu       $v0, $v0, $a0
/* 9E444 800ADC44 01000324 */  addiu      $v1, $zero, 1
/* 9E448 800ADC48 03002316 */  bne        $s1, $v1, .L800ADC58
/* 9E44C 800ADC4C C0100200 */   sll       $v0, $v0, 3
/* 9E450 800ADC50 17B70208 */  j          .L800ADC5C
/* 9E454 800ADC54 7F294224 */   addiu     $v0, $v0, 0x297f
.L800ADC58:
/* 9E458 800ADC58 FF184224 */  addiu      $v0, $v0, 0x18ff
.L800ADC5C:
/* 9E45C 800ADC5C C2210200 */  srl        $a0, $v0, 7
/* 9E460 800ADC60 1400A38F */  lw         $v1, 0x14($sp)
/* 9E464 800ADC64 00000000 */  nop
/* 9E468 800ADC68 21107700 */  addu       $v0, $v1, $s7
/* 9E46C 800ADC6C C0110200 */  sll        $v0, $v0, 7
/* 9E470 800ADC70 21108200 */  addu       $v0, $a0, $v0
/* 9E474 800ADC74 7846E324 */  addiu      $v1, $a3, 0x4678
/* 9E478 800ADC78 21186200 */  addu       $v1, $v1, $v0
/* 9E47C 800ADC7C 00406490 */  lbu        $a0, 0x4000($v1)
/* 9E480 800ADC80 2110A200 */  addu       $v0, $a1, $v0
.L800ADC84:
/* 9E484 800ADC84 02008434 */  ori        $a0, $a0, 2
/* 9E488 800ADC88 004044A0 */  sb         $a0, 0x4000($v0)
.L800ADC8C:
/* 9E48C 800ADC8C 30B70208 */  j          .L800ADCC0
/* 9E490 800ADC90 01000224 */   addiu     $v0, $zero, 1
.L800ADC94:
/* 9E494 800ADC94 21186C00 */  addu       $v1, $v1, $t4
/* 9E498 800ADC98 21186800 */  addu       $v1, $v1, $t0
/* 9E49C 800ADC9C 0000FEAC */  sw         $fp, ($a3)
/* 9E4A0 800ADCA0 5000A58F */  lw         $a1, 0x50($sp)
/* 9E4A4 800ADCA4 21186301 */  addu       $v1, $t3, $v1
/* 9E4A8 800ADCA8 500065A4 */  sh         $a1, 0x50($v1)
/* 9E4AC 800ADCAC 5400A38F */  lw         $v1, 0x54($sp)
/* 9E4B0 800ADCB0 01000224 */  addiu      $v0, $zero, 1
/* 9E4B4 800ADCB4 30B70208 */  j          .L800ADCC0
/* 9E4B8 800ADCB8 000083A0 */   sb        $v1, ($a0)
.L800ADCBC:
/* 9E4BC 800ADCBC FFFF0224 */  addiu      $v0, $zero, -1
.L800ADCC0:
/* 9E4C0 800ADCC0 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 9E4C4 800ADCC4 3800BE8F */  lw         $fp, 0x38($sp)
/* 9E4C8 800ADCC8 3400B78F */  lw         $s7, 0x34($sp)
/* 9E4CC 800ADCCC 3000B68F */  lw         $s6, 0x30($sp)
/* 9E4D0 800ADCD0 2C00B58F */  lw         $s5, 0x2c($sp)
/* 9E4D4 800ADCD4 2800B48F */  lw         $s4, 0x28($sp)
/* 9E4D8 800ADCD8 2400B38F */  lw         $s3, 0x24($sp)
/* 9E4DC 800ADCDC 2000B28F */  lw         $s2, 0x20($sp)
/* 9E4E0 800ADCE0 1C00B18F */  lw         $s1, 0x1c($sp)
/* 9E4E4 800ADCE4 1800B08F */  lw         $s0, 0x18($sp)
/* 9E4E8 800ADCE8 0800E003 */  jr         $ra
/* 9E4EC 800ADCEC 4000BD27 */   addiu     $sp, $sp, 0x40
