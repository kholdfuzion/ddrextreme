.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006ac9c
/* 5B49C 8006AC9C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 5B4A0 8006ACA0 5000AB8F */  lw         $t3, 0x50($sp)
/* 5B4A4 8006ACA4 5800AD8F */  lw         $t5, 0x58($sp)
/* 5B4A8 8006ACA8 5C00AE8F */  lw         $t6, 0x5c($sp)
/* 5B4AC 8006ACAC 6C00A88F */  lw         $t0, 0x6c($sp)
/* 5B4B0 8006ACB0 4800B98F */  lw         $t9, 0x48($sp)
/* 5B4B4 8006ACB4 1000B0AF */  sw         $s0, 0x10($sp)
/* 5B4B8 8006ACB8 4C00B08F */  lw         $s0, 0x4c($sp)
/* 5B4BC 8006ACBC 5400B88F */  lw         $t8, 0x54($sp)
/* 5B4C0 8006ACC0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 5B4C4 8006ACC4 21988000 */  addu       $s3, $a0, $zero
/* 5B4C8 8006ACC8 2000B4AF */  sw         $s4, 0x20($sp)
/* 5B4CC 8006ACCC 6000B48F */  lw         $s4, 0x60($sp)
/* 5B4D0 8006ACD0 7000AF8F */  lw         $t7, 0x70($sp)
/* 5B4D4 8006ACD4 21500000 */  addu       $t2, $zero, $zero
/* 5B4D8 8006ACD8 3000BEAF */  sw         $fp, 0x30($sp)
/* 5B4DC 8006ACDC 21F0A000 */  addu       $fp, $a1, $zero
/* 5B4E0 8006ACE0 2800B6AF */  sw         $s6, 0x28($sp)
/* 5B4E4 8006ACE4 21B0C000 */  addu       $s6, $a2, $zero
/* 5B4E8 8006ACE8 3400BFAF */  sw         $ra, 0x34($sp)
/* 5B4EC 8006ACEC 2C00B7AF */  sw         $s7, 0x2c($sp)
/* 5B4F0 8006ACF0 2400B5AF */  sw         $s5, 0x24($sp)
/* 5B4F4 8006ACF4 1800B2AF */  sw         $s2, 0x18($sp)
/* 5B4F8 8006ACF8 0300A815 */  bne        $t5, $t0, .L8006AD08
/* 5B4FC 8006ACFC 1400B1AF */   sw        $s1, 0x14($sp)
/* 5B500 8006AD00 0300CF11 */  beq        $t6, $t7, .L8006AD10
/* 5B504 8006AD04 21300000 */   addu      $a2, $zero, $zero
.L8006AD08:
/* 5B508 8006AD08 01000A24 */  addiu      $t2, $zero, 1
/* 5B50C 8006AD0C 21300000 */  addu       $a2, $zero, $zero
.L8006AD10:
/* 5B510 8006AD10 04008486 */  lh         $a0, 4($s4)
/* 5B514 8006AD14 06008586 */  lh         $a1, 6($s4)
/* 5B518 8006AD18 6400A28F */  lw         $v0, 0x64($sp)
/* 5B51C 8006AD1C 6800A38F */  lw         $v1, 0x68($sp)
/* 5B520 8006AD20 21908200 */  addu       $s2, $a0, $v0
/* 5B524 8006AD24 21A8A300 */  addu       $s5, $a1, $v1
/* 5B528 8006AD28 FF004932 */  andi       $t1, $s2, 0xff
/* 5B52C 8006AD2C 0C008386 */  lh         $v1, 0xc($s4)
/* 5B530 8006AD30 00000000 */  nop
/* 5B534 8006AD34 02006014 */  bnez       $v1, .L8006AD40
/* 5B538 8006AD38 FF00AC32 */   andi      $t4, $s5, 0xff
/* 5B53C 8006AD3C 03004632 */  andi       $a2, $s2, 3
.L8006AD40:
/* 5B540 8006AD40 01000424 */  addiu      $a0, $zero, 1
/* 5B544 8006AD44 02006414 */  bne        $v1, $a0, .L8006AD50
/* 5B548 8006AD48 00000000 */   nop
/* 5B54C 8006AD4C 01004632 */  andi       $a2, $s2, 1
.L8006AD50:
/* 5B550 8006AD50 23482601 */  subu       $t1, $t1, $a2
/* 5B554 8006AD54 23586601 */  subu       $t3, $t3, $a2
/* 5B558 8006AD58 04006014 */  bnez       $v1, .L8006AD6C
/* 5B55C 8006AD5C 21400601 */   addu      $t0, $t0, $a2
/* 5B560 8006AD60 03000825 */  addiu      $t0, $t0, 3
/* 5B564 8006AD64 83100800 */  sra        $v0, $t0, 2
/* 5B568 8006AD68 80400200 */  sll        $t0, $v0, 2
.L8006AD6C:
/* 5B56C 8006AD6C 04006414 */  bne        $v1, $a0, .L8006AD80
/* 5B570 8006AD70 00000000 */   nop
/* 5B574 8006AD74 01000825 */  addiu      $t0, $t0, 1
/* 5B578 8006AD78 43100800 */  sra        $v0, $t0, 1
/* 5B57C 8006AD7C 40400200 */  sll        $t0, $v0, 1
.L8006AD80:
/* 5B580 8006AD80 03004015 */  bnez       $t2, .L8006AD90
/* 5B584 8006AD84 00000000 */   nop
/* 5B588 8006AD88 21680001 */  addu       $t5, $t0, $zero
/* 5B58C 8006AD8C 2170E001 */  addu       $t6, $t7, $zero
.L8006AD90:
/* 5B590 8006AD90 23904902 */  subu       $s2, $s2, $t1
/* 5B594 8006AD94 05006010 */  beqz       $v1, .L8006ADAC
/* 5B598 8006AD98 23A8AC02 */   subu      $s5, $s5, $t4
/* 5B59C 8006AD9C 05006414 */  bne        $v1, $a0, .L8006ADB4
/* 5B5A0 8006ADA0 00010224 */   addiu     $v0, $zero, 0x100
/* 5B5A4 8006ADA4 6DAB0108 */  j          .L8006ADB4
/* 5B5A8 8006ADA8 43901200 */   sra       $s2, $s2, 1
.L8006ADAC:
/* 5B5AC 8006ADAC 83901200 */  sra        $s2, $s2, 2
/* 5B5B0 8006ADB0 00010224 */  addiu      $v0, $zero, 0x100
.L8006ADB4:
/* 5B5B4 8006ADB4 21502801 */  addu       $t2, $t1, $t0
/* 5B5B8 8006ADB8 03004211 */  beq        $t2, $v0, .L8006ADC8
/* 5B5BC 8006ADBC 21288F01 */   addu      $a1, $t4, $t7
/* 5B5C0 8006ADC0 5400A214 */  bne        $a1, $v0, .L8006AF14
/* 5B5C4 8006ADC4 0001622A */   slti      $v0, $s3, 0x100
.L8006ADC8:
/* 5B5C8 8006ADC8 21286002 */  addu       $a1, $s3, $zero
/* 5B5CC 8006ADCC 0001622A */  slti       $v0, $s3, 0x100
/* 5B5D0 8006ADD0 02004014 */  bnez       $v0, .L8006ADDC
/* 5B5D4 8006ADD4 1A80063C */   lui       $a2, 0x801a
/* 5B5D8 8006ADD8 21280000 */  addu       $a1, $zero, $zero
.L8006ADDC:
/* 5B5DC 8006ADDC 01007326 */  addiu      $s3, $s3, 1
/* 5B5E0 8006ADE0 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5B5E4 8006ADE4 21884000 */  addu       $s1, $v0, $zero
/* 5B5E8 8006ADE8 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5B5EC 8006ADEC 80100500 */  sll        $v0, $a1, 2
/* 5B5F0 8006ADF0 21104500 */  addu       $v0, $v0, $a1
/* 5B5F4 8006ADF4 C0100200 */  sll        $v0, $v0, 3
/* 5B5F8 8006ADF8 80200300 */  sll        $a0, $v1, 2
/* 5B5FC 8006ADFC 21208300 */  addu       $a0, $a0, $v1
/* 5B600 8006AE00 C0220400 */  sll        $a0, $a0, 0xb
/* 5B604 8006AE04 1A80033C */  lui        $v1, %hi(D_801A2800)
/* 5B608 8006AE08 00286324 */  addiu      $v1, $v1, %lo(D_801A2800)
/* 5B60C 8006AE0C 21104300 */  addu       $v0, $v0, $v1
/* 5B610 8006AE10 21288200 */  addu       $a1, $a0, $v0
/* 5B614 8006AE14 1A80043C */  lui        $a0, %hi(D_801A27F4)
/* 5B618 8006AE18 1400A224 */  addiu      $v0, $a1, 0x14
/* 5B61C 8006AE1C 04000324 */  addiu      $v1, $zero, 4
/* 5B620 8006AE20 F42782AC */  sw         $v0, %lo(D_801A27F4)($a0)
/* 5B624 8006AE24 64000224 */  addiu      $v0, $zero, 0x64
/* 5B628 8006AE28 F027C5AC */  sw         $a1, 0x27f0($a2)
/* 5B62C 8006AE2C 0300A3A0 */  sb         $v1, 3($a1)
/* 5B630 8006AE30 FFFF0324 */  addiu      $v1, $zero, -1
/* 5B634 8006AE34 21B88000 */  addu       $s7, $a0, $zero
/* 5B638 8006AE38 0700A2A0 */  sb         $v0, 7($a1)
/* 5B63C 8006AE3C 0200C312 */  beq        $s6, $v1, .L8006AE48
/* 5B640 8006AE40 64000224 */   addiu     $v0, $zero, 0x64
/* 5B644 8006AE44 66000224 */  addiu      $v0, $zero, 0x66
.L8006AE48:
/* 5B648 8006AE48 0700A2A0 */  sb         $v0, 7($a1)
/* 5B64C 8006AE4C F027C28C */  lw         $v0, 0x27f0($a2)
/* 5B650 8006AE50 00000000 */  nop
/* 5B654 8006AE54 0C0049A0 */  sb         $t1, 0xc($v0)
/* 5B658 8006AE58 F027C38C */  lw         $v1, 0x27f0($a2)
/* 5B65C 8006AE5C 08004BA4 */  sh         $t3, 8($v0)
/* 5B660 8006AE60 0A0058A4 */  sh         $t8, 0xa($v0)
/* 5B664 8006AE64 0D006CA0 */  sb         $t4, 0xd($v1)
/* 5B668 8006AE68 F027C28C */  lw         $v0, 0x27f0($a2)
/* 5B66C 8006AE6C 00000000 */  nop
/* 5B670 8006AE70 040047A0 */  sb         $a3, 4($v0)
/* 5B674 8006AE74 F027C38C */  lw         $v1, 0x27f0($a2)
/* 5B678 8006AE78 100048A4 */  sh         $t0, 0x10($v0)
/* 5B67C 8006AE7C 12004FA4 */  sh         $t7, 0x12($v0)
/* 5B680 8006AE80 050079A0 */  sb         $t9, 5($v1)
/* 5B684 8006AE84 F027C28C */  lw         $v0, 0x27f0($a2)
/* 5B688 8006AE88 A89D3126 */  addiu      $s1, $s1, -0x6258
/* 5B68C 8006AE8C 060050A0 */  sb         $s0, 6($v0)
/* 5B690 8006AE90 18008396 */  lhu        $v1, 0x18($s4)
/* 5B694 8006AE94 16008296 */  lhu        $v0, 0x16($s4)
/* 5B698 8006AE98 F027C58C */  lw         $a1, 0x27f0($a2)
/* 5B69C 8006AE9C 80190300 */  sll        $v1, $v1, 6
/* 5B6A0 8006AEA0 02110200 */  srl        $v0, $v0, 4
/* 5B6A4 8006AEA4 3F004230 */  andi       $v0, $v0, 0x3f
/* 5B6A8 8006AEA8 25186200 */  or         $v1, $v1, $v0
/* 5B6AC 8006AEAC 0E00A3A4 */  sh         $v1, 0xe($a1)
/* 5B6B0 8006AEB0 2C0C228E */  lw         $v0, 0xc2c($s1)
/* 5B6B4 8006AEB4 00000000 */  nop
/* 5B6B8 8006AEB8 0400448C */  lw         $a0, 4($v0)
/* 5B6BC 8006AEBC 80801E00 */  sll        $s0, $fp, 2
/* 5B6C0 8006AEC0 D685000C */  jal        AddPrim
/* 5B6C4 8006AEC4 21209000 */   addu      $a0, $a0, $s0
/* 5B6C8 8006AEC8 2128C002 */  addu       $a1, $s6, $zero
/* 5B6CC 8006AECC 21304002 */  addu       $a2, $s2, $zero
/* 5B6D0 8006AED0 2138A002 */  addu       $a3, $s5, $zero
/* 5B6D4 8006AED4 2C0C228E */  lw         $v0, 0xc2c($s1)
/* 5B6D8 8006AED8 0C008486 */  lh         $a0, 0xc($s4)
/* 5B6DC 8006AEDC 0400438C */  lw         $v1, 4($v0)
/* 5B6E0 8006AEE0 F427F18E */  lw         $s1, 0x27f4($s7)
/* 5B6E4 8006AEE4 0DAE010C */  jal        GetTPage
/* 5B6E8 8006AEE8 21800302 */   addu      $s0, $s0, $v1
/* 5B6EC 8006AEEC 21202002 */  addu       $a0, $s1, $zero
/* 5B6F0 8006AEF0 21280000 */  addu       $a1, $zero, $zero
/* 5B6F4 8006AEF4 21300000 */  addu       $a2, $zero, $zero
/* 5B6F8 8006AEF8 1DAE010C */  jal        SetDrawTPage
/* 5B6FC 8006AEFC 21384000 */   addu      $a3, $v0, $zero
/* 5B700 8006AF00 21200002 */  addu       $a0, $s0, $zero
/* 5B704 8006AF04 D685000C */  jal        AddPrim
/* 5B708 8006AF08 21282002 */   addu      $a1, $s1, $zero
/* 5B70C 8006AF0C 13AC0108 */  j          .L8006B04C
/* 5B710 8006AF10 21106002 */   addu      $v0, $s3, $zero
.L8006AF14:
/* 5B714 8006AF14 02004014 */  bnez       $v0, .L8006AF20
/* 5B718 8006AF18 21306002 */   addu      $a2, $s3, $zero
/* 5B71C 8006AF1C 21300000 */  addu       $a2, $zero, $zero
.L8006AF20:
/* 5B720 8006AF20 01007326 */  addiu      $s3, $s3, 1
/* 5B724 8006AF24 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5B728 8006AF28 21884000 */  addu       $s1, $v0, $zero
/* 5B72C 8006AF2C A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5B730 8006AF30 80100600 */  sll        $v0, $a2, 2
/* 5B734 8006AF34 21104600 */  addu       $v0, $v0, $a2
/* 5B738 8006AF38 C0100200 */  sll        $v0, $v0, 3
/* 5B73C 8006AF3C 80200300 */  sll        $a0, $v1, 2
/* 5B740 8006AF40 21208300 */  addu       $a0, $a0, $v1
/* 5B744 8006AF44 C0220400 */  sll        $a0, $a0, 0xb
/* 5B748 8006AF48 1A80033C */  lui        $v1, %hi(D_801A2800)
/* 5B74C 8006AF4C 00286324 */  addiu      $v1, $v1, %lo(D_801A2800)
/* 5B750 8006AF50 21104300 */  addu       $v0, $v0, $v1
/* 5B754 8006AF54 21408200 */  addu       $t0, $a0, $v0
/* 5B758 8006AF58 09000324 */  addiu      $v1, $zero, 9
/* 5B75C 8006AF5C 2C000224 */  addiu      $v0, $zero, 0x2c
/* 5B760 8006AF60 030003A1 */  sb         $v1, 3($t0)
/* 5B764 8006AF64 FFFF0324 */  addiu      $v1, $zero, -1
/* 5B768 8006AF68 070002A1 */  sb         $v0, 7($t0)
/* 5B76C 8006AF6C 0200C312 */  beq        $s6, $v1, .L8006AF78
/* 5B770 8006AF70 2C000224 */   addiu     $v0, $zero, 0x2c
/* 5B774 8006AF74 2E000224 */  addiu      $v0, $zero, 0x2e
.L8006AF78:
/* 5B778 8006AF78 070002A1 */  sb         $v0, 7($t0)
/* 5B77C 8006AF7C 21186D01 */  addu       $v1, $t3, $t5
/* 5B780 8006AF80 21100E03 */  addu       $v0, $t8, $t6
/* 5B784 8006AF84 1D0005A1 */  sb         $a1, 0x1d($t0)
/* 5B788 8006AF88 250005A1 */  sb         $a1, 0x25($t0)
/* 5B78C 8006AF8C 21280001 */  addu       $a1, $t0, $zero
/* 5B790 8006AF90 08000BA5 */  sh         $t3, 8($t0)
/* 5B794 8006AF94 0A0018A5 */  sh         $t8, 0xa($t0)
/* 5B798 8006AF98 100003A5 */  sh         $v1, 0x10($t0)
/* 5B79C 8006AF9C 120018A5 */  sh         $t8, 0x12($t0)
/* 5B7A0 8006AFA0 18000BA5 */  sh         $t3, 0x18($t0)
/* 5B7A4 8006AFA4 1A0002A5 */  sh         $v0, 0x1a($t0)
/* 5B7A8 8006AFA8 200003A5 */  sh         $v1, 0x20($t0)
/* 5B7AC 8006AFAC 220002A5 */  sh         $v0, 0x22($t0)
/* 5B7B0 8006AFB0 0C0009A1 */  sb         $t1, 0xc($t0)
/* 5B7B4 8006AFB4 0D000CA1 */  sb         $t4, 0xd($t0)
/* 5B7B8 8006AFB8 14000AA1 */  sb         $t2, 0x14($t0)
/* 5B7BC 8006AFBC 15000CA1 */  sb         $t4, 0x15($t0)
/* 5B7C0 8006AFC0 1C0009A1 */  sb         $t1, 0x1c($t0)
/* 5B7C4 8006AFC4 24000AA1 */  sb         $t2, 0x24($t0)
/* 5B7C8 8006AFC8 040007A1 */  sb         $a3, 4($t0)
/* 5B7CC 8006AFCC 050019A1 */  sb         $t9, 5($t0)
/* 5B7D0 8006AFD0 060010A1 */  sb         $s0, 6($t0)
/* 5B7D4 8006AFD4 18008396 */  lhu        $v1, 0x18($s4)
/* 5B7D8 8006AFD8 16008296 */  lhu        $v0, 0x16($s4)
/* 5B7DC 8006AFDC 80190300 */  sll        $v1, $v1, 6
/* 5B7E0 8006AFE0 02110200 */  srl        $v0, $v0, 4
/* 5B7E4 8006AFE4 3F004230 */  andi       $v0, $v0, 0x3f
/* 5B7E8 8006AFE8 25186200 */  or         $v1, $v1, $v0
/* 5B7EC 8006AFEC 0300C232 */  andi       $v0, $s6, 3
/* 5B7F0 8006AFF0 40110200 */  sll        $v0, $v0, 5
/* 5B7F4 8006AFF4 0E0003A5 */  sh         $v1, 0xe($t0)
/* 5B7F8 8006AFF8 0001A332 */  andi       $v1, $s5, 0x100
/* 5B7FC 8006AFFC 0C008496 */  lhu        $a0, 0xc($s4)
/* 5B800 8006B000 03190300 */  sra        $v1, $v1, 4
/* 5B804 8006B004 03008430 */  andi       $a0, $a0, 3
/* 5B808 8006B008 C0210400 */  sll        $a0, $a0, 7
/* 5B80C 8006B00C 25208200 */  or         $a0, $a0, $v0
/* 5B810 8006B010 25208300 */  or         $a0, $a0, $v1
/* 5B814 8006B014 FF034232 */  andi       $v0, $s2, 0x3ff
/* 5B818 8006B018 83110200 */  sra        $v0, $v0, 6
/* 5B81C 8006B01C 25208200 */  or         $a0, $a0, $v0
/* 5B820 8006B020 0002A332 */  andi       $v1, $s5, 0x200
/* 5B824 8006B024 80180300 */  sll        $v1, $v1, 2
/* 5B828 8006B028 A89D2226 */  addiu      $v0, $s1, -0x6258
/* 5B82C 8006B02C 2C0C468C */  lw         $a2, 0xc2c($v0)
/* 5B830 8006B030 25208300 */  or         $a0, $a0, $v1
/* 5B834 8006B034 160004A5 */  sh         $a0, 0x16($t0)
/* 5B838 8006B038 0400C28C */  lw         $v0, 4($a2)
/* 5B83C 8006B03C 80201E00 */  sll        $a0, $fp, 2
/* 5B840 8006B040 D685000C */  jal        AddPrim
/* 5B844 8006B044 21204400 */   addu      $a0, $v0, $a0
/* 5B848 8006B048 21106002 */  addu       $v0, $s3, $zero
.L8006B04C:
/* 5B84C 8006B04C 3400BF8F */  lw         $ra, 0x34($sp)
/* 5B850 8006B050 3000BE8F */  lw         $fp, 0x30($sp)
/* 5B854 8006B054 2C00B78F */  lw         $s7, 0x2c($sp)
/* 5B858 8006B058 2800B68F */  lw         $s6, 0x28($sp)
/* 5B85C 8006B05C 2400B58F */  lw         $s5, 0x24($sp)
/* 5B860 8006B060 2000B48F */  lw         $s4, 0x20($sp)
/* 5B864 8006B064 1C00B38F */  lw         $s3, 0x1c($sp)
/* 5B868 8006B068 1800B28F */  lw         $s2, 0x18($sp)
/* 5B86C 8006B06C 1400B18F */  lw         $s1, 0x14($sp)
/* 5B870 8006B070 1000B08F */  lw         $s0, 0x10($sp)
/* 5B874 8006B074 0800E003 */  jr         $ra
/* 5B878 8006B078 3800BD27 */   addiu     $sp, $sp, 0x38
