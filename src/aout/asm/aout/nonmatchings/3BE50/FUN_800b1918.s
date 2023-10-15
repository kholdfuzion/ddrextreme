.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1918
/* A2118 800B1918 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* A211C 800B191C 1D80063C */  lui        $a2, %hi(D_801D2CB8)
/* A2120 800B1920 FFFF0224 */  addiu      $v0, $zero, -1
/* A2124 800B1924 1D80043C */  lui        $a0, 0x801d
/* A2128 800B1928 1000A2AF */  sw         $v0, 0x10($sp)
/* A212C 800B192C 1D80023C */  lui        $v0, %hi(D_801D2CC8)
/* A2130 800B1930 B82CC58C */  lw         $a1, %lo(D_801D2CB8)($a2)
/* A2134 800B1934 C82C4224 */  addiu      $v0, $v0, %lo(D_801D2CC8)
/* A2138 800B1938 3C00BFAF */  sw         $ra, 0x3c($sp)
/* A213C 800B193C 3800BEAF */  sw         $fp, 0x38($sp)
/* A2140 800B1940 3400B7AF */  sw         $s7, 0x34($sp)
/* A2144 800B1944 3000B6AF */  sw         $s6, 0x30($sp)
/* A2148 800B1948 2C00B5AF */  sw         $s5, 0x2c($sp)
/* A214C 800B194C 2800B4AF */  sw         $s4, 0x28($sp)
/* A2150 800B1950 2400B3AF */  sw         $s3, 0x24($sp)
/* A2154 800B1954 2000B2AF */  sw         $s2, 0x20($sp)
/* A2158 800B1958 1C00B1AF */  sw         $s1, 0x1c($sp)
/* A215C 800B195C 1800B0AF */  sw         $s0, 0x18($sp)
/* A2160 800B1960 80180500 */  sll        $v1, $a1, 2
/* A2164 800B1964 21186500 */  addu       $v1, $v1, $a1
/* A2168 800B1968 0100A524 */  addiu      $a1, $a1, 1
/* A216C 800B196C 80180300 */  sll        $v1, $v1, 2
/* A2170 800B1970 21886200 */  addu       $s1, $v1, $v0
/* A2174 800B1974 1000A22C */  sltiu      $v0, $a1, 0x10
/* A2178 800B1978 02004014 */  bnez       $v0, .L800B1984
/* A217C 800B197C 082E91AC */   sw        $s1, 0x2e08($a0)
/* A2180 800B1980 21280000 */  addu       $a1, $zero, $zero
.L800B1984:
/* A2184 800B1984 21B80000 */  addu       $s7, $zero, $zero
/* A2188 800B1988 21B00000 */  addu       $s6, $zero, $zero
/* A218C 800B198C 0400348E */  lw         $s4, 4($s1)
/* A2190 800B1990 02000224 */  addiu      $v0, $zero, 2
/* A2194 800B1994 B82CC5AC */  sw         $a1, 0x2cb8($a2)
/* A2198 800B1998 4F00801A */  blez       $s4, .L800B1AD8
/* A219C 800B199C 0C0022AE */   sw        $v0, 0xc($s1)
/* A21A0 800B19A0 1D801E3C */  lui        $fp, 0x801d
.L800B19A4:
/* A21A4 800B19A4 0400308E */  lw         $s0, 4($s1)
/* A21A8 800B19A8 00000000 */  nop
/* A21AC 800B19AC 1100022E */  sltiu      $v0, $s0, 0x11
/* A21B0 800B19B0 03004014 */  bnez       $v0, .L800B19C0
/* A21B4 800B19B4 21300002 */   addu      $a2, $s0, $zero
/* A21B8 800B19B8 10001024 */  addiu      $s0, $zero, 0x10
/* A21BC 800B19BC 21300002 */  addu       $a2, $s0, $zero
.L800B19C0:
/* A21C0 800B19C0 0000248E */  lw         $a0, ($s1)
/* A21C4 800B19C4 0800258E */  lw         $a1, 8($s1)
/* A21C8 800B19C8 B449030C */  jal        FUN_800d26d0
/* A21CC 800B19CC 21380000 */   addu      $a3, $zero, $zero
/* A21D0 800B19D0 1832C327 */  addiu      $v1, $fp, 0x3218
/* A21D4 800B19D4 1D80153C */  lui        $s5, 0x801d
/* A21D8 800B19D8 03004014 */  bnez       $v0, .L800B19E8
/* A21DC 800B19DC 040062AC */   sw        $v0, 4($v1)
/* A21E0 800B19E0 87C60208 */  j          .L800B1A1C
/* A21E4 800B19E4 21B00000 */   addu      $s6, $zero, $zero
.L800B19E8:
/* A21E8 800B19E8 01000424 */  addiu      $a0, $zero, 1
/* A21EC 800B19EC 1000658C */  lw         $a1, 0x10($v1)
/* A21F0 800B19F0 1CC7020C */  jal        FUN_800b1c70
/* A21F4 800B19F4 0100D626 */   addiu     $s6, $s6, 1
/* A21F8 800B19F8 0400C22A */  slti       $v0, $s6, 4
/* A21FC 800B19FC 02004010 */  beqz       $v0, .L800B1A08
/* A2200 800B1A00 01000324 */   addiu     $v1, $zero, 1
/* A2204 800B1A04 0100C32A */  slti       $v1, $s6, 1
.L800B1A08:
/* A2208 800B1A08 31006010 */  beqz       $v1, .L800B1AD0
/* A220C 800B1A0C 0180023C */   lui       $v0, %hi(D_800170EC)
/* A2210 800B1A10 EC704424 */  addiu      $a0, $v0, %lo(D_800170EC)
/* A2214 800B1A14 B0C60208 */  j          .L800B1AC0
/* A2218 800B1A18 FFFF0524 */   addiu     $a1, $zero, -1
.L800B1A1C:
/* A221C 800B1A1C 1832D327 */  addiu      $s3, $fp, 0x3218
/* A2220 800B1A20 8CC60208 */  j          .L800B1A30
/* A2224 800B1A24 F6FF1224 */   addiu     $s2, $zero, -0xa
.L800B1A28:
/* A2228 800B1A28 BFC2020C */  jal        ChangeTh
/* A222C 800B1A2C 00FF043C */   lui       $a0, 0xff00
.L800B1A30:
/* A2230 800B1A30 9E44030C */  jal        FUN_800d1278
/* A2234 800B1A34 00000000 */   nop
/* A2238 800B1A38 FBFF5210 */  beq        $v0, $s2, .L800B1A28
/* A223C 800B1A3C 040062AE */   sw        $v0, 4($s3)
/* A2240 800B1A40 1832A326 */  addiu      $v1, $s5, 0x3218
/* A2244 800B1A44 0400628C */  lw         $v0, 4($v1)
/* A2248 800B1A48 00000000 */  nop
/* A224C 800B1A4C 11004014 */  bnez       $v0, .L800B1A94
/* A2250 800B1A50 01000424 */   addiu     $a0, $zero, 1
/* A2254 800B1A54 0400228E */  lw         $v0, 4($s1)
/* A2258 800B1A58 00000000 */  nop
/* A225C 800B1A5C 23A05000 */  subu       $s4, $v0, $s0
/* A2260 800B1A60 0A00801A */  blez       $s4, .L800B1A8C
/* A2264 800B1A64 21B80000 */   addu      $s7, $zero, $zero
/* A2268 800B1A68 0000228E */  lw         $v0, ($s1)
/* A226C 800B1A6C 0800238E */  lw         $v1, 8($s1)
/* A2270 800B1A70 040034AE */  sw         $s4, 4($s1)
/* A2274 800B1A74 21105000 */  addu       $v0, $v0, $s0
/* A2278 800B1A78 000022AE */  sw         $v0, ($s1)
/* A227C 800B1A7C C0121000 */  sll        $v0, $s0, 0xb
/* A2280 800B1A80 21186200 */  addu       $v1, $v1, $v0
/* A2284 800B1A84 B4C60208 */  j          .L800B1AD0
/* A2288 800B1A88 080023AE */   sw        $v1, 8($s1)
.L800B1A8C:
/* A228C 800B1A8C B4C60208 */  j          .L800B1AD0
/* A2290 800B1A90 1000A0AF */   sw        $zero, 0x10($sp)
.L800B1A94:
/* A2294 800B1A94 1000658C */  lw         $a1, 0x10($v1)
/* A2298 800B1A98 1CC7020C */  jal        FUN_800b1c70
/* A229C 800B1A9C 0100F726 */   addiu     $s7, $s7, 1
/* A22A0 800B1AA0 0400E22A */  slti       $v0, $s7, 4
/* A22A4 800B1AA4 02004010 */  beqz       $v0, .L800B1AB0
/* A22A8 800B1AA8 01000324 */   addiu     $v1, $zero, 1
/* A22AC 800B1AAC 0100E32A */  slti       $v1, $s7, 1
.L800B1AB0:
/* A22B0 800B1AB0 07006010 */  beqz       $v1, .L800B1AD0
/* A22B4 800B1AB4 0180023C */   lui       $v0, %hi(D_800170EC)
/* A22B8 800B1AB8 EC704424 */  addiu      $a0, $v0, %lo(D_800170EC)
/* A22BC 800B1ABC FEFF0524 */  addiu      $a1, $zero, -2
.L800B1AC0:
/* A22C0 800B1AC0 58AA000C */  jal        error_8002a960
/* A22C4 800B1AC4 21300000 */   addu      $a2, $zero, $zero
/* A22C8 800B1AC8 B6C60208 */  j          .L800B1AD8
/* A22CC 800B1ACC 00000000 */   nop
.L800B1AD0:
/* A22D0 800B1AD0 B4FF801E */  bgtz       $s4, .L800B19A4
/* A22D4 800B1AD4 00000000 */   nop
.L800B1AD8:
/* A22D8 800B1AD8 1000A28F */  lw         $v0, 0x10($sp)
/* A22DC 800B1ADC 3C00BF8F */  lw         $ra, 0x3c($sp)
/* A22E0 800B1AE0 3800BE8F */  lw         $fp, 0x38($sp)
/* A22E4 800B1AE4 3400B78F */  lw         $s7, 0x34($sp)
/* A22E8 800B1AE8 3000B68F */  lw         $s6, 0x30($sp)
/* A22EC 800B1AEC 2C00B58F */  lw         $s5, 0x2c($sp)
/* A22F0 800B1AF0 2800B48F */  lw         $s4, 0x28($sp)
/* A22F4 800B1AF4 2400B38F */  lw         $s3, 0x24($sp)
/* A22F8 800B1AF8 2000B28F */  lw         $s2, 0x20($sp)
/* A22FC 800B1AFC 1800B08F */  lw         $s0, 0x18($sp)
/* A2300 800B1B00 0C0022AE */  sw         $v0, 0xc($s1)
/* A2304 800B1B04 1000A28F */  lw         $v0, 0x10($sp)
/* A2308 800B1B08 1C00B18F */  lw         $s1, 0x1c($sp)
/* A230C 800B1B0C 0800E003 */  jr         $ra
/* A2310 800B1B10 4000BD27 */   addiu     $sp, $sp, 0x40
