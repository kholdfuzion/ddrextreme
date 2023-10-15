.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B60D0
/* A68D0 800B60D0 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* A68D4 800B60D4 5000BFAF */  sw         $ra, 0x50($sp)
/* A68D8 800B60D8 002C0500 */  sll        $a1, $a1, 0x10
/* A68DC 800B60DC 03340500 */  sra        $a2, $a1, 0x10
/* A68E0 800B60E0 21480000 */  addu       $t1, $zero, $zero
/* A68E4 800B60E4 1E80033C */  lui        $v1, %hi(D_801E09F8)
/* A68E8 800B60E8 F8096524 */  addiu      $a1, $v1, %lo(D_801E09F8)
/* A68EC 800B60EC 21408000 */  addu       $t0, $a0, $zero
/* A68F0 800B60F0 E001A724 */  addiu      $a3, $a1, 0x1e0
/* A68F4 800B60F4 2B10A700 */  sltu       $v0, $a1, $a3
/* A68F8 800B60F8 0E004010 */  beqz       $v0, .L800B6134
/* A68FC 800B60FC 21206000 */   addu      $a0, $v1, $zero
/* A6900 800B6100 2118E000 */  addu       $v1, $a3, $zero
.L800B6104:
/* A6904 800B6104 0000A290 */  lbu        $v0, ($a1)
/* A6908 800B6108 00000000 */  nop
/* A690C 800B610C 05004010 */  beqz       $v0, .L800B6124
/* A6910 800B6110 00000000 */   nop
/* A6914 800B6114 0C00A28C */  lw         $v0, 0xc($a1)
/* A6918 800B6118 00000000 */  nop
/* A691C 800B611C 32004810 */  beq        $v0, $t0, .L800B61E8
/* A6920 800B6120 00000000 */   nop
.L800B6124:
/* A6924 800B6124 1400A524 */  addiu      $a1, $a1, 0x14
/* A6928 800B6128 2B10A300 */  sltu       $v0, $a1, $v1
/* A692C 800B612C F5FF4014 */  bnez       $v0, .L800B6104
/* A6930 800B6130 00000000 */   nop
.L800B6134:
/* A6934 800B6134 FFFF0324 */  addiu      $v1, $zero, -1
/* A6938 800B6138 FFFF0224 */  addiu      $v0, $zero, -1
.L800B613C:
/* A693C 800B613C 02006214 */  bne        $v1, $v0, .L800B6148
/* A6940 800B6140 00000000 */   nop
/* A6944 800B6144 FFFF0924 */  addiu      $t1, $zero, -1
.L800B6148:
/* A6948 800B6148 2A002215 */  bne        $t1, $v0, .L800B61F4
/* A694C 800B614C 1800622C */   sltiu     $v0, $v1, 0x18
/* A6950 800B6150 1E80023C */  lui        $v0, %hi(D_801E0788)
/* A6954 800B6154 88074424 */  addiu      $a0, $v0, %lo(D_801E0788)
/* A6958 800B6158 02008390 */  lbu        $v1, 2($a0)
/* A695C 800B615C 00000000 */  nop
/* A6960 800B6160 06006014 */  bnez       $v1, .L800B617C
/* A6964 800B6164 1E80033C */   lui       $v1, 0x801e
/* A6968 800B6168 1800828C */  lw         $v0, 0x18($a0)
/* A696C 800B616C 00000000 */  nop
/* A6970 800B6170 02004814 */  bne        $v0, $t0, .L800B617C
/* A6974 800B6174 00000000 */   nop
/* A6978 800B6178 060086A4 */  sh         $a2, 6($a0)
.L800B617C:
/* A697C 800B617C 1E80043C */  lui        $a0, %hi(D_801E09E4)
/* A6980 800B6180 E009658C */  lw         $a1, 0x9e0($v1)
/* A6984 800B6184 E409828C */  lw         $v0, %lo(D_801E09E4)($a0)
/* A6988 800B6188 00000000 */  nop
/* A698C 800B618C 5E00A210 */  beq        $a1, $v0, .L800B6308
/* A6990 800B6190 21280000 */   addu      $a1, $zero, $zero
/* A6994 800B6194 01000724 */  addiu      $a3, $zero, 1
/* A6998 800B6198 1E80023C */  lui        $v0, %hi(D_801E0BD8)
/* A699C 800B619C D80B4424 */  addiu      $a0, $v0, %lo(D_801E0BD8)
.L800B61A0:
/* A69A0 800B61A0 0C00828C */  lw         $v0, 0xc($a0)
/* A69A4 800B61A4 00000000 */  nop
/* A69A8 800B61A8 09004814 */  bne        $v0, $t0, .L800B61D0
/* A69AC 800B61AC 21188000 */   addu      $v1, $a0, $zero
/* A69B0 800B61B0 03006290 */  lbu        $v0, 3($v1)
/* A69B4 800B61B4 00000000 */  nop
/* A69B8 800B61B8 05004714 */  bne        $v0, $a3, .L800B61D0
/* A69BC 800B61BC 00000000 */   nop
/* A69C0 800B61C0 00006290 */  lbu        $v0, ($v1)
/* A69C4 800B61C4 00000000 */  nop
/* A69C8 800B61C8 4C004010 */  beqz       $v0, .L800B62FC
/* A69CC 800B61CC 00000000 */   nop
.L800B61D0:
/* A69D0 800B61D0 0100A524 */  addiu      $a1, $a1, 1
/* A69D4 800B61D4 3000A228 */  slti       $v0, $a1, 0x30
/* A69D8 800B61D8 F1FF4014 */  bnez       $v0, .L800B61A0
/* A69DC 800B61DC 10008424 */   addiu     $a0, $a0, 0x10
/* A69E0 800B61E0 C3D80208 */  j          .L800B630C
/* A69E4 800B61E4 FFFF0224 */   addiu     $v0, $zero, -1
.L800B61E8:
/* A69E8 800B61E8 0300A390 */  lbu        $v1, 3($a1)
/* A69EC 800B61EC 4FD80208 */  j          .L800B613C
/* A69F0 800B61F0 FFFF0224 */   addiu     $v0, $zero, -1
.L800B61F4:
/* A69F4 800B61F4 44004010 */  beqz       $v0, .L800B6308
/* A69F8 800B61F8 80100300 */   sll       $v0, $v1, 2
/* A69FC 800B61FC 21184300 */  addu       $v1, $v0, $v1
/* A6A00 800B6200 80180300 */  sll        $v1, $v1, 2
/* A6A04 800B6204 F8098424 */  addiu      $a0, $a0, 0x9f8
/* A6A08 800B6208 21206400 */  addu       $a0, $v1, $a0
/* A6A0C 800B620C 00008390 */  lbu        $v1, ($a0)
/* A6A10 800B6210 00000000 */  nop
/* A6A14 800B6214 3C006010 */  beqz       $v1, .L800B6308
/* A6A18 800B6218 21404000 */   addu      $t0, $v0, $zero
/* A6A1C 800B621C 02000224 */  addiu      $v0, $zero, 2
/* A6A20 800B6220 39006210 */  beq        $v1, $v0, .L800B6308
/* A6A24 800B6224 00000000 */   nop
/* A6A28 800B6228 1000C104 */  bgez       $a2, .L800B626C
/* A6A2C 800B622C C3390600 */   sra       $a3, $a2, 7
/* A6A30 800B6230 23100600 */  negu       $v0, $a2
/* A6A34 800B6234 00140200 */  sll        $v0, $v0, 0x10
/* A6A38 800B6238 03340200 */  sra        $a2, $v0, 0x10
/* A6A3C 800B623C 0200C104 */  bgez       $a2, .L800B6248
/* A6A40 800B6240 2110C000 */   addu      $v0, $a2, $zero
/* A6A44 800B6244 7F00C224 */  addiu      $v0, $a2, 0x7f
.L800B6248:
/* A6A48 800B6248 C3110200 */  sra        $v0, $v0, 7
/* A6A4C 800B624C 27380200 */  nor        $a3, $zero, $v0
/* A6A50 800B6250 C0110200 */  sll        $v0, $v0, 7
/* A6A54 800B6254 2310C200 */  subu       $v0, $a2, $v0
/* A6A58 800B6258 00140200 */  sll        $v0, $v0, 0x10
/* A6A5C 800B625C 03140200 */  sra        $v0, $v0, 0x10
/* A6A60 800B6260 80000324 */  addiu      $v1, $zero, 0x80
/* A6A64 800B6264 A0D80208 */  j          .L800B6280
/* A6A68 800B6268 23286200 */   subu      $a1, $v1, $v0
.L800B626C:
/* A6A6C 800B626C 2110E000 */  addu       $v0, $a3, $zero
/* A6A70 800B6270 C0110200 */  sll        $v0, $v0, 7
/* A6A74 800B6274 2310C200 */  subu       $v0, $a2, $v0
/* A6A78 800B6278 00140200 */  sll        $v0, $v0, 0x10
/* A6A7C 800B627C 032C0200 */  sra        $a1, $v0, 0x10
.L800B6280:
/* A6A80 800B6280 0180023C */  lui        $v0, %hi(D_8001727C)
/* A6A84 800B6284 7C724224 */  addiu      $v0, $v0, %lo(D_8001727C)
/* A6A88 800B6288 21100201 */  addu       $v0, $t0, $v0
/* A6A8C 800B628C 04008494 */  lhu        $a0, 4($a0)
/* A6A90 800B6290 0000468C */  lw         $a2, ($v0)
/* A6A94 800B6294 021A0400 */  srl        $v1, $a0, 8
/* A6A98 800B6298 21186700 */  addu       $v1, $v1, $a3
/* A6A9C 800B629C 7F008430 */  andi       $a0, $a0, 0x7f
/* A6AA0 800B62A0 21208500 */  addu       $a0, $a0, $a1
/* A6AA4 800B62A4 80008228 */  slti       $v0, $a0, 0x80
/* A6AA8 800B62A8 03004014 */  bnez       $v0, .L800B62B8
/* A6AAC 800B62AC 1000A6AF */   sw        $a2, 0x10($sp)
/* A6AB0 800B62B0 01006324 */  addiu      $v1, $v1, 1
/* A6AB4 800B62B4 80FF8424 */  addiu      $a0, $a0, -0x80
.L800B62B8:
/* A6AB8 800B62B8 03006104 */  bgez       $v1, .L800B62C8
/* A6ABC 800B62BC 80006228 */   slti      $v0, $v1, 0x80
/* A6AC0 800B62C0 21180000 */  addu       $v1, $zero, $zero
/* A6AC4 800B62C4 80006228 */  slti       $v0, $v1, 0x80
.L800B62C8:
/* A6AC8 800B62C8 02004014 */  bnez       $v0, .L800B62D4
/* A6ACC 800B62CC 00000000 */   nop
/* A6AD0 800B62D0 7F000324 */  addiu      $v1, $zero, 0x7f
.L800B62D4:
/* A6AD4 800B62D4 00120300 */  sll        $v0, $v1, 8
/* A6AD8 800B62D8 25104400 */  or         $v0, $v0, $a0
/* A6ADC 800B62DC 20000324 */  addiu      $v1, $zero, 0x20
/* A6AE0 800B62E0 1000A427 */  addiu      $a0, $sp, 0x10
/* A6AE4 800B62E4 2600A2A7 */  sh         $v0, 0x26($sp)
/* A6AE8 800B62E8 1400A3AF */  sw         $v1, 0x14($sp)
/* A6AEC 800B62EC B5E3020C */  jal        SpuSetVoiceAttr
/* A6AF0 800B62F0 1000A6AF */   sw        $a2, 0x10($sp)
/* A6AF4 800B62F4 C3D80208 */  j          .L800B630C
/* A6AF8 800B62F8 21100000 */   addu      $v0, $zero, $zero
.L800B62FC:
/* A6AFC 800B62FC 080086A4 */  sh         $a2, 8($a0)
/* A6B00 800B6300 C3D80208 */  j          .L800B630C
/* A6B04 800B6304 21100000 */   addu      $v0, $zero, $zero
.L800B6308:
/* A6B08 800B6308 FFFF0224 */  addiu      $v0, $zero, -1
.L800B630C:
/* A6B0C 800B630C 5000BF8F */  lw         $ra, 0x50($sp)
/* A6B10 800B6310 00000000 */  nop
/* A6B14 800B6314 0800E003 */  jr         $ra
/* A6B18 800B6318 5800BD27 */   addiu     $sp, $sp, 0x58
