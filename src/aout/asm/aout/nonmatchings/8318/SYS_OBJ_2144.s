.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2144
/* A928 8001A128 0D80023C */  lui        $v0, %hi(D_800D2CC0)
/* A92C 8001A12C C02C428C */  lw         $v0, %lo(D_800D2CC0)($v0)
/* A930 8001A130 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* A934 8001A134 C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* A938 8001A138 01004224 */  addiu      $v0, $v0, 1
/* A93C 8001A13C 3F004230 */  andi       $v0, $v0, 0x3f
/* A940 8001A140 F3FF4310 */  beq        $v0, $v1, .L8001A110
/* A944 8001A144 00000000 */   nop
/* A948 8001A148 B86C000C */  jal        SetIntrMask
/* A94C 8001A14C 21200000 */   addu      $a0, $zero, $zero
/* A950 8001A150 0D80043C */  lui        $a0, %hi(D_800D2B98)
/* A954 8001A154 982B8424 */  addiu      $a0, $a0, %lo(D_800D2B98)
/* A958 8001A158 0D80013C */  lui        $at, %hi(D_800D2CC8)
/* A95C 8001A15C C82C22AC */  sw         $v0, %lo(D_800D2CC8)($at)
/* A960 8001A160 01008390 */  lbu        $v1, 1($a0)
/* A964 8001A164 01000224 */  addiu      $v0, $zero, 1
/* A968 8001A168 14006010 */  beqz       $v1, .L8001A1BC
/* A96C 8001A16C 080082AC */   sw        $v0, 8($a0)
/* A970 8001A170 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* A974 8001A174 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* A978 8001A178 0D80023C */  lui        $v0, %hi(D_800D2CC4)
/* A97C 8001A17C C42C428C */  lw         $v0, %lo(D_800D2CC4)($v0)
/* A980 8001A180 00000000 */  nop
/* A984 8001A184 1E006214 */  bne        $v1, $v0, .L8001A200
/* A988 8001A188 00000000 */   nop
/* A98C 8001A18C 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* A990 8001A190 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* A994 8001A194 00000000 */  nop
/* A998 8001A198 0000428C */  lw         $v0, ($v0)
/* A99C 8001A19C 0001033C */  lui        $v1, 0x100
/* A9A0 8001A1A0 24104300 */  and        $v0, $v0, $v1
/* A9A4 8001A1A4 16004014 */  bnez       $v0, .L8001A200
/* A9A8 8001A1A8 00000000 */   nop
/* A9AC 8001A1AC 0C00828C */  lw         $v0, 0xc($a0)
/* A9B0 8001A1B0 00000000 */  nop
/* A9B4 8001A1B4 12004014 */  bnez       $v0, .L8001A200
/* A9B8 8001A1B8 00000000 */   nop
.L8001A1BC:
/* A9BC 8001A1BC 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* A9C0 8001A1C0 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* A9C4 8001A1C4 0004043C */  lui        $a0, 0x400
.L8001A1C8:
/* A9C8 8001A1C8 0000628C */  lw         $v0, ($v1)
/* A9CC 8001A1CC 00000000 */  nop
/* A9D0 8001A1D0 24104400 */  and        $v0, $v0, $a0
/* A9D4 8001A1D4 FCFF4010 */  beqz       $v0, .L8001A1C8
/* A9D8 8001A1D8 00000000 */   nop
/* A9DC 8001A1DC 21200002 */  addu       $a0, $s0, $zero
/* A9E0 8001A1E0 09F86002 */  jalr       $s3
/* A9E4 8001A1E4 21284002 */   addu      $a1, $s2, $zero
/* A9E8 8001A1E8 0D80043C */  lui        $a0, %hi(D_800D2CC8)
/* A9EC 8001A1EC C82C848C */  lw         $a0, %lo(D_800D2CC8)($a0)
/* A9F0 8001A1F0 B86C000C */  jal        SetIntrMask
/* A9F4 8001A1F4 00000000 */   nop
/* A9F8 8001A1F8 DC680008 */  j          SYS_OBJ_238C
/* A9FC 8001A1FC 21100000 */   addu      $v0, $zero, $zero
.L8001A200:
/* AA00 8001A200 0280053C */  lui        $a1, %hi(SYS_OBJ_23A8)
/* AA04 8001A204 8CA3A524 */  addiu      $a1, $a1, %lo(SYS_OBJ_23A8)
/* AA08 8001A208 716C000C */  jal        DMACallback
/* AA0C 8001A20C 02000424 */   addiu     $a0, $zero, 2
/* AA10 8001A210 2A002012 */  beqz       $s1, .L8001A2BC
/* AA14 8001A214 21300000 */   addu      $a2, $zero, $zero
/* AA18 8001A218 0F80083C */  lui        $t0, %hi(D_800EE7B4)
/* AA1C 8001A21C B4E70825 */  addiu      $t0, $t0, %lo(D_800EE7B4)
/* AA20 8001A220 21380002 */  addu       $a3, $s0, $zero
/* AA24 8001A224 21102002 */  addu       $v0, $s1, $zero
