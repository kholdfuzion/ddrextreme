.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c18ec
/* B20EC 800C18EC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B20F0 800C18F0 21488000 */  addu       $t1, $a0, $zero
/* B20F4 800C18F4 1F80053C */  lui        $a1, %hi(D_801F70B0)
/* B20F8 800C18F8 401F073C */  lui        $a3, 0x1f40
/* B20FC 800C18FC 0600E294 */  lhu        $v0, 6($a3)
/* B2100 800C1900 B070A624 */  addiu      $a2, $a1, %lo(D_801F70B0)
/* B2104 800C1904 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B2108 800C1908 10004230 */  andi       $v0, $v0, 0x10
/* B210C 800C190C 0E004014 */  bnez       $v0, .L800C1948
/* B2110 800C1910 1800B0AF */   sw        $s0, 0x18($sp)
/* B2114 800C1914 401F043C */  lui        $a0, 0x1f40
/* B2118 800C1918 04008294 */  lhu        $v0, 4($a0)
/* B211C 800C191C C0000324 */  addiu      $v1, $zero, 0xc0
/* B2120 800C1920 C0004230 */  andi       $v0, $v0, 0xc0
/* B2124 800C1924 64004310 */  beq        $v0, $v1, .L800C1AB8
/* B2128 800C1928 FBFF0224 */   addiu     $v0, $zero, -5
/* B212C 800C192C 04008394 */  lhu        $v1, 4($a0)
/* B2130 800C1930 00000000 */  nop
/* B2134 800C1934 C0006330 */  andi       $v1, $v1, 0xc0
/* B2138 800C1938 5F006010 */  beqz       $v1, .L800C1AB8
/* B213C 800C193C FEFF0224 */   addiu     $v0, $zero, -2
/* B2140 800C1940 AE060308 */  j          .L800C1AB8
/* B2144 800C1944 FCFF0224 */   addiu     $v0, $zero, -4
.L800C1948:
/* B2148 800C1948 401F023C */  lui        $v0, 0x1f40
/* B214C 800C194C 521F043C */  lui        $a0, 0x1f52
/* B2150 800C1950 0A004394 */  lhu        $v1, 0xa($v0)
/* B2154 800C1954 FFFF0234 */  ori        $v0, $zero, 0xffff
/* B2158 800C1958 000082A4 */  sh         $v0, ($a0)
/* B215C 800C195C 1F80023C */  lui        $v0, %hi(D_801F71B4)
/* B2160 800C1960 B47140AC */  sw         $zero, %lo(D_801F71B4)($v0)
/* B2164 800C1964 B471428C */  lw         $v0, 0x71b4($v0)
/* B2168 800C1968 E0000224 */  addiu      $v0, $zero, 0xe0
/* B216C 800C196C B070A3A4 */  sh         $v1, 0x70b0($a1)
/* B2170 800C1970 FFFF6330 */  andi       $v1, $v1, 0xffff
/* B2174 800C1974 0E006210 */  beq        $v1, $v0, .L800C19B0
/* B2178 800C1978 FCFF0224 */   addiu     $v0, $zero, -4
/* B217C 800C197C AE060308 */  j          .L800C1AB8
/* B2180 800C1980 00000000 */   nop
.L800C1984:
/* B2184 800C1984 21200000 */  addu       $a0, $zero, $zero
/* B2188 800C1988 0A004294 */  lhu        $v0, 0xa($v0)
/* B218C 800C198C 521F033C */  lui        $v1, 0x1f52
/* B2190 800C1990 0000C2A4 */  sh         $v0, ($a2)
/* B2194 800C1994 FFFF0234 */  ori        $v0, $zero, 0xffff
/* B2198 800C1998 000062A4 */  sh         $v0, ($v1)
/* B219C 800C199C 1F80023C */  lui        $v0, %hi(D_801F71B4)
/* B21A0 800C19A0 B47140AC */  sw         $zero, %lo(D_801F71B4)($v0)
/* B21A4 800C19A4 B471428C */  lw         $v0, 0x71b4($v0)
/* B21A8 800C19A8 7D060308 */  j          .L800C19F4
/* B21AC 800C19AC FDFF0224 */   addiu     $v0, $zero, -3
.L800C19B0:
/* B21B0 800C19B0 0200C624 */  addiu      $a2, $a2, 2
/* B21B4 800C19B4 21200000 */  addu       $a0, $zero, $zero
/* B21B8 800C19B8 401F023C */  lui        $v0, 0x1f40
/* B21BC 800C19BC 08004394 */  lhu        $v1, 8($v0)
/* B21C0 800C19C0 21284000 */  addu       $a1, $v0, $zero
/* B21C4 800C19C4 1000A3A7 */  sh         $v1, 0x10($sp)
.L800C19C8:
/* B21C8 800C19C8 0600E294 */  lhu        $v0, 6($a3)
/* B21CC 800C19CC 00000000 */  nop
/* B21D0 800C19D0 10004230 */  andi       $v0, $v0, 0x10
/* B21D4 800C19D4 EBFF4014 */  bnez       $v0, .L800C1984
/* B21D8 800C19D8 401F023C */   lui       $v0, 0x1f40
/* B21DC 800C19DC 0800A294 */  lhu        $v0, 8($a1)
/* B21E0 800C19E0 01008424 */  addiu      $a0, $a0, 1
/* B21E4 800C19E4 30008228 */  slti       $v0, $a0, 0x30
/* B21E8 800C19E8 F7FF4014 */  bnez       $v0, .L800C19C8
/* B21EC 800C19EC FDFF0224 */   addiu     $v0, $zero, -3
/* B21F0 800C19F0 FFFF0424 */  addiu      $a0, $zero, -1
.L800C19F4:
/* B21F4 800C19F4 30008014 */  bnez       $a0, .L800C1AB8
/* B21F8 800C19F8 00000000 */   nop
/* B21FC 800C19FC 1F80023C */  lui        $v0, %hi(D_801F70B2)
/* B2200 800C1A00 B2704290 */  lbu        $v0, %lo(D_801F70B2)($v0)
/* B2204 800C1A04 00000000 */  nop
/* B2208 800C1A08 FFFF4524 */  addiu      $a1, $v0, -1
/* B220C 800C1A0C 2000A018 */  blez       $a1, .L800C1A90
/* B2210 800C1A10 0200C624 */   addiu     $a2, $a2, 2
/* B2214 800C1A14 401F083C */  lui        $t0, 0x1f40
/* B2218 800C1A18 401F073C */  lui        $a3, 0x1f40
.L800C1A1C:
/* B221C 800C1A1C 21180000 */  addu       $v1, $zero, $zero
.L800C1A20:
/* B2220 800C1A20 06000295 */  lhu        $v0, 6($t0)
/* B2224 800C1A24 00000000 */  nop
/* B2228 800C1A28 10004230 */  andi       $v0, $v0, 0x10
/* B222C 800C1A2C 0A004014 */  bnez       $v0, .L800C1A58
/* B2230 800C1A30 401F023C */   lui       $v0, 0x1f40
/* B2234 800C1A34 0800E294 */  lhu        $v0, 8($a3)
/* B2238 800C1A38 01006324 */  addiu      $v1, $v1, 1
/* B223C 800C1A3C 30006228 */  slti       $v0, $v1, 0x30
/* B2240 800C1A40 F7FF4014 */  bnez       $v0, .L800C1A20
/* B2244 800C1A44 FFFF0424 */   addiu     $a0, $zero, -1
.L800C1A48:
/* B2248 800C1A48 0E008010 */  beqz       $a0, .L800C1A84
/* B224C 800C1A4C FDFF0224 */   addiu     $v0, $zero, -3
/* B2250 800C1A50 AE060308 */  j          .L800C1AB8
/* B2254 800C1A54 00000000 */   nop
.L800C1A58:
/* B2258 800C1A58 21200000 */  addu       $a0, $zero, $zero
/* B225C 800C1A5C 0A004294 */  lhu        $v0, 0xa($v0)
/* B2260 800C1A60 521F033C */  lui        $v1, 0x1f52
/* B2264 800C1A64 0000C2A4 */  sh         $v0, ($a2)
/* B2268 800C1A68 FFFF0234 */  ori        $v0, $zero, 0xffff
/* B226C 800C1A6C 000062A4 */  sh         $v0, ($v1)
/* B2270 800C1A70 1F80023C */  lui        $v0, %hi(D_801F71B4)
/* B2274 800C1A74 B47140AC */  sw         $zero, %lo(D_801F71B4)($v0)
/* B2278 800C1A78 B471428C */  lw         $v0, 0x71b4($v0)
/* B227C 800C1A7C 92060308 */  j          .L800C1A48
/* B2280 800C1A80 00000000 */   nop
.L800C1A84:
/* B2284 800C1A84 FEFFA524 */  addiu      $a1, $a1, -2
/* B2288 800C1A88 E4FFA01C */  bgtz       $a1, .L800C1A1C
/* B228C 800C1A8C 0200C624 */   addiu     $a2, $a2, 2
.L800C1A90:
/* B2290 800C1A90 1F80053C */  lui        $a1, %hi(D_801F70B3)
/* B2294 800C1A94 B370A524 */  addiu      $a1, $a1, %lo(D_801F70B3)
/* B2298 800C1A98 FDFFB024 */  addiu      $s0, $a1, -3
/* B229C 800C1A9C 02000692 */  lbu        $a2, 2($s0)
/* B22A0 800C1AA0 21202001 */  addu       $a0, $t1, $zero
/* B22A4 800C1AA4 BD6B000C */  jal        memcpy
/* B22A8 800C1AA8 FFFFC624 */   addiu     $a2, $a2, -1
/* B22AC 800C1AAC 02000292 */  lbu        $v0, 2($s0)
/* B22B0 800C1AB0 00000000 */  nop
/* B22B4 800C1AB4 FFFF4224 */  addiu      $v0, $v0, -1
.L800C1AB8:
/* B22B8 800C1AB8 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B22BC 800C1ABC 1800B08F */  lw         $s0, 0x18($sp)
/* B22C0 800C1AC0 0800E003 */  jr         $ra
/* B22C4 800C1AC4 2000BD27 */   addiu     $sp, $sp, 0x20
