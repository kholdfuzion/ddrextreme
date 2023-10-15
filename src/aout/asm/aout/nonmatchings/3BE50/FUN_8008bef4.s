.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8008bef4
/* 7C6F4 8008BEF4 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 7C6F8 8008BEF8 7000B2AF */  sw         $s2, 0x70($sp)
/* 7C6FC 8008BEFC 21908000 */  addu       $s2, $a0, $zero
/* 7C700 8008BF00 21280000 */  addu       $a1, $zero, $zero
/* 7C704 8008BF04 EC480624 */  addiu      $a2, $zero, 0x48ec
/* 7C708 8008BF08 8800BFAF */  sw         $ra, 0x88($sp)
/* 7C70C 8008BF0C 8400B7AF */  sw         $s7, 0x84($sp)
/* 7C710 8008BF10 8000B6AF */  sw         $s6, 0x80($sp)
/* 7C714 8008BF14 7C00B5AF */  sw         $s5, 0x7c($sp)
/* 7C718 8008BF18 7800B4AF */  sw         $s4, 0x78($sp)
/* 7C71C 8008BF1C 7400B3AF */  sw         $s3, 0x74($sp)
/* 7C720 8008BF20 6C00B1AF */  sw         $s1, 0x6c($sp)
/* 7C724 8008BF24 F6A2000C */  jal        memset
/* 7C728 8008BF28 6800B0AF */   sw        $s0, 0x68($sp)
/* 7C72C 8008BF2C EDC1020C */  jal        FUN_800b07b4
/* 7C730 8008BF30 02001124 */   addiu     $s1, $zero, 2
/* 7C734 8008BF34 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7C738 8008BF38 28005024 */  addiu      $s0, $v0, %lo(D_800F0028)
/* 7C73C 8008BF3C 20000282 */  lb         $v0, 0x20($s0)
/* 7C740 8008BF40 00000000 */  nop
/* 7C744 8008BF44 04005114 */  bne        $v0, $s1, .L8008BF58
/* 7C748 8008BF48 00000000 */   nop
/* 7C74C 8008BF4C 1B87020C */  jal        FUN_800a1c6c
/* 7C750 8008BF50 00000000 */   nop
/* 7C754 8008BF54 20000282 */  lb         $v0, 0x20($s0)
.L8008BF58:
/* 7C758 8008BF58 00000000 */  nop
/* 7C75C 8008BF5C 26004010 */  beqz       $v0, .L8008BFF8
/* 7C760 8008BF60 00000000 */   nop
/* 7C764 8008BF64 8258020C */  jal        FUN_80096208
/* 7C768 8008BF68 00000000 */   nop
/* 7C76C 8008BF6C 01000224 */  addiu      $v0, $zero, 1
/* 7C770 8008BF70 160002A2 */  sb         $v0, 0x16($s0)
/* 7C774 8008BF74 AC4842A2 */  sb         $v0, 0x48ac($s2)
/* 7C778 8008BF78 AE4842A2 */  sb         $v0, 0x48ae($s2)
/* 7C77C 8008BF7C 10000224 */  addiu      $v0, $zero, 0x10
/* 7C780 8008BF80 AD4840A2 */  sb         $zero, 0x48ad($s2)
/* 7C784 8008BF84 B04840A6 */  sh         $zero, 0x48b0($s2)
/* 7C788 8008BF88 B24842A6 */  sh         $v0, 0x48b2($s2)
/* 7C78C 8008BF8C B44840A6 */  sh         $zero, 0x48b4($s2)
/* 7C790 8008BF90 20000282 */  lb         $v0, 0x20($s0)
/* 7C794 8008BF94 00000000 */  nop
/* 7C798 8008BF98 02005114 */  bne        $v0, $s1, .L8008BFA4
/* 7C79C 8008BF9C 01000324 */   addiu     $v1, $zero, 1
/* 7C7A0 8008BFA0 20000324 */  addiu      $v1, $zero, 0x20
.L8008BFA4:
/* 7C7A4 8008BFA4 D84843AE */  sw         $v1, 0x48d8($s2)
/* 7C7A8 8008BFA8 20000282 */  lb         $v0, 0x20($s0)
/* 7C7AC 8008BFAC 00000000 */  nop
/* 7C7B0 8008BFB0 02005114 */  bne        $v0, $s1, .L8008BFBC
/* 7C7B4 8008BFB4 01000324 */   addiu     $v1, $zero, 1
/* 7C7B8 8008BFB8 20000324 */  addiu      $v1, $zero, 0x20
.L8008BFBC:
/* 7C7BC 8008BFBC DC4843AE */  sw         $v1, 0x48dc($s2)
/* 7C7C0 8008BFC0 04000324 */  addiu      $v1, $zero, 4
/* 7C7C4 8008BFC4 10004226 */  addiu      $v0, $s2, 0x10
.L8008BFC8:
/* 7C7C8 8008BFC8 B84840AC */  sw         $zero, 0x48b8($v0)
/* 7C7CC 8008BFCC FFFF6324 */  addiu      $v1, $v1, -1
/* 7C7D0 8008BFD0 FDFF6104 */  bgez       $v1, .L8008BFC8
/* 7C7D4 8008BFD4 FCFF4224 */   addiu     $v0, $v0, -4
/* 7C7D8 8008BFD8 DC48448E */  lw         $a0, 0x48dc($s2)
/* 7C7DC 8008BFDC E389020C */  jal        FUN_800a278c
/* 7C7E0 8008BFE0 D04840AE */   sw        $zero, 0x48d0($s2)
/* 7C7E4 8008BFE4 FFFF4224 */  addiu      $v0, $v0, -1
/* 7C7E8 8008BFE8 D44842AE */  sw         $v0, 0x48d4($s2)
/* 7C7EC 8008BFEC E84840A2 */  sb         $zero, 0x48e8($s2)
/* 7C7F0 8008BFF0 1F300208 */  j          .L8008C07C
/* 7C7F4 8008BFF4 E94840A2 */   sb        $zero, 0x48e9($s2)
.L8008BFF8:
/* 7C7F8 8008BFF8 88000292 */  lbu        $v0, 0x88($s0)
/* 7C7FC 8008BFFC 00000000 */  nop
/* 7C800 8008C000 E44842A2 */  sb         $v0, 0x48e4($s2)
/* 7C804 8008C004 0100023C */  lui        $v0, 1
/* 7C808 8008C008 21100202 */  addu       $v0, $s0, $v0
/* 7C80C 8008C00C 04434490 */  lbu        $a0, 0x4304($v0)
/* 7C810 8008C010 00000000 */  nop
/* 7C814 8008C014 E54844A2 */  sb         $a0, 0x48e5($s2)
/* 7C818 8008C018 8A000392 */  lbu        $v1, 0x8a($s0)
/* 7C81C 8008C01C 00000000 */  nop
/* 7C820 8008C020 05007110 */  beq        $v1, $s1, .L8008C038
/* 7C824 8008C024 00000000 */   nop
/* 7C828 8008C028 06434290 */  lbu        $v0, 0x4306($v0)
/* 7C82C 8008C02C 00000000 */  nop
/* 7C830 8008C030 0F005114 */  bne        $v0, $s1, .L8008C070
/* 7C834 8008C034 00000000 */   nop
.L8008C038:
/* 7C838 8008C038 07000224 */  addiu      $v0, $zero, 7
/* 7C83C 8008C03C 03006210 */  beq        $v1, $v0, .L8008C04C
/* 7C840 8008C040 00000000 */   nop
/* 7C844 8008C044 07006014 */  bnez       $v1, .L8008C064
/* 7C848 8008C048 00000000 */   nop
.L8008C04C:
/* 7C84C 8008C04C 1C300208 */  j          .L8008C070
/* 7C850 8008C050 E44844A2 */   sb        $a0, 0x48e4($s2)
.L8008C054:
/* 7C854 8008C054 040024AE */  sw         $a0, 4($s1)
/* 7C858 8008C058 08008294 */  lhu        $v0, 8($a0)
/* 7C85C 8008C05C 4D300208 */  j          .L8008C134
/* 7C860 8008C060 1E0022A6 */   sh        $v0, 0x1e($s1)
.L8008C064:
/* 7C864 8008C064 E4484292 */  lbu        $v0, 0x48e4($s2)
/* 7C868 8008C068 00000000 */  nop
/* 7C86C 8008C06C E54842A2 */  sb         $v0, 0x48e5($s2)
.L8008C070:
/* 7C870 8008C070 AE4840A2 */  sb         $zero, 0x48ae($s2)
/* 7C874 8008C074 9358020C */  jal        FUN_8009624c
/* 7C878 8008C078 AC4840A2 */   sb        $zero, 0x48ac($s2)
.L8008C07C:
/* 7C87C 8008C07C EFE9020C */  jal        FUN_800ba7bc
/* 7C880 8008C080 604740AE */   sw        $zero, 0x4760($s2)
/* 7C884 8008C084 C2160200 */  srl        $v0, $v0, 0x1b
/* 7C888 8008C088 01004238 */  xori       $v0, $v0, 1
/* 7C88C 8008C08C 01004230 */  andi       $v0, $v0, 1
/* 7C890 8008C090 01000324 */  addiu      $v1, $zero, 1
/* 7C894 8008C094 A84842AE */  sw         $v0, 0x48a8($s2)
/* 7C898 8008C098 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7C89C 8008C09C 28005124 */  addiu      $s1, $v0, %lo(D_800F0028)
/* 7C8A0 8008C0A0 A44843AE */  sw         $v1, 0x48a4($s2)
/* 7C8A4 8008C0A4 17002282 */  lb         $v0, 0x17($s1)
/* 7C8A8 8008C0A8 00000000 */  nop
/* 7C8AC 8008C0AC 02004010 */  beqz       $v0, .L8008C0B8
/* 7C8B0 8008C0B0 00000000 */   nop
/* 7C8B4 8008C0B4 160023A2 */  sb         $v1, 0x16($s1)
.L8008C0B8:
/* 7C8B8 8008C0B8 5B9F020C */  jal        FUN_800a7d6c
/* 7C8BC 8008C0BC 21800000 */   addu      $s0, $zero, $zero
.L8008C0C0:
/* 7C8C0 8008C0C0 1BA2020C */  jal        FUN_800a886c
/* 7C8C4 8008C0C4 21200002 */   addu      $a0, $s0, $zero
/* 7C8C8 8008C0C8 21204000 */  addu       $a0, $v0, $zero
/* 7C8CC 8008C0CC 15008010 */  beqz       $a0, .L8008C124
/* 7C8D0 8008C0D0 00000000 */   nop
/* 7C8D4 8008C0D4 2400858C */  lw         $a1, 0x24($a0)
/* 7C8D8 8008C0D8 00000000 */  nop
/* 7C8DC 8008C0DC 2000A230 */  andi       $v0, $a1, 0x20
/* 7C8E0 8008C0E0 05004010 */  beqz       $v0, .L8008C0F8
/* 7C8E4 8008C0E4 01000224 */   addiu     $v0, $zero, 1
/* 7C8E8 8008C0E8 17002382 */  lb         $v1, 0x17($s1)
/* 7C8EC 8008C0EC 00000000 */  nop
/* 7C8F0 8008C0F0 D8FF6210 */  beq        $v1, $v0, .L8008C054
/* 7C8F4 8008C0F4 00000000 */   nop
.L8008C0F8:
/* 7C8F8 8008C0F8 4000A230 */  andi       $v0, $a1, 0x40
/* 7C8FC 8008C0FC 09004010 */  beqz       $v0, .L8008C124
/* 7C900 8008C100 02000224 */   addiu     $v0, $zero, 2
/* 7C904 8008C104 17002382 */  lb         $v1, 0x17($s1)
/* 7C908 8008C108 00000000 */  nop
/* 7C90C 8008C10C 05006214 */  bne        $v1, $v0, .L8008C124
/* 7C910 8008C110 00000000 */   nop
/* 7C914 8008C114 040024AE */  sw         $a0, 4($s1)
/* 7C918 8008C118 08008294 */  lhu        $v0, 8($a0)
/* 7C91C 8008C11C 00000000 */  nop
/* 7C920 8008C120 1E0022A6 */  sh         $v0, 0x1e($s1)
.L8008C124:
/* 7C924 8008C124 01001026 */  addiu      $s0, $s0, 1
/* 7C928 8008C128 F900022A */  slti       $v0, $s0, 0xf9
/* 7C92C 8008C12C E4FF4014 */  bnez       $v0, .L8008C0C0
/* 7C930 8008C130 00000000 */   nop
.L8008C134:
/* 7C934 8008C134 F1FA010C */  jal        FUN_8007ebc4
/* 7C938 8008C138 21204002 */   addu      $a0, $s2, $zero
/* 7C93C 8008C13C 21204002 */  addu       $a0, $s2, $zero
/* 7C940 8008C140 FFFF1024 */  addiu      $s0, $zero, -1
/* 7C944 8008C144 C00A50AE */  sw         $s0, 0xac0($s2)
/* 7C948 8008C148 742E020C */  jal        FUN_8008b9d0
/* 7C94C 8008C14C C40A50AE */   sw        $s0, 0xac4($s2)
/* 7C950 8008C150 0A000224 */  addiu      $v0, $zero, 0xa
/* 7C954 8008C154 160042A6 */  sh         $v0, 0x16($s2)
/* 7C958 8008C158 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 7C95C 8008C15C A8FF4224 */  addiu      $v0, $v0, %lo(D_800EFFA8)
/* 7C960 8008C160 080040AE */  sw         $zero, 8($s2)
/* 7C964 8008C164 9C0B40A2 */  sb         $zero, 0xb9c($s2)
/* 7C968 8008C168 7400438C */  lw         $v1, 0x74($v0)
/* 7C96C 8008C16C 00000000 */  nop
/* 7C970 8008C170 A40B43AE */  sw         $v1, 0xba4($s2)
/* 7C974 8008C174 7400438C */  lw         $v1, 0x74($v0)
/* 7C978 8008C178 10000224 */  addiu      $v0, $zero, 0x10
/* 7C97C 8008C17C E40A42AE */  sw         $v0, 0xae4($s2)
/* 7C980 8008C180 0A000224 */  addiu      $v0, $zero, 0xa
/* 7C984 8008C184 E04842AE */  sw         $v0, 0x48e0($s2)
/* 7C988 8008C188 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7C98C 8008C18C DC0A50AE */  sw         $s0, 0xadc($s2)
/* 7C990 8008C190 E00A50AE */  sw         $s0, 0xae0($s2)
/* 7C994 8008C194 28005024 */  addiu      $s0, $v0, %lo(D_800F0028)
/* 7C998 8008C198 D80A43AE */  sw         $v1, 0xad8($s2)
/* 7C99C 8008C19C 20000282 */  lb         $v0, 0x20($s0)
/* 7C9A0 8008C1A0 00000000 */  nop
/* 7C9A4 8008C1A4 05004010 */  beqz       $v0, .L8008C1BC
/* 7C9A8 8008C1A8 21200000 */   addu      $a0, $zero, $zero
/* 7C9AC 8008C1AC 1BA2020C */  jal        FUN_800a886c
/* 7C9B0 8008C1B0 1E0000A6 */   sh        $zero, 0x1e($s0)
/* 7C9B4 8008C1B4 A9300208 */  j          .L8008C2A4
/* 7C9B8 8008C1B8 040002AE */   sw        $v0, 4($s0)
.L8008C1BC:
/* 7C9BC 8008C1BC 0000428E */  lw         $v0, ($s2)
/* 7C9C0 8008C1C0 00000000 */  nop
/* 7C9C4 8008C1C4 40100200 */  sll        $v0, $v0, 1
/* 7C9C8 8008C1C8 21104202 */  addu       $v0, $s2, $v0
/* 7C9CC 8008C1CC 18004294 */  lhu        $v0, 0x18($v0)
/* 7C9D0 8008C1D0 00000000 */  nop
/* 7C9D4 8008C1D4 00240200 */  sll        $a0, $v0, 0x10
/* 7C9D8 8008C1D8 03240400 */  sra        $a0, $a0, 0x10
/* 7C9DC 8008C1DC 1BA2020C */  jal        FUN_800a886c
/* 7C9E0 8008C1E0 1E0002A6 */   sh        $v0, 0x1e($s0)
/* 7C9E4 8008C1E4 21204000 */  addu       $a0, $v0, $zero
/* 7C9E8 8008C1E8 8A000592 */  lbu        $a1, 0x8a($s0)
/* 7C9EC 8008C1EC 07000224 */  addiu      $v0, $zero, 7
/* 7C9F0 8008C1F0 0700A210 */  beq        $a1, $v0, .L8008C210
/* 7C9F4 8008C1F4 040004AE */   sw        $a0, 4($s0)
/* 7C9F8 8008C1F8 0500A010 */  beqz       $a1, .L8008C210
/* 7C9FC 8008C1FC 0200A538 */   xori      $a1, $a1, 2
/* 7CA00 8008C200 E4484692 */  lbu        $a2, 0x48e4($s2)
/* 7CA04 8008C204 8BFA010C */  jal        FUN_8007ea2c
/* 7CA08 8008C208 0100A52C */   sltiu     $a1, $a1, 1
/* 7CA0C 8008C20C E64842A2 */  sb         $v0, 0x48e6($s2)
.L8008C210:
/* 7CA10 8008C210 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7CA14 8008C214 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7CA18 8008C218 0100023C */  lui        $v0, 1
/* 7CA1C 8008C21C 21106200 */  addu       $v0, $v1, $v0
/* 7CA20 8008C220 06434590 */  lbu        $a1, 0x4306($v0)
/* 7CA24 8008C224 07000224 */  addiu      $v0, $zero, 7
/* 7CA28 8008C228 0900A210 */  beq        $a1, $v0, .L8008C250
/* 7CA2C 8008C22C 0F80023C */   lui       $v0, 0x800f
/* 7CA30 8008C230 0700A010 */  beqz       $a1, .L8008C250
/* 7CA34 8008C234 0200A538 */   xori      $a1, $a1, 2
/* 7CA38 8008C238 0400648C */  lw         $a0, 4($v1)
/* 7CA3C 8008C23C E5484692 */  lbu        $a2, 0x48e5($s2)
/* 7CA40 8008C240 8BFA010C */  jal        FUN_8007ea2c
/* 7CA44 8008C244 0100A52C */   sltiu     $a1, $a1, 1
/* 7CA48 8008C248 E74842A2 */  sb         $v0, 0x48e7($s2)
/* 7CA4C 8008C24C 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008C250:
/* 7CA50 8008C250 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 7CA54 8008C254 8A008390 */  lbu        $v1, 0x8a($a0)
/* 7CA58 8008C258 02000524 */  addiu      $a1, $zero, 2
/* 7CA5C 8008C25C 06006510 */  beq        $v1, $a1, .L8008C278
/* 7CA60 8008C260 0100023C */   lui       $v0, 1
/* 7CA64 8008C264 21108200 */  addu       $v0, $a0, $v0
/* 7CA68 8008C268 06434290 */  lbu        $v0, 0x4306($v0)
/* 7CA6C 8008C26C 00000000 */  nop
/* 7CA70 8008C270 0D004514 */  bne        $v0, $a1, .L8008C2A8
/* 7CA74 8008C274 21800000 */   addu      $s0, $zero, $zero
.L8008C278:
/* 7CA78 8008C278 07000224 */  addiu      $v0, $zero, 7
/* 7CA7C 8008C27C 03006210 */  beq        $v1, $v0, .L8008C28C
/* 7CA80 8008C280 00000000 */   nop
/* 7CA84 8008C284 04006014 */  bnez       $v1, .L8008C298
/* 7CA88 8008C288 00000000 */   nop
.L8008C28C:
/* 7CA8C 8008C28C E7484292 */  lbu        $v0, 0x48e7($s2)
/* 7CA90 8008C290 A9300208 */  j          .L8008C2A4
/* 7CA94 8008C294 E64842A2 */   sb        $v0, 0x48e6($s2)
.L8008C298:
/* 7CA98 8008C298 E6484292 */  lbu        $v0, 0x48e6($s2)
/* 7CA9C 8008C29C 00000000 */  nop
/* 7CAA0 8008C2A0 E74842A2 */  sb         $v0, 0x48e7($s2)
.L8008C2A4:
/* 7CAA4 8008C2A4 21800000 */  addu       $s0, $zero, $zero
.L8008C2A8:
/* 7CAA8 8008C2A8 21184002 */  addu       $v1, $s2, $zero
.L8008C2AC:
/* 7CAAC 8008C2AC 0C0060A4 */  sh         $zero, 0xc($v1)
/* 7CAB0 8008C2B0 100060A4 */  sh         $zero, 0x10($v1)
/* 7CAB4 8008C2B4 EC0A60A4 */  sh         $zero, 0xaec($v1)
/* 7CAB8 8008C2B8 01001026 */  addiu      $s0, $s0, 1
/* 7CABC 8008C2BC 0200022A */  slti       $v0, $s0, 2
/* 7CAC0 8008C2C0 FAFF4014 */  bnez       $v0, .L8008C2AC
/* 7CAC4 8008C2C4 02006324 */   addiu     $v1, $v1, 2
/* 7CAC8 8008C2C8 21800000 */  addu       $s0, $zero, $zero
/* 7CACC 8008C2CC 0180023C */  lui        $v0, %hi(D_800158EC)
/* 7CAD0 8008C2D0 EC584724 */  addiu      $a3, $v0, %lo(D_800158EC)
/* 7CAD4 8008C2D4 21200000 */  addu       $a0, $zero, $zero
.L8008C2D8:
/* 7CAD8 8008C2D8 21305002 */  addu       $a2, $s2, $s0
/* 7CADC 8008C2DC E648C590 */  lbu        $a1, 0x48e6($a2)
/* 7CAE0 8008C2E0 2118E000 */  addu       $v1, $a3, $zero
.L8008C2E4:
/* 7CAE4 8008C2E4 0000628C */  lw         $v0, ($v1)
/* 7CAE8 8008C2E8 00000000 */  nop
/* 7CAEC 8008C2EC 0600A210 */  beq        $a1, $v0, .L8008C308
/* 7CAF0 8008C2F0 05000224 */   addiu     $v0, $zero, 5
/* 7CAF4 8008C2F4 01008424 */  addiu      $a0, $a0, 1
/* 7CAF8 8008C2F8 0500822C */  sltiu      $v0, $a0, 5
/* 7CAFC 8008C2FC F9FF4014 */  bnez       $v0, .L8008C2E4
/* 7CB00 8008C300 04006324 */   addiu     $v1, $v1, 4
/* 7CB04 8008C304 05000224 */  addiu      $v0, $zero, 5
.L8008C308:
/* 7CB08 8008C308 02008214 */  bne        $a0, $v0, .L8008C314
/* 7CB0C 8008C30C 01000224 */   addiu     $v0, $zero, 1
/* 7CB10 8008C310 E648C2A0 */  sb         $v0, 0x48e6($a2)
.L8008C314:
/* 7CB14 8008C314 01001026 */  addiu      $s0, $s0, 1
/* 7CB18 8008C318 0200022A */  slti       $v0, $s0, 2
/* 7CB1C 8008C31C EEFF4014 */  bnez       $v0, .L8008C2D8
/* 7CB20 8008C320 21200000 */   addu      $a0, $zero, $zero
/* 7CB24 8008C324 F52E020C */  jal        FUN_8008bbd4
/* 7CB28 8008C328 21204002 */   addu      $a0, $s2, $zero
/* 7CB2C 8008C32C 21980000 */  addu       $s3, $zero, $zero
/* 7CB30 8008C330 0180023C */  lui        $v0, %hi(D_80015900)
/* 7CB34 8008C334 00595124 */  addiu      $s1, $v0, %lo(D_80015900)
/* 7CB38 8008C338 21804002 */  addu       $s0, $s2, $zero
.L8008C33C:
/* 7CB3C 8008C33C 0000248E */  lw         $a0, ($s1)
/* 7CB40 8008C340 C4A3020C */  jal        FUN_800a8f10
/* 7CB44 8008C344 01007326 */   addiu     $s3, $s3, 1
/* 7CB48 8008C348 084702AE */  sw         $v0, 0x4708($s0)
/* 7CB4C 8008C34C 0000248E */  lw         $a0, ($s1)
/* 7CB50 8008C350 DEA3020C */  jal        FUN_800a8f78
/* 7CB54 8008C354 04003126 */   addiu     $s1, $s1, 4
/* 7CB58 8008C358 1C4702AE */  sw         $v0, 0x471c($s0)
/* 7CB5C 8008C35C 0500622A */  slti       $v0, $s3, 5
/* 7CB60 8008C360 F6FF4014 */  bnez       $v0, .L8008C33C
/* 7CB64 8008C364 04001026 */   addiu     $s0, $s0, 4
/* 7CB68 8008C368 ED58020C */  jal        FUN_800963b4
/* 7CB6C 8008C36C 00000000 */   nop
/* 7CB70 8008C370 0359020C */  jal        FUN_8009640c
/* 7CB74 8008C374 21200000 */   addu      $a0, $zero, $zero
/* 7CB78 8008C378 DB5C020C */  jal        FUN_8009736c
/* 7CB7C 8008C37C F80A4426 */   addiu     $a0, $s2, 0xaf8
/* 7CB80 8008C380 0AF8010C */  jal        FUN_8007e028
/* 7CB84 8008C384 21200000 */   addu      $a0, $zero, $zero
/* 7CB88 8008C388 05004010 */  beqz       $v0, .L8008C3A0
/* 7CB8C 8008C38C 00000000 */   nop
/* 7CB90 8008C390 62B3000C */  jal        FUN_8002cd88
/* 7CB94 8008C394 21200000 */   addu      $a0, $zero, $zero
/* 7CB98 8008C398 0A004014 */  bnez       $v0, .L8008C3C4
/* 7CB9C 8008C39C 01000224 */   addiu     $v0, $zero, 1
.L8008C3A0:
/* 7CBA0 8008C3A0 0AF8010C */  jal        FUN_8007e028
/* 7CBA4 8008C3A4 01000424 */   addiu     $a0, $zero, 1
/* 7CBA8 8008C3A8 08004010 */  beqz       $v0, .L8008C3CC
/* 7CBAC 8008C3AC FFFF0324 */   addiu     $v1, $zero, -1
/* 7CBB0 8008C3B0 62B3000C */  jal        FUN_8002cd88
/* 7CBB4 8008C3B4 01000424 */   addiu     $a0, $zero, 1
/* 7CBB8 8008C3B8 04004010 */  beqz       $v0, .L8008C3CC
/* 7CBBC 8008C3BC FFFF0324 */   addiu     $v1, $zero, -1
/* 7CBC0 8008C3C0 01000224 */  addiu      $v0, $zero, 1
.L8008C3C4:
/* 7CBC4 8008C3C4 5C4742AE */  sw         $v0, 0x475c($s2)
/* 7CBC8 8008C3C8 FFFF0324 */  addiu      $v1, $zero, -1
.L8008C3CC:
/* 7CBCC 8008C3CC 04001024 */  addiu      $s0, $zero, 4
/* 7CBD0 8008C3D0 10004226 */  addiu      $v0, $s2, 0x10
.L8008C3D4:
/* 7CBD4 8008C3D4 744743AC */  sw         $v1, 0x4774($v0)
/* 7CBD8 8008C3D8 FFFF1026 */  addiu      $s0, $s0, -1
/* 7CBDC 8008C3DC FDFF0106 */  bgez       $s0, .L8008C3D4
/* 7CBE0 8008C3E0 FCFF4224 */   addiu     $v0, $v0, -4
/* 7CBE4 8008C3E4 21800000 */  addu       $s0, $zero, $zero
/* 7CBE8 8008C3E8 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7CBEC 8008C3EC 28005324 */  addiu      $s3, $v0, %lo(D_800F0028)
/* 7CBF0 8008C3F0 02001724 */  addiu      $s7, $zero, 2
/* 7CBF4 8008C3F4 04001624 */  addiu      $s6, $zero, 4
/* 7CBF8 8008C3F8 1080023C */  lui        $v0, %hi(D_80100028)
/* 7CBFC 8008C3FC 28005524 */  addiu      $s5, $v0, %lo(D_80100028)
/* 7CC00 8008C400 07001424 */  addiu      $s4, $zero, 7
.L8008C404:
/* 7CC04 8008C404 1BA2020C */  jal        FUN_800a886c
/* 7CC08 8008C408 21200002 */   addu      $a0, $s0, $zero
/* 7CC0C 8008C40C 21204000 */  addu       $a0, $v0, $zero
/* 7CC10 8008C410 2D008010 */  beqz       $a0, .L8008C4C8
/* 7CC14 8008C414 00000000 */   nop
/* 7CC18 8008C418 3C006282 */  lb         $v0, 0x3c($s3)
/* 7CC1C 8008C41C 00000000 */  nop
/* 7CC20 8008C420 1B005710 */  beq        $v0, $s7, .L8008C490
/* 7CC24 8008C424 21885002 */   addu      $s1, $s2, $s0
/* 7CC28 8008C428 1A005610 */  beq        $v0, $s6, .L8008C494
/* 7CC2C 8008C42C 21100000 */   addu      $v0, $zero, $zero
/* 7CC30 8008C430 B842A282 */  lb         $v0, 0x42b8($s5)
/* 7CC34 8008C434 00000000 */  nop
/* 7CC38 8008C438 12005710 */  beq        $v0, $s7, .L8008C484
/* 7CC3C 8008C43C 00000000 */   nop
/* 7CC40 8008C440 11005610 */  beq        $v0, $s6, .L8008C488
/* 7CC44 8008C444 0100023C */   lui       $v0, 1
/* 7CC48 8008C448 8A006292 */  lbu        $v0, 0x8a($s3)
/* 7CC4C 8008C44C 00000000 */  nop
/* 7CC50 8008C450 03005410 */  beq        $v0, $s4, .L8008C460
/* 7CC54 8008C454 00000000 */   nop
/* 7CC58 8008C458 0E004014 */  bnez       $v0, .L8008C494
/* 7CC5C 8008C45C 21100000 */   addu      $v0, $zero, $zero
.L8008C460:
/* 7CC60 8008C460 0643A292 */  lbu        $v0, 0x4306($s5)
/* 7CC64 8008C464 00000000 */  nop
/* 7CC68 8008C468 03005410 */  beq        $v0, $s4, .L8008C478
/* 7CC6C 8008C46C 00000000 */   nop
/* 7CC70 8008C470 07004014 */  bnez       $v0, .L8008C490
/* 7CC74 8008C474 00000000 */   nop
.L8008C478:
/* 7CC78 8008C478 FEFF023C */  lui        $v0, 0xfffe
/* 7CC7C 8008C47C 25310208 */  j          .L8008C494
/* 7CC80 8008C480 84BD4234 */   ori       $v0, $v0, 0xbd84
.L8008C484:
/* 7CC84 8008C484 0100023C */  lui        $v0, 1
.L8008C488:
/* 7CC88 8008C488 25310208 */  j          .L8008C494
/* 7CC8C 8008C48C 7C424234 */   ori       $v0, $v0, 0x427c
.L8008C490:
/* 7CC90 8008C490 21100000 */  addu       $v0, $zero, $zero
.L8008C494:
/* 7CC94 8008C494 21106202 */  addu       $v0, $s3, $v0
/* 7CC98 8008C498 8A004590 */  lbu        $a1, 0x8a($v0)
/* 7CC9C 8008C49C 00000000 */  nop
/* 7CCA0 8008C4A0 0200A538 */  xori       $a1, $a1, 2
/* 7CCA4 8008C4A4 0100A52C */  sltiu      $a1, $a1, 1
/* 7CCA8 8008C4A8 BBAC020C */  jal        FUN_800ab2ec
/* 7CCAC 8008C4AC 40280500 */   sll       $a1, $a1, 1
/* 7CCB0 8008C4B0 8C4722A2 */  sb         $v0, 0x478c($s1)
/* 7CCB4 8008C4B4 1F000232 */  andi       $v0, $s0, 0x1f
/* 7CCB8 8008C4B8 03004014 */  bnez       $v0, .L8008C4C8
/* 7CCBC 8008C4BC 00000000 */   nop
/* 7CCC0 8008C4C0 7CAA000C */  jal        vsync_8002a9f0
/* 7CCC4 8008C4C4 00000000 */   nop
.L8008C4C8:
/* 7CCC8 8008C4C8 01001026 */  addiu      $s0, $s0, 1
/* 7CCCC 8008C4CC F900022A */  slti       $v0, $s0, 0xf9
/* 7CCD0 8008C4D0 CCFF4014 */  bnez       $v0, .L8008C404
/* 7CCD4 8008C4D4 00000000 */   nop
/* 7CCD8 8008C4D8 712F020C */  jal        FUN_8008bdc4
/* 7CCDC 8008C4DC 21204002 */   addu      $a0, $s2, $zero
/* 7CCE0 8008C4E0 EB51023C */  lui        $v0, 0x51eb
/* 7CCE4 8008C4E4 D80A448E */  lw         $a0, 0xad8($s2)
/* 7CCE8 8008C4E8 1F854234 */  ori        $v0, $v0, 0x851f
/* 7CCEC 8008C4EC 18008200 */  mult       $a0, $v0
/* 7CCF0 8008C4F0 C3170400 */  sra        $v0, $a0, 0x1f
/* 7CCF4 8008C4F4 10400000 */  mfhi       $t0
/* 7CCF8 8008C4F8 83190800 */  sra        $v1, $t0, 6
/* 7CCFC 8008C4FC 23186200 */  subu       $v1, $v1, $v0
/* 7CD00 8008C500 40100300 */  sll        $v0, $v1, 1
/* 7CD04 8008C504 21104300 */  addu       $v0, $v0, $v1
/* 7CD08 8008C508 C0100200 */  sll        $v0, $v0, 3
/* 7CD0C 8008C50C 21104300 */  addu       $v0, $v0, $v1
/* 7CD10 8008C510 C0100200 */  sll        $v0, $v0, 3
/* 7CD14 8008C514 0F80033C */  lui        $v1, %hi(D_800F0034)
/* 7CD18 8008C518 34006390 */  lbu        $v1, %lo(D_800F0034)($v1)
/* 7CD1C 8008C51C 23208200 */  subu       $a0, $a0, $v0
/* 7CD20 8008C520 001E0300 */  sll        $v1, $v1, 0x18
/* 7CD24 8008C524 03160300 */  sra        $v0, $v1, 0x18
/* 7CD28 8008C528 C21F0300 */  srl        $v1, $v1, 0x1f
/* 7CD2C 8008C52C 21104300 */  addu       $v0, $v0, $v1
/* 7CD30 8008C530 43100200 */  sra        $v0, $v0, 1
/* 7CD34 8008C534 2A104400 */  slt        $v0, $v0, $a0
/* 7CD38 8008C538 04004014 */  bnez       $v0, .L8008C54C
/* 7CD3C 8008C53C 0A008228 */   slti      $v0, $a0, 0xa
/* 7CD40 8008C540 03000224 */  addiu      $v0, $zero, 3
/* 7CD44 8008C544 5D310208 */  j          .L8008C574
/* 7CD48 8008C548 704742AE */   sw        $v0, 0x4770($s2)
.L8008C54C:
/* 7CD4C 8008C54C 03004010 */  beqz       $v0, .L8008C55C
/* 7CD50 8008C550 02000224 */   addiu     $v0, $zero, 2
/* 7CD54 8008C554 5D310208 */  j          .L8008C574
/* 7CD58 8008C558 704742AE */   sw        $v0, 0x4770($s2)
.L8008C55C:
/* 7CD5C 8008C55C 0F008228 */  slti       $v0, $a0, 0xf
/* 7CD60 8008C560 03004010 */  beqz       $v0, .L8008C570
/* 7CD64 8008C564 01000224 */   addiu     $v0, $zero, 1
/* 7CD68 8008C568 5D310208 */  j          .L8008C574
/* 7CD6C 8008C56C 704742AE */   sw        $v0, 0x4770($s2)
.L8008C570:
/* 7CD70 8008C570 704740AE */  sw         $zero, 0x4770($s2)
.L8008C574:
/* 7CD74 8008C574 A848428E */  lw         $v0, 0x48a8($s2)
/* 7CD78 8008C578 00000000 */  nop
/* 7CD7C 8008C57C 07004014 */  bnez       $v0, .L8008C59C
/* 7CD80 8008C580 00000000 */   nop
/* 7CD84 8008C584 7047438E */  lw         $v1, 0x4770($s2)
/* 7CD88 8008C588 00000000 */  nop
/* 7CD8C 8008C58C 02006228 */  slti       $v0, $v1, 2
/* 7CD90 8008C590 02004014 */  bnez       $v0, .L8008C59C
/* 7CD94 8008C594 FEFF6224 */   addiu     $v0, $v1, -2
/* 7CD98 8008C598 704742AE */  sw         $v0, 0x4770($s2)
.L8008C59C:
/* 7CD9C 8008C59C AC484392 */  lbu        $v1, 0x48ac($s2)
/* 7CDA0 8008C5A0 01000224 */  addiu      $v0, $zero, 1
/* 7CDA4 8008C5A4 44006214 */  bne        $v1, $v0, .L8008C6B8
/* 7CDA8 8008C5A8 00000000 */   nop
/* 7CDAC 8008C5AC 0000428E */  lw         $v0, ($s2)
/* 7CDB0 8008C5B0 00000000 */  nop
/* 7CDB4 8008C5B4 40100200 */  sll        $v0, $v0, 1
/* 7CDB8 8008C5B8 21104202 */  addu       $v0, $s2, $v0
/* 7CDBC 8008C5BC 0A024284 */  lh         $v0, 0x20a($v0)
/* 7CDC0 8008C5C0 00000000 */  nop
/* 7CDC4 8008C5C4 DC4842AE */  sw         $v0, 0x48dc($s2)
/* 7CDC8 8008C5C8 D84842AE */  sw         $v0, 0x48d8($s2)
/* 7CDCC 8008C5CC 0F80023C */  lui        $v0, %hi(D_800F0048)
/* 7CDD0 8008C5D0 48004280 */  lb         $v0, %lo(D_800F0048)($v0)
/* 7CDD4 8008C5D4 00000000 */  nop
/* 7CDD8 8008C5D8 04004310 */  beq        $v0, $v1, .L8008C5EC
/* 7CDDC 8008C5DC 21980000 */   addu      $s3, $zero, $zero
.L8008C5E0:
/* 7CDE0 8008C5E0 0400622A */  slti       $v0, $s3, 4
/* 7CDE4 8008C5E4 27004010 */  beqz       $v0, .L8008C684
/* 7CDE8 8008C5E8 04000524 */   addiu     $a1, $zero, 4
.L8008C5EC:
/* 7CDEC 8008C5EC D848448E */  lw         $a0, 0x48d8($s2)
/* 7CDF0 8008C5F0 C389020C */  jal        FUN_800a270c
/* 7CDF4 8008C5F4 21286002 */   addu      $a1, $s3, $zero
/* 7CDF8 8008C5F8 21284000 */  addu       $a1, $v0, $zero
/* 7CDFC 8008C5FC 0500A014 */  bnez       $a1, .L8008C614
/* 7CE00 8008C600 80201300 */   sll       $a0, $s3, 2
/* 7CE04 8008C604 80101300 */  sll        $v0, $s3, 2
/* 7CE08 8008C608 2110A203 */  addu       $v0, $sp, $v0
/* 7CE0C 8008C60C 99310208 */  j          .L8008C664
/* 7CE10 8008C610 400040AC */   sw        $zero, 0x40($v0)
.L8008C614:
/* 7CE14 8008C614 4000A327 */  addiu      $v1, $sp, 0x40
/* 7CE18 8008C618 0800A284 */  lh         $v0, 8($a1)
/* 7CE1C 8008C61C 21886400 */  addu       $s1, $v1, $a0
/* 7CE20 8008C620 000022AE */  sw         $v0, ($s1)
/* 7CE24 8008C624 F9004228 */  slti       $v0, $v0, 0xf9
/* 7CE28 8008C628 0F004014 */  bnez       $v0, .L8008C668
/* 7CE2C 8008C62C 0F80023C */   lui       $v0, 0x800f
/* 7CE30 8008C630 5800B027 */  addiu      $s0, $sp, 0x58
/* 7CE34 8008C634 057C000C */  jal        strcpy
/* 7CE38 8008C638 21200002 */   addu      $a0, $s0, $zero
/* 7CE3C 8008C63C 5C00A393 */  lbu        $v1, 0x5c($sp)
/* 7CE40 8008C640 33000224 */  addiu      $v0, $zero, 0x33
/* 7CE44 8008C644 06006214 */  bne        $v1, $v0, .L8008C660
/* 7CE48 8008C648 21200002 */   addu      $a0, $s0, $zero
/* 7CE4C 8008C64C 0FA2020C */  jal        FUN_800a883c
/* 7CE50 8008C650 5C00A0A3 */   sb        $zero, 0x5c($sp)
/* 7CE54 8008C654 08004284 */  lh         $v0, 8($v0)
/* 7CE58 8008C658 99310208 */  j          .L8008C664
/* 7CE5C 8008C65C 000022AE */   sw        $v0, ($s1)
.L8008C660:
/* 7CE60 8008C660 000020AE */  sw         $zero, ($s1)
.L8008C664:
/* 7CE64 8008C664 0F80023C */  lui        $v0, %hi(D_800F0048)
.L8008C668:
/* 7CE68 8008C668 48004380 */  lb         $v1, %lo(D_800F0048)($v0)
/* 7CE6C 8008C66C 01000224 */  addiu      $v0, $zero, 1
/* 7CE70 8008C670 DBFF6214 */  bne        $v1, $v0, .L8008C5E0
/* 7CE74 8008C674 01007326 */   addiu     $s3, $s3, 1
/* 7CE78 8008C678 0500622A */  slti       $v0, $s3, 5
/* 7CE7C 8008C67C DBFF4014 */  bnez       $v0, .L8008C5EC
/* 7CE80 8008C680 04000524 */   addiu     $a1, $zero, 4
.L8008C684:
/* 7CE84 8008C684 0F80023C */  lui        $v0, %hi(D_800F0048)
/* 7CE88 8008C688 48004380 */  lb         $v1, %lo(D_800F0048)($v0)
/* 7CE8C 8008C68C 01000224 */  addiu      $v0, $zero, 1
/* 7CE90 8008C690 02006214 */  bne        $v1, $v0, .L8008C69C
/* 7CE94 8008C694 BC484726 */   addiu     $a3, $s2, 0x48bc
/* 7CE98 8008C698 05000524 */  addiu      $a1, $zero, 5
.L8008C69C:
/* 7CE9C 8008C69C 21204002 */  addu       $a0, $s2, $zero
/* 7CEA0 8008C6A0 4000A627 */  addiu      $a2, $sp, 0x40
/* 7CEA4 8008C6A4 02000224 */  addiu      $v0, $zero, 2
/* 7CEA8 8008C6A8 1000A0AF */  sw         $zero, 0x10($sp)
/* 7CEAC 8008C6AC 1400A2AF */  sw         $v0, 0x14($sp)
/* 7CEB0 8008C6B0 ED13020C */  jal        FUN_80084fb4
/* 7CEB4 8008C6B4 1800A0AF */   sw        $zero, 0x18($sp)
.L8008C6B8:
/* 7CEB8 8008C6B8 38FA010C */  jal        FUN_8007e8e0
/* 7CEBC 8008C6BC 00000000 */   nop
/* 7CEC0 8008C6C0 8800BF8F */  lw         $ra, 0x88($sp)
/* 7CEC4 8008C6C4 8400B78F */  lw         $s7, 0x84($sp)
/* 7CEC8 8008C6C8 8000B68F */  lw         $s6, 0x80($sp)
/* 7CECC 8008C6CC 7C00B58F */  lw         $s5, 0x7c($sp)
/* 7CED0 8008C6D0 7800B48F */  lw         $s4, 0x78($sp)
/* 7CED4 8008C6D4 7400B38F */  lw         $s3, 0x74($sp)
/* 7CED8 8008C6D8 7000B28F */  lw         $s2, 0x70($sp)
/* 7CEDC 8008C6DC 6C00B18F */  lw         $s1, 0x6c($sp)
/* 7CEE0 8008C6E0 6800B08F */  lw         $s0, 0x68($sp)
/* 7CEE4 8008C6E4 0800E003 */  jr         $ra
/* 7CEE8 8008C6E8 9000BD27 */   addiu     $sp, $sp, 0x90
