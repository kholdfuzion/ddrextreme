.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1870
/* A2070 800B1870 1D800A3C */  lui        $t2, %hi(D_801D2CBC)
/* A2074 800B1874 1D80053C */  lui        $a1, %hi(D_801D2CB8)
/* A2078 800B1878 BC2C478D */  lw         $a3, %lo(D_801D2CBC)($t2)
/* A207C 800B187C B82CA28C */  lw         $v0, %lo(D_801D2CB8)($a1)
/* A2080 800B1880 00000000 */  nop
/* A2084 800B1884 2318E200 */  subu       $v1, $a3, $v0
/* A2088 800B1888 02006104 */  bgez       $v1, .L800B1894
/* A208C 800B188C 21488000 */   addu      $t1, $a0, $zero
/* A2090 800B1890 10006324 */  addiu      $v1, $v1, 0x10
.L800B1894:
/* A2094 800B1894 0F000224 */  addiu      $v0, $zero, 0xf
/* A2098 800B1898 23104300 */  subu       $v0, $v0, $v1
/* A209C 800B189C 0600401C */  bgtz       $v0, .L800B18B8
/* A20A0 800B18A0 1D80043C */   lui       $a0, %hi(D_801D2CC8)
/* A20A4 800B18A4 C82C8324 */  addiu      $v1, $a0, %lo(D_801D2CC8)
/* A20A8 800B18A8 1D80023C */  lui        $v0, %hi(D_801D2E08)
/* A20AC 800B18AC BC2C40AD */  sw         $zero, 0x2cbc($t2)
/* A20B0 800B18B0 B82CA0AC */  sw         $zero, 0x2cb8($a1)
/* A20B4 800B18B4 082E43AC */  sw         $v1, %lo(D_801D2E08)($v0)
.L800B18B8:
/* A20B8 800B18B8 0100E824 */  addiu      $t0, $a3, 1
/* A20BC 800B18BC C82C8424 */  addiu      $a0, $a0, 0x2cc8
/* A20C0 800B18C0 80100700 */  sll        $v0, $a3, 2
/* A20C4 800B18C4 21104700 */  addu       $v0, $v0, $a3
/* A20C8 800B18C8 80100200 */  sll        $v0, $v0, 2
/* A20CC 800B18CC 0000258D */  lw         $a1, ($t1)
/* A20D0 800B18D0 21184400 */  addu       $v1, $v0, $a0
/* A20D4 800B18D4 000065AC */  sw         $a1, ($v1)
/* A20D8 800B18D8 21188200 */  addu       $v1, $a0, $v0
/* A20DC 800B18DC 0400268D */  lw         $a2, 4($t1)
/* A20E0 800B18E0 1000022D */  sltiu      $v0, $t0, 0x10
/* A20E4 800B18E4 040066AC */  sw         $a2, 4($v1)
/* A20E8 800B18E8 21306000 */  addu       $a2, $v1, $zero
/* A20EC 800B18EC 0800258D */  lw         $a1, 8($t1)
/* A20F0 800B18F0 2120C000 */  addu       $a0, $a2, $zero
/* A20F4 800B18F4 080065AC */  sw         $a1, 8($v1)
/* A20F8 800B18F8 01000324 */  addiu      $v1, $zero, 1
/* A20FC 800B18FC 0C00C3AC */  sw         $v1, 0xc($a2)
/* A2100 800B1900 02004014 */  bnez       $v0, .L800B190C
/* A2104 800B1904 100087AC */   sw        $a3, 0x10($a0)
/* A2108 800B1908 21400000 */  addu       $t0, $zero, $zero
.L800B190C:
/* A210C 800B190C BC2C48AD */  sw         $t0, 0x2cbc($t2)
/* A2110 800B1910 0800E003 */  jr         $ra
/* A2114 800B1914 2110E000 */   addu      $v0, $a3, $zero
