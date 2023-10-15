.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel img_related_800b214c
/* A294C 800B214C D8F0BD27 */  addiu      $sp, $sp, -0xf28
/* A2950 800B2150 21480000 */  addu       $t1, $zero, $zero
/* A2954 800B2154 100EAE27 */  addiu      $t6, $sp, 0xe10
/* A2958 800B2158 180FB0AF */  sw         $s0, 0xf18($sp)
/* A295C 800B215C 1E80103C */  lui        $s0, 0x801e
/* A2960 800B2160 1C0FB1AF */  sw         $s1, 0xf1c($sp)
/* A2964 800B2164 100FB127 */  addiu      $s1, $sp, 0xf10
/* A2968 800B2168 1000AB27 */  addiu      $t3, $sp, 0x10
/* A296C 800B216C 21606001 */  addu       $t4, $t3, $zero
/* A2970 800B2170 0E80023C */  lui        $v0, %hi(D_800D99BC)
/* A2974 800B2174 BC994D24 */  addiu      $t5, $v0, %lo(D_800D99BC)
/* A2978 800B2178 21500000 */  addu       $t2, $zero, $zero
/* A297C 800B217C 200FBFAF */  sw         $ra, 0xf20($sp)
.L800B2180:
/* A2980 800B2180 21380000 */  addu       $a3, $zero, $zero
/* A2984 800B2184 21404D01 */  addu       $t0, $t2, $t5
.L800B2188:
/* A2988 800B2188 02002105 */  bgez       $t1, .L800B2194
/* A298C 800B218C 21102001 */   addu      $v0, $t1, $zero
/* A2990 800B2190 0F002225 */  addiu      $v0, $t1, 0xf
.L800B2194:
/* A2994 800B2194 00000695 */  lhu        $a2, ($t0)
/* A2998 800B2198 02000825 */  addiu      $t0, $t0, 2
/* A299C 800B219C C2270700 */  srl        $a0, $a3, 0x1f
/* A29A0 800B21A0 2120E400 */  addu       $a0, $a3, $a0
/* A29A4 800B21A4 43200400 */  sra        $a0, $a0, 1
/* A29A8 800B21A8 40280400 */  sll        $a1, $a0, 1
/* A29AC 800B21AC 2328E500 */  subu       $a1, $a3, $a1
/* A29B0 800B21B0 0100E724 */  addiu      $a3, $a3, 1
/* A29B4 800B21B4 03110200 */  sra        $v0, $v0, 4
/* A29B8 800B21B8 001A0200 */  sll        $v1, $v0, 8
/* A29BC 800B21BC 00110200 */  sll        $v0, $v0, 4
/* A29C0 800B21C0 23102201 */  subu       $v0, $t1, $v0
/* A29C4 800B21C4 40100200 */  sll        $v0, $v0, 1
/* A29C8 800B21C8 21186200 */  addu       $v1, $v1, $v0
/* A29CC 800B21CC 40210400 */  sll        $a0, $a0, 5
/* A29D0 800B21D0 21186400 */  addu       $v1, $v1, $a0
/* A29D4 800B21D4 21186500 */  addu       $v1, $v1, $a1
/* A29D8 800B21D8 40180300 */  sll        $v1, $v1, 1
/* A29DC 800B21DC 21188301 */  addu       $v1, $t4, $v1
/* A29E0 800B21E0 1000E228 */  slti       $v0, $a3, 0x10
/* A29E4 800B21E4 E8FF4014 */  bnez       $v0, .L800B2188
/* A29E8 800B21E8 000066A4 */   sh        $a2, ($v1)
/* A29EC 800B21EC 01002925 */  addiu      $t1, $t1, 1
/* A29F0 800B21F0 61002229 */  slti       $v0, $t1, 0x61
/* A29F4 800B21F4 E2FF4014 */  bnez       $v0, .L800B2180
/* A29F8 800B21F8 20004A25 */   addiu     $t2, $t2, 0x20
/* A29FC 800B21FC 7F000924 */  addiu      $t1, $zero, 0x7f
/* A2A00 800B2200 FE00C225 */  addiu      $v0, $t6, 0xfe
.L800B2204:
/* A2A04 800B2204 000040A4 */  sh         $zero, ($v0)
/* A2A08 800B2208 FFFF2925 */  addiu      $t1, $t1, -1
/* A2A0C 800B220C FDFF2105 */  bgez       $t1, .L800B2204
/* A2A10 800B2210 FEFF4224 */   addiu     $v0, $v0, -2
/* A2A14 800B2214 21202002 */  addu       $a0, $s1, $zero
/* A2A18 800B2218 21286001 */  addu       $a1, $t3, $zero
/* A2A1C 800B221C FF7F0624 */  addiu      $a2, $zero, 0x7fff
/* A2A20 800B2220 007C0224 */  addiu      $v0, $zero, 0x7c00
/* A2A24 800B2224 1F000324 */  addiu      $v1, $zero, 0x1f
/* A2A28 800B2228 320EA2A7 */  sh         $v0, 0xe32($sp)
/* A2A2C 800B222C E0030224 */  addiu      $v0, $zero, 0x3e0
/* A2A30 800B2230 520EA3A7 */  sh         $v1, 0xe52($sp)
/* A2A34 800B2234 FF030324 */  addiu      $v1, $zero, 0x3ff
/* A2A38 800B2238 B0F200A6 */  sh         $zero, -0xd50($s0)
/* A2A3C 800B223C B0F21026 */  addiu      $s0, $s0, -0xd50
/* A2A40 800B2240 00020824 */  addiu      $t0, $zero, 0x200
/* A2A44 800B2244 20000724 */  addiu      $a3, $zero, 0x20
/* A2A48 800B2248 120EA6A7 */  sh         $a2, 0xe12($sp)
/* A2A4C 800B224C B20EA6A7 */  sh         $a2, 0xeb2($sp)
/* A2A50 800B2250 D20EA6A7 */  sh         $a2, 0xed2($sp)
/* A2A54 800B2254 F20EA6A7 */  sh         $a2, 0xef2($sp)
/* A2A58 800B2258 38000624 */  addiu      $a2, $zero, 0x38
/* A2A5C 800B225C 720EA2A7 */  sh         $v0, 0xe72($sp)
/* A2A60 800B2260 FF010224 */  addiu      $v0, $zero, 0x1ff
/* A2A64 800B2264 920EA3A7 */  sh         $v1, 0xe92($sp)
/* A2A68 800B2268 08000324 */  addiu      $v1, $zero, 8
/* A2A6C 800B226C 100003AE */  sw         $v1, 0x10($s0)
/* A2A70 800B2270 00010324 */  addiu      $v1, $zero, 0x100
/* A2A74 800B2274 0E0002A6 */  sh         $v0, 0xe($s0)
/* A2A78 800B2278 0E80023C */  lui        $v0, %hi(D_800DA5DC)
/* A2A7C 800B227C DCA54224 */  addiu      $v0, $v0, %lo(D_800DA5DC)
/* A2A80 800B2280 020008A6 */  sh         $t0, 2($s0)
/* A2A84 800B2284 040007A6 */  sh         $a3, 4($s0)
/* A2A88 800B2288 060006A6 */  sh         $a2, 6($s0)
/* A2A8C 800B228C 08000BAE */  sw         $t3, 8($s0)
/* A2A90 800B2290 0C0000A6 */  sh         $zero, 0xc($s0)
/* A2A94 800B2294 14000EAE */  sw         $t6, 0x14($s0)
/* A2A98 800B2298 180003AE */  sw         $v1, 0x18($s0)
/* A2A9C 800B229C 1C0002AE */  sw         $v0, 0x1c($s0)
/* A2AA0 800B22A0 100FA0A7 */  sh         $zero, 0xf10($sp)
/* A2AA4 800B22A4 120FA8A7 */  sh         $t0, 0xf12($sp)
/* A2AA8 800B22A8 140FA7A7 */  sh         $a3, 0xf14($sp)
/* A2AAC 800B22AC 8361000C */  jal        LoadImage
/* A2AB0 800B22B0 160FA6A7 */   sh        $a2, 0xf16($sp)
/* A2AB4 800B22B4 D860000C */  jal        DrawSync
/* A2AB8 800B22B8 21200000 */   addu      $a0, $zero, $zero
/* A2ABC 800B22BC 21202002 */  addu       $a0, $s1, $zero
/* A2AC0 800B22C0 1400058E */  lw         $a1, 0x14($s0)
/* A2AC4 800B22C4 0C000696 */  lhu        $a2, 0xc($s0)
/* A2AC8 800B22C8 0E000796 */  lhu        $a3, 0xe($s0)
/* A2ACC 800B22CC 1000038E */  lw         $v1, 0x10($s0)
/* A2AD0 800B22D0 01000224 */  addiu      $v0, $zero, 1
/* A2AD4 800B22D4 160FA2A7 */  sh         $v0, 0xf16($sp)
/* A2AD8 800B22D8 00190300 */  sll        $v1, $v1, 4
/* A2ADC 800B22DC 100FA6A7 */  sh         $a2, 0xf10($sp)
/* A2AE0 800B22E0 120FA7A7 */  sh         $a3, 0xf12($sp)
/* A2AE4 800B22E4 8361000C */  jal        LoadImage
/* A2AE8 800B22E8 140FA3A7 */   sh        $v1, 0xf14($sp)
/* A2AEC 800B22EC D860000C */  jal        DrawSync
/* A2AF0 800B22F0 21200000 */   addu      $a0, $zero, $zero
/* A2AF4 800B22F4 200FBF8F */  lw         $ra, 0xf20($sp)
/* A2AF8 800B22F8 1C0FB18F */  lw         $s1, 0xf1c($sp)
/* A2AFC 800B22FC 180FB08F */  lw         $s0, 0xf18($sp)
/* A2B00 800B2300 0800E003 */  jr         $ra
/* A2B04 800B2304 280FBD27 */   addiu     $sp, $sp, 0xf28
