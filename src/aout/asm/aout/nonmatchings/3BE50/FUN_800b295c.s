.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b295c
/* A315C 800B295C C8F8BD27 */  addiu      $sp, $sp, -0x738
/* A3160 800B2960 2807A427 */  addiu      $a0, $sp, 0x728
/* A3164 800B2964 8C09053C */  lui        $a1, 0x98c
/* A3168 800B2968 04000624 */  addiu      $a2, $zero, 4
/* A316C 800B296C 3407BFAF */  sw         $ra, 0x734($sp)
/* A3170 800B2970 3007B0AF */  sw         $s0, 0x730($sp)
/* A3174 800B2974 41D6000C */  jal        FUN_80035904
/* A3178 800B2978 2807A0AF */   sw        $zero, 0x728($sp)
/* A317C 800B297C 2807A38F */  lw         $v1, 0x728($sp)
/* A3180 800B2980 97000224 */  addiu      $v0, $zero, 0x97
/* A3184 800B2984 2E006214 */  bne        $v1, $v0, .L800B2A40
/* A3188 800B2988 01000224 */   addiu     $v0, $zero, 1
/* A318C 800B298C 21200000 */  addu       $a0, $zero, $zero
/* A3190 800B2990 1E80023C */  lui        $v0, %hi(D_801DF820)
/* A3194 800B2994 20F84224 */  addiu      $v0, $v0, %lo(D_801DF820)
/* A3198 800B2998 08004324 */  addiu      $v1, $v0, 8
.L800B299C:
/* A319C 800B299C 0000628C */  lw         $v0, ($v1)
/* A31A0 800B29A0 00000000 */  nop
/* A31A4 800B29A4 0B004010 */  beqz       $v0, .L800B29D4
/* A31A8 800B29A8 01008424 */   addiu     $a0, $a0, 1
/* A31AC 800B29AC 97008228 */  slti       $v0, $a0, 0x97
/* A31B0 800B29B0 FAFF4014 */  bnez       $v0, .L800B299C
/* A31B4 800B29B4 0C006324 */   addiu     $v1, $v1, 0xc
/* A31B8 800B29B8 1E80023C */  lui        $v0, %hi(D_801E0760)
/* A31BC 800B29BC 6007438C */  lw         $v1, %lo(D_801E0760)($v0)
/* A31C0 800B29C0 00000000 */  nop
/* A31C4 800B29C4 05006104 */  bgez       $v1, .L800B29DC
/* A31C8 800B29C8 21800000 */   addu      $s0, $zero, $zero
/* A31CC 800B29CC 90CA0208 */  j          .L800B2A40
/* A31D0 800B29D0 03000224 */   addiu     $v0, $zero, 3
.L800B29D4:
/* A31D4 800B29D4 90CA0208 */  j          .L800B2A40
/* A31D8 800B29D8 02000224 */   addiu     $v0, $zero, 2
.L800B29DC:
/* A31DC 800B29DC 1000A427 */  addiu      $a0, $sp, 0x10
/* A31E0 800B29E0 8C09053C */  lui        $a1, 0x98c
/* A31E4 800B29E4 1807A534 */  ori        $a1, $a1, 0x718
/* A31E8 800B29E8 41D6000C */  jal        FUN_80035904
/* A31EC 800B29EC 14070624 */   addiu     $a2, $zero, 0x714
/* A31F0 800B29F0 1E80023C */  lui        $v0, %hi(D_801DF820)
/* A31F4 800B29F4 20F84224 */  addiu      $v0, $v0, %lo(D_801DF820)
/* A31F8 800B29F8 08004524 */  addiu      $a1, $v0, 8
/* A31FC 800B29FC 1000A327 */  addiu      $v1, $sp, 0x10
/* A3200 800B2A00 96000424 */  addiu      $a0, $zero, 0x96
.L800B2A04:
/* A3204 800B2A04 00006290 */  lbu        $v0, ($v1)
/* A3208 800B2A08 00000000 */  nop
/* A320C 800B2A0C 04004014 */  bnez       $v0, .L800B2A20
/* A3210 800B2A10 00000000 */   nop
/* A3214 800B2A14 0000A28C */  lw         $v0, ($a1)
/* A3218 800B2A18 00000000 */  nop
/* A321C 800B2A1C 21800202 */  addu       $s0, $s0, $v0
.L800B2A20:
/* A3220 800B2A20 0C00A524 */  addiu      $a1, $a1, 0xc
/* A3224 800B2A24 FFFF8424 */  addiu      $a0, $a0, -1
/* A3228 800B2A28 F6FF8104 */  bgez       $a0, .L800B2A04
/* A322C 800B2A2C 0C006324 */   addiu     $v1, $v1, 0xc
/* A3230 800B2A30 0100023C */  lui        $v0, 1
/* A3234 800B2A34 A0864234 */  ori        $v0, $v0, 0x86a0
/* A3238 800B2A38 2B105000 */  sltu       $v0, $v0, $s0
/* A323C 800B2A3C 80100200 */  sll        $v0, $v0, 2
.L800B2A40:
/* A3240 800B2A40 3407BF8F */  lw         $ra, 0x734($sp)
/* A3244 800B2A44 3007B08F */  lw         $s0, 0x730($sp)
/* A3248 800B2A48 0800E003 */  jr         $ra
/* A324C 800B2A4C 3807BD27 */   addiu     $sp, $sp, 0x738
