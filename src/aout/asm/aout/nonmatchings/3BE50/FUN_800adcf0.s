.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800adcf0
/* 9E4F0 800ADCF0 70FEBD27 */  addiu      $sp, $sp, -0x190
/* 9E4F4 800ADCF4 A001A28F */  lw         $v0, 0x1a0($sp)
/* 9E4F8 800ADCF8 7001B2AF */  sw         $s2, 0x170($sp)
/* 9E4FC 800ADCFC A401B293 */  lbu        $s2, 0x1a4($sp)
/* 9E500 800ADD00 7C01B5AF */  sw         $s5, 0x17c($sp)
/* 9E504 800ADD04 21A88000 */  addu       $s5, $a0, $zero
/* 9E508 800ADD08 8801BEAF */  sw         $fp, 0x188($sp)
/* 9E50C 800ADD0C 21F0A000 */  addu       $fp, $a1, $zero
/* 9E510 800ADD10 7801B4AF */  sw         $s4, 0x178($sp)
/* 9E514 800ADD14 21A0C000 */  addu       $s4, $a2, $zero
/* 9E518 800ADD18 8C01BFAF */  sw         $ra, 0x18c($sp)
/* 9E51C 800ADD1C 8401B7AF */  sw         $s7, 0x184($sp)
/* 9E520 800ADD20 8001B6AF */  sw         $s6, 0x180($sp)
/* 9E524 800ADD24 7401B3AF */  sw         $s3, 0x174($sp)
/* 9E528 800ADD28 6C01B1AF */  sw         $s1, 0x16c($sp)
/* 9E52C 800ADD2C 6801B0AF */  sw         $s0, 0x168($sp)
/* 9E530 800ADD30 FFFF4224 */  addiu      $v0, $v0, -1
/* 9E534 800ADD34 43180200 */  sra        $v1, $v0, 1
/* 9E538 800ADD38 02006104 */  bgez       $v1, .L800ADD44
/* 9E53C 800ADD3C 21106000 */   addu      $v0, $v1, $zero
/* 9E540 800ADD40 3F006224 */  addiu      $v0, $v1, 0x3f
.L800ADD44:
/* 9E544 800ADD44 83990200 */  sra        $s3, $v0, 6
/* 9E548 800ADD48 80111300 */  sll        $v0, $s3, 6
/* 9E54C 800ADD4C 23986200 */  subu       $s3, $v1, $v0
/* 9E550 800ADD50 2400A827 */  addiu      $t0, $sp, 0x24
/* 9E554 800ADD54 1D80063C */  lui        $a2, %hi(D_801C8078)
/* 9E558 800ADD58 7880C424 */  addiu      $a0, $a2, %lo(D_801C8078)
/* 9E55C 800ADD5C C0291500 */  sll        $a1, $s5, 7
/* 9E560 800ADD60 2110B500 */  addu       $v0, $a1, $s5
/* 9E564 800ADD64 C0110200 */  sll        $v0, $v0, 7
/* 9E568 800ADD68 21384400 */  addu       $a3, $v0, $a0
/* 9E56C 800ADD6C 41006328 */  slti       $v1, $v1, 0x41
/* 9E570 800ADD70 01007638 */  xori       $s6, $v1, 1
/* 9E574 800ADD74 0300E230 */  andi       $v0, $a3, 3
/* 9E578 800ADD78 19004010 */  beqz       $v0, .L800ADDE0
/* 9E57C 800ADD7C 21B8A000 */   addu      $s7, $a1, $zero
/* 9E580 800ADD80 F000E224 */  addiu      $v0, $a3, 0xf0
/* 9E584 800ADD84 1801A427 */  addiu      $a0, $sp, 0x118
/* 9E588 800ADD88 4001B127 */  addiu      $s1, $sp, 0x140
.L800ADD8C:
/* 9E58C 800ADD8C 0300E388 */  lwl        $v1, 3($a3)
/* 9E590 800ADD90 0000E398 */  lwr        $v1, ($a3)
/* 9E594 800ADD94 0700E588 */  lwl        $a1, 7($a3)
/* 9E598 800ADD98 0400E598 */  lwr        $a1, 4($a3)
/* 9E59C 800ADD9C 0B00E688 */  lwl        $a2, 0xb($a3)
/* 9E5A0 800ADDA0 0800E698 */  lwr        $a2, 8($a3)
/* 9E5A4 800ADDA4 0F00E988 */  lwl        $t1, 0xf($a3)
/* 9E5A8 800ADDA8 0C00E998 */  lwr        $t1, 0xc($a3)
/* 9E5AC 800ADDAC 030003A9 */  swl        $v1, 3($t0)
/* 9E5B0 800ADDB0 000003B9 */  swr        $v1, ($t0)
/* 9E5B4 800ADDB4 070005A9 */  swl        $a1, 7($t0)
/* 9E5B8 800ADDB8 040005B9 */  swr        $a1, 4($t0)
/* 9E5BC 800ADDBC 0B0006A9 */  swl        $a2, 0xb($t0)
/* 9E5C0 800ADDC0 080006B9 */  swr        $a2, 8($t0)
/* 9E5C4 800ADDC4 0F0009A9 */  swl        $t1, 0xf($t0)
/* 9E5C8 800ADDC8 0C0009B9 */  swr        $t1, 0xc($t0)
/* 9E5CC 800ADDCC 1000E724 */  addiu      $a3, $a3, 0x10
/* 9E5D0 800ADDD0 EEFFE214 */  bne        $a3, $v0, .L800ADD8C
/* 9E5D4 800ADDD4 10000825 */   addiu     $t0, $t0, 0x10
/* 9E5D8 800ADDD8 86B70208 */  j          .L800ADE18
/* 9E5DC 800ADDDC 00000000 */   nop
.L800ADDE0:
/* 9E5E0 800ADDE0 F000E224 */  addiu      $v0, $a3, 0xf0
/* 9E5E4 800ADDE4 1801A427 */  addiu      $a0, $sp, 0x118
/* 9E5E8 800ADDE8 4001B127 */  addiu      $s1, $sp, 0x140
.L800ADDEC:
/* 9E5EC 800ADDEC 0000E38C */  lw         $v1, ($a3)
/* 9E5F0 800ADDF0 0400E58C */  lw         $a1, 4($a3)
/* 9E5F4 800ADDF4 0800E68C */  lw         $a2, 8($a3)
/* 9E5F8 800ADDF8 0C00E98C */  lw         $t1, 0xc($a3)
/* 9E5FC 800ADDFC 000003AD */  sw         $v1, ($t0)
/* 9E600 800ADE00 040005AD */  sw         $a1, 4($t0)
/* 9E604 800ADE04 080006AD */  sw         $a2, 8($t0)
/* 9E608 800ADE08 0C0009AD */  sw         $t1, 0xc($t0)
/* 9E60C 800ADE0C 1000E724 */  addiu      $a3, $a3, 0x10
/* 9E610 800ADE10 F6FFE214 */  bne        $a3, $v0, .L800ADDEC
/* 9E614 800ADE14 10000825 */   addiu     $t0, $t0, 0x10
.L800ADE18:
/* 9E618 800ADE18 8CF0020C */  jal        FUN_800bc230
/* 9E61C 800ADE1C 00000000 */   nop
/* 9E620 800ADE20 21204002 */  addu       $a0, $s2, $zero
/* 9E624 800ADE24 2C01B097 */  lhu        $s0, 0x12c($sp)
/* 9E628 800ADE28 2801A297 */  lhu        $v0, 0x128($sp)
/* 9E62C 800ADE2C 6C071026 */  addiu      $s0, $s0, 0x76c
/* 9E630 800ADE30 00811000 */  sll        $s0, $s0, 4
/* 9E634 800ADE34 01004224 */  addiu      $v0, $v0, 1
/* 9E638 800ADE38 25800202 */  or         $s0, $s0, $v0
/* 9E63C 800ADE3C 38BA020C */  jal        FUN_800ae8e0
/* 9E640 800ADE40 FFFF1032 */   andi      $s0, $s0, 0xffff
/* 9E644 800ADE44 FF005230 */  andi       $s2, $v0, 0xff
/* 9E648 800ADE48 00008396 */  lhu        $v1, ($s4)
/* 9E64C 800ADE4C 04008496 */  lhu        $a0, 4($s4)
/* 9E650 800ADE50 08008596 */  lhu        $a1, 8($s4)
/* 9E654 800ADE54 01000224 */  addiu      $v0, $zero, 1
/* 9E658 800ADE58 1000BEAF */  sw         $fp, 0x10($sp)
/* 9E65C 800ADE5C 1A00B0A7 */  sh         $s0, 0x1a($sp)
/* 9E660 800ADE60 1400A3A7 */  sh         $v1, 0x14($sp)
/* 9E664 800ADE64 1600A4A7 */  sh         $a0, 0x16($sp)
/* 9E668 800ADE68 0B00C216 */  bne        $s6, $v0, .L800ADE98
/* 9E66C 800ADE6C 1800A5A7 */   sh        $a1, 0x18($sp)
/* 9E670 800ADE70 53000624 */  addiu      $a2, $zero, 0x53
/* 9E674 800ADE74 0180023C */  lui        $v0, %hi(D_80016E88)
/* 9E678 800ADE78 02004012 */  beqz       $s2, .L800ADE84
/* 9E67C 800ADE7C 886E4524 */   addiu     $a1, $v0, %lo(D_80016E88)
/* 9E680 800ADE80 44000624 */  addiu      $a2, $zero, 0x44
.L800ADE84:
/* 9E684 800ADE84 21202002 */  addu       $a0, $s1, $zero
/* 9E688 800ADE88 8E81000C */  jal        sprintf
/* 9E68C 800ADE8C 21386002 */   addu      $a3, $s3, $zero
/* 9E690 800ADE90 AFB70208 */  j          .L800ADEBC
/* 9E694 800ADE94 9A3B023C */   lui       $v0, 0x3b9a
.L800ADE98:
/* 9E698 800ADE98 53000624 */  addiu      $a2, $zero, 0x53
/* 9E69C 800ADE9C 0180023C */  lui        $v0, %hi(D_80016E94)
/* 9E6A0 800ADEA0 02004012 */  beqz       $s2, .L800ADEAC
/* 9E6A4 800ADEA4 946E4524 */   addiu     $a1, $v0, %lo(D_80016E94)
/* 9E6A8 800ADEA8 44000624 */  addiu      $a2, $zero, 0x44
.L800ADEAC:
/* 9E6AC 800ADEAC 21202002 */  addu       $a0, $s1, $zero
/* 9E6B0 800ADEB0 8E81000C */  jal        sprintf
/* 9E6B4 800ADEB4 21386002 */   addu      $a3, $s3, $zero
/* 9E6B8 800ADEB8 9A3B023C */  lui        $v0, 0x3b9a
.L800ADEBC:
/* 9E6BC 800ADEBC FFC94234 */  ori        $v0, $v0, 0xc9ff
/* 9E6C0 800ADEC0 21400000 */  addu       $t0, $zero, $zero
/* 9E6C4 800ADEC4 4001A58F */  lw         $a1, 0x140($sp)
/* 9E6C8 800ADEC8 4401A68F */  lw         $a2, 0x144($sp)
/* 9E6CC 800ADECC 1000A78F */  lw         $a3, 0x10($sp)
/* 9E6D0 800ADED0 1400A38F */  lw         $v1, 0x14($sp)
/* 9E6D4 800ADED4 1800A48F */  lw         $a0, 0x18($sp)
/* 9E6D8 800ADED8 2B104700 */  sltu       $v0, $v0, $a3
/* 9E6DC 800ADEDC 1C00A5AF */  sw         $a1, 0x1c($sp)
/* 9E6E0 800ADEE0 2000A6AF */  sw         $a2, 0x20($sp)
/* 9E6E4 800ADEE4 5001A7AF */  sw         $a3, 0x150($sp)
/* 9E6E8 800ADEE8 5401A3AF */  sw         $v1, 0x154($sp)
/* 9E6EC 800ADEEC 5801A4AF */  sw         $a0, 0x158($sp)
/* 9E6F0 800ADEF0 5C01A5AF */  sw         $a1, 0x15c($sp)
/* 9E6F4 800ADEF4 02004010 */  beqz       $v0, .L800ADF00
/* 9E6F8 800ADEF8 6001A6AF */   sw        $a2, 0x160($sp)
/* 9E6FC 800ADEFC FFFF0824 */  addiu      $t0, $zero, -1
.L800ADF00:
/* 9E700 800ADF00 3D000005 */  bltz       $t0, .L800ADFF8
/* 9E704 800ADF04 0200A22E */   sltiu     $v0, $s5, 2
/* 9E708 800ADF08 3B004010 */  beqz       $v0, .L800ADFF8
/* 9E70C 800ADF0C 1D80033C */   lui       $v1, %hi(D_801C8078)
/* 9E710 800ADF10 78806224 */  addiu      $v0, $v1, %lo(D_801C8078)
/* 9E714 800ADF14 2118F502 */  addu       $v1, $s7, $s5
/* 9E718 800ADF18 C0190300 */  sll        $v1, $v1, 7
/* 9E71C 800ADF1C 21186200 */  addu       $v1, $v1, $v0
/* 9E720 800ADF20 03006230 */  andi       $v0, $v1, 3
/* 9E724 800ADF24 18004010 */  beqz       $v0, .L800ADF88
/* 9E728 800ADF28 1000A527 */   addiu     $a1, $sp, 0x10
/* 9E72C 800ADF2C 0001A227 */  addiu      $v0, $sp, 0x100
/* 9E730 800ADF30 1C80043C */  lui        $a0, 0x801c
.L800ADF34:
/* 9E734 800ADF34 0300A688 */  lwl        $a2, 3($a1)
/* 9E738 800ADF38 0000A698 */  lwr        $a2, ($a1)
/* 9E73C 800ADF3C 0700A788 */  lwl        $a3, 7($a1)
/* 9E740 800ADF40 0400A798 */  lwr        $a3, 4($a1)
/* 9E744 800ADF44 0B00A888 */  lwl        $t0, 0xb($a1)
/* 9E748 800ADF48 0800A898 */  lwr        $t0, 8($a1)
/* 9E74C 800ADF4C 0F00A988 */  lwl        $t1, 0xf($a1)
/* 9E750 800ADF50 0C00A998 */  lwr        $t1, 0xc($a1)
/* 9E754 800ADF54 030066A8 */  swl        $a2, 3($v1)
/* 9E758 800ADF58 000066B8 */  swr        $a2, ($v1)
/* 9E75C 800ADF5C 070067A8 */  swl        $a3, 7($v1)
/* 9E760 800ADF60 040067B8 */  swr        $a3, 4($v1)
/* 9E764 800ADF64 0B0068A8 */  swl        $t0, 0xb($v1)
/* 9E768 800ADF68 080068B8 */  swr        $t0, 8($v1)
/* 9E76C 800ADF6C 0F0069A8 */  swl        $t1, 0xf($v1)
/* 9E770 800ADF70 0C0069B8 */  swr        $t1, 0xc($v1)
/* 9E774 800ADF74 1000A524 */  addiu      $a1, $a1, 0x10
/* 9E778 800ADF78 EEFFA214 */  bne        $a1, $v0, .L800ADF34
/* 9E77C 800ADF7C 10006324 */   addiu     $v1, $v1, 0x10
/* 9E780 800ADF80 F0B70208 */  j          .L800ADFC0
/* 9E784 800ADF84 78468424 */   addiu     $a0, $a0, 0x4678
.L800ADF88:
/* 9E788 800ADF88 0001A227 */  addiu      $v0, $sp, 0x100
/* 9E78C 800ADF8C 1C80043C */  lui        $a0, 0x801c
.L800ADF90:
/* 9E790 800ADF90 0000A68C */  lw         $a2, ($a1)
/* 9E794 800ADF94 0400A78C */  lw         $a3, 4($a1)
/* 9E798 800ADF98 0800A88C */  lw         $t0, 8($a1)
/* 9E79C 800ADF9C 0C00A98C */  lw         $t1, 0xc($a1)
/* 9E7A0 800ADFA0 000066AC */  sw         $a2, ($v1)
/* 9E7A4 800ADFA4 040067AC */  sw         $a3, 4($v1)
/* 9E7A8 800ADFA8 080068AC */  sw         $t0, 8($v1)
/* 9E7AC 800ADFAC 0C0069AC */  sw         $t1, 0xc($v1)
/* 9E7B0 800ADFB0 1000A524 */  addiu      $a1, $a1, 0x10
/* 9E7B4 800ADFB4 F6FFA214 */  bne        $a1, $v0, .L800ADF90
/* 9E7B8 800ADFB8 10006324 */   addiu     $v1, $v1, 0x10
/* 9E7BC 800ADFBC 78468424 */  addiu      $a0, $a0, 0x4678
.L800ADFC0:
/* 9E7C0 800ADFC0 2128F502 */  addu       $a1, $s7, $s5
/* 9E7C4 800ADFC4 C0290500 */  sll        $a1, $a1, 7
/* 9E7C8 800ADFC8 74408324 */  addiu      $v1, $a0, 0x4074
/* 9E7CC 800ADFCC 2118A300 */  addu       $v1, $a1, $v1
/* 9E7D0 800ADFD0 75408424 */  addiu      $a0, $a0, 0x4075
/* 9E7D4 800ADFD4 00006290 */  lbu        $v0, ($v1)
/* 9E7D8 800ADFD8 2128A400 */  addu       $a1, $a1, $a0
/* 9E7DC 800ADFDC 02004234 */  ori        $v0, $v0, 2
/* 9E7E0 800ADFE0 000062A0 */  sb         $v0, ($v1)
/* 9E7E4 800ADFE4 0000A290 */  lbu        $v0, ($a1)
/* 9E7E8 800ADFE8 2120A002 */  addu       $a0, $s5, $zero
/* 9E7EC 800ADFEC 02004234 */  ori        $v0, $v0, 2
/* 9E7F0 800ADFF0 52BA020C */  jal        FUN_800ae948
/* 9E7F4 800ADFF4 0000A2A0 */   sb        $v0, ($a1)
.L800ADFF8:
/* 9E7F8 800ADFF8 8C01BF8F */  lw         $ra, 0x18c($sp)
/* 9E7FC 800ADFFC 8801BE8F */  lw         $fp, 0x188($sp)
/* 9E800 800AE000 8401B78F */  lw         $s7, 0x184($sp)
/* 9E804 800AE004 8001B68F */  lw         $s6, 0x180($sp)
/* 9E808 800AE008 7C01B58F */  lw         $s5, 0x17c($sp)
/* 9E80C 800AE00C 7801B48F */  lw         $s4, 0x178($sp)
/* 9E810 800AE010 7401B38F */  lw         $s3, 0x174($sp)
/* 9E814 800AE014 7001B28F */  lw         $s2, 0x170($sp)
/* 9E818 800AE018 6C01B18F */  lw         $s1, 0x16c($sp)
/* 9E81C 800AE01C 6801B08F */  lw         $s0, 0x168($sp)
/* 9E820 800AE020 0800E003 */  jr         $ra
/* 9E824 800AE024 9001BD27 */   addiu     $sp, $sp, 0x190
